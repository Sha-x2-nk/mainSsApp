import QtQuick
import QtQuick.Controls
Rectangle{
    id: root
    color: 'white'
    property string instrumentName: "Parai"
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
        dataText: "<p>The \"parai\" is a traditional Tamil frame drum, approximately 35 centimeters in diameter, utilized
in the parai attam dance. Constructed with a shallow wooden ring, one side is covered with
stretched cowhide affixed to the wooden frame. Neem wood is the preferred material, although
other types may be used. The drum consists of three wooden arcs connected by metal plates.
Played with two sticks, it is slung over one shoulder, allowing the drummer to play while
standing, walking, or dancing.<br /><br />
The technique involves using two sticks: a long, thin bamboo stick called Sindu Kuchi and a
short, thick stick called Adi Kucchi. The short stick is held loosely between the thumb and three
fingers of the dominant hand, positioned near the lower rim of the drum. The long stick, held in
the weak hand, rests on the upper part of the frame. Drummers employ three fundamental
strokes for rhythmic patterns: striking the center with the short stick, \"slapping\" the center with
the long stick, and striking the drum with both sticks in succession.<br /><br />
Before performances, drummers heat the parai close to a small bonfire to absorb moisture and
tighten the drum heads, resulting in a loud, high-pitched cracking sound. Various rhythms, such
as Otthaiyadi pathai, Thenmozhi pongodi, Samantha, Thullu, and Uyirppu, are played on the
parai.<br /><br />
Historically, the word \"parai\" in Tamil means \"to speak\" or \"to tell.\" The drums served multiple
purposes, including signaling gatherings, alerting to war, announcing victories or defeats, and
participating in festivals and celebrations. With 156 traditional drum beats for different purposes,
it played a significant role in the royal courts of Sangam, Chola, and Pandiyan rulers. The parai
and the parai attam dance are symbolic of Tamil culture. Initially referred to as \"thappu\"(meaning \"inauspicious\") during the 14th century AD Vijayanagara rule, the term aimed to
derogate Tamil arts.<br /><br />
There are various types of parai, including Ariparai, Areriparai, Uvagaiparai, Saaparai,
Vettiyanparai, Neytharparai, Pampai, Meenkotparai, Maruthanilaparai, Kallavadam,
Kuravaiparai, Thadaru, Kurumparai, Kodukotti, Kotparai, Thamuku, Nisaalam, Soosikam,
Thakkai, Thadaari, Parathappattai, Thalaiparai, Padalai, Pandaramelam, Panriparai, Murasu,
Veparai, Poosatrunnumai, Murugiyam, Veriyaatuparai, Veeranam, and Panchamasatham.</p>"
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
