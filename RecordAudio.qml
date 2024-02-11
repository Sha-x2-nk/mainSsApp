import QtQuick 2.0
import QtQuick.Controls
import QtMultimedia

Item{
    visible: true
    width: 200
    height: 200
    id: root

    CaptureSession {
        id: captureSession
        audioInput: AudioInput {}
        recorder: MediaRecorder {
            id: audioRecorder


            outputLocation: "file:///C:/Users/shash/Documents/mainSsApp/outAssets/guitar"
        }
    }

    Column {
        anchors.centerIn: parent
        spacing: 10

        Button {
            id: recordButton
            text: audioRecorder.recorderState=== MediaRecorder.RecordingState ? "Stop" : "Record"
            onClicked: audioRecorder.recorderState=== MediaRecorder.RecordingState ? audioRecorder.stop() : audioRecorder.record()
        }
    }
}
