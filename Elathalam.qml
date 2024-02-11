import QtQuick
import QtQuick.Controls
Rectangle{
    id: root
    color: 'white'
    property string instrumentName: "Elathalam"
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
        dataText: "<p>Elathalam, also known as Ilathalam, is a metallic musical instrument native to Kerala in southern
India. Resembling a miniature pair of cymbals, this bronze-made instrument consists of two
pieces. When played, one part of the cymbal is held in the left hand, while the other is struck
against it. Despite its small size, the Elathalam is thicker than standard cymbals, producing a
distinctive chime.<br /><br />
Although the Elathalam typically doesn't take on a lead role, it is an integral part of various
ethnic Kerala percussion ensembles such as Panchavadyam, Chenda melam, Thayambaka,
and Kailaya vathiyam. Additionally, it is utilized by the second singer in Kathakali performances,
providing beats in Kuzhal Pattu and Kombu Pattu.
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
