import QtQuick
import QtQuick.Controls
Rectangle{
    id: root
    color: 'white'
    property string instrumentName: "pambai"
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
        dataText: "<p>The pambai, also known as pamba, is a set of cylindrical drums utilized in temple festivities and
traditional music in Tamil Nadu and Andhra Pradesh, India. A specific community in southern
Andhra, the pambaias, is known for playing this instrument. The pair of drums is either held
close to the player's waist or placed on the ground, and they are played using sticks or a
combination of hand and stick. While some versions feature drums made entirely of wood, there
is a type of pambai where one drum is made of wood (veeru vanam) and the other of brass
(vengala pambai). The pambai is commonly part of the traditional ensemble known as naiyandi
melam.
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
