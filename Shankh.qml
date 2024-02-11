import QtQuick
import QtQuick.Controls
Rectangle{
    id: root
    color: 'white'
    property string instrumentName: "Shankh"
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
        dataText: "<p>In Hindu mythology, the panchajanya shankha holds sacred significance as an emblem of the
preserver deity Vishnu. It serves as both a ceremonial trumpet in Hindu rituals and historically,
as a war trumpet. According to Arunava Bose, Hindu scriptures extol the shankha for bestowing
fame, longevity, and prosperity, as well as being a purifier of sins and a dwelling place for the
goddess Lakshmi, the consort of Vishnu and the deity of prosperity. In Hindu art, the shankha is
prominently featured in connection with Vishnu, symbolizing water, female fertility, and serpents
(nāgas).<br /><br />
Additionally, the shankha is among the eight auspicious symbols of Buddhism, known as the
Ashtamangala, where it represents the all-encompassing sound integral to Buddhism.<br /><br />
This shell belongs to the sea snail species Turbinella pyrum, part of the Turbinellidae family,
commonly found in the Indian Ocean and nearby seas. The shell, characteristic of porcelaneous
quality, possesses a sturdy, shiny, and somewhat translucent surface akin to porcelain. It may
also be sourced from any suitable sea snail with a perforation for the performer's embouchure.<br /><br />
The primary body of the shell typically exhibits an oblong or conical shape. In its oblong
variation, a bulge is present in the middle, gradually tapering at both ends. The upper part,
known as the siphonal canal, takes on a corkscrew shape, while the lower end, the spire,
displays a twisted and narrowing structure. The shell's color is muted, and its surface is hard,
brittle, and translucent. Similar to all snail shells, the interior is hollow. The inner surfaces are
exceptionally glossy, whereas the outer surface features prominent tuberculation. In Hinduism,
the most coveted type is the shiny, white, and soft shankha with pointed ends and substantial
weight.<br /><br />
In Ayurveda, the shankha plays a role in medicinal formulations aimed at treating various
ailments. The shell material is processed into a powder used in Ayurvedic remedies for stomach
issues. This powder, known as shankha bhasma in Sanskrit, is derived by soaking the shell in
lime juice, subjecting it to calcination in covered crucibles around 10 to 12 times, and ultimately
refining it into a powdered ash form. Shankha ash is rich in calcium, iron, and magnesium, and
is recognized for its antacid and digestive properties in Ayurvedic practices.</p>"
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
