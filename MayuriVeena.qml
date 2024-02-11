import QtQuick
import QtQuick.Controls
Rectangle{
    id: root
    color: 'white'
    property string instrumentName: "MayuriVeena"
    Text{
        id: titleText
        text: "Mayuri Veena"
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
        dataText: "<p>The taus, originally named the mayuri veena, is a bowed string instrument originating from
North India. It features a unique design with a peacock-shaped resonator known as a mayuri
and is played using a bow with the instrument's neck. References to the mayuri veena date
back to Malavikagnimitra, a work by the Sanskrit poet Kalidasa from the 4th to 5th centuries CE.
The term \"taus\" is a Persian translation of the Sanskrit word 'peacock' or 'mayura.'<br /><br />
Historically, it is believed that the taus was introduced and embraced by the Sikhs under the
influence of Guru Hargobind, the sixth Guru of the Sikhs.<br /><br />
Bhai Avtar Singh, a well-known taus player and ragi who practiced the historic style of kirtan, tells the
story of the invention of the Taus in the following quote:<br /><br />
\"The taus was conceived by and designed by the 6th Guru, Guru Hargobind Ji. The Guru and his
Sikhs were singing outdoors under a tree enjoying God and nature. As was the old tradition, they
were playing some string instruments. After a while, the musicians took a rest, and they leaned their
instruments up against a tree. A peacock waddled into the group and he cried in the wailing sound
that belongs only to the peacock. All of the stringed instruments resonated with the sound of the
peacock cry, and the strings started humming. The sound was so ethereal and Guru Sahib liked that
sound so much that he said, 'Let us design an instrument that sounds like this-- a combination of the
resonation of all the string instruments and the plaintive cry of the peacock.' And that's how the taus
was invented under the supervision of Guru Hargobind Ji.\" (who is the sixth Guru of the Sikhs)<br /><br />
The Taus is distinguished by its peacock-shaped body and is played using a bow crafted from
horsehair.[9] It features four primary strings positioned above metal frets, with only one of them
played using the bow.[10] Additionally, there are several sympathetic strings located between the
frets and the neck, contributing to extra resonance. These sympathetic strings are tuned based on
the raag being performed, resembling the tuning approach used in the sitar.
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
