import QtQuick
import QtQuick.Controls
Rectangle{
    id: root
    color: 'white'
    property string instrumentName: "BulbulTarang"
    Text{
        id: titleText
        text: "Bulbul Tarang"
        anchors{
            horizontalCenter: parent.horizontalCenter
            top: parent.top
        }
        font.pixelSize: 36
        font.weight: 500
    }
    TextDataBox{
        id: textDataBox
        width: root.width*0.4
        anchors{
            top: titleText.bottom
            bottom: parent.bottom
            left: parent.left
        }
        dataText: "<p>Bulbul tarang, also known as Indian or Punjabi banjo, is a string instrument originating from
Punjab. It is believed to have evolved from the Japanese taishōgoto, likely introduced to South
Asia in the 1930s. This instrument features two sets of strings – one for drone and another for
melody. The strings pass over a plate or fretboard, and above them are keys resembling
typewriter keys. Pressing these keys frets or shortens the strings, altering their pitch.<br /><br />
The melody strings on the bulbul tarang are typically tuned to the same note or octaves, while
the drone strings are tuned to the 1st and 5th of the melody strings. In this tuning, the
instrument is uni-tonic, meaning it is not used for modulating to different keys. This is because
Indian music emphasizes subtle, microtonal pitch variations within a unique music-theoretic
system, distinct from Western harmonic music. Consequently, modulation to different keys is not
a significant consideration. Although the melody strings can be tuned to different pitches,
making it multi-tonic, it complicates the playing process. The bulbul tarang is commonly used as
an accompaniment to singing, similar to the Autoharp. When a key is depressed, a chord can be
selected, and the strings are often bowed or strummed with a pick.
</p>"
    }
    ImageZoom {
        id: instrumentPhoto
        imageSource: "assets/photo/" + root.instrumentName + ".jpg"
        width: 200
        height: 200
        anchors {
            verticalCenter: parent.verticalCenter
            left: textDataBox.right
        }
    }

    SpectogramGenerator{
        imageSource: "assets/spectogram/" + root.instrumentName + ".png"
        instrumentName: root.instrumentName
        anchors{
            top: titleText.bottom
            bottom: root.bottom
            right: root.right
            left: instrumentPhoto.right
        }
    }
}
