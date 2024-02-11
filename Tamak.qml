import QtQuick
import QtQuick.Controls
Rectangle{
    id: root
    color: 'white'
    property string instrumentName: "Tamak"
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
        dataText: "<p>The \"tamak\" is a double-headed drum traditionally used by the Santal people of India.
Constructed with a metal body shaped like a large bowl, the drum features cowhide heads with
a diameter ranging from 14 to 18 inches. Played with a pair of drumsticks, the tamak holds
special religious significance for the Santal community and is frequently employed in religious
ceremonies and Santal festivals.<br /><br />
Considered to possess unique religious powers, the tamak plays a crucial role in Santal music
and dance. Its rhythm often establishes the fundamental metric and rhythmic patterns for Santal
dances, making it an integral instrument in traditional Santal musical performances. The
instrument's cultural importance extends beyond its musical function, contributing to the spiritual
and celebratory aspects of Santal rituals and festivals.
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
