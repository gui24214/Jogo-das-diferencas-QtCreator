/*
Colocar o tuturial a funcionar denovo -- x
colorcar o sistema das estrelas a funcionar -- x
Colocar o sistema dos carrinhos a funcionar -- x
Adicionar as alterações aos restantes niveis -- x
BASE DE DADOS --XXXXXXXXXXXXXXX

*/


import QtQuick
import Qt5Compat.GraphicalEffects
import QtMultimedia

Item {
    id: _game
    width: 1300
    height: 700

    Rectangle {
        width: 300
        height: 300

        // Criando os 5 retângulos transparentes individualmente
        Rectangle {
            id: rect1
            x: 0
            y: 0
            width: 60
            height: 60
            color: "transparent"
            border {
                color: "black"
                width: 1
            }
        }

        Rectangle {
            id: rect2
            x: 60
            y: 0
            width: 60
            height: 60
            color: "transparent"
            border {
                color: "black"
                width: 1
            }
        }

        Rectangle {
            id: rect3
            x: 0
            y: 60
            width: 60
            height: 60
            color: "transparent"
            border {
                color: "black"
                width: 1
            }
        }

        Rectangle {
            id: rect4
            x: 60
            y: 60
            width: 60
            height: 60
            color: "transparent"
            border {
                color: "black"
                width: 1
            }
        }

        Rectangle {
            id: rect5
            x: 120
            y: 0
            width: 60
            height: 60
            color: "transparent"
            border {
                color: "black"
                width: 1
            }
        }

        // Criando o retângulo verde
        Rectangle {
            id: verdeRect
            x: 180
            y: 0
            width: 60
            height: 60
            color: "green"
            border {
                color: "black"
                width: 1
            }

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    var randomIndex = Math.floor(Math.random() * 5);
                    var transparentRect = [rect1, rect2, rect3, rect4, rect5][randomIndex];

                    transparentRect.color = "red";
                }
            }
        }
    }
}

