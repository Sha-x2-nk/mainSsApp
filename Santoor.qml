import QtQuick
import QtQuick.Controls
Rectangle{
    id: root
    color: 'white'
    property string instrumentName: "Santoor"
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
        dataText: "<p>The Indian santoor is a hammered dulcimer with a trapezoid shape, deriving from the Iranian
santur. Typically crafted from walnut, it features 25 bridges, each supporting 4 strings, totaling
100 strings. Originating in ancient times, this traditional instrument is prominent in Jammu and
Kashmir and was referred to as Shatha Tantri Veena in ancient Sanskrit texts.<br /><br />
The ancient Sanskrit texts mention it as \"shatatantri vina,\" translating to the \"100-stringed vina.\"<br /><br />
In Kashmir, the santoor was employed in accompanying folk music, particularly in the Sufiana
Mausiqi style. Some scholars suggest its origins trace back to an improvised version of a
primitive instrument from Mesopotamian times (1600–900 B.C.). Sufi mystics utilized the
santoor alongside their hymns. In the Indian santoor tradition, musicians use specially-shaped
lightweight mallets called mezrab, held between the index and middle fingers.<br /><br />
The trapezoid structure is typically constructed using walnut or maple wood. The upper and
lower boards may consist of plywood or veneer. The top board, referred to as the soundboard,
is equipped with wooden bridges to support taut metal strings. These strings, organized in
groups of 3 or 4, are fastened to nails or pins on the left side of the instrument and stretched
across the soundboard, resting on the bridges towards the right side. The right side features
steel tuning pegs, also known as tuning pins, allowing for the adjustment of each string unit to
achieve the desired musical note, frequency, or pitch.</p>"
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
