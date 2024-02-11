import QtQuick
import QtQuick.Controls
Rectangle{
    id: root
    color: 'white'
    property string instrumentName: "Hulusi"
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
        dataText: "<p>The hulusi, also known as the cucurbit flute or gourd flute, is a traditional wind instrument
originating from China, Vietnam, and the Shan State, also played by the indigenous people of
Assam. Held vertically, it features three bamboo pipes passing through a gourd wind chest. The
central pipe has finger holes, while the outer two function as drone pipes, with one sometimes
being ornamental. The drone pipe can be stopped using a finger hole. Some hulusi variants
have keyed finger holes for extended range, akin to clarinets or oboes. Originally used in
Myanmar's Shan State, Yunnan province, and Assam, especially by the Dai people, the hulusi
has gained popularity across China and among various ethnic groups in Assam. In Vietnam, it is
known as the \"Sáo Bầu\" or Gourd Flute. Similar to the bawu, the hulusi produces a pure, mellow
sound resembling a clarinet. A related instrument, the hulusheng, is a mouth organ with a gourd
wind chest.<br /><br />
The name of the instrument is derived from the Mandarin Chinese term \"húlu\" (葫蘆絲/葫芦丝),
which means \"Calabash gourd,\" and \"si,\" meaning \"silk,\" reflecting the instrument's smooth
tone. In the Dai (Tai Nuea) language of Dehong, it is known as \"pi lamtao,\" and in Lue, Khun,
Yuan (Northern Thailand), Lao, and Thai languages, it is referred to as \"pi namtao.\" In Assam, it
is called \"Huluxi.\"

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
