import QtQuick
import QtQuick.Controls
Rectangle{
    id: root
    color: 'white'
    property string instrumentName: "Dilruba"
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
        dataText: "<p>The dilruba, alternatively spelled dilrupa, is an Indian bowed musical instrument that is a bit
larger than the esraj and features a larger square resonance box. It holds significance in Sikh
history.<br /><br />
Its popularity beyond India grew in the 1960s when Western musicians, including the Beatles
during their psychedelic era, incorporated it into their songs, notably in the track \"Within You
Without You.\"<br /><br />
The instrument gets its name from the Persianized Hindustani term دلربا/दि लरुबा (dilrubā), which
translates to \"that which ravishes or steals the heart\" in a literal sense.<br /><br />
The traditional narrative suggests that the dilruba was supposedly created approximately 300
years ago by the 10th Sikh Guru, Guru Gobind Singh. He is said to have based it on the older
and heavier taus, innovating to make it more manageable for the Sikh army (the khalsa) to carry
on horseback. However, there is skepticism within the research community regarding the
accuracy of this traditional origin story. Some individuals, such as Bhai Avtar Singh Raagi, who
carry forward the tradition of kirtan, have clarified that the dilruba's creation is associated with
Maharaja Bhupinder Singh's patronage and credited to Mahant Gajja Singh.<br /><br />
Following the introduction of the harmonium to the Indian Subcontinent by the British Raj, the
dilruba fell out of favor due to its relatively steeper learning curve. In recent times, there has
been a resurgence in its use, particularly accompanying ragis in the Harmandir Sahib (Golden
Temple) since 2006. Additionally, the dilruba has seen increased popularity in teaching contexts
within India and globally.<br /><br />
The dilruba features a medium-sized neck similar to a sitar, equipped with approximately 20
metal frets to guide the player's hand placement. The neck accommodates a lengthy wooden
rack holding 12-15 sympathetic strings. With four main metal strings, the instrument
incorporates a soundboard made of stretched goatskin, akin to a sarangi. Optionally, a gourd
may be attached to the top for balance or tonal enhancement. The dilruba can be positioned
between or on the knees while the player kneels or on the floor just in front of the player, with
the neck leaning on the left shoulder. Played with a bow in the right hand, the other hand moves
along the strings above the frets longitudinally. This allows the player to achieve the
characteristic portamento or meend in Indian music by sliding the note up or down.
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
