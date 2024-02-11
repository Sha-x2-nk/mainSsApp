import QtQuick
import QtQuick.Controls
Rectangle{
    id: root
    color: 'white'
    property string instrumentName: "Udukai"
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
        dataText: "<p>The udukkai, also known as udukai or udukku in Tamil (உடுக்கை ), belongs to the
membranophone percussion instrument family used in folk music and prayers in Tamil Nadu,
India, and Nepal. These drums have an ancient hourglass design similar to the northern damaru
and southern idakka, with a small snare stretched over one side. Made of wood or brass, the
udukkai is highly portable and is played with bare hands. Adjusting the pitch is possible by
squeezing the lacing in the middle. Originating in Tamil Nadu, it is part of a family that includes
instruments like the huruk, hurkî, hurko, hudko, hudka, and utukkai.<br /><br />
An alternate drum referred to as udukkai is the damru, particularly when held by Shiva.</p>"
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
