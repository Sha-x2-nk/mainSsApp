import QtQuick
import QtQuick.Controls
Rectangle{
    id: root
    color: 'white'
    property string instrumentName: "Manjira"
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
        dataText: "<p>The taal, also known as manjira, manjeera, jalra, karatala, kartal, or gini, is a pair of clash
cymbals originating in the Indian subcontinent, producing high-pitched percussion sounds. In its
basic form, it comprises a pair of small hand cymbals. The term \"taal\" is derived from the
Sanskrit word \"Tālà,\" meaning a clap. Integral to Indian music and culture, it finds use in various
traditional customs such as Bihu music and Harinaam, representing a type of Ghana vadya.<br /><br />
In Hindu religious contexts, it is referred to as karatalas (karatāla), where \"kara\" signifies \"hand\"
or \"arm,\" and \"tāla\" denotes \"rhythm\" or \"beat.\" Typically used to accompany devotional music
like bhajan and kirtan, these cymbals are commonly employed by Hare Krishna devotees during
harinam and are widespread in all forms of Hindu devotional music. In some contexts, it is also
called karatala or kartal.<br /><br />
There are various types of taal categorized by size, weight, and appearance:
1. Bortaal: A larger clash cymbal with a weight of approximately 1½−2 kg. It holds cultural
significance in Assamese traditions and is used in dance-music performances like Gayan-Bayan
and Bortaal Nritya.<br /><br />
2. Majutaal: A medium-sized clash cymbal.<br /><br />
3. Khutitaal or Xarutaal: A small-sized clash cymbal, also known as Manjira or Karatala. Widely
used in traditional, folk, and classical music in India, it is also seen in various dance forms like
Bharat Natyam, Kuchipudi, Manipuri, Mohiniattam, Andhra Natyam, and Kathakali.<br /><br />
4. Ramtaal or Khoritaal: Instruments with wooden handles containing multiple pairs of small
cymbals, generally known as Khartal in India.<br /><br />
In Nepal, a similar instrument called Jhyamta is used, particularly by the Kirat community in
cultural festivals and social functions.<br /><br />
In Tibetan culture, a similar instrument known as tingsha is utilized.<br /><br />
Manjiras are commonly played in folk and devotional music, featuring prominently in religious
events and ceremonies in India, especially in bhajans. They are ancient instruments often
depicted in pictures of ancient temples.<br /><br />
In Marathi and Gujarati folk music, manjiras, known as Taal in Maharashtra, play a significant
role. Initially used in aarti, they hold great importance in bhajans, santvani, and dayro in Gujarat
and Maharashtra.</p>"
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
