import QtQuick
import QtQuick.Controls
Rectangle{
    id: root
    color: 'white'
    property string instrumentName: "Shehnai"
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
        dataText: "<p>The shehnai is a musical instrument that has its roots in the Indian subcontinent. Constructed
from wood, it features a double reed on one end and a flared bell made of metal or wood on the
other. Its melodious tones are believed to evoke a sense of auspiciousness and sanctity, making
it one of the nine instruments traditionally present in royal courts. The shehnai bears
resemblance to the nadaswaram, a similar instrument found in South India.<br /> <br />
This cylindrical musical instrument gradually widens towards its lower end, typically featuring six
to nine holes. It utilizes a set of quadruple reeds, categorizing it as a quadruple reed woodwind.
Mastery of the shehnai involves employing intricate embouchure and fingering techniques by
the musician. The instrument has a two-octave range, spanning from the A below middle C to
the A one line above the treble clef (A3 to A5 in scientific pitch notation).<br /> <br />
Shehnais are commonly, though not always, crafted with a body made of wood or bamboo and
a flared metal end.<br /> <br />
The shehnai is believed to have evolved through enhancements to the pungi, a traditional
woodwind instrument commonly utilized in snake charming. Variations of the shehnai played in
Western India and Coastal Karnataka are native to those regions. In the Goan/Konkani area and
the temples along the western coast, shehnai players, known as Vajantri, have historically
played a crucial role. These musicians were allocated lands as a form of recognition for their
services to the temples.
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
