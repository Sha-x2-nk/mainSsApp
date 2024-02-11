import QtQuick
import QtQuick.Controls
Rectangle{
    id: root
    color: 'white'
    property string instrumentName: "WesternConcertFlute"
    Text{
        id: titleText
        text: "Western Concert Flute"
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
        dataText: "The Western concert flute belongs to the family of transverse woodwind instruments,
constructed from either metal or wood. It is the most prevalent form of the flute, and a person
who plays it is referred to as a \"flautist\" in British English or a \"flutist\" in American English. This
particular flute is utilized in various musical groups, such as concert bands, military bands,
marching bands, orchestras, flute ensembles, and occasionally in jazz bands and big bands.<br /><br />
Other members of this flute family include the piccolo, alto flute, and bass flute. There exists a
substantial repertoire of compositions specifically written for the flute.<br /><br />
The flute stands as one of the earliest and most extensively employed wind instruments. The
forerunners of today's concert flute were primitive wooden transverse flutes lacking keys,
resembling contemporary fifes. Over time, these were adapted by incorporating one to eight
keys to facilitate playing chromatic notes.<br /><br />
The prevalent pitch for keyless wooden transverse flutes, often utilized in present times,
especially in Irish traditional music and historically accurate renditions of early music like the
Baroque period, is the \"Six-finger\" D. In the Baroque era, there was a transformation of the
conventional transverse flute, leading to its redesign and evolution into the contemporary
traverso.<br /><br />"
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
