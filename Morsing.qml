import QtQuick
import QtQuick.Controls
Rectangle{
    id: root
    color: 'white'
    property string instrumentName: "Morsing"
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
        dataText: "<p>The morsing, also known as mukharshanku, mourching, morchang, or morchang, is a musical
instrument similar to the Jew's harp. It is primarily used in Rajasthan, South Indian Carnatic
music, and Sindh, Pakistan. Categorized as a lamellophone and a sub-category of plucked
idiophones, the instrument consists of a horseshoe-shaped metal ring with two parallel forks
forming the frame. In the middle, there is a metal tongue or trigger fixed to the ring at one end
and free to vibrate at the other. The trigger, bent at the free end in a plane perpendicular to the
circular ring, can be struck to produce vibrations.<br /><br />
The origins of the morsing can be traced back more than 1500 years, where a musical sound
was produced by striking a fishbone. Although the exact origin in India is not well-documented
and is often derived from folk tales, it is primarily found in South India, Rajasthan, and some
parts of Assam. In Bengali and Assamese folk music, it is occasionally played alongside
Rabindrasangeet, while in South India, it is featured in Carnatic concerts and percussion
ensembles. In Rajasthan, it is known as morchang and is used as a percussion instrument in lok
geet (folk music). The morsing has historical use in Hindi cinema by renowned music directors
like R.D. Burman and S.D. Burman. It has experienced a resurgence in the twentieth century,
with street performers like Varun Zinje playing it in a contemporary style. The morsing is
considered a precursor to subsequent instruments such as the harmonica and the harmonium.
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
