import QtQuick
import QtQuick.Controls
Rectangle{
    id: root
    color: 'white'
    property string instrumentName: "Tumbi"
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
        dataText: "<p>The tumbi, also known as toombi or toomba, is a traditional musical instrument originating from the
Punjab region in the northern Indian subcontinent. This high-pitched, single-string plucking instrument is
closely tied to the folk music of Punjab and has gained popularity in contemporary Western Bhangra
music.<br /><br />
The modern popularity of the tumbi can be attributed to Lal Chand Yamla Jatt (1914-1991), a renowned
Punjabi folksinger. During the 1960s, 1970s, and 1980s, numerous Punjabi singers embraced the tumbi,
including notable figures like Kuldeep Manak, Mohammed Sadiq, Didar Sandhu, Amar Singh Chamkila,
and Kartar Ramla. Punjabi Sufi singers like Kanwar Grewal and Saeen Zahoor also incorporate the
instrument into their performances.<br /><br />
Constructed with a wooden stick affixed to a gourd shell resonator, the tumbi features a singular metallic
string that stretches across the resonator via a bridge and connects to a tuning key at the stick's end. To
create sound, players employ a consistent flick and retraction motion of their first finger on the string.
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
