import QtQuick
import QtQuick.Controls
Rectangle{
    id: root
    color: 'white'
    property string instrumentName: "Tanpura"
    Text{
        id: titleText
        text: root.instrumentName
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
        dataText: "The tanpura, also known as tambura, tanpuri, tamboura, or tanpoura, is a four-stringed,
long-necked, plucked instrument with its origins in India. It is a prominent instrument in various
forms of Indian music. In appearance, the tanpura is reminiscent of a simplified sitar or a
lute-like instrument, and it is typically constructed using a gourd or pumpkin.<br /><br />
The tanpura is not designed to produce a melody; instead, it serves to create a meditative
atmosphere, providing support and continuity for the performance of another musician or
vocalist. It is also utilized by musicians accompanying dance performances. This instrument is
equipped with four strings that are tuned to specific notes within a given scale or musical key,
typically the fifth (Pa; Solfège, \"So\") and the root tonic (Sa; \"Do\"). The standard tuning for the
strings is 5-8-8-1. Notably, one of the three strings tuned to the tonic is an octave lower than the
others, enhancing the resonance and depth of the continuous drone in the background.<br /><br />
The tanpura serves as the foundation for both the ensemble and the music itself. It establishes
an acoustic reference chord that shapes the distinctive character, color, and flavor of the ragas,
which are melodic modes in Indian music. According to Stephen Slawek, the tanpura reached
its mature form by the late 16th century, as depicted in the miniature paintings of the Mughal
era. Additionally, Slawek proposes that the sitar and tanpura share a related history, possibly
due to structural similarities between the two instruments.<br /><br />"
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
