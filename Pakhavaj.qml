import QtQuick
import QtQuick.Controls
Rectangle{
    id: root
    color: 'white'
    property string instrumentName: "Pakhavaj"
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
        dataText: "<p>The pakhavaj is a double-headed drum with a barrel shape, originating from the Indian
subcontinent. It is considered the oldest version of double-sided drums, and its descendants
include the mridangam of Southern India and kendang of Maritime Southeast Asia, among other
South Asian double-headed drums. In its earlier forms, it was crafted with clay.<br /><br />
This percussion instrument is predominantly used in the dhrupad style of Indian classical music,
and occasionally in other sub-forms of music and dance performances such as kathak, odissi,
and Marathi. The pakhavaj produces a low, mellow tone with rich harmonics. Its sides are made
from animal skin, often goat skin, and players position the instrument horizontally in front of
themselves while sitting on the floor with crossed legs. The larger bass-skin is placed on the left
side, and the treble skin on the right, with a cushion sometimes used under the treble face.<br /><br />
To enhance the bass sound, the bass face is coated with fresh wheat dough, acting as \"kiran.\"<br /><br />
The tuning process is similar to that of the tabla, with wooden wedges placed under the
tautening straps. Due to the varied thickness of the treble face's skin, hitting different areas can
produce tones that are a semitone apart. Fine-tuning is achieved with the woven outer ring
(gajra), an extension of the skin. While polymer-based substitutes are available, they are not
commonly used, especially for the bass skin, where a batter of wheat flour and water is applied
to enhance the low-pitched sound.<br /><br />
Nana Panse, Nathdwara, and Kudai Singh are likely the main existing traditions or schools
(gharanas) of pakhavaj. However, recent historical records indicate the presence of at least 11
distinct styles, including Jaawli, Mathura, Punjab, Kudau Singh, Nana Saheb Panse,
Nathdwara, Bishnupur, Gurav parampara, Mangalvedhekar, Gwalior, Raigarh, Gujarat, Jaipur,
and Jodhpur.
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
