import QtQuick
import QtQuick.Controls
Rectangle{
    id: root
    color: 'white'
    property string instrumentName: "Piano"
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
        dataText: "<p>The piano, a keyboard instrument with a rich and storied history, produces sound through the
striking of keys. Traditional pianos had fewer keys, with the modern standard being 88 keys.<br /><br />
These include 52 white keys representing the C major scale and 36 shorter black keys for
sharps and flats, offering a wide range of 88 pitches across seven octaves. The two main
categories of pianos are the grand piano, esteemed for its superior sound and key control, and
the upright piano, more prevalent due to its smaller size and affordability.<br /><br />
Depressing a key initiates the action where coated wooden hammers strike tightened strings
inside the piano. These vibrations are then transmitted through a bridge to a soundboard that
amplifies the sound. Releasing the key employs a damper to stop the string's vibration. The
sustain pedal, located at the base, holds the dampers off the strings, allowing for the sustained
notes that are crucial for smooth transitions between bass and treble ranges and the creation of
sustained chords.<br /><br />
In the 19th century, influenced by the Romantic music era, the fortepiano underwent
transformative changes. These included the introduction of a cast iron frame to withstand
greater string tensions and the adoption of aliquot stringing, contributing to a more powerful
sound, longer sustain, and a richer tone. This evolution made the piano an ideal instrument for
expressing the emotional nuances of Romantic compositions.<br /><br />
As the piano gained popularity, especially in the 19th century, families embraced it as a focal
point for home entertainment. Members would gather to enjoy newly published music, and
having a family member who could play even a simplified version of a piece became a source of
musical enjoyment.<br /><br />
The piano's versatility extends across various genres, including classical, jazz, traditional, and
popular music. It serves roles in solo and ensemble performances, accompaniment, composing,
songwriting, and rehearsals. Despite its weight and cost, the piano's extensive musician training
and widespread availability have firmly established it as a beloved and familiar instrument in the
Western world, carrying forward its legacy from earlier times.<br /><br /></p>"
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
