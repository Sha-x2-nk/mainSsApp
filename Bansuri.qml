import QtQuick
import QtQuick.Controls
Rectangle{
    id: root
    color: 'white'
    property string instrumentName: "Bansuri"
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
        dataText: "<p>The bansuri is an ancient side-blown flute that has its roots in India and Nepal, commonly used
in Nepali lok songs. It is classified as an aerophone and is crafted from bamboo, although
modern variations may incorporate materials like ivory, fiberglass, or metal. Traditionally, it is
made from a single hollow bamboo shaft with seven finger holes. Some models may have six
holes, allowing for a range of two and a half octaves. The length of a bansuri typically falls
between 30 centimeters (12 inches) and 75 centimeters (30 inches), with a thickness
comparable to a human thumb. One end is sealed, and near the closed end is the blow hole.
Longer bansuris produce deeper tones and lower pitches. Unlike some contemporary designs
with mechanical keys, the traditional bansuri relies on the musician's skill to create desired
notes by covering and uncovering the finger holes.<br /><br />
The flute resembling a bansuri is frequently depicted in ancient paintings and reliefs found in
Buddhist, Hindu, and Jain temples. It holds a significant place in the iconography associated
with the Hindu deity Krishna and is intricately linked to the romantic narrative of Krishna and
Radha. The bansuri is specifically revered as the divine instrument of Lord Krishna, often
connected to Krishna's Rasa Lila dance. In some legends, alternative names like \"murali\" are
used for this wind instrument. Despite its strong association with Krishna, the bansuri is also
present in other traditions such as Shaivism. Early medieval Indian texts refer to it as \"vaṃśi,\"
while in the medieval period in Indonesia, both Hindu and Buddhist arts, as well as temple
carvings in Java and Bali dating back to the pre-10th century, refer to this transverse flute as
\"wangsi\" or \"bangsi.\"<br /><br />
According to Ardal Powell, the flute is a straightforward musical instrument that has roots in
various ancient cultures. Legend has it that flutes have three main origins: Egypt, Greece, and
India. Among these, the transverse flute, which is blown from the side, is said to have originated
solely in ancient India, while fipple flutes are found in all three cultures. Powell suggests that the
modern Indian bansuri likely hasn't undergone significant changes since the early medieval era.
However, there is evidence of a differently designed flute in ancient China called the dizi.
Powell, referencing Curt Sachs' The History of Musical Instruments, proposes that the dizi might
not have originated in China but could have evolved from a more ancient Central Asian flute
design. Nevertheless, it remains unclear if there was any direct connection between the Indian
and Chinese flute varieties.</p>"
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
