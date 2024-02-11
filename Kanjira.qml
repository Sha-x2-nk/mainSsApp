import QtQuick
import QtQuick.Controls
Rectangle{
    id: root
    color: 'white'
    property string instrumentName: "Kanjira"
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
        dataText: "<p>The kanjira, a member of the tambourine family and a traditional frame drum in South India, has
been utilized in Indian folk and bhajan music for centuries.<br /><br />
The evolution of the kanjira in South Indian Carnatic music and its modern adaptation are
attributed to Manpoondia Pillai. In the 1880s, Pillai, initially a temple lantern-bearer with a
passion for drumming, modified the kanjira into a classical frame drum with a single pair of
jingles.<br /><br />
In contemporary times, the kanjira continues to play a crucial role in Carnatic music concerts,
serving as a supporting instrument alongside the mridangam.<br /><br />
Similar to the Western tambourine, the kanjira features a circular frame crafted from jackfruit
tree wood, with dimensions ranging from 7 to 9 inches in width and 2 to 4 inches in depth. One
side is covered with a drumhead made from the skin of the Bengal monitor, a species now
endangered in India. However, due to worldwide prohibitions on using lizard skin for these
drums, many Kanjira players opt for goat skin as a suitable alternative. Over time, the goat skin
becomes more pliable, offering a broader range of modulations. The frame typically has a single
slit housing three to four small metal discs, often fashioned from old coins, producing a jingling
sound when the kanjira is played.<br /><br />
Playing the kanjira, particularly in the context of South Indian Carnatic music, is considered
challenging due to the intricate percussion patterns inherent in Indian music. Typically, the
instrument is played using the palm and fingers of the right hand, with the left hand providing
support. The left hand's fingertips can be utilized to modify the pitch by exerting pressure near
the outer rim. Unlike instruments such as the mridangam or the ghatam, the kanjira is not tuned
to a specific pitch.
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
