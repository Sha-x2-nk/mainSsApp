import QtQuick
import QtQuick.Controls
Rectangle{
    id: root
    color: 'white'
    property string instrumentName: "Saxophone"
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
        dataText: "<p>The saxophone, a versatile and expressive instrument widely embraced across various
musical genres, has a relatively recent origin compared to traditional Indian instruments.
Its invention is attributed to Adolphe Sax, a Belgian instrument maker, in the early
1840s. Sax designed the saxophone to bridge the gap between woodwind and brass
instruments, creating a new family of instruments with a distinctive sound that blends
elements of both.<br /><br />
Crafted from brass, the saxophone typically consists of a conical body with a flared bell,
a detachable neck, and a series of keys and pads. It is available in various sizes and
ranges, including soprano, alto, tenor, and baritone saxophones. Each size produces a
unique timbre, allowing for a broad spectrum of musical expression.<br /><br />
What distinguishes the saxophone is its versatility and adaptability to different musical
genres. Initially finding a place in military bands and orchestras, it later became a key
component in jazz and popular music. The saxophone's ability to convey emotion and
create expressive melodies has made it a favorite in genres ranging from classical and
jazz to rock, blues, and contemporary music.<br /><br />
The playing technique of the saxophone involves the use of a single-reed mouthpiece,
and the musician manipulates the keys to produce different pitches. The saxophonist
employs techniques such as vibrato, bending, and various articulations to infuse
personal style and emotion into their performance.<br /><br />
One unique aspect of the saxophone is its role as both a solo and ensemble instrument.
It can seamlessly transition from being the focal point of a jazz improvisation toproviding melodic and harmonic support in a larger ensemble setting. The saxophone's
expressive capabilities, dynamic range, and adaptability have solidified its place as a
prominent instrument in the global musical landscape.</p>"
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
