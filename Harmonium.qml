import QtQuick
import QtQuick.Controls
Rectangle{
    id: root
    color: 'white'
    property string instrumentName: "Harmonium"
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
        dataText: "<p>A harmonium, also known as a reed organ or pump organ, is a keyboard instrument that
produces sound by blowing air through tuned reeds. There are two types: foot-pumped and
hand-pumped. The foot-pumped version, invented in 1842 by Alexandre Debain, allows the
player to use both hands on the keyboard while operating pedals with their feet. The
hand-pumped version, created by Dwarkanath Ghose, is popular in South Asian countries for
accompanying various music genres. The first instrument officially called a harmonium was
patented by Alexandre Debain in 1840.<br /><br />
One unique harmonium variant is the Samvadini, created by Bhishmadev Vedi, featuring a
swarmandal (similar to a Zither) fixed within the breadth of the instrument. Another innovation is
the 22-Shruti-Harmonium by Vidyadhar Oke, which allows players to produce 22 microtones
within 12 keys. It has special knobs to regulate reeds, enabling the creation of Ragas with
perfect consonance with a Tanpura. A Shruti box is a keyless harmonium used for producing
drones to support other soloists.<br /><br />
In summary, the harmonium is a versatile instrument with variations designed for different
playing styles, and innovations like the 22-Shruti-Harmonium enhance its capabilities in creating
diverse musical expressions.
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
