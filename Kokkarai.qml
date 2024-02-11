import QtQuick
import QtQuick.Controls
Rectangle{
    id: root
    color: 'white'
    property string instrumentName: "Kokkarai"
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
        dataText: "<p>Kokkarai is a wind instrument made from an elongated and curved bull horn, coming in two
types. One type is used during poojas in temples, characterized by its smaller size than a
trumpet and a softer sound. Some versions are decorated with brass rings at the bottom, tip,
and middle of the cow horn. The other type is used by tribal farmers and includes the Kokkari
used by the Papanasam of southern Tamil Nadu and the Kanichars, a hill tribe of Kerala.<br />< br />
The Kokkarai used by the Papanasam and Kanichars is a musical instrument with a
cross-section on top, featuring several torn lines. An iron wire is attached to the pipe, and by
rubbing the lines with the wire, a mesmerizing music is produced.<br />< br />
Temples, especially Shiva temples, employ Kokkarai Vatyaam, with instances found in Tiruvarur
Thiagarajar temple and some Shiva/Murugan temples. Shiva instrumentalists play the cow horn
Kokkarai, while the Kanichars, a tribe in the hills of Papanasam in Kerala and Tamil Nadu, use
the iron Kokkarai.<br />< br />
In Saiva literature and rituals, Kokkarai is referenced in various verses, including the 3rd, 4th,
5th, 6th, 7th, and 11th verses. It is also mentioned in Kandapurana and some sections of
Tirupukha. The instrument holds significance in the cultural and religious context, contributing to
the musical traditions of both temple rituals and tribal communities.
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
