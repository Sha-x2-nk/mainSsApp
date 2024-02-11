import QtQuick
import QtQuick.Controls
Rectangle{
    id: root
    color: 'white'
    property string instrumentName: "Venu"
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
        dataText: "<p>The venu, an ancient transverse flute in Indian classical music, is a bamboo aerophone
commonly used in the South Indian Carnatic music tradition. Known by various names such as
nadi, tunava, bansuri, pullanguḻal, oodakuḻal, kurungu kuḻal, koḷalu, muraļi, pillana grōvi, vēṇuvu,
and Carnatic Flute in different regions, it holds cultural significance. Described in the Natya
Shastra, a Hindu text on music and performing arts, the venu is associated with Lord Krishna in
Hindu iconography. The instrument has six holes, is thumb-thick, and twelve fingers long.
Similar flutes like murali and vamsika are also mentioned in Sanskrit texts, with varying hole
counts and lengths.<br /><br />
Novice musicians in India often face a decision when starting to learn the flute, as the country
has two distinct types of transverse flutes: the bansuri (North Indian bamboo flute) and the venu
(South Indian bamboo flute). The primary distinctions between these two lie in the raw
materials, construction, and playing style.<br /><br />
For crafting the South Indian venu, artisans typically opt for thicker and denser bamboo that is
sourced from regions like Kerala or southern Tamil Nadu. This bamboo is darker in color and
yields a clear, rich, and mellow tone. On the other hand, Bansuri is typically made from
thin-walled bamboo, longer in length and diameter, and usually sourced from Assam (Silchar). It
has a lighter color and produces a light, airy tone known as \"jawaari.\" Other bamboo varieties
from regions such as Sirsi in North Karnataka and Bihar are also used for making Bansuri.
The flute, known as venu, holds significant importance in Indian mythology and folklore, being
considered one of the original musical instruments alongside the human voice and the veena
(vaani-veena-venu). Linked with the Hindu deity Krishna, who is commonly depicted playing it,
this type of flute is predominantly used in South India. Vishnu is also portrayed as Venugopala,
playing the flute of creation.<br /><br />
Interestingly, the venu was not initially a part of Carnatic classical music until the
groundbreaking contributions of Shri Sharaba Shastri and subsequent refinements by Shri T.R.
Mahalingam, affectionately known as Flute Mali. Due to inherent challenges in sound
production, flutes naturally exhibit a \"cut\" or discontinuity when transitioning between the lowest
and highest notes. In adapting the flute to Carnatic music, modifications were required, including
adding a 7th hole, using thicker bamboo, and employing a technique of adjusting the
embouchure angle by lifting the head when shifting between specific notes. These innovations
facilitated artists in performing Carnatic ragas with all the required gamakas and
embellishments, preserving the essential \"Bhaava\" (emotion) of the raga.
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
