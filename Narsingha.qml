import QtQuick
import QtQuick.Controls
Rectangle{
    id: root
    color: 'white'
    property string instrumentName: "Narsingha"
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
        dataText: "<p>The narsingha, also spelled ransinga or ramsinga, is a primitive trumpet made of copper or
copper alloys used in India and Nepal. It is characterized by its \"S\" shape, formed by two metal
curves that can also be reassembled into a crescent. The instrument belongs to a group of
curved-tube instruments, including the narsinga and sringa, and may be related to the laawaa
and Tibetan dungchen.<br /><br />
The term \"srnga\" in Sanskrit means horn and has been historically used for various shapes and
sizes of horns, including straight ones and those made from water buffalo horns with
mouthpieces from ox horns. Alternate spellings include \"Sig,\" \"Siga,\" and \"Singha.\"<br /><br />
In India, a specific pronunciation, \"ramsinga,\" is used, featuring four pipes of very thin metal
nested within each other. It is mentioned in Emilio Salgari's works and associated with the
thugee cult. The ramsinga is also referenced in Foucault's Pendulum, played by a devotee of a
druidic sect.<br /><br />
The narsinga, historically played in a C shape in Nepal by Damai caste musicians, is part of
groups like the damai baja. This form is used in Nepal, Himachal Pradesh, and southern Bihar.
Additionally, the Narasingha horn is played by Gawantaris of the Udasi sect of Sikhism to
announce religious processions.
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
