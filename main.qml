import QtQuick
import Qt5Compat.GraphicalEffects


Window {

    width: 1920
    height: 1080
    visible: true
    title: qsTr("Hello World")
    color: "darkgreen"

    Row {

        id:_lista
        property var nipes: ["Copas","Paus","Ouros","Espadas"]
        property var imagens: ["https://upload.wikimedia.org/wikipedia/commons/a/a0/Naipe_copas.png","https://upload.wikimedia.org/wikipedia/commons/5/59/Naipe_paus.png","https://upload.wikimedia.org/wikipedia/commons/thumb/a/ab/Naipe_ouros.png/216px-Naipe_ouros.png","https://upload.wikimedia.org/wikipedia/commons/e/e7/Spades.svg"]
        property var txt:["AS","Rei,","valete","dama"]
        anchors.centerIn: parent
        spacing: 40

        Repeater {

            model: _lista.nipes
            delegate:

                Rectangle {

                id: _button
                width: 300
                height: 500
                color: "white"
                radius: 15
                layer.enabled: true
                layer.effect: Glow {
                    color: "#20000000"
                    radius: 8
                    samples: 25
                }
                Behavior on y { NumberAnimation{duration:1500} }
                Behavior on rotation{ NumberAnimation{duration:500} }




                Text {
                    id:_aa
                    text: modelData
                    anchors.centerIn: parent
                    color: index % 2 === 0? "red" : "black"
                    font.pixelSize: 30
                    font.bold: true
                }

                Image  {
                source: _lista.imagens[index]
                width: 50
                height: 50
                anchors.top: _aa.bottom
                anchors.topMargin: 40
                anchors.horizontalCenter: parent.horizontalCenter

                }



                Text {
                    id: _A
                    text: qsTr("A")
                    color: index % 2 === 0? "red" : "black"
                    font.pixelSize: 15
                    font.bold: true
                    anchors.left: parent.left
                    anchors.bottomMargin: 15
                    anchors.leftMargin: 10
                }


                Text {
                    id: _A1
                    text: qsTr("A")
                    color: index % 2 === 0? "red" : "black"
                    font.pixelSize: 15
                    font.bold: true
                    anchors.bottom: parent.bottom
                    anchors.right: parent.right
                    anchors.bottomMargin: 10
                    anchors.rightMargin: 10
                    rotation: 180


                }
                MouseArea {

                    anchors.fill: parent
                    onClicked: {
                        index % 2 === 0 ? parent.y = -1000 : parent.y = 2000
                        index % 2 === 0 ? parent.rotation = 720 : parent.rotation = -720

                    }
                }

            }

        }
    }
}


