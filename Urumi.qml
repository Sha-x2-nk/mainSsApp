import QtQuick
import QtQuick.Controls
Rectangle{
    id: root
    color: 'white'
    property string instrumentName: "Urumi"
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
        dataText: "<p>The urumi, also known as urumee, is a traditional double-headed hourglass drum originating
from Tamil Nadu, South India. Crafted from jackwood or other woods like rosewood, the drum
features intricately carved hollow shells with cowhide stretched over thin metal rings for both
heads. The heads are perforated with approximately seven to eight holes along the outer
circumference. A continuous rope, woven in a V-shape pattern, maintains tension between the
heads. Lizard skin may be used for the right head. To address issues like slackening during the
monsoon season, small coils of string or metal tied around the ropes near the left head can be
adjusted horizontally to modify the tension between the heads. This enables drummers to easily
rectify any playing difficulties caused by changes in weather conditions.<br /><br />
The urumi drum is widely believed to possess supernatural and sacred powers, and its
performance in religious ceremonies and processions is thought to induce spirit possessions or
trance. This drum is also played in the neighboring South Indian state of Kerala. There are two
main types of ensembles for the urumi:<br /><br />
1. **Urumi Melam:** This ensemble typically includes double-reed instruments called
Nadaswaram, a pair of double-headed drums known as pambai, and one to three urumi drums.
Urumi Melam is specifically associated with funerals and other inauspicious occasions.<br /><br />
2. **Naiyandi Melam:** This is the more common folk ensemble associated with rituals and
dance. A typical Naiyandi Melam consists of two double-reed Nadaswaram, one or two barrel
drums called thavil, a kettle drum played with leather straps known as thamukku, a pambai, and
an urumi. In the popular dance form called Devarattam, usually, 2 to 3 urumis are played with
specific beats, and sometimes a thappu (parai) is played in the background to maintain tempo.
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
