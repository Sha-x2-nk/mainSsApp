import QtQuick
import QtQuick.Controls
Rectangle {
    id: textDataBox
    property string dataText
    ScrollView {
        anchors.fill: parent

        TextArea{
            id: textDataText
            textFormat: Text.RichText;
            text: textDataBox.dataText
            wrapMode: Text.WordWrap
            font.pixelSize: 24
            color: "black"
            readOnly: true
            // clip: true
        }
    }
}
