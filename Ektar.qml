import QtQuick
import QtQuick.Controls
Rectangle{
    id: root
    color: 'white'
    property string instrumentName: "Ektar"
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
        dataText: "<p>The ektara is a one-stringed musical instrument widely used in traditional music across the
Indian subcontinent, including Bangladesh, India, and Pakistan. It was originally popular among
wandering bards and minstrels in India and is played by plucking its single string with one finger.
The instrument features a gourd resonator covered with skin, serving as a drone lute, with a
bamboo neck inserted through it.<br /><br />
In contemporary times, the term \"ektara\" has been used for three distinct instruments in modern
India. One version resembles a lute, consisting of a bamboo stick inserted through the side of a
wooden bowl, covered with deerskin. It has a single string running from a peg at the top, down
the stick-neck, across a bridge on the deerhide soundboard, and is plucked with the musician's
index fingernail.<br /><br />
Another version, known as the gopichanta, has a drum-like body and a one-piece bamboo neck
with a pegbox and two laths formed from a carved section of hollow bamboo. The string is
attached to a wooden peg on the side of the pegbox, and the instrument may be played by
plucking the string or tapping the drumhead. Squeezing and releasing the bamboo laths can
change the tension of the string, altering the pitch.<br /><br />
The third instrument referred to as ektara, also called tuṇtuṇe, is a drum with a stick attached
along the outer wall. A string runs from a hole in the drumhead to a peg at the end of the stick.
This version is held under the left arm, \"tuned to the tonic,\" and played for rhythm and as a
drone. It is used in Western India by Hindu Sadhus, Islamic Sufi saints, as well as Bhil, Kukna,
and Warli tribes.<br /><br />
Overall, the ektara has a rich cultural and musical significance, and its variations are utilized in
diverse regions and contexts across the Indian subcontinent.<br /><br />
The ektara holds significance in Baul music from Bengal, but there has been controversy in
recent times regarding the appropriation and perceived distortion of Baul music by popular
bands and films in the region. There is a trend of blending traditional instruments like the ektara
with contemporary sounds in an effort to cater to a broader audience. Purna Das Baul has
expressed concern, stating that this mixing is undermining the authentic beauty of Baul music
and leading to its dilution.</p>"
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
