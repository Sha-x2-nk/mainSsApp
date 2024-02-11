import QtQuick
import QtQuick.Controls
Rectangle{
    id: root
    color: 'white'
    property string instrumentName: "Ghanta"
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
        dataText: "<p>The term \"Ghanta\" in Sanskrit refers to a ritual bell used in Hindu religious practices, particularly
in temples. The sound produced by ringing the bell is considered auspicious. Temples typically
have a metal bell at the entrance, and devotees ring it upon entering as a vital step in preparing
for darshan (sacred viewing of the deity). During Pūjā or Yajna ceremonies, priests (poojari) also
ring the bell while performing various rituals, such as waving lights, burning incense, bathing the
deity, or offering food and flowers.<br /><br />
The bell is crafted from five to seven precious metals, each associated with a specific planet.
These metals include lead (Saturn), tin (Jupiter), iron (Mars), copper (Venus), mercury
(Mercury), silver (the Moon), and gold (the Sun). A clapper is attached inside, creating a
high-pitched sound when rung. The top of the bell handle often features a brass figure, such as
Lord Nandi for Shiva worship or Garuda for Vishnu worship.<br /><br />
In Hinduism, bells are commonly hung at the temple dome in front of the Garbhagriha
(sanctum). Devotees ring the bell upon entering, signaling their presence to the deity. The sound
is believed to be auspicious, welcoming divinity and dispelling evil. It is thought that the sound
helps focus the mind during prayer, making it more receptive by disengaging from ongoing
thoughts.<br /><br />
A specific mantra is chanted while ringing the bell, expressing the invocation of divinity and the
departure of demonic forces. From a Kundalini Yoga perspective, the sound of the bell
energizes chakras and balances energy distribution in the body. The number of bell rings
corresponds to the number of letters in the mantra, with suggested counts of 8, 16, 24, or 32
times. Shilpa Shastras recommend making the bell from panchadhatu, representing the five
elements: copper, silver, gold, zinc, and iron.<br /><br />
Symbolically, the bell holds meaning in Hinduism, with its curved body representing Ananta, the
clapper symbolizing Saraswati (goddess of wisdom), and the handle representing Prana Shakti
(vital power) linked to Hanuman, Garuda, Nandi, or Sudarshana Chakra.</p>"
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
