import QtQuick
import QtQuick.Controls
Rectangle{
    id: root
    color: 'white'
    property string instrumentName: "ChendaMelam"
    Text{
        id: titleText
        text: "Chenda Melam"
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
        dataText: "<p>Chenda Melam refers to the use of the Chenda, a traditional percussion instrument, in various
Kerala art forms such as Kathakali, Kodiyattam, and Theyyam. It has been a prominent musical
tradition in Kerala for over 300 years and is an integral part of the state's festivals. There are
seven types of melams, including Panchari melam, Champa, Chempada, Adantha, Anchadatha,
Druvam, and Pandi melam, with the first six collectively known as Chempada melangal.
Additionally, two more melams, namely Navam and Kalpam, are part of Kerala's musical
heritage.<br /><br />
The Chenda Vattam, or the drumhead used on the Chenda, needs to be very thin for classic
Chenda Melam styles like Panchari melam, Pandi Melam, or Thayambaka. However, for
Shingari Melam Chenda, the drumheads are hard and inexpensive to produce. It's worth noting
that Shingari Melam is not considered a classical art form in this musical tradition.
The Chenda is a cylindrical percussion instrument with its origins in Kerala, widely utilized in
Tulu Nadu in Karnataka and Tamil Nadu, India. Known as \"chende\" in Tulu Nadu, it holds
significant cultural importance in both Kerala and Tulu Nadu.<br /><br />
Renowned for its loud and robust sound, the Chenda has two sides: the left side, referred to as
\"Edamthala\" (Left Head), and the right side, known as \"Valamthala\" (Right Head). The
\"Edamthala\" consists of one or two layers of cow skin, while the \"Valamthala\" has five or seven
layers to produce a bass sound. The skins are dried and affixed to wooden rings (Chenda
Vattam) made from the trunk of a locally available palm tree or bamboo, using gum from the
seed of the \"pananchi maram\" tree. The circular frame is shaped by boiling in a vessel and
drying. The Chenda's body, 1 ft in diameter and 1.5 inches thick, is crafted from the soft wood of
the jackfruit tree (Varikka Plavu). The thickness is reduced at specific points to enhance
resonance. Replacement of the wooden rings with the skin (Chenda Vattam) is necessary when
the sound quality diminishes, requiring an average of 15 rings per year for regular Chenda
artists.<br /><br />
Primarily featured in Hindu temple festivals and religious art forms of Kerala, the Chenda is an
accompaniment for various dances and rituals, including Kathakali, Koodiyattam, Kannyar Kali,
and Theyyam. It is also played in the Tulu Nadu dance-drama Yakshagana, with a variant called
Chande. The Chenda is traditionally considered an Asura Vadyam (demonic instrument),
symbolizing its inability to harmonize. Crafting Chendas is now associated with specific
\"Perumkollan\" (smith) families in villages like Peruvembu, Nemmara, Lakkidi, Vellarkad, and
Valappaya in Kerala. Vellarkad, in particular, is renowned for the instrument's quality, attracting
many famous Chenda percussionists.
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
