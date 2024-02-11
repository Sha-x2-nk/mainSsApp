import QtQuick
import QtQuick.Controls

Item {
  id: imageItem
  property string imageSource
  height: image.implicitHeight
  width: image.implicitWidth
  Image {
    id: image
    source: imageItem.imageSource
    anchors.centerIn: parent
    height: parent.width * (sourceSize.height / sourceSize.width)
    width: parent.width
    fillMode: Image.PreserveAspectFit
    smooth: true
    MouseArea {
      anchors.fill: parent
      onClicked: window2.show()
    }
  }

  Window{
      id: window2
      width: zoomedImage.implicitWidth
      height: zoomedImage.implicitHeight
      title: "Zoomed Image"
      Image{
          id: zoomedImage
          source: imageItem.imageSource
          anchors.fill: parent
          fillMode: Image.PreserveAspectFit
          smooth: true
      }
  }
}
