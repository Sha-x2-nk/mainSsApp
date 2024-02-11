import QtQuick
import QtQuick.Controls
Rectangle{
    id: root
    color: 'white'
    property string instrumentName: "Sarod"
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
        dataText: "<p>The sarod is a stringed musical instrument utilized in Hindustani music within the Indian
subcontinent, and it holds a prominent position alongside the sitar. Recognized for its profound
and contemplative sound, it differs from the sitar, which has a sweeter and overtone-rich texture.
The sarod is characterized by sympathetic strings that contribute to its resonant and
reverberating quality. Being a fretless instrument, it has the ability to produce smooth slides
between notes, known as meend or glissandi, which play a significant role in Indian music.<br /><br />
Numerous experts in Indian classical music argue that the sarod is a fusion of the ancient
chitravina, the medieval Indian rabab (also known as the seniya rabab), and the modern
sursingar. Some scholars suggest that a comparable instrument might have existed around two
thousand years ago during the Gupta dynasty in ancient India. There is even a depiction on a
Gupta period coin showing King Samudragupta playing a veena, believed by many to be the
precursor to the sarod. Similar rabab-style instruments are also found in southern India,
particularly in Tamil Nadu, Kerala, and Karnataka, where it is referred to as the swarbat. The folk
rabab, popular in North India, had a wooden fingerboard, silk, cotton, or gut strings, and was
played with a wooden pick. Historical references also mention a Sharadiya Veena, possibly
contributing to the name Sarod. Additionally, the sarod is thought to have connections to the
Afghan rubab, a similar instrument with origins in Central Asia and Afghanistan.<br /><br />
The traditional sarod is a lute-like instrument with 17 to 25 strings, including four to five main
strings for melody, one or two drone strings, two chikari strings, and nine to eleven sympathetic
strings. The initial design of this instrument is commonly attributed to Niyamatullah Khan of the
Lucknow Gharana and Ghulam Ali Khan of the Gwalior-Bangash Gharana.
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
