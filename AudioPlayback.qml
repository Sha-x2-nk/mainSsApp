import QtQuick
import QtMultimedia
import QtQuick.Controls
Rectangle{
    id: root
    height: mediaPlayerUI.implicitHeight
    // width: mediaPlayerUI.implicitWidth
    color: "grey"
    property var source_audio;
    MediaPlayer{
        id: mediaPlayer
        source: root.source_audio
        audioOutput: AudioOutput{}
    }
    Row{
        id: mediaPlayerUI
        spacing: 10
        Image{
            id: playpausebutton
            source: mediaPlayer.playbackState === MediaPlayer.PlayingState ? "assets/photo/pause.png" : "assets/photo/play.png"
            width: (root.width-20)*0.25; height: playpausebutton.width
            MouseArea{
                anchors.fill:parent
                onClicked: {
                    if (mediaPlayer.playbackState === MediaPlayer.PlayingState)
                        mediaPlayer.pause()
                    else
                        mediaPlayer.play()
                }
            }
        }
        Slider{
            id: audioSlider
            width: (root.width-20)*0.5
            from: 0
            anchors.verticalCenter: parent.verticalCenter
            to: mediaPlayer.duration
            value: mediaPlayer.position
            onValueChanged: {
                if(mediaPlayer.position != audioSlider.value)
                    mediaPlayer.position = audioSlider.value
            }
        }
        Text{
            id: durationText
            width: (root.width-20)*0.25
            text: formatTime(mediaPlayer.position)
            anchors.verticalCenter: parent.verticalCenter
            function formatTime(milliseconds){
                var seconds = Math.floor(milliseconds/1000)
                var minutes = Math.floor(seconds/60)
                seconds %= 60
                if(seconds < 10)
                    seconds = "0"+seconds
                if(minutes < 10)
                    minutes = "0"+minutes
                return minutes+":"+seconds
            }
        }
    }
}
