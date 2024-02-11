import QtQuick
import QtQuick.Controls
Rectangle{
    id: root
    color: 'white'
    property string instrumentName: "ClassicalGuitar"
    Text{
        id: titleText
        text: "ClassicalGuitar"
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
        dataText: "<p>The classical guitar, or Spanish guitar, is a wooden string instrument used in classical
and various music genres. With strings made of gut or nylon, it precedes modern
steel-string acoustic and electric guitars. Originating from the Spanish vihuela and
gittern in the 15th and 16th centuries, it evolved into the baroque guitar and later into
the modern classical guitar by the mid-19th century, influenced by the designs of
Spanish luthier Antonio Torres Jurado. The construction involves an acoustic design,
often with a spruce or cedar top and rosewood or mahogany back and sides.<br /><br />
While the term 'classical guitar' predominantly refers to the contemporary design of the
instrument, there is a growing fascination with early guitars and an emerging emphasis
on the connection between historical musical compositions and the specific period
guitars originally used to perform them. Graham Wade, a musicologist and author,
notes:<br /><br />
\"In the present era, it is common practice to interpret this repertoire using replicas of
instruments meticulously crafted based on concepts derived from musicological
research, with adjustments made to techniques and overall interpretation as needed.
Consequently, we have witnessed the rise of specialized artists proficient in playing the
vihuela (a 16th-century guitar type popular in Spain), lute, Baroque guitar, 19th-century
guitar, and other historical instruments.\"</p>"
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
