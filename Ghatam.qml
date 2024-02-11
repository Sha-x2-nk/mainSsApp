import QtQuick
import QtQuick.Controls
Rectangle{
    id: root
    color: 'white'
    property string instrumentName: "Ghatam"
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
        dataText: "<p>The ghaṭam, also known as ghatam, is a traditional percussion instrument extensively used in
various musical genres in India, particularly in Southern India. In Punjab, a similar instrument is
called gharha, and in Rajasthan, it is referred to as madga or pani mataqa (water jug).<br /><br />
This ancient instrument is shaped like a clay pot with a narrow mouth that slants outward to form
a ridge. Typically made from clay mixed with brass or copper filings and a small amount of iron
filings, the ghatam's pitch depends on its size. The addition of plasticine clay or water can
slightly modify the pitch.<br /><br />
Despite its resemblance to a regular clay pot, the ghatam is specifically crafted as a musical
instrument. The quality of the pot's tone depends on its construction, requiring even thickness of
the walls to produce a consistent and pleasant sound.<br /><br />
Most ghatams are produced in Manamadurai, near Madurai in Tamil Nadu, although they are
also manufactured in Chennai and Bangalore. Manamadurai ghatams are renowned for their
special tonal quality, attributed to the unique mud used in their making. These ghatams are
typically heavy and thick, with tiny shards of brass mixed into the clay, resulting in a harder
playing experience but producing a sharp metallic ringing sound favored by some musicians.<br /><br />
The term \"ghaṭam\" is linguistically rooted in Sanskrit, where it is derived from the term
\"ghaṭaka,\" meaning pot, and the related term \"kuṇḍa,\" which refers to a pitcher. In Tamil, a
cognate term for pot is \"kuḍam,\" specifically denoting a water pot. Importantly, the term
\"ghaṭam\" holds a distinct meaning as a percussive musical instrument, while the other terms
describe everyday utensils without explicit musical connotations.
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
