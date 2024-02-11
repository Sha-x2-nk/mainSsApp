import QtQuick
import QtQuick.Controls
Rectangle{
    id: root
    color: 'white'
    property string instrumentName: "Mridangam"
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
        dataText: "<p>The mridangam, a traditional percussion instrument integral to Carnatic classical music,
has a history deeply rooted in the cultural heritage of South India. Its evolution can be
traced back to ancient times, and its contemporary form has been shaped through
centuries of musical development. Unlike some other classical instruments, the
mridangam doesn't have a single credited inventor, as its origins are deeply embedded
in the historical and cultural context of the region.<br /><br />
Constructed mainly from a hollowed wooden shell, typically made from jackfruit wood,
the mridangam features two distinct heads, known as \"pudi\" or \"valanthalai.\" The larger
bass head, played with the palm and fingers, produces deep tones, while the smaller
treble head, played with the fingers and sometimes with a special stick, creates sharper,
higher-pitched sounds. The tension of the drumheads can be adjusted to produce
various tones, adding to the instrument's versatility.<br /><br />
What sets the mridangam apart are its intricate playing techniques and the rhythmic
patterns it produces. The drummer, known as a \"mridangam vidwan,\" employs a
combination of finger movements, hand techniques, and palm strokes to create
complex and rhythmic patterns. The syllables produced by striking different parts of the
drumheads contribute to the percussive language unique to Carnatic music.The mridangam holds a central position in Carnatic classical ensembles, providing the
rhythmic backbone alongside melodic instruments. Its use of \"tala\" or rhythm cycles,
which are an integral aspect of Indian classical music, showcases the mridangam's
ability to maintain intricate time signatures and contribute to the overall structure of a
musical performance.<br /><br />
Unique to the mridangam is its adaptability to various styles within Carnatic music. It
serves not only as an accompaniment to vocal and instrumental performances but also
takes center stage in solo performances, showcasing its versatility and significance in
the classical music tradition.</p>"
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
