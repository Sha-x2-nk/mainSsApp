import QtQuick
import QtQuick.Controls
Rectangle{
    id: root
    color: 'white'
    property string instrumentName: "JodiyaPava"
    Text{
        id: titleText
        text: "Jodiya Pava"
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
        dataText: "<p>Jodia Pava, a wooden flute-like instrument, is widely played by folk musicians from Gujarat,
    Punjab, Sindh, Rajasthan, and Balochistan. Also known by various names such as Mattian,
    Jorhi, Pava Jorhi, Do Nali, Donal, Giroh, Satara, or Nagozhe, this instrument consists of two
    paired flutes, one for melody. The flutes can be joined or held separately in hand, requiring
    constant blowing of air to produce music, accompanied by a distinctive gurgling sound on each
    beat.<br /><br />
    Originally, both flutes of the twin paws were of equal length, but over time, one became shorter,
    resulting in a male and female flute. Despite this asymmetry, any tune can be played with this
    instrument. Jodia Pava has gained prominence in traditional and folk music, especially in
    Punjab, where it has become a significant instrument in the energetic Punjabi bhangra music. It
    also holds importance in Rajasthani and Baloch folk music.<br /><br />
    Renowned musicians who have mastered the Jodia Pava include Sindhi artists like Khamiso
    Khan, Ustad Misri Khan Jamali, and Akbar Khamiso Khan. In the Punjabi folk music scene,
    Gurmeet Bawa stands out as a notable artist who skillfully plays this instrument. Meanwhile, in
    the Gujarati music tradition, Musa Gulamjat and Nurmamad Sodha are well-known twin pava
    musicians.<br /><br />
    In summary, Jodia Pava is a distinctive wooden flute instrument with paired flutes, notable for its
    role in various folk music traditions across different regions of India and Pakistan, played by
    accomplished musicians in diverse cultural contexts.
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
