import QtQuick
import QtQuick.Controls
Rectangle{
    id: root
    color: 'white'
    property string instrumentName: "MohanVeena"
    Text{
        id: titleText
        text: "Mohan Veena"
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
        dataText: "<p>The term \"Mohan veena\" is associated with two distinct plucked string instruments used in
Indian classical music, particularly in Hindustani classical music. The first version, created in
1948 by Radhika Mohan Maitra, is a combination of the sarod, veena, and surbahar. Thakur
Jaidev Singh, the chief producer of All India Radio in 1949, named it after Maitra. Pandit Maitra
showcased the instrument in numerous national programs and recordings until his death in
1981. In 2020, Pandit Joydeep Mukherjee, a grand disciple of Pandit Maitra, revived the Mohan
veena and received recognition for his efforts, performing it at the G20 Leaders' Summit in
2023.<br /><br />
The second Mohan veena is a modified archtop Hawaiian guitar developed by Vishwa Mohan
Bhatt. This version, commonly referred to as Mohan veena, has 19 to 21 strings, including
melody, drone, and sympathetic strings. It is played in the lap using a bar, similar to a slide
guitar, and features a gourd screwed into the back of the neck for enhanced sustain and
resonance.

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
