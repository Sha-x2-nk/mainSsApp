import QtQuick
import QtQuick.Controls
Rectangle{
    id: root
    color: 'white'
    property string instrumentName: "Sarinda"
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
        dataText: "<p>The sarinda, also known as saranda, is a traditional stringed musical instrument originating from
North and Eastern India as well as Pakistan. It bears resemblance to instruments like the
Sarangi, lutes, and fiddles. Crafted from a single wooden block, the sarinda is played with a bow
and features three playable strings – two made of steel and one of gut. Additionally, it boasts
thirty-six sympathetic strings that cascade down a slim waist and pass through an oval-shaped
resonating chamber, partially covered with animal skin. Typically played in a vertical orientation
while sitting on the ground, the sarinda offers a unique and culturally rich musical experience
Guru Arjan, the fifth Sikh guru, is credited with introducing the Sarinda to the Sikhs. He
personally played the instrument during kirtan performances, contributing to its integration into
Sikh musical traditions.<br /><br />
The Sarangi and Nepali Sarangi bear similarities to the Saranda. In the Bodo community, it is
referred to as Serja or Serenja. Notably, in 2022, the Saranda received recognition with a
Geographical Indication (GI) certificate, signifying its unique cultural and regional significance.
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
