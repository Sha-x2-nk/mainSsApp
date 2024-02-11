import QtQuick
import QtQuick.Controls
Rectangle{
    id: root
    color: 'white'
    property string instrumentName: "Sitar"
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
        dataText: "<p>The sitar, an essential instrument in Hindustani classical music, traces its origins to
medieval India. Its development took a significant turn during the 18th century Mughal
period, where Khusrau Khan is commonly acknowledged for his contributions. He is
credited with adapting the sitar, drawing inspiration from the Iranian setar. However, an
alternate viewpoint suggests that the sitar's creation may have been influenced by the
Indian Veena, adding an intriguing layer to its historical narrative.<br /><br />
In terms of its construction, the sitar is characterized by a long neck with movable frets,
a resonating body typically made from materials like pumpkin or teak wood, and a set of
seven main strings. What sets the sitar apart are its sympathetic strings, running
beneath the frets, contributing to a distinctive resonance. The interplay between melody
and sympathetic strings allows the sitar to produce the microtonal nuances essential to
Indian classical music.<br /><br />
The sitar's uniqueness lies in several factors. Firstly, its microtonal capabilities,
facilitated by movable frets, enable musicians to explore intricate ornamentations and
expressive nuances. Additionally, the sitar's playing techniques, such as string bending
and sliding, contribute to its emotive and distinctive sound. The instrument's role
encompasses both melodic and drone elements, with the sympathetic strings adding
layers of complexity to the overall musical texture.<br /><br />
In summary, the sitar's journey from medieval India to its contemporary form involves a
synthesis of cultural influences, technical innovations, and a unique contribution to the
rich tapestry of Indian classical music. Whether inspired by Iranian instruments or
Indian counterparts, the sitar stands as a testament to the cultural crossroads that have
shaped its evolution over the centuries.</p>"
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
