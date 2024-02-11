import QtQuick
import QtQuick.Controls
Rectangle{
    id: root
    color: 'white'
    property string instrumentName: "Violin"
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
        dataText: "The violin, a versatile and globally cherished string instrument, has a storied history that
spans centuries and transcends cultural boundaries. Its invention is often attributed to
Andrea Amati, an Italian luthier, in the early 16th century. Since then, the violin has
evolved into a prominent instrument in various musical genres, showcasing its
adaptability and expressive capabilities.<br /><br />
Crafted from select woods, including spruce and maple, the violin comprises four strings
tuned in perfect fifths. Its iconic hourglass shape, f-shaped sound holes, and arched top
and back contribute to its distinct appearance and resonant sound. The bow, usually
made from horsehair, is crucial in producing the nuanced tones that define the
instrument.<br /><br />
One of the violin's distinguishing features is its versatility. While deeply rooted in
classical music, the violin has seamlessly integrated into diverse genres such as folk,
jazz, country, and contemporary music. Its ability to convey a wide range of emotions,
from soaring melodies to spirited folk tunes, has made it a staple in orchestras,
ensembles, and as a solo instrument.The playing technique of the violin involves pressing the strings against the fingerboard
to produce different pitches, while the bowing hand controls the speed and pressure to
create dynamics and expression. Vibrato, pizzicato (plucking the strings), and various
bowing techniques further enhance the violinist's ability to convey a rich palette of
sounds.<br /><br />
The violin's prominence in classical music is underscored by its role in orchestras and
chamber music, where it often takes on melodic and virtuosic responsibilities. In
contrast, its adaptability to improvisation and collaboration has made it a favored
instrument in jazz and other contemporary genres."
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
