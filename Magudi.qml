import QtQuick
import QtQuick.Controls
Rectangle{
    id: root
    color: 'white'
    property string instrumentName: "Magudi"
    Text{
        id: titleText
        text: "Magudi or Snake Charmer’s Flute"
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
        dataText: "<p>The pungi, also known as bīn, is a musical instrument originating from the Indian subcontinent.
It features a reservoir for air, blown into and then channeled into two reed pipes. The instrument
is associated with snake charming in street performances, especially in regions like Sindh and
Rajasthan, where it is played by cobra charmers.<br /><br />
Constructed from a solid coconut cover and bamboo, the pungi consists of a hollow gourd
vessel and two pipes, one for drone-like sounds and the other for melody. The melody pipe has
seven holes with a one-octave range, while the drone pipe has one hole. Circular breathing is
employed to play both pipes simultaneously, creating a hypnotic effect. Traditionally, it is played
solo due to its difficulty in harmonizing with other instruments.<br /><br />
In terms of names, it is referred to as been, tumbi, and bansi in northern India, and magudi,
mahudi, pungi, and pambaattikulhal in southern India.<br /><br />
Historically, the pungi has been significant in Indian folk culture, particularly in snake charming
practices in regions like Terai and Nepal. However, the Wildlife Protection Act of 1972 led to a
ban on snake charming throughout India in 1991, affecting the traditional use of the pungi for
this purpose. Despite the ban, the instrument continues to be a part of India's musical heritage,
known for its high, thin tone and continuous low humming.
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
