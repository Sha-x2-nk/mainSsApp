import QtQuick
import QtQuick.Dialogs
import QtQuick.Controls
import QtMultimedia
import Qt.labs.folderlistmodel

Item {
    id: imageItem
    property string imageSource
    property string instrumentName
    // height: image.implicitHeight
    // width: image.implicitWidth
    Rectangle{
        id: audioPlayer
        anchors{
          top: parent.top
          left: parent.left
          right: parent.right
        }
        height: player.implicitHeight
        AudioPlayback{
          id: player
          anchors{
              horizontalCenter: parent.horizontalCenter
          }
          width: 200
          source_audio: "assets/audio/" + imageItem.instrumentName + ".wav"
        }
    }
    Image {
        id: image
        source: imageItem.imageSource
        anchors{
            top: audioPlayer.bottom
            left: parent.left
            topMargin: 50
        }

        height: parent.width * (sourceSize.height / sourceSize.width)
        width: parent.width
        fillMode: Image.PreserveAspectFit
        smooth: true
        MouseArea {
          anchors.fill: parent
          onClicked: window2.show()
        }
    }

    Window{
        id: window2
        width: zoomedImage.implicitWidth
        height: zoomedImage.implicitHeight
        title: "Zoomed Image"
        Image{
            id: zoomedImage
            source: imageItem.imageSource
            anchors.fill: parent
            fillMode: Image.PreserveAspectFit
            smooth: true
        }
    }

    CaptureSession {
        id: captureSession
        audioInput: AudioInput {}
        recorder: MediaRecorder {
            id: audioRecorder
            mediaFormat {
                fileFormat: MediaFormat.Wave
                audioCodec: MediaFormat.AudioCodec.Wave
            }
            outputLocation: "file:///C:/outAssets/" + imageItem.instrumentName
            onRecorderStateChanged: {
                if (audioRecorder.recorderState === MediaRecorder.StoppedState) {
                    filePathRect.selected_path = "file:///C:/outAssets/" + imageItem.instrumentName + ".wav";
                }
            }
        }
    }
    // Button {
    //     id: recordButton
    //     anchors{
    //         top: image.bottom
    //         left: imageItem.left
    //     }
    //     text: audioRecorder.recorderState=== MediaRecorder.RecordingState ? "Stop" : "Record"
    //     onClicked: {
    //         filePathRect.selected_path= "file:///C:/Users/shash/Documents/mainSsApp/outAssets/" + imageItem.instrumentName + ".m4a"
    //         audioRecorder.recorderState=== MediaRecorder.RecordingState ? audioRecorder.stop() : audioRecorder.record()
    //     }
    // }
    Rectangle{
        id: audioPlayerRecorded
        anchors{
          top: image.bottom
          left: imageItem.left
          right: imageItem.right
        }
        height: 80
        Button {
            id: recordButton
            anchors{
                verticalCenter: playerRecorded.verticalCenter
                right: playerRecorded.left
                rightMargin: 20
            }
            text: audioRecorder.recorderState=== MediaRecorder.RecordingState ? "Stop" : "Record"
            onClicked: {

                if (audioRecorder.recorderState === MediaRecorder.RecordingState) {
                    audioRecorder.stop()
                } else {
                    audioRecorder.record()
                }
            }
        }
        AudioPlayback{
          id: playerRecorded
          anchors{
              horizontalCenter: parent.horizontalCenter
          }
          width: 200
          source_audio: filePathRect.selected_path
        }
    }

    Rectangle{
        id: filePathAndAll
        anchors{
            top: audioPlayerRecorded.bottom
            left: imageItem.left
            right: imageItem.right
        }
        height: chooseFilePath.height

        Text{
            id: chooseFilePath
            text: "File Path: "
            anchors{
                left: parent.left
                top: parent.top
                leftMargin: 5
            }
            color: "black"
            font.pixelSize: 20
        }
        Rectangle{
            id: filePathRect
            height: filePath.implicitHeight
            width: imageItem.width/2
            anchors{
                top: parent.top
                left: chooseFilePath.right
            }

            property string selected_path: ""
            ScrollView {
                id: filePath
                anchors.fill: parent
                height: textDataText.implicitHeight
                ScrollBar.vertical.policy: ScrollBar.AlwaysOff
                ScrollBar.horizontal.policy: ScrollBar.AlwaysOff
                TextArea{
                    id: textDataText
                    textFormat: Text.RichText;
                    text: filePathRect.selected_path // ===""?"click browse":filePathRect.selected_path
                    // wrapMode: Text.WordWrap
                    anchors.centerIn: parent
                    color: "black"
                    readOnly: true
                    font.pixelSize: 20
                    // clip: true
                }
            }
        }

        Button{
            id: chooseFile
            text: "Browse"
            anchors{
                top: parent.top
                left: filePathRect.right
            }
            highlighted: true
            onClicked: fileDialog.open()

            FileDialog {
                id: fileDialog
                title: "Please choose a file"
                // currentFolder: shortcut.home
                onAccepted: {
                    filePathRect.selected_path=fileDialog.selectedFile
                }
            }
        }
    }





    Rectangle{
        id: spectoAndAll
        anchors{
            top: filePathAndAll.bottom
            left: imageItem.left
            right: imageItem.right
        }
        height: 80
        Button {
            id: generateSpectrogramButton
            text: "Generate Spectrogram"
            anchors {
                top: parent.top
                left: parent.left
                topMargin: 10
            }
            onClicked: {
                // Call Python function to generate spectrogram
                spectrogramGenerator.generateSpectrogramSignal(filePathRect.selected_path)
                spectrogramImage.source= filePathRect.selected_path.substring(0, filePathRect.selected_path.length - 4) + "_spec.png"
                savePathData.text= "Spectrogram saved to "
                filePathRectSavedSpect.selected_path= spectrogramImage.source
            }
        }

        Text{
            id: savePathData
            text: ""
            anchors{
                left: generateSpectrogramButton.right
                top: parent.top
                leftMargin: 5
            }
            color: "black"
            font.pixelSize: 20
        }
        Rectangle{
            id: filePathRectSavedSpect
            height: savePathDataPath.implicitHeight
            // width: imageItem.width/2
            anchors{
                top: parent.top
                left: savePathData.right
                right: parent.right
                rightMargin: 5
            }
            border{
                color: "black"
                width: 1
            }

            property string selected_path: ""
            ScrollView {
                id: savePathDataPath
                anchors.fill: parent
                height: textDataTextSpect.implicitHeight
                ScrollBar.vertical.policy: ScrollBar.AlwaysOff
                ScrollBar.horizontal.policy: ScrollBar.AlwaysOff
                TextArea{
                    id: textDataTextSpect
                    textFormat: Text.RichText;
                    text: filePathRectSavedSpect.selected_path // ===""?"click browse":filePathRect.selected_path
                    // wrapMode: Text.WordWrap
                    anchors.centerIn: parent
                    color: "black"
                    readOnly: true
                    font.pixelSize: 20
                    // clip: true
                }
            }
        }
    }


    Image {
        id: spectrogramImage
        source: ""
        anchors{
            top: spectoAndAll.bottom
            left: imageItem.left
            topMargin: 50
        }

        height: parent.width * (sourceSize.height / sourceSize.width)
        width: parent.width
        fillMode: Image.PreserveAspectFit
        smooth: true
        MouseArea {
          anchors.fill: parent
          onClicked: window3.show()
        }
    }


    Window{
        id: window3
        width: zoomedImage2.implicitWidth
        height: zoomedImage2.implicitHeight
        title: "Zoomed Image"
        Image{
            id: zoomedImage2
            source: spectrogramImage.source
            anchors.fill: parent
            fillMode: Image.PreserveAspectFit
            smooth: true
        }
    }

}
