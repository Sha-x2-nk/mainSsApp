import QtQuick
import QtQuick.Controls
Rectangle{
    id: root
    color: 'white'
    property string instrumentName: "Sarangi"
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
        dataText: "<p>The sarangi, a revered classical string instrument in North Indian classical music,
boasts a rich history and a distinctive, soulful sound. Its origins can be traced back
centuries, and its unique playing technique and resonant tones have earned it a
significant place in the traditional music of the Indian subcontinent.<br /><br />
Constructed mainly from a single block of wood, the sarangi features a box-like
resonator covered with parchment and a neck with three melody strings and up to 40
sympathetic strings. Unlike many other string instruments, the sarangi has no frets,
allowing the player to produce a continuous range of microtonal nuances, contributing to
its expressive capabilities.<br /><br />
The sarangi's playing technique involves pressing the fingernails against the strings,
creating a distinctive sliding sound. The bowing technique, often performed with a
horsehair bow, adds to the instrument's unique timbre. Sarangi players, known as
\"sarangiya,\" master a complex system of finger positions and strokes to produce the
intricate ornamentations and subtle tonal variations essential to classical Indian music.<br /><br />
What sets the sarangi apart is its ability to mimic the nuances of the human voice. Its
name, derived from the words \"sau\" (hundred) and \"rang\" (color), reflects its capacity to
produce a hundred different shades of sound. The sarangi's melodic and emotional
depth allows it to convey the intricate \"ragas\" (melodic frameworks) and evoke a range
of emotions, making it a quintessential instrument in classical performances.<br /><br />
Despite its deep-rooted connection to classical traditions, the sarangi has also found a
place in contemporary and fusion music. Musicians appreciate its versatility, using it to
bridge the gap between classical and modern genres, showcasing the instrument's
adaptability and enduring relevance.</p>"
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
