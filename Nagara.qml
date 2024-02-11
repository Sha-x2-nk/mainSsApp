import QtQuick
import QtQuick.Controls
Rectangle{
    id: root
    color: 'white'
    property string instrumentName: "Nagara"
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
        dataText: "<p>The nagara, also known as naghara, is a drum widely used in India, particularly in mandir
ceremonies and weddings. There are various types of nagharas, typically consisting of two
drums - one for treble and one for bass - played with sticks.<br /><br />
In Sikh traditions, the nagara serves as a significant ceremonial drum in Gatka performances
and has historical usage in battles.<br /><br />
In Central Asia and the Middle East, the naghara is considered a single drum with different
names such as \"boyuk nagara\" (big nagara), \"cura nagara\" (small nagara), \"chiling nagara\"
(played with drum sticks), \"Qoltuq nagara\" (drum held under the arm), gosha nagara (Naqareh),
and \"el nagara\" (hand nagara).<br /><br />
The 'Nagada,' an Indian drum, is a percussion instrument known for its rhythmic sounds,
commonly used in various cultural and religious contexts.[citation needed]. In South Indian
Hindu temples, a festival instrument called Nakara is utilized, with its size varying, and it is often
placed near the entrance of these temples.<br /><br />
The Nakara, a pair of Indian drums, is a hand drum covered with skin commonly used in the
rituals and ceremonies of South Indian temples. The lower section of the Nakara is crafted from
a half-spherical metal vessel, typically made of brass or copper. The drum's membrane, often
constructed from goatskin or a similar material, is affixed to the metal vessel using cords or
metal strips. When played with special beaters or bent sticks, the Nakara produces a
thunder-like sound. The primary objective of playing the Nakara is to engage with the public
through the rhythmic beats.<br /><br />
The Nagada continues to be played in selected Hindu temples in Tamil Nadu. In the context of
temple musical instruments, they are referred to as Kethu, jalliry, or jalli instruments in the Tamil
language (கெ த்து வாத்தியம், \"ஜல்லிரி\", \"ஜல்லி\"). Typically, temple staff are responsible
for operating these musical instruments.[4] Historical records indicate that around 18 musical
instruments, collectively known as Ashta dasa, were used during regular pooja sessions, special
events like consecrations, temple fairs, and festivals, as well as during processions such as car
processions, float festivals, and palanquin festival processions. These instruments gained
significant popularity during the eighteenth and nineteenth centuries.
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
