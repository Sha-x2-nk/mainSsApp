import QtQuick
// import QtMultimedia
import QtQuick.Controls
Window {
    width: Screen.width
    height: Screen.height
    visible: true
    visibility: Window.Maximized // Set visibility to Maximized for full-screen mode
    title: qsTr("Sound Symbolism IKS")
    property var swipeListViewMapping: [
        0,
        1,
        2,
        3,
        4,
        5,
        6,
        7,
        8,
        9,
        10,
        11,
        12,
        13,
        14,
        15,
        16,
        17,
        18,
        19,
        20,
        21,
        22,
        23,
        24,
        25,
        26,
        27,
        28,
        29,
        30,
        31,
        32,
        33,
        34,
        35,
        36,
        37,
        38,
        39,
        40,
        41,
        42,
        43,
        44,
        45,
        46,
        47
        ]
    Rectangle{
        //###SETTING UP MENU###########
        id: menu
        color: "black"
        anchors{
            left: parent.left
            top: parent.top
            bottom: parent.bottom
        }
        width: parent.width/6

        //####SETTING UP LIST VIEW########
        ScrollView {
            anchors.fill: parent
            ListView {
                id: menu_list
                width: parent.width
                clip: true // Ensure items outside the view bounds are clipped
                model: menu_list_model
                delegate: menu_list_delegate
            }
        }
        ListModel{
            id: menu_list_model
            ListElement{ name: "HOME" }
            ListElement{ name: "Indian Instruments" }
            ListElement{ name: "Narsingha" }
            ListElement{ name: "Jodiya Pava" }
            ListElement{ name: "Pakhavaj" }
            ListElement{ name: "Tamak" }
            ListElement{ name: "Elathalam" }
            ListElement{ name: "Sarinda" }
            ListElement{ name: "Bulbul Tarang" }
            ListElement{ name: "Hulusi" }
            ListElement{ name: "Ektar" }
            ListElement{ name: "Udukai" }
            ListElement{ name: "Urumi" }
            ListElement{ name: "Pambai" }
            ListElement{ name: "Harmonium" }
            ListElement{ name: "Kokkarai" }
            ListElement{ name: "Magudi" }
            ListElement{ name: "Chenda Melam" }
            ListElement{ name: "Thavil" }
            ListElement{ name: "Morsing" }
            ListElement{ name: "Ghatam" }
            ListElement{ name: "Nagara" }
            ListElement{ name: "Kanjira" }
            ListElement{ name: "Venu" }
            ListElement{ name: "Mohan Veena" }
            ListElement{ name: "Mayuri Veena" }
            ListElement{ name: "Shehnai" }
            ListElement{ name: "Dilruba" }
            ListElement{ name: "Sarod" }
            ListElement{ name: "Tumbi" }
            ListElement{ name: "Ghanta" }
            ListElement{ name: "Parai" }
            ListElement{ name: "Manjira" }
            ListElement{ name: "Shankh" }
            ListElement{ name: "Sarangi" }
            ListElement{ name: "Sitar" }
            ListElement{ name: "Mridangam" }
            ListElement{ name: "Bansuri" }
            ListElement{ name: "Tanpura" }
            ListElement{ name: "Rabab" }
            ListElement{ name: "Western Instruments" }
            ListElement{ name: "Piano" }
            ListElement{ name: "Saxophone" }
            ListElement{ name: "Violin" }
            ListElement{ name: "Western Concert Flute" }
            ListElement{ name: "Classical Guitar" }

        }

        Component{
            id: menu_list_delegate
            Rectangle{
                readonly property ListView __lv: ListView.view
                implicitHeight: menu_list_option.implicitHeight
                anchors{ left: parent.left; right: parent.right }
                color: "black"
                Text{
                    id: menu_list_option
                    font.pixelSize: 24
                    text: model.name
                    anchors.centerIn: parent
                    color: __lv.currentIndex === index ? "green":"white"

                }
                MouseArea{
                    anchors.fill: parent
                    onClicked: {
                        __lv.currentIndex = index
                        swipe.currentIndex = swipeListViewMapping.indexOf(index);
                    }

                }
            }
        }



    }
    Rectangle{
        id: main_page
        anchors{
            left: menu.right
            right: parent.right
            top: parent.top
            bottom: parent.bottom
        }


        SwipeView{
            id: swipe
            currentIndex: 0
            anchors.fill: parent
            focus: true
            clip: true
            onCurrentIndexChanged:{
                menu_list.currentIndex = swipeListViewMapping[currentIndex]
            }
            Item{
                HomePage{
                    anchors.fill: parent
                }
            }
            Item{
                IndianInstrWelcome{
                    anchors.fill: parent
                }
            }

            Item{
                Narsingha{
                    anchors.fill:parent
                }
            }
            Item{
                JodiyaPava{
                    anchors.fill:parent
                }
            }
            Item{
                Pakhavaj{
                    anchors.fill:parent
                }
            }
            Item{
                Tamak{
                    anchors.fill:parent
                }
            }
            Item{
                Elathalam{
                    anchors.fill:parent
                }
            }
            Item{
                Sarinda{
                    anchors.fill:parent
                }
            }
            Item{
                BulbulTarang{
                    anchors.fill:parent
                }
            }
            Item{
                Hulusi{
                    anchors.fill:parent
                }
            }
            Item{
                Ektar{
                    anchors.fill:parent
                }
            }
            Item{
                Udukai{
                    anchors.fill:parent
                }
            }
            Item{
                Urumi{
                    anchors.fill:parent
                }
            }
            Item{
                Pambai{
                    anchors.fill:parent
                }
            }
            Item{
                Harmonium{
                    anchors.fill:parent
                }
            }
            Item{
                Kokkarai{
                    anchors.fill:parent
                }
            }
            Item{
                Magudi{
                    anchors.fill:parent
                }
            }
            Item{
                ChendaMelam{
                    anchors.fill:parent
                }
            }
            Item{
                Thavil{
                    anchors.fill:parent
                }
            }
            Item{
                Morsing{
                    anchors.fill:parent
                }
            }
            Item{
                Ghatam{
                    anchors.fill:parent
                }
            }
            Item{
                Nagara{
                    anchors.fill:parent
                }
            }
            Item{
                Kanjira{
                    anchors.fill:parent
                }
            }
            Item{
                Venu{
                    anchors.fill:parent
                }
            }
            Item{
                MohanVeena{
                    anchors.fill:parent
                }
            }
            Item{
                MayuriVeena{
                    anchors.fill:parent
                }
            }
            Item{
                Shehnai{
                    anchors.fill:parent
                }
            }
            Item{
                Dilruba{
                    anchors.fill:parent
                }
            }
            Item{
                Sarod{
                    anchors.fill:parent
                }
            }
            Item{
                Tumbi{
                    anchors.fill:parent
                }
            }
            Item{
                Ghanta{
                    anchors.fill:parent
                }
            }
            Item{
                Parai{
                    anchors.fill:parent
                }
            }
            Item{
                Manjira{
                    anchors.fill:parent
                }
            }
            Item{
                Shankh{
                    anchors.fill:parent
                }
            }
            Item{
                Sarangi{
                    anchors.fill:parent
                }
            }
            Item{
                Sitar{
                    anchors.fill:parent
                }
            }
            Item{
                Mridangam{
                    anchors.fill:parent
                }
            }
            Item{
                Bansuri{
                    anchors.fill:parent
                }
            }
            Item{
                Tanpura{
                    anchors.fill:parent
                }
            }
            Item{
                Rabab{
                    anchors.fill:parent
                }
            }
            Item{
                WesternInstrWelcome{
                    anchors.fill: parent
                }
            }

            Item{
                Piano{
                    anchors.fill:parent
                }
            }
            Item{
                Saxophone{
                    anchors.fill:parent
                }
            }
            Item{
                Violin{
                    anchors.fill:parent
                }
            }
            Item{
                WesternConcertFlute{
                    anchors.fill:parent
                }
            }
            Item{
                ClassicalGuitar{
                    anchors.fill:parent
                }
            }




        }
        PageIndicator {
            id: indicator

            count: swipe.count
            currentIndex: swipe.currentIndex

            anchors.bottom: swipe.bottom
            anchors.horizontalCenter: parent.horizontalCenter
        }
    }
}
