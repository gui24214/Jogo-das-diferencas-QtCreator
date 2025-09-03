import QtQuick
import QtQuick.Controls 2.15
import QtMultimedia

Item {
    id: _settings
    width: 1300
    height: 700

    signal back()
    property var estrelas:[0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30]
    property var quantidadeice: [0,1,2,3,4]
    property var quantidadeheart: [0,1,2,3,4]
    property bool pontos: ["0"]
    property bool showtuturial: false
    property bool showGame: false
    property bool showcard: false
    property bool showguilhermebutton: false
    property bool showlevel4 : false
    property bool showlevel5 : false
    property bool showlevel6 : false
    property bool showlevel7 : false
    property bool showlevel8 : false
    property bool showlevel9 : false
    property bool showlevel10 :false

    Rectangle {
        id: _rec
        anchors.fill: parent
        color: "#D8C753"
    }

        Item {
            id: itemtuturial
            width: 1000
            height: 700
            visible: true
            anchors.centerIn: _rec

            Text {
                id:tuturial
                text: "Tutorial"
                color: "white"
                font.pixelSize: 100
                font.bold: true
                font.family: "Courier New"
                anchors.top: parent.top
                anchors.topMargin: 110
                anchors.horizontalCenter: parent.horizontalCenter
            }

            Rectangle {
                id: _rectuturial
                width: 300
                height: 80
                radius: 50
                color : "black"
                visible: true
                anchors.top: tuturial.bottom
                anchors.topMargin: 20
                anchors.horizontalCenter: parent.horizontalCenter

                Text {
                    text: "Tutorial"
                    anchors.centerIn: parent
                    font.bold: true
                    font.pixelSize: 24
                    font.family: "Courier New"
                    color: "white"
                }

                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        itemtudo.visible = true
                        itemtuturial.visible = false
                        showtuturial = true
                        click.play()
                        music.play()
                    }
                }
            }

            Rectangle {
                id: slatartut
                width: 180
                height: 60
                radius: 150
                color:"black"
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 10
                anchors.right: parent.right
                anchors.rightMargin: -140

                Text {
                    id: txtskip
                    text: "Skip"
                    anchors.centerIn: parent
                    color: "white"
                    font.bold: true
                    font.pixelSize: 18
                    font.family: "Courier New"
                }

                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        imgconfig.visible = true
                        _grid.visible = true
                        carrinhoimg.visible = true
                        _row2.visible = true
                        _row.visible = true
                        itemtuturial.visible = false
                        itemtudo.visible = true
                        click.play()
                        music.play()
                    }
                }
            }
        }

    Rectangle {
        id: config1
        anchors.fill: _rec
        color: "black"
        opacity: 0.5
        visible: false
    }

    Item {
        id: itemtudo
        width: 1000
        height: 700
        visible: false
        anchors.centerIn: _rec

        Text {
            id: niveis
            text: "Níveis"
            color: "white"
            font.pixelSize: 100
            font.bold: true
            visible: true
            font.family: "Courier New"
            anchors.bottom: _grid.top
            anchors.bottomMargin: 110
            anchors.horizontalCenter: _grid.horizontalCenter
        }

        Item {
            id: name
            width: 750
            height: 80
            anchors.top: niveis.bottom
            anchors.topMargin: 0
            anchors.horizontalCenter: parent.horizontalCenter
            visible: true

            Text {
                id:_txtarray
                width: parent.width
                text: "Para os niveis seguintes ficarem disponiveis,tem que finaliza-los!"
                color: "white"
                font.pixelSize: 25
                font.bold: true
                font.family: "Courier New"
                anchors.bottom: _grid.top
                anchors.bottomMargin: 40
                anchors.horizontalCenter: _grid.horizontalCenter
                horizontalAlignment: Text.AlignHCenter
                wrapMode: Text.WordWrap
            }
        }

        Item {
            id: itemfim
            width: 750
            height: 180
            anchors.top: parent.top
            anchors.topMargin: 70
            anchors.horizontalCenter: parent.horizontalCenter
            visible: false

            Rectangle {
                anchors.fill: parent
                color: "transparent"
                opacity: 0.4

            }

            Text {
                id:_txtestretasaculumadas
                width: parent.width
                text: "Estrelas acumuladas"
                color: "white"
                font.pixelSize: 60
                font.bold: true
                font.family: "Courier New"
                anchors.bottom: _grid.top
                anchors.bottomMargin: 40
                anchors.horizontalCenter: _grid.horizontalCenter
                horizontalAlignment: Text.AlignHCenter
                wrapMode: Text.WordWrap
            }

            Text {
                id:_txtestretasaculumadas2
                width: parent.width
                text: txtestrelas.text
                color: "white"
                font.pixelSize: 50
                font.bold: true
                font.family: "Courier New"
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 40
                anchors.horizontalCenter: _grid.horizontalCenter
                horizontalAlignment: Text.AlignHCenter
                wrapMode: Text.WordWrap
            }


        }

        Rectangle  {
            id:_recblue
            width: 20
            height: 20
            color: "transparent"
            anchors.left: parent.left
            anchors.leftMargin: 20
            anchors.top: parent.top
            anchors.topMargin: 20
            visible: false
        }

        Rectangle {
            id:_recred
            width: 20
            height: 20
            color: "transparent"
            anchors.left: parent.left
            anchors.leftMargin: 0
            anchors.top: parent.top
            anchors.topMargin: 20
            visible: false
        }

        Rectangle {
            id:_recgreen
            width: 20
            height: 20
            color: "transparent"
            anchors.left: parent.left
            anchors.leftMargin: 0
            anchors.top: parent.top
            anchors.topMargin: 0
            visible: true
        }


        Rectangle  {
            id:_recgrey
            width: 20
            height: 20
            color: "grey"
            anchors.left: parent.left
            anchors.leftMargin: 20
            anchors.top: parent.top
            anchors.topMargin: 20
            visible: false
        }

        Image {
            id: carrinhoimg
            width: 60
            height: 60
            visible: false
            source: "file:///C:/Users/guilh/Downloads/06-20250808T012321Z-1-001/Backup --30- 06/dif - Copy2-20240528T214048Z-001/dif - Copy2/Imagens/carrinho.png"
            anchors.top: parent.top
            anchors.topMargin: 25
            anchors.right: parent.right
            anchors.rightMargin: -20

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    config1.visible = true
                    reccarrinho.visible = true
                    _grid.visible = false
                    quitX.visible = true
                    itemX.visible = true
                    click.play()
                    niveis.visible = false
                    name.visible = false
                    _row.spacing = 1000
                    _row2.spacing = 1000
                    imgconfig.visible = false
                    carrinhoimg.visible = false
                }
            }
        }

        Grid {
            id: _grid
            rows: 2
            columns: 5
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 100
            visible: false
            spacing: 20

            Rectangle {
                id: level1
                width: 150
                height: 150
                radius: 150
                visible: true
                color: "black"

                Text {
                    text: "Level 1"
                    color: "white"
                    font.pixelSize: 30
                    font.bold: true
                    font.family: "Courier New"
                    anchors.centerIn: parent
                }

                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        showGame = true
                        _grid.visible = false
                        click.play()
                    }
                }
            }

            Rectangle {
                id:level2fake
                width: 150
                height: 150
                radius: 150
                color: "black"
                opacity: 0.5
                visible: true

                Text {
                    text: "Level 2"
                    color: "white"
                    font.pixelSize: 30
                    font.bold: true
                    font.family: "Courier New"
                    anchors.centerIn: parent
                }
            }

            Rectangle {
                id:level2
                width: 150
                height: 150
                radius: 150
                color: "black"
                visible: false

                Text {
                    text: "Level 2"
                    color: "white"
                    font.pixelSize: 30
                    font.bold: true
                    font.family: "Courier New"
                    anchors.centerIn: parent
                }
                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        showcard = true
                        _grid.visible = false
                        click.play()
                    }
                }
            }

            Rectangle {
                id:level3fake
                width: 150
                height: 150
                radius: 150
                color: "black"
                opacity: 0.5
                visible: true

                Text {
                    text: "Level 3"
                    color: "white"
                    font.pixelSize: 30
                    font.bold: true
                    font.family: "Courier New"
                    anchors.centerIn: parent
                }
            }

            Rectangle {
                id:level3
                width: 150
                height: 150
                radius: 150
                color: "black"
                visible: false

                Text {
                    text: "Level 3"
                    color: "white"
                    font.pixelSize: 30
                    font.bold: true
                    font.family: "Courier New"
                    anchors.centerIn: parent
                }

                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        showguilhermebutton = true
                        _grid.visible = false
                        click.play()
                    }
                }
            }

            Rectangle {
                id:level4fake
                width: 150
                height: 150
                radius: 150
                color: "black"
                opacity: 0.5
                visible: true

                Text {
                    text: "Level 4"
                    color: "white"
                    font.pixelSize: 30
                    font.bold: true
                    font.family: "Courier New"
                    anchors.centerIn: parent
                }
            }

            Rectangle {
                id:level4
                width: 150
                height: 150
                radius: 150
                color: "black"
                visible: false

                Text {
                    text: "Level 4"
                    color: "white"
                    font.pixelSize: 30
                    font.bold: true
                    font.family: "Courier New"
                    anchors.centerIn: parent
                }

                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        showlevel4 = true
                        _grid.visible = false
                        click.play()
                    }
                }
            }

            Rectangle {
                id:level5fake
                width: 150
                height: 150
                radius: 150
                color: "black"
                opacity: 0.5
                visible: true

                Text {
                    text: "Level 5"
                    color: "white"
                    font.pixelSize: 30
                    font.bold: true
                    font.family: "Courier New"
                    anchors.centerIn: parent
                }
            }

            Rectangle {
                id:level5
                width: 150
                height: 150
                radius: 150
                color: "black"
                visible: false

                Text {
                    text: "Level 5"
                    color: "white"
                    font.pixelSize: 30
                    font.bold: true
                    font.family: "Courier New"
                    anchors.centerIn: parent
                }

                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        showlevel5 = true
                        _grid.visible = false
                        click.play()
                    }
                }
            }
            Rectangle {
                id:level6fake
                width: 150
                height: 150
                radius: 150
                color: "black"
                opacity: 0.5
                visible: true

                Text {
                    text: "Level 6"
                    color: "white"
                    font.pixelSize: 30
                    font.bold: true
                    font.family: "Courier New"
                    anchors.centerIn: parent
                }
            }

            Rectangle {
                id:level6
                width: 150
                height: 150
                radius: 150
                color: "black"
                visible: false

                Text {
                    text: "Level 6"
                    color: "white"
                    font.pixelSize: 30
                    font.bold: true
                    font.family: "Courier New"
                    anchors.centerIn: parent
                }

                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        showlevel6 = true
                        _grid.visible = false
                        click.play()
                    }
                }
            }

            Rectangle {
                id:level7fake
                width: 150
                height: 150
                radius: 150
                color: "black"
                opacity: 0.5
                visible: true

                Text {
                    text: "Level 7"
                    color: "white"
                    font.pixelSize: 30
                    font.bold: true
                    font.family: "Courier New"
                    anchors.centerIn: parent
                }
            }

            Rectangle {
                id:level7
                width: 150
                height: 150
                radius: 150
                color: "black"
                visible: false

                Text {
                    text: "Level 7"
                    color: "white"
                    font.pixelSize: 30
                    font.bold: true
                    font.family: "Courier New"
                    anchors.centerIn: parent
                }

                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        showlevel7 = true
                        _grid.visible = false
                        click.play()
                    }
                }
            }

            Rectangle {
                id:level8fake
                width: 150
                height: 150
                radius: 150
                color: "black"
                opacity: 0.5
                visible: true

                Text {
                    text: "Level 8"
                    font.pixelSize: 30
                    font.bold: true
                    color: "white"
                    font.family: "Courier New"
                    anchors.centerIn: parent
                }
            }

            Rectangle {
                id:level8
                width: 150
                height: 150
                radius: 150
                color: "black"
                visible:false

                Text {
                    text: "Level 8"
                    color: "white"
                    font.pixelSize: 30
                    font.bold: true
                    font.family: "Courier New"
                    anchors.centerIn: parent
                }
                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        showlevel8 = true
                        _grid.visible = false
                        click.play()
                    }
                }
            }

            Rectangle {
                id:level9fake
                width: 150
                height: 150
                radius: 150
                color: "black"
                opacity: 0.5
                visible: true

                Text {
                    text: "Level 9"
                    color: "white"
                    font.pixelSize: 30
                    font.bold: true
                    font.family: "Courier New"
                    anchors.centerIn: parent
                }
            }

            Rectangle {
                id:level9
                width: 150
                height: 150
                radius: 150
                color: "black"
                visible: false

                Text {
                    text: "Level 9"
                    color: "white"
                    font.pixelSize: 30
                    font.bold: true
                    font.family: "Courier New"
                    anchors.centerIn: parent
                }

                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        showlevel9 = true
                        _grid.visible = false
                        click.play()
                    }
                }
            }

            Rectangle {
                id:level10fake
                width: 150
                height: 150
                radius: 150
                color: "black"
                opacity: 0.5
                visible: true

                Text {
                    text: "Level 10"
                    color: "white"
                    font.pixelSize: 30
                    font.bold: true
                    font.family: "Courier New"
                    anchors.centerIn: parent
                }
            }

            Rectangle {
                id:level10
                width: 150
                height: 150
                radius: 150
                color: "black"
                visible: false

                Text {
                    text: "Level 10"
                    color: "white"
                    font.pixelSize: 30
                    font.bold: true
                    font.family: "Courier New"
                    anchors.centerIn: parent
                }

                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        showlevel10 = true
                        _grid.visible = false
                        click.play()
                    }
                }
            }
        }
    }

    Row {
        id: _row
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 370
        visible: false
        spacing: 0

        Image {
            id:stars0_1
            source: "file:///C:/Users/guilh/Downloads/06-20250808T012321Z-1-001/Backup --30- 06/dif - Copy2-20240528T214048Z-001/dif - Copy2/Imagens/0_stars.png"
            width: 170
            height: 90
            fillMode: Image.PreserveAspectFit
            visible: true
        }

        Image {
            id:stars1_1
            source: "file:///C:/Users/guilh/Downloads/06-20250808T012321Z-1-001/Backup --30- 06/dif - Copy2-20240528T214048Z-001/dif - Copy2/Imagens/1_stars.png"
            width: 170
            height: 90
            fillMode: Image.PreserveAspectFit
            visible: false
        }

        Image {
            id:stars2_1
            source: "file:///C:/Users/guilh/Downloads/06-20250808T012321Z-1-001/Backup --30- 06/dif - Copy2-20240528T214048Z-001/dif - Copy2/Imagens/2_stars.png"
            width: 170
            height: 90
            fillMode: Image.PreserveAspectFit
            visible: false
        }

        Image {
            id:stars3_1
            source: "file:///C:/Users/guilh/Downloads/06-20250808T012321Z-1-001/Backup --30- 06/dif - Copy2-20240528T214048Z-001/dif - Copy2/Imagens/3_stars.png"
            width: 170
            height: 90
            fillMode: Image.PreserveAspectFit
            visible: false
        }

        //-------------------------------------------------------------------------------------------------------------------------------------------

        Image {
            id:stars0_2
            source: "file:///C:/Users/guilh/Downloads/06-20250808T012321Z-1-001/Backup --30- 06/dif - Copy2-20240528T214048Z-001/dif - Copy2/Imagens/0_stars.png"
            width: 170
            height: 90
            fillMode: Image.PreserveAspectFit
            visible: true
        }


        Image {
            id:stars1_2
            source: "file:///C:/Users/guilh/Downloads/06-20250808T012321Z-1-001/Backup --30- 06/dif - Copy2-20240528T214048Z-001/dif - Copy2/Imagens/1_stars.png"
            width: 170
            height: 90
            fillMode: Image.PreserveAspectFit
            visible: false
        }

        Image {
            id:stars2_2
            source: "file:///C:/Users/guilh/Downloads/06-20250808T012321Z-1-001/Backup --30- 06/dif - Copy2-20240528T214048Z-001/dif - Copy2/Imagens/2_stars.png"
            width: 170
            height: 90
            fillMode: Image.PreserveAspectFit
            visible: false
        }

        Image {
            id:stars3_2
            source: "file:///C:/Users/guilh/Downloads/06-20250808T012321Z-1-001/Backup --30- 06/dif - Copy2-20240528T214048Z-001/dif - Copy2/Imagens/3_stars.png"
            width: 170
            height: 90
            fillMode: Image.PreserveAspectFit
            visible: false
        }

        //------------------------------------------------------------------------------------------------------------------------

        Image {
            id:stars0_3
            source: "file:///C:/Users/guilh/Downloads/06-20250808T012321Z-1-001/Backup --30- 06/dif - Copy2-20240528T214048Z-001/dif - Copy2/Imagens/0_stars.png"
            width: 170
            height: 90
            fillMode: Image.PreserveAspectFit
            visible: true
        }

        Image {
            id:stars1_3
            source: "file:///C:/Users/guilh/Downloads/06-20250808T012321Z-1-001/Backup --30- 06/dif - Copy2-20240528T214048Z-001/dif - Copy2/Imagens/1_stars.png"
            width: 170
            height: 90
            fillMode: Image.PreserveAspectFit
            visible: false
        }

        Image {
            id:stars2_3
            source: "file:///C:/Users/guilh/Downloads/06-20250808T012321Z-1-001/Backup --30- 06/dif - Copy2-20240528T214048Z-001/dif - Copy2/Imagens/2_stars.png"
            width: 170
            height: 90
            fillMode: Image.PreserveAspectFit
            visible: false
        }

        Image {
            id:stars3_3
            source: "file:///C:/Users/guilh/Downloads/06-20250808T012321Z-1-001/Backup --30- 06/dif - Copy2-20240528T214048Z-001/dif - Copy2/Imagens/3_stars.png"
            width: 170
            height: 90
            fillMode: Image.PreserveAspectFit
            visible: false
        }

        //----------------------------------------------------------------------------------------------------------------------------------------

        Image {
            id:stars0_4
            source: "file:///C:/Users/guilh/Downloads/06-20250808T012321Z-1-001/Backup --30- 06/dif - Copy2-20240528T214048Z-001/dif - Copy2/Imagens/0_stars.png"
            width: 170
            height: 90
            fillMode: Image.PreserveAspectFit
            visible: true
        }

        Image {
            id:stars1_4
            source: "file:///C:/Users/guilh/Downloads/06-20250808T012321Z-1-001/Backup --30- 06/dif - Copy2-20240528T214048Z-001/dif - Copy2/Imagens/1_stars.png"
            width: 170
            height: 90
            fillMode: Image.PreserveAspectFit
            visible: false
        }

        Image {
            id:stars2_4
            source: "file:///C:/Users/guilh/Downloads/06-20250808T012321Z-1-001/Backup --30- 06/dif - Copy2-20240528T214048Z-001/dif - Copy2/Imagens/2_stars.png"
            width: 170
            height: 90
            fillMode: Image.PreserveAspectFit
            visible: false
        }

        Image {
            id:stars3_4
            source: "file:///C:/Users/guilh/Downloads/06-20250808T012321Z-1-001/Backup --30- 06/dif - Copy2-20240528T214048Z-001/dif - Copy2/Imagens/3_stars.png"
            width: 170
            height: 90
            fillMode: Image.PreserveAspectFit
            visible: false
        }

        //-------------------------------------------------------------------------------------------------------------------------------------------

        Image {
            id:stars0_5
            source: "file:///C:/Users/guilh/Downloads/06-20250808T012321Z-1-001/Backup --30- 06/dif - Copy2-20240528T214048Z-001/dif - Copy2/Imagens/0_stars.png"
            width: 170
            height: 90
            fillMode: Image.PreserveAspectFit
            visible: true
        }

        Image {
            id:stars1_5
            source: "file:///C:/Users/guilh/Downloads/06-20250808T012321Z-1-001/Backup --30- 06/dif - Copy2-20240528T214048Z-001/dif - Copy2/Imagens/1_stars.png"
            width: 170
            height: 90
            fillMode: Image.PreserveAspectFit
            visible: false
        }

        Image {
            id:stars2_5
            source: "file:///C:/Users/guilh/Downloads/06-20250808T012321Z-1-001/Backup --30- 06/dif - Copy2-20240528T214048Z-001/dif - Copy2/Imagens/2_stars.png"
            width: 170
            height: 90
            fillMode: Image.PreserveAspectFit
            visible: false
        }

        Image {
            id:stars3_5
            source: "file:///C:/Users/guilh/Downloads/06-20250808T012321Z-1-001/Backup --30- 06/dif - Copy2-20240528T214048Z-001/dif - Copy2/Imagens/3_stars.png"
            width: 170
            height: 90
            fillMode: Image.PreserveAspectFit
            visible: false
        }

        //-------------------------------------------------------------------------------------------------------------------------------------
    }

    Row {
        id: _row2
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 200
        visible: false
        spacing: 0

        Image {
            id:stars0_6
            source: "file:///C:/Users/guilh/Downloads/06-20250808T012321Z-1-001/Backup --30- 06/dif - Copy2-20240528T214048Z-001/dif - Copy2/Imagens/0_stars.png"
            width: 170
            height: 90
            fillMode: Image.PreserveAspectFit
            visible: true
        }

        Image {
            id:stars1_6
            source: "file:///C:/Users/guilh/Downloads/06-20250808T012321Z-1-001/Backup --30- 06/dif - Copy2-20240528T214048Z-001/dif - Copy2/Imagens/1_stars.png"
            width: 170
            height: 90
            fillMode: Image.PreserveAspectFit
            visible: false
        }

        Image {
            id:stars2_6
            source: "file:///C:/Users/guilh/Downloads/06-20250808T012321Z-1-001/Backup --30- 06/dif - Copy2-20240528T214048Z-001/dif - Copy2/Imagens/2_stars.png"
            width: 170
            height: 90
            fillMode: Image.PreserveAspectFit
            visible: false
        }

        Image {
            id:stars3_6
            source: "file:///C:/Users/guilh/Downloads/06-20250808T012321Z-1-001/Backup --30- 06/dif - Copy2-20240528T214048Z-001/dif - Copy2/Imagens/3_stars.png"
            width: 170
            height: 90
            fillMode: Image.PreserveAspectFit
            visible: false
        }

        //-------------------------------------------------------------------------------------------------------------------------------------

        Image {
            id:stars0_7
            source: "file:///C:/Users/guilh/Downloads/06-20250808T012321Z-1-001/Backup --30- 06/dif - Copy2-20240528T214048Z-001/dif - Copy2/Imagens/0_stars.png"
            width: 170
            height: 90
            fillMode: Image.PreserveAspectFit
            visible: true
        }


        Image {
            id:stars1_7
            source: "file:///C:/Users/guilh/Downloads/06-20250808T012321Z-1-001/Backup --30- 06/dif - Copy2-20240528T214048Z-001/dif - Copy2/Imagens/1_stars.png"
            width: 170
            height: 90
            fillMode: Image.PreserveAspectFit
            visible: false
        }

        Image {
            id:stars2_7
            source: "file:///C:/Users/guilh/Downloads/06-20250808T012321Z-1-001/Backup --30- 06/dif - Copy2-20240528T214048Z-001/dif - Copy2/Imagens/2_stars.png"
            width: 170
            height: 90
            fillMode: Image.PreserveAspectFit
            visible: false
        }

        Image {
            id:stars3_7
            source: "file:///C:/Users/guilh/Downloads/06-20250808T012321Z-1-001/Backup --30- 06/dif - Copy2-20240528T214048Z-001/dif - Copy2/Imagens/3_stars.png"
            width: 170
            height: 90
            fillMode: Image.PreserveAspectFit
            visible: false
        }

        //----------------------------------------------------------------------------------------------------------------------------------------

        Image {
            id:stars0_8
            source: "file:///C:/Users/guilh/Downloads/06-20250808T012321Z-1-001/Backup --30- 06/dif - Copy2-20240528T214048Z-001/dif - Copy2/Imagens/0_stars.png"
            width: 170
            height: 90
            fillMode: Image.PreserveAspectFit
            visible: true
        }

        Image {
            id:stars1_8
            source: "file:///C:/Users/guilh/Downloads/06-20250808T012321Z-1-001/Backup --30- 06/dif - Copy2-20240528T214048Z-001/dif - Copy2/Imagens/1_stars.png"
            width: 170
            height: 90
            fillMode: Image.PreserveAspectFit
            visible: false
        }

        Image {
            id:stars2_8
            source: "file:///C:/Users/guilh/Downloads/06-20250808T012321Z-1-001/Backup --30- 06/dif - Copy2-20240528T214048Z-001/dif - Copy2/Imagens/2_stars.png"
            width: 170
            height: 90
            fillMode: Image.PreserveAspectFit
            visible: false
        }

        Image {
            id:stars3_8
            source: "file:///C:/Users/guilh/Downloads/06-20250808T012321Z-1-001/Backup --30- 06/dif - Copy2-20240528T214048Z-001/dif - Copy2/Imagens/3_stars.png"
            width: 170
            height: 90
            fillMode: Image.PreserveAspectFit
            visible: false
        }

        //---------------------------------------------------------------------------------------------------------------------------------------------

        Image {
            id:stars0_9
            source: "file:///C:/Users/guilh/Downloads/06-20250808T012321Z-1-001/Backup --30- 06/dif - Copy2-20240528T214048Z-001/dif - Copy2/Imagens/0_stars.png"
            width: 170
            height: 90
            fillMode: Image.PreserveAspectFit
            visible: true
        }

        Image {
            id:stars1_9
            source: "file:///C:/Users/guilh/Downloads/06-20250808T012321Z-1-001/Backup --30- 06/dif - Copy2-20240528T214048Z-001/dif - Copy2/Imagens/1_stars.png"
            width: 170
            height: 90
            fillMode: Image.PreserveAspectFit
            visible: false
        }

        Image {
            id:stars2_9
            source: "file:///C:/Users/guilh/Downloads/06-20250808T012321Z-1-001/Backup --30- 06/dif - Copy2-20240528T214048Z-001/dif - Copy2/Imagens/2_stars.png"
            width: 170
            height: 90
            fillMode: Image.PreserveAspectFit
            visible: false
        }

        Image {
            id:stars3_9
            source: "file:///C:/Users/guilh/Downloads/06-20250808T012321Z-1-001/Backup --30- 06/dif - Copy2-20240528T214048Z-001/dif - Copy2/Imagens/3_stars.png"
            width: 170
            height: 90
            fillMode: Image.PreserveAspectFit
            visible: false
        }

        //--------------------------------------------------------------------------------------------------------------------------------------

        Image {
            id:stars0_10
            source: "file:///C:/Users/guilh/Downloads/06-20250808T012321Z-1-001/Backup --30- 06/dif - Copy2-20240528T214048Z-001/dif - Copy2/Imagens/0_stars.png"
            width: 170
            height: 90
            fillMode: Image.PreserveAspectFit
            visible: true
        }


        Image {
            id:stars1_10
            source: "file:///C:/Users/guilh/Downloads/06-20250808T012321Z-1-001/Backup --30- 06/dif - Copy2-20240528T214048Z-001/dif - Copy2/Imagens/1_stars.png"
            width: 170
            height: 90
            fillMode: Image.PreserveAspectFit
            visible: false
        }

        Image {
            id:stars2_10
            source: "file:///C:/Users/guilh/Downloads/06-20250808T012321Z-1-001/Backup --30- 06/dif - Copy2-20240528T214048Z-001/dif - Copy2/Imagens/2_stars.png"
            width: 170
            height: 90
            fillMode: Image.PreserveAspectFit
            visible: false
        }

        Image {
            id:stars3_10
            source: "file:///C:/Users/guilh/Downloads/06-20250808T012321Z-1-001/Backup --30- 06/dif - Copy2-20240528T214048Z-001/dif - Copy2/Imagens/3_stars.png"
            width: 170
            height: 90
            fillMode: Image.PreserveAspectFit
            visible: false
        }
    }

    Image {
        id: imgconfig
        width: 60
        height: 60
        visible: false
        source: "file:///C:/Users/guilh/Downloads/06-20250808T012321Z-1-001/Backup --30- 06/dif - Copy2-20240528T214048Z-001/dif - Copy2/Imagens/settings.png"
        //"https://cdn-icons-png.flaticon.com/512/8053/8053573.png"
        anchors.top: parent.top
        anchors.topMargin: 25
        anchors.right: parent.right
        anchors.rightMargin:25

        MouseArea {
            anchors.fill: parent
            onClicked: {
                config.visible = true
                recconfig.visible = true
                quitX.visible = true
                itemX.visible = true
                _grid.visible = false
                niveis.visible = false
                name.visible = false
                _row.spacing = 1000
                _row2.spacing = 1000
                click.play()
                imgconfig.visible = false
                carrinhoimg.visible = false
            }
        }
    }

    Rectangle {
        id: reccarrinho
        anchors.centerIn: parent
        width: 400
        height: 500
        radius: 30
        color: "#393939"
        visible: false

        Text {
            id: txtpoderes
            text: "Poderes"
            color: "white"
            font.pixelSize: 43
            font.bold: true
            font.family:"Courier New"
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            anchors.topMargin: 25
        }

        Rectangle {
            id: whiterec1
            width: parent.width
            height: 8
            color: "white"
            anchors.top: txtpoderes.bottom
            anchors.topMargin: 20
            visible: true
        }

        Text {
            id: txtestrelas
            text: estrelas[0]
            color: "white"
            font.bold: true
            font.pixelSize: 60
            font.family: "Courier New"
            anchors.top: whiterec1.bottom
            anchors.topMargin: 5
            anchors.left: parent.left
            anchors.leftMargin: 160
        }

        Image {
            id:starsimg
            width: 180
            height: 180
            source: "file:///C:/Users/guilh/Downloads/06-20250808T012321Z-1-001/Backup --30- 06/dif - Copy2-20240528T214048Z-001/dif - Copy2/Imagens/2_stars (3).png"
            anchors.top: whiterec1.bottom
            anchors.topMargin: -45
            anchors.left: txtestrelas.right
            anchors.leftMargin: -60
            fillMode: Image.PreserveAspectFit
        }

        Item {
            id: itemcomprapowers
            width:380
            height: 390
            anchors.top: whiterec1.bottom
            anchors.topMargin: 5
            anchors.horizontalCenter: parent.horizontalCenter

            Rectangle {
                anchors.fill: parent
                color:"transparent"
                opacity: 0.5
            }

            Image {
                id: iceimgsets
                width: 70
                height: 70
                source: "file:///C:/Users/guilh/Downloads/06-20250808T012321Z-1-001/Backup --30- 06/dif - Copy2-20240528T214048Z-001/dif - Copy2/Imagens/ice-removebg-preview.png"
                anchors.left: parent.left
                anchors.leftMargin: 10
                anchors.bottom: parent.bottom
                anchors.bottomMargin:220
                visible: true
            }

            Rectangle {
                id:_reccompraice
                width: 200
                height: 50
                radius: 30
                color: "black"
                visible: true
                anchors.left: iceimgsets.right
                anchors.leftMargin: 10
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 230

                Text {
                    id:txt3
                    text: "3"
                    color: "white"
                    font.pixelSize: 24
                    font.bold: true
                    font.family: "Courier New"
                    anchors.top: parent.top
                    anchors.topMargin: 13
                    anchors.left: parent.left
                    anchors.leftMargin: 80
                }

                Image {
                    id:starsimg1
                    width: 90
                    height: 90
                    source: "file:///C:/Users/guilh/Downloads/06-20250808T012321Z-1-001/Backup --30- 06/dif - Copy2-20240528T214048Z-001/dif - Copy2/Imagens/2_stars (3).png"
                    anchors.top: parent.top
                    anchors.topMargin: -15
                    anchors.left: parent.left
                    anchors.leftMargin: 65
                    fillMode: Image.PreserveAspectFit
                }

                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        if (txtestrelas.text >= 3) {
                            colectitem.play()
                            _recblue.visible = true
                            txtestrelas.text = estrelas[txtestrelas.text] - 3
                            txtquantidadeice.text = quantidadeice[txtquantidadeice.text] + 1
                        } else {
                            recsemestrelas.visible = true
                            txtsemestrelas.text = "Não tens   suficiente"
                            heartimg.visible = false
                            _reccompraheart.visible = false
                            iceimgsets.visible = false
                            _reccompraice.visible = false
                            recquantidadeheart.visible = false
                            recquantidadeice.visible = false
                            error.play()
                        }
                        if (txtquantidadeice === "0") {
                            quantidadeice[0]
                        }
                        if (txtquantidadeice === "1") {
                            quantidadeice[1]
                        }
                        if (txtquantidadeice === "2") {
                            quantidadeice[2]
                        }
                        if (txtquantidadeice === "3") {
                            quantidadeice[3]
                        }
                        if (txtquantidadeice.text >= 4) {
                            recsemestrelas.visible = true
                            heartimg.visible = false
                            _reccompraheart.visible = false
                            iceimgsets.visible = false
                            _reccompraice.visible = false
                            recquantidadeheart.visible = false
                            recquantidadeice.visible = false
                            txtestrelas.text = estrelas[txtestrelas.text] + 3
                            txtquantidadeice.text = quantidadeice[txtquantidadeice.text] - 1
                            txtsemestrelas.text = "  Maximo de poderes"
                            starttxt.visible = false
                            error.play()
                        }
                    }
                }
            }

            Rectangle {
                id: recquantidadeice
                width: 60
                height: 60
                radius: 150
                color: "transparent"
                border.color: "black"
                border.width: 4
                anchors.left: _reccompraice.right
                anchors.leftMargin: 20
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 220

                Text {
                    id: txtquantidadeice
                    text: quantidadeice[0]
                    font.pixelSize: 30
                    font.family: "Courier New"
                    font.bold: true
                    anchors.centerIn: parent
                    color: "white"
                }
            }

            Image {
                id: heartimg
                width: 50
                height: 50
                source: "file:///C:/Users/guilh/Downloads/06-20250808T012321Z-1-001/Backup --30- 06/dif - Copy2-20240528T214048Z-001/dif - Copy2/Imagens/coracao.png"
                anchors.left: parent.left
                anchors.leftMargin: 20
                anchors.top: iceimgsets.top
                anchors.topMargin: 100
                visible: true
            }

            Rectangle {
                id:_reccompraheart
                width: 200
                height: 50
                radius: 30
                color: "black"
                visible: true
                anchors.left: heartimg.right
                anchors.leftMargin: 20
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 140

                Text {
                    id:txt2
                    text: "2"
                    color: "white"
                    font.pixelSize: 24
                    font.bold: true
                    font.family: "Courier New"
                    anchors.top: parent.top
                    anchors.topMargin: 13
                    anchors.left: parent.left
                    anchors.leftMargin: 80
                }

                Image {
                    id:starsimg2
                    width: 90
                    height: 90
                    source: "file:///C:/Users/guilh/Downloads/06-20250808T012321Z-1-001/Backup --30- 06/dif - Copy2-20240528T214048Z-001/dif - Copy2/Imagens/2_stars (3).png"
                    anchors.top: parent.top
                    anchors.topMargin: -15
                    anchors.left: parent.left
                    anchors.leftMargin: 65
                    fillMode: Image.PreserveAspectFit
                }

                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        if (txtestrelas.text >= 2) {
                            colectitem.play()
                            _recred.visible = true
                            txtestrelas.text = estrelas[txtestrelas.text] - 2
                            txtquantidadeheart.text = quantidadeheart[txtquantidadeheart.text] + 1
                        } else {
                            recsemestrelas.visible = true
                            txtsemestrelas.text = "Não tens   suficiente"
                            heartimg.visible = false
                            _reccompraheart.visible = false
                            iceimgsets.visible = false
                            _reccompraice.visible = false
                            recquantidadeheart.visible = false
                            recquantidadeice.visible = false
                            error.play()
                        }
                        if (txtquantidadeheart === "0") {
                            quantidadeheart[0]
                        }
                        if (txtquantidadeheart === "1") {
                            quantidadeheart[1]
                        }
                        if (txtquantidadeheart === "2") {
                            quantidadeheart[2]
                        }
                        if (txtquantidadeheart === "3") {
                            quantidadeheart[3]
                        }
                        if (txtquantidadeheart.text >= 4) {
                            recsemestrelas.visible = true
                            heartimg.visible = false
                            _reccompraheart.visible = false
                            iceimgsets.visible = false
                            _reccompraice.visible = false
                            recquantidadeheart.visible = false
                            recquantidadeice.visible = false
                            txtestrelas.text = estrelas[txtestrelas.text] + 2
                            txtquantidadeheart.text = quantidadeheart[txtquantidadeheart.text] - 1
                            txtsemestrelas.text = "  Maximo de poderes"
                            starttxt.visible = false
                            error.play()
                        }
                    }
                }
            }

            Rectangle {
                id: recquantidadeheart
                width: 60
                height: 60
                radius: 150
                color: "transparent"
                border.color: "black"
                border.width: 4
                anchors.left: _reccompraheart.right
                anchors.leftMargin: 20
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 130

                Text {
                    id: txtquantidadeheart
                    text: quantidadeheart[0]
                    font.pixelSize: 30
                    font.family: "Courier New"
                    font.bold: true
                    anchors.centerIn: parent
                    color: "white"
                }
            }

            Rectangle {
                id: recsemestrelas
                width: 350
                height: 120
                color: "white"
                anchors.centerIn: parent
                visible: false

                Text {
                    id: txtsemestrelas
                    text: "Não tens   suficiente"
                    font.family: "Courier New"
                    font.pixelSize: 24
                    font.bold: true
                    anchors.centerIn: parent
                }

                Image {
                    id: starttxt
                    width: 80
                    height: 80
                    visible: true
                    source: "file:///C:/Users/guilh/Downloads/06-20250808T012321Z-1-001/Backup --30- 06/dif - Copy2-20240528T214048Z-001/dif - Copy2/Imagens/2_stars (3).png"
                    fillMode: Image.PreserveAspectFit
                    anchors.top: parent.top
                    anchors.topMargin: 24
                    anchors.left: parent.left
                    anchors.leftMargin: 123
                }

                Rectangle {
                    width: 35
                    height: 35
                    color: "#CD1217"
                    anchors.top: parent.top
                    anchors.right: parent.right

                    Text {
                        text: "X"
                        font.family: "Courier New"
                        font.pixelSize: 18
                        font.bold: true
                        anchors.centerIn: parent
                    }
                    MouseArea {
                        anchors.fill: parent
                        onClicked: {
                            recsemestrelas.visible = false
                            heartimg.visible = true
                            _reccompraheart.visible = true
                            iceimgsets.visible = true
                            _reccompraice.visible = true
                            recquantidadeheart.visible = true
                            recquantidadeice.visible = true
                            recquantidadeheart.visible = true
                            recquantidadeice.visible = true
                            starttxt.visible = true
                            click.play()
                        }
                    }
                }
            }
        }

        Rectangle {
            id: recconfigpowers
            anchors.centerIn: parent
            width: 400
            height: 500
            radius: 30
            color: "#393939"
            visible: false

            Text {
                id: txtobj01
                text: "Guia Poderes"
                color: "white"
                font.pixelSize: 38
                font.bold: true
                font.family:"Courier New"
                anchors.top: parent.top
                anchors.topMargin: 35
                anchors.horizontalCenter: parent.horizontalCenter
            }

            Text {
                id: txtpowerice
                width: parent.width
                text: "Poder Congelar tempo"
                color: "white"
                font.pixelSize: 22
                font.bold: true
                font.family:"Courier New"
                anchors.top: txtobj01.bottom
                anchors.topMargin: 25
                anchors.left: parent.left
                anchors.leftMargin:  30
                horizontalAlignment: Text.AlignLeft
                wrapMode: Text.WordWrap
            }

            Rectangle {
                id:recrulespowers2
                width: 50
                height:50
                radius: 300
                color:"white"
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 30
                anchors.right: parent.right
                anchors.rightMargin:  20

                Text {
                    id: icongamerulespowers2
                    text: ">"
                    color: "black"
                    font.pixelSize: 45
                    font.bold: true
                    font.family:"arial"
                    anchors.top: parent.top
                    anchors.topMargin: 0
                    anchors.right: parent.right
                    anchors.rightMargin: 13
                }

                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        recconfigpowers.visible = false
                        itemcomprapowers.visible = true
                        itemX.visible = true
                        click.play()
                    }
                }
            }
        }
    }

    Rectangle {
        id: config
        anchors.fill: _rec
        color: "black"
        opacity: 0.5
        visible: false
    }

    Item {
        id: itemX
        width: 210
        height: 110
        visible: false
        anchors.top: config.top
        anchors.topMargin: 15
        anchors.right: config.right
        anchors.rightMargin: 15

        Rectangle {
            anchors.fill: parent
            color: "transparent"
            opacity: 0.4
        }

        Text {
            id: quitX
            text: "X"
            visible: false
            color: "white"
            font.pixelSize: 50
            font.bold: true
            font.family:"arial"
            anchors.right: parent.right
            anchors.rightMargin: 27
            anchors.top: parent.top
            anchors.topMargin: 20
        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
                config1.visible = false
                config.visible = false
                imgconfig.visible = true
                carrinhoimg.visible = true
                recconfig.visible = false
                reccarrinho.visible = false
                quitX.visible = false
                itemX.visible = false
                niveis.visible = true
                name.visible = true
                _grid.visible = true
                _row.spacing = 0
                _row2.spacing = 0
                click.play()
                starttxt.visible = true
                recsemestrelas.visible = false
                heartimg.visible = true
                _reccompraheart.visible = true
                iceimgsets.visible = true
                _reccompraice.visible = true
                recquantidadeheart.visible = true
                recquantidadeice.visible = true
            }
        }
    }

    Rectangle {
        id: recconfig
        anchors.centerIn: config
        width: 400
        height: 500
        radius: 30
        color: "#393939"
        visible: false

        Text {
            id: txtconfig
            text: "Configurações"
            color: "white"
            font.pixelSize: 40
            font.bold: true
            font.family:"Courier New"
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            anchors.topMargin: 35
        }

        Rectangle {
            id: whiterec
            width: parent.width
            height: 8
            color: "white"
            anchors.top: txtconfig.bottom
            anchors.topMargin: 20
        }

        Image {
            id: imgmusic
            width: 60
            height: 60
            source: "file:///C:/Users/guilh/Downloads/06-20250808T012321Z-1-001/Backup --30- 06/dif - Copy2-20240528T214048Z-001/dif - Copy2/Imagens/iconmusic.png"
            //"https://cdn.iconscout.com/icon/free/png-256/free-apple-music-3521279-2944783.png"
            anchors.top: whiterec.bottom
            anchors.topMargin: 30
            anchors.left: parent.left
            anchors.leftMargin: 70
        }

        Text {
            id: txtmusic
            text: "Musica"
            color: "white"
            font.pixelSize: 30
            font.bold: true
            font.family:"Courier New"
            anchors.top: whiterec.bottom
            anchors.topMargin: 45
            anchors.left: imgmusic.right
            anchors.leftMargin:  25
        }

        Rectangle {
            id: onmusic
            width: 60
            height: 30
            radius: 30
            visible : true
            color: "#65C466"
            anchors.top: whiterec.bottom
            anchors.topMargin: 50
            anchors.left: txtmusic.right
            anchors.leftMargin:  35

            Rectangle {
                id: circleonofmusic
                width: 30
                height: 30
                radius: 300
                color: "white"
                anchors.left: parent.left
                anchors.leftMargin: 0
            }

            MouseArea {
                anchors.fill: onmusic
                onClicked: {
                    onmusic.visible = false
                    ofmusic.visible = true
                    click.play()
                    music.stop()
                }
            }
        }

        Rectangle {
            id: ofmusic
            width: 60
            height: 30
            radius: 30
            visible: false
            color: "#E6E6E7"
            anchors.top: whiterec.bottom
            anchors.topMargin: 50
            anchors.left: txtmusic.right
            anchors.leftMargin:  35

            Rectangle {
                id: circleonofmusic2
                width: 30
                height: 30
                radius: 300
                color: "white"
                anchors.right: parent.right
                anchors.rightMargin: 0
            }

            MouseArea {
                anchors.fill: ofmusic
                onClicked: {
                    onmusic.visible = true
                    ofmusic.visible = false
                    click.play()
                    music.play()
                }
            }
        }

        Text {
            id: txtvolume
            text: "Volume"
            color: "white"
            font.pixelSize: 30
            font.bold: true
            font.family:"Courier New"
            anchors.top: imgmusic.bottom
            anchors.topMargin: 65
            anchors.left: parent.left
            anchors.leftMargin:  70
        }

        Grid  {
            id:gridvolume
            rows: 2
            columns: 2
            anchors.top: imgmusic.bottom
            anchors.topMargin: 20
            anchors.left: parent.left
            anchors.leftMargin: 220

            Rectangle {
                id: _volumemusica
                width: 60
                height: 60
                color: "green"
                border.width: 4
                border.color: "black"
                visible: true

                Text {
                    id: txtvolume0_25
                    text: "25"
                    color: "white"
                    font.pixelSize: 25
                    font.bold: true
                    font.family:"Courier New"
                    anchors.centerIn: parent
                }

                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        music.audioOutput.volume = 0.25
                        _volumemusica.color =  "green"
                        _volumemusic2.color = "transparent"
                        _volumemusic3.color = "transparent"
                        _volumemusic4.color = "transparent"
                    }
                }
            }

            Rectangle {
                id: _volumemusic2
                width: 60
                height: 60
                color: "transparent"
                border.width: 4
                border.color: "black"
                visible: true

                Text {
                    id: txtvolume0_50
                    text: "50"
                    color: "white"
                    font.pixelSize: 25
                    font.bold: true
                    font.family:"Courier New"
                    anchors.centerIn: parent
                }

                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        music.audioOutput.volume = 0.50
                        _volumemusic2.color = "green"
                        _volumemusica.color =  "transparent"
                        _volumemusic3.color = "transparent"
                        _volumemusic4.color = "transparent"
                    }
                }
            }

            Rectangle {
                id: _volumemusic3
                width: 60
                height: 60
                color: "transparent"
                border.width: 4
                border.color: "black"
                visible: true

                Text {
                    id: txtvolume0_75
                    text: "75"
                    color: "white"
                    font.pixelSize: 25
                    font.bold: true
                    font.family:"Courier New"
                    anchors.centerIn: parent
                }


                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        music.audioOutput.volume = 0.75
                        _volumemusic3.color = "green"
                        _volumemusica.color =  "transparent"
                        _volumemusic2.color = "transparent"
                        _volumemusic4.color = "transparent"
                    }
                }
            }

            Rectangle {
                id: _volumemusic4
                width: 60
                height: 60
                color: "transparent"
                border.width: 4
                border.color: "black"
                visible: true

                Text {
                    id: txtvolume0_100
                    text: "100"
                    color: "white"
                    font.pixelSize: 25
                    font.bold: true
                    font.family:"Courier New"
                    anchors.centerIn: parent
                }

                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        music.audioOutput.volume = 1
                        _volumemusic4.color = "green"
                        _volumemusica.color =  "transparent"
                        _volumemusic2.color = "transparent"
                        _volumemusic3.color = "transparent"
                    }
                }
            }
        }

        Image {
            id: imgsomon
            width: 60
            height: 60
            visible: true
            source: "file:///C:/Users/guilh/Downloads/06-20250808T012321Z-1-001/Backup --30- 06/dif - Copy2-20240528T214048Z-001/dif - Copy2/Imagens/soundon.png"
            anchors.top: txtvolume.bottom
            anchors.topMargin: 45
            anchors.left: parent.left
            anchors.leftMargin:  70
        }

        Image {
            id: imgsomof
            width: 60
            height: 60
            visible: false
            source: "file:///C:/Users/guilh/Downloads/06-20250808T012321Z-1-001/Backup --30- 06/dif - Copy2-20240528T214048Z-001/dif - Copy2/Imagens/soundof.png"
            anchors.top: txtvolume.bottom
            anchors.topMargin: 45
            anchors.left: parent.left
            anchors.leftMargin:  70
        }

        Text {
            id: soundEffects
            text: "Sons"
            color: "white"
            font.pixelSize: 30
            font.bold: true
            font.family:"Courier New"
            anchors.top: txtvolume.bottom
            anchors.topMargin: 60
            anchors.left: parent.left
            anchors.leftMargin:  150
        }


        Rectangle {
            id: onsom
            width: 60
            height: 30
            radius: 30
            visible : true
            color: "#65C466"
            anchors.top: txtvolume.bottom
            anchors.topMargin: 60
            anchors.left: parent.left
            anchors.leftMargin:  300

            Rectangle {
                id: circleonofsom
                width: 30
                height: 30
                radius: 300
                color: "white"
                anchors.left: parent.left
                anchors.leftMargin: 0
            }

            MouseArea {
                anchors.fill: onsom
                onClicked: {
                    onsom.visible = false
                    ofsom.visible = true
                    click.audioOutput.volume = 0
                    error.audioOutput.volume = 0
                    colectitem.audioOutput.volume = 0
                    _recgreen.visible = false
                }
            }
        }

        Rectangle {
            id: ofsom
            width: 60
            height: 30
            radius: 30
            visible: false
            color: "#E6E6E7"
            anchors.top: txtvolume.bottom
            anchors.topMargin: 60
            anchors.left: parent.left
            anchors.leftMargin:  300

            Rectangle {
                id: circleonofsom2
                width: 30
                height: 30
                radius: 300
                color: "white"
                anchors.right: parent.right
                anchors.rightMargin: 0
            }

            MouseArea {
                anchors.fill: ofsom
                onClicked: {
                    onsom.visible = true
                    ofsom.visible = false
                    click.audioOutput.volume = 0.25
                    error.audioOutput.volume = 1
                    colectitem.audioOutput.volume = 1
                    click.play()
                    _recgreen.visible = true
                }
            }
        }

        Text {
            id: gamerules
            text: "Guia de Jogo"
            color: "white"
            font.pixelSize: 30
            font.bold: true
            font.family:"Courier New"
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 30
            anchors.left: parent.left
            anchors.leftMargin:  70
        }

        Rectangle {
            id:recrules
            width: 50
            height:50
            radius: 300
            color:"white"
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 30
            anchors.left: gamerules.right
            anchors.leftMargin:  20

            Text {
                id: icongamerules
                text: "<"
                color: "black"
                font.pixelSize: 45
                font.bold: true
                font.family:"arial"
                anchors.top: parent.top
                anchors.topMargin: 0
                anchors.right: parent.right
                anchors.rightMargin: 13
            }

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    recconfig.visible = false
                    recgamerules.visible = true
                    itemX.visible = false
                    click.play()
                }
            }
        }
    }

    Rectangle {
        id: recgamerules
        anchors.centerIn: config
        width: 400
        height: 500
        radius: 30
        color: "#393939"
        visible: false

        Text {
            id: txtobj
            text: "Objetivo"
            color: "white"
            font.pixelSize: 30
            font.bold: true
            font.family:"Courier New"
            anchors.top: parent.top
            anchors.topMargin: 20
            anchors.left: parent.left
            anchors.leftMargin:  30
        }

        Text {
            id: txtobj1
            width: parent.width
            text: "-Entre duas imagens encontrar as diferenças;"
            color: "white"
            font.pixelSize: 18
            font.bold: true
            font.family:"Courier New"
            anchors.top: txtobj.bottom
            anchors.topMargin: 15
            anchors.left: parent.left
            anchors.leftMargin:  30
            horizontalAlignment: Text.AlignLeft
            wrapMode: Text.WordWrap
        }

        Text {
            id: txtobj2
            width: parent.width
            text: "-Completar todos os níveis no
menor tempo possivel;"
            color: "white"
            font.pixelSize: 18
            font.bold: true
            font.family:"Courier New"
            anchors.top: txtobj1.bottom
            anchors.topMargin: 5
            anchors.left: parent.left
            anchors.leftMargin:  30
            horizontalAlignment: Text.AlignLeft
            wrapMode: Text.WordWrap
        }

        Text {
            id: txtxdicas
            text: "Dicas"
            color: "white"
            font.pixelSize: 30
            font.bold: true
            font.family:"Courier New"
            anchors.top: txtobj2.bottom
            anchors.topMargin: 20
            anchors.left: parent.left
            anchors.leftMargin:  30
        }

        Text {
            id: txtxdicas1
            width: parent.width
            text: "-Use o sistema de dicas para
ajudar a encontrar as diferenças;"
            color: "white"
            font.pixelSize: 18
            font.bold: true
            font.family:"Courier New"
            anchors.top: txtxdicas.bottom
            anchors.topMargin: 15
            anchors.left: parent.left
            anchors.leftMargin:  30
            horizontalAlignment: Text.AlignLeft
            wrapMode: Text.WordWrap
        }

        Text {
            id: txtxdicas2
            width: parent.width
            text: "-Use o zoom para ver as
diferenças com mais perceção;"
            color: "white"
            font.pixelSize: 18
            font.bold: true
            font.family:"Courier New"
            anchors.top: txtxdicas1.bottom
            anchors.topMargin: 12
            anchors.left: parent.left
            anchors.leftMargin:  30
            horizontalAlignment: Text.AlignLeft
            wrapMode: Text.WordWrap
        }

        Text {
            id: txtxdicas3
            width: parent.width
            text: "-Use os poderes para facilitar
a sua jogabilidade;"
            color: "white"
            font.pixelSize: 18
            font.bold: true
            font.family:"Courier New"
            anchors.top: txtxdicas2.bottom
            anchors.topMargin: 12
            anchors.left: parent.left
            anchors.leftMargin:  30
            horizontalAlignment: Text.AlignLeft
            wrapMode: Text.WordWrap
        }

        Text {
            id: txtxdicas4
            width: parent.width
            text: "-Quanto mais rapido finalizar
o nivel mais estrelas coleta."
            color: "white"
            font.pixelSize: 18
            font.bold: true
            font.family:"Courier New"
            anchors.top: txtxdicas3.bottom
            anchors.topMargin: 12
            anchors.left: parent.left
            anchors.leftMargin:  30
            horizontalAlignment: Text.AlignLeft
            wrapMode: Text.WordWrap
        }


        Rectangle {
            id:recrulesback
            width: 50
            height:50
            radius: 300
            color:"white"
            anchors.right: parent.right
            anchors.rightMargin: 20
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 10

            Text {
                id: icongamerules2
                text: ">"
                color: "black"
                font.pixelSize: 45
                font.bold: true
                font.family:"arial"
                anchors.centerIn: parent
            }

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    recconfig.visible = true
                    recgamerules.visible = false
                    itemX.visible = true
                    click.play()
                }
            }
        }
    }

    MediaPlayer {
        id: sounddiference
        source: "file:///C:/Users/guilh/Downloads/06-20250808T012321Z-1-001/Backup --30- 06/dif - Copy2-20240528T214048Z-001/dif - Copy2/Sounds/Souds/mixkit-correct-positive-notification-957.wav"
        loops: 0
        audioOutput: AudioOutput {
            volume: 1
        }
    }

    MediaPlayer {
        id: click
        source: "file:///C:/Users/guilh/Downloads/06-20250808T012321Z-1-001/Backup --30- 06/dif - Copy2-20240528T214048Z-001/dif - Copy2/Sounds/Souds/mixkit-classic-click-1117.wav"
        loops: 0
        audioOutput: AudioOutput {
            volume: 0.25
        }
    }

    MediaPlayer {
        id: dicaclick
        source: "file:///C:/Users/guilh/Downloads/06-20250808T012321Z-1-001/Backup --30- 06/dif - Copy2-20240528T214048Z-001/dif - Copy2/Sounds/Souds/mixkit-arcade-bonus-229.wav"
        loops: 0
        audioOutput: AudioOutput {
            volume: 1
        }
    }

    MediaPlayer {
        id: winclick
        source: "file:///C:/Users/guilh/Downloads/06-20250808T012321Z-1-001/Backup --30- 06/dif - Copy2-20240528T214048Z-001/dif - Copy2/Sounds/Souds/mixkit-ethereal-fairy-win-sound-2019.wav"
        loops: 0
        audioOutput: AudioOutput {
            volume: 1
        }
    }

    MediaPlayer {
        id: music
        source: "file:///C:/Users/guilh/Downloads/06-20250808T012321Z-1-001/Backup --30- 06/dif - Copy2-20240528T214048Z-001/dif - Copy2/Sounds/Music/Wallpaper(chosic.com).mp3"
        loops: 100
        audioOutput: AudioOutput {
            volume: 0.05
        }
    }

    MediaPlayer {
        id: error
        source: "file:///C:/Users/guilh/Downloads/06-20250808T012321Z-1-001/Backup --30- 06/dif - Copy2-20240528T214048Z-001/dif - Copy2/Sounds/Souds/mixkit-click-error-1110.wav"
        loops: 0
        audioOutput: AudioOutput {
            volume: 1
        }
    }

    MediaPlayer {
        id: loseclick
        source: "file:///C:/Users/guilh/Downloads/06-20250808T012321Z-1-001/Backup --30- 06/dif - Copy2-20240528T214048Z-001/dif - Copy2/Sounds/Souds/mixkit-player-losing-or-failing-2042.wav"
        loops: 0
        audioOutput: AudioOutput {
            volume: 1
        }
    }

    MediaPlayer {
        id: colectitem
        source: "file:///C:/Users/guilh/Downloads/06-20250808T012321Z-1-001/Backup --30- 06/dif - Copy2-20240528T214048Z-001/dif - Copy2/Sounds/Souds/mixkit-game-success-alert-2039.wav"
        loops: 0
        audioOutput: AudioOutput {
            volume: 1
        }
    }

    Tuturial {
        anchors.fill: parent
        visible: showtuturial
        onBack: {
            showtuturial = false;
        }
    }

    Game {
        anchors.fill: parent
        visible: showGame
        onBack: {
            showGame = false;
        }
    }

    Card {
        anchors.fill: parent
        visible: showcard
        onBack: {
            showcard = false;
        }
    }

    GuilhermeButton {
        anchors.fill: parent
        visible: showguilhermebutton
        onBack: {
            showguilhermebutton = false;
        }
    }

    Level4 {
        anchors.fill: parent
        visible: showlevel4
        onBack: {
            showlevel4 = false;
        }
    }

    Level5 {
        anchors.fill: parent
        visible: showlevel5
        onBack: {
            showlevel5 = false;
        }
    }

    Level6 {
        anchors.fill: parent
        visible: showlevel6
        onBack: {
            showlevel6 = false;
        }
    }

    Level7 {
        anchors.fill: parent
        visible: showlevel7
        onBack: {
            showlevel7 = false;
        }
    }

    Level8 {
        anchors.fill: parent
        visible: showlevel8
        onBack: {
            showlevel8 = false;
        }
    }

    Level9 {
        anchors.fill: parent
        visible: showlevel9
        onBack: {
            showlevel9 = false;
        }
    }

    Level10 {
        anchors.fill: parent
        visible: showlevel10
        onBack: {
            showlevel10 = false;
        }
    }
}
