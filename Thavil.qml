import QtQuick
import QtQuick.Controls
Rectangle{
    id: root
    color: 'white'
    property string instrumentName: "Thavil"
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
        dataText: "<p>The thavil, also known as tavil, is a barrel-shaped percussion instrument originating from Tamil
Nadu, widely employed in Andhra Pradesh, Karnataka, Kerala, Telangana, and the
Tamil-majority regions of North and East Sri Lanka, referred to as Tamil Eelam. It plays a crucial
role in various musical genres, including temple music, folk music, and Carnatic music, often
accompanying the nadaswaram. Both the thavil and nadaswaram are indispensable in
traditional South Indian festivals and ceremonies.<br /><br />
In the context of folk music, a pair of broader, slimmer sticks may be utilized. The city of
Thanjavur is renowned for its distinctive variety of thavil, known as Thanjavur Thavil. Thavil
holds a significant presence in the world of Kollywood Filmi songs, with notable appearances in
movies such as \"Thillaanaa Mohanambal,\" \"Paruthiveeran,\" \"Karagattakaran,\" and \"Sarvam
Thaala Mayam.\"<br /><br />
The thavil is a traditional musical instrument with deep roots in the ancient city of Thanjavur,
located in Tamil Nadu. This percussion instrument holds a significant role in Carnatic music
within the Thanjavur region and is predominantly crafted in Thanjavur and Valayapatti.<br /><br />
The thavil is crafted from a solid block of jackfruit wood, shaped into a cylindrical shell. Animal
skin, specifically water buffalo on the right side and goat on the left, is stretched over both ends
of the shell using hemp hoops attached to it. Notably, the right face of the thavil has a greater
diameter than the left side. The tension on the right drum head is high, creating a tight stretch,
while the left drum head is intentionally kept loose to facilitate pitch bending. Consequently, the
larger face produces a higher pitch compared to the smaller face.
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
