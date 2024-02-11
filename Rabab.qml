import QtQuick
import QtQuick.Controls
Rectangle{
    id: root
    color: 'white'
    property string instrumentName: "Rabab"
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
        dataText: "<p>The Rubab, also spelled as Rubab, Robab, or Rabab in various languages, is a stringed
musical instrument resembling a lute. It holds significant cultural importance and serves as one
of Afghanistan's national instruments, widely played by communities in Pakistan and India,
including Pashtuns, Balochis, Sindhis, Kashmiris, and Punjabis. The Rubab comes in three
main variants: the Kabuli rebab in Afghanistan, the Rawap in Xinjiang, and the Pamiri rubab in
Tajikistan, along with the seni rebab in northern India. This instrument and its variations have
spread across West, Central, South, and Southeast Asia. While the Kabuli rebab is named after
the Arabic rebab and played with a bow, in Central Asia and the Indian subcontinent, it is
plucked, with distinct differences in construction.<br /><br />
Crafted from a single wood piece, the body of the instrument is shaped with a head that
encases a hollow bowl, forming the sound chamber. The bridge is positioned on the skin,
secured by the string tension. The instrument features three melody strings tuned in fourths,
accompanied by two or three drone strings and possibly up to 15 sympathetic strings. Typically,
the mulberry tree trunk serves as the material for the body, the head is made from animal skin
like goat, and the strings are crafted from either young goat intestines (gut) or nylon.<br /><br />
Recognized as the \"lion of instruments,\" the rubab holds the status of one of Afghanistan's two
national instruments, alongside the zerbaghali. It plays a pivotal role in classical Afghan music,
distinguishing itself as the Kabuli rebab when compared to the Seni rebab of India. While the
Kabuli rubab has a slightly different appearance than its Indian counterpart, it is considered the
precursor to the north Indian sarod, despite being fretted unlike the sarod.<br /><br />
The rubab's historical roots date back to the 7th century CE, as evidenced in old Persian texts
and mentioned by various Sufi poets. Serving as the traditional instrument of Khorasan, it
enjoys widespread popularity in Afghanistan, Pakistan, Azerbaijan, Iran, Turkey, Iraq, Tajikistan,
Uzbekistan, as well as in China's Xinjiang province and the Jammu and Kashmir and Punjab
regions of India. In Sikhism, the rubab holds historical significance as the first instrument used;
Bhai Mardana, a companion of Guru Nanak, played it while the guru sang shabads. This
tradition continues among Sikhs, including the Namdharis who uphold the art of rubab playing.
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
