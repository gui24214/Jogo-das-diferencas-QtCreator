import QtQuick
import QtQuick.Controls 2.15
import QtMultimedia

Item {
    id: tuturialpag
    width: 1500
    height: 900

    signal back()
    property var contador:["0"]
    property var erros: ["0","1","2","3"]

    Rectangle {
        id:rec
        anchors.fill: parent
        color: "white"
    }

    Item {
        id: itemtudo
        width: 1200
        height: 680
        visible: true
        anchors.centerIn: parent

        Rectangle {
            id: _borda
            width: 1200
            height: 680
            radius: 50
            color:"transparent"
            border.color: "black"
            border.width: 6
            anchors.centerIn: parent
        }

        Image {
            id: imgtuturial
            width: 980
            height: 480
            visible: true
            fillMode: Image.PreserveAspectFit
            source: "file:///C:/Users/guilh/Downloads/06-20250808T012321Z-1-001/Backup --30- 06/dif - Copy2-20240528T214048Z-001/dif - Copy2/Imagens/tutorial .jpg"
            anchors.centerIn: parent
        }

        Row {
            width: 120
            height: 40
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: _borda.top
            anchors.topMargin: 10
            spacing: 5

            Text {
                id: txtcontador
                text: contador[0]
                color: "black"
                font.bold: true
                font.pixelSize: 68
                font.family: "Courier New"
            }

            Text {
                id: txtcontadormax
                text: "/5"
                color: "black"
                font.bold: true
                font.pixelSize: 68
                font.family: "Courier New"
            }
        }

        Text {
            id: zoomtxt
            text: "Zoom"
            color: "Black"
            font.pixelSize: 40
            font.bold: true
            visible: false
            font.family: "Courier New"
            anchors.bottom: _borda.bottom
            anchors.bottomMargin: 30
            anchors.right: _borda.right
            anchors.rightMargin: 30

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    bb.visible = true
                    leftbb.visible = true
                    zoom.visible = true
                    itemerros.visible = false
                    toutchimg9.visible = true
                    toutchimg10.visible = true
                    click.play()
                }
            }
        }

        Image {
            id: toutchimg7
            width: 100
            height: 100
            visible: false
            source: "file:///C:/Users/guilh/Downloads/06-20250808T012321Z-1-001/Backup --30- 06/dif - Copy2-20240528T214048Z-001/dif - Copy2/Imagens/Toutch.png"
            anchors.bottom: _borda.bottom
            anchors.bottomMargin: -23
            anchors.right: _borda.right
            anchors.rightMargin: 30

            SequentialAnimation{
                id: characterAnimzoom
                running: true
                loops: Animation.Infinite

                NumberAnimation {
                    target: toutchimg7
                    property: "rotation"
                    duration: 800
                    to: -30
                }

                NumberAnimation {
                    target: toutchimg7
                    property: "rotation"
                    duration: 800
                    to: 30
                }
            }
        }


        Text {
            id: _Dica1
            text: "DICA: Bolinha casa"
            color:"blue"
            font.pixelSize: 50
            font.bold: true
            font.family: "Courier New"
            visible: false
            anchors.bottom: _borda.bottom
            anchors.bottomMargin: 0
            anchors.horizontalCenter: _borda.horizontalCenter
        }

        Text {
            id: _txtdica
            text: "Dica"
            color:"Red"
            font.pixelSize: 40
            font.bold: true
            font.family: "Courier New"
            anchors.right:_borda.right
            anchors.rightMargin: 40
            anchors.top: _borda.top
            anchors.topMargin: 40
            visible: false

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    _Dica1.visible = true
                    _txtdica.visible = false
                    toutchimg4.visible = false
                    toutchimg5.visible = true
                    toutchimg6.visible = true
                    cc.visible = true
                    leftcc.visible = true
                    dicaclick.play()
                }
            }
        }

        Image {
            id: toutchimg4
            width: 100
            height: 100
            visible: false
            source: "file:///C:/Users/guilh/Downloads/06-20250808T012321Z-1-001/Backup --30- 06/dif - Copy2-20240528T214048Z-001/dif - Copy2/Imagens/Toutch.png"
            anchors.top: _borda.top
            anchors.topMargin: 50
            anchors.right: _borda.right
            anchors.rightMargin: 30

            SequentialAnimation{
                id: characterAnimdica
                running: true
                loops: Animation.Infinite

                NumberAnimation {
                    target: toutchimg4
                    property: "rotation"
                    duration: 800
                    to: -30
                }

                NumberAnimation {
                    target: toutchimg4
                    property: "rotation"
                    duration: 800
                    to: 30
                }
            }
        }

        Item {
            id: itemerros
            width: 900
            height: 505
            visible: false
            anchors.top: _borda.top
            anchors.topMargin: 90
            anchors.left: _borda.left
            anchors.leftMargin: 150

            Rectangle {
                anchors.fill: parent
                color: "transparent"
                opacity: 0.5
            }

            Rectangle {
                id: erro1
                anchors.fill: parent
                visible:false
                color: "transparent"

                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        txterros.text = 0;
                        recerros.visible = true
                    }
                }
            }

            Rectangle {
                id: erro2
                anchors.fill: parent
                visible: false
                color: "transparent"

                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        erro2.visible = false
                        erro1.visible = true
                        txterros.text = 1;
                    }
                }
            }

            Rectangle {
                id: erro3
                anchors.fill: parent
                visible: false
                color: "transparent"

                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        erro3.visible = false
                        erro2.visible = true
                        txterros.text = 2;
                    }
                }
            }
        }

        Item {
            id: _item
            anchors.right: imgtuturial.right
            anchors.rightMargin: 8
            anchors.top: imgtuturial.top
            anchors.topMargin: 50
            width: 450
            height: 450

            Rectangle {
                anchors.fill: parent
                color:"transparent"
                opacity: 0.5
            }

            Rectangle {
                id:aa
                width: 130
                height: 80
                radius: 50
                color: "transparent"
                opacity:0.5
                anchors.top: parent.top
                anchors.topMargin: 45
                anchors.left:  parent.left
                anchors.leftMargin: 110

                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        _aa.visible = true
                        toutchimg2.visible = false
                        toutchimg3.visible = false
                        sounddiference.play()
                        _txtdica.visible = true
                        if(_aa.visible){
                            leftaa.visible = false
                            aa.visible = false
                            contador[0]++
                            txtcontador.text = contador[0]
                            toutchimg4.visible = true
                        }
                        if (_aa.visible && _bb.visible && _cc.visible && _dd.visible  && _ee.visible) {
                            _win1.visible = true;
                            winclick.play()
                        }
                    }
                }
            }

            Text {
                id: _aa
                font.pixelSize: 50
                font.bold: true
                text: "X"
                color: "Blue"
                visible: false
                anchors.centerIn: aa
            }

            Rectangle {
                id:bb
                width: 55
                height: 55
                color: "transparent"
                visible: false
                opacity: 0.5
                anchors.bottom : parent.bottom
                anchors.bottomMargin: 170
                anchors.left:  parent.left
                anchors.leftMargin: 240

                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        _bb.visible = true
                        sounddiference.play()
                        if(_bb.visible){
                            leftbb.visible = false
                            bb.visible = false
                            toutchimg9.visible = false
                            toutchimg10.visible = false
                            contador[0]++
                            txtcontador.text = contador[0]
                            dd.visible = true
                            leftdd.visible = true
                            ee.visible = true
                            leftee.visible = true
                        }
                        if (_aa.visible && _bb.visible && _cc.visible && _dd.visible  && _ee.visible) {
                            _win1.visible = true;
                            winclick.play()
                        }
                    }
                }
            }

            Text {
                id: _bb
                font.pixelSize: 50
                font.bold: true
                text: "X"
                color: "Blue"
                visible: false
                anchors.centerIn: bb
            }

            Rectangle {
                id:cc
                width: 30
                height: 30
                radius: 150
                color: "transparent"
                opacity: 0.7
                visible: false
                anchors.top: parent.top
                anchors.topMargin: 162
                anchors.left:  parent.left
                anchors.leftMargin: 202

                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        _cc.visible = true
                        sounddiference.play()
                        toutchimg5.visible = false
                        toutchimg6.visible = false
                        toutchimg7.visible = true
                        zoomtxt.visible = true
                        if(_cc.visible){
                            leftcc.visible = false
                            cc.visible = false
                            contador[0]++
                            txtcontador.text = contador[0]
                        }
                        if (_aa.visible && _bb.visible && _cc.visible && _dd.visible  && _ee.visible) {
                            _win1.visible = true;
                            winclick.play()
                        }
                    }
                }
            }

            Text {
                id: _cc
                font.pixelSize: 50
                font.bold: true
                text: "X"
                color: "Blue"
                visible: false
                anchors.centerIn: cc
            }

            Rectangle {
                id:dd
                width: 95
                height: 25
                radius: 150
                color: "transparent"
                opacity: 0.7
                visible: false
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 90
                anchors.left:  parent.left
                anchors.leftMargin: 137


                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        _dd.visible = true
                        sounddiference.play()
                        if(_dd.visible){
                            leftdd.visible = false
                            dd.visible = false
                            contador[0]++
                            txtcontador.text = contador[0]
                        }
                        if (_aa.visible && _bb.visible && _cc.visible && _dd.visible  && _ee.visible) {
                            _win1.visible = true;
                            winclick.play()
                        }
                    }
                }
            }

            Text {
                id: _dd
                font.pixelSize: 50
                font.bold: true
                text: "X"
                color: "Blue"
                visible: false
                anchors.centerIn: dd
            }

            Rectangle {
                id:ee
                width: 25
                height: 110
                radius: 150
                color: "transparent"
                opacity: 0.7
                visible: false
                anchors.bottom: parent.bottom
                anchors.bottomMargin:95
                anchors.right:  parent.right
                anchors.rightMargin: 35

                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        _ee.visible = true
                        sounddiference.play()
                        if(_ee.visible){
                            leftee.visible = false
                            ee.visible = false
                            contador[0]++
                            txtcontador.text = contador[0]
                        }
                        if (_aa.visible && _bb.visible && _cc.visible && _dd.visible && _ee.visible) {
                            _win1.visible = true;
                            winclick.play()
                        }
                    }
                }
            }

            Text {
                id: _ee
                font.pixelSize: 50
                font.bold: true
                text: "X"
                color: "Blue"
                visible: false
                anchors.centerIn: ee
            }
        }

        Item {
            id: itemleft
            anchors.left: imgtuturial.left
            anchors.leftMargin: 0
            anchors.top: imgtuturial.top
            anchors.topMargin: 50
            width: 450
            height: 450

            Rectangle {
                anchors.fill: parent
                color: "transparent"
                opacity: 0.5
            }

            Rectangle {
                id:leftaa
                width: 130
                height: 80
                radius: 50
                color: "transparent"
                opacity:0.5
                anchors.top: parent.top
                anchors.topMargin: 45
                anchors.left:  parent.left
                anchors.leftMargin: 90

                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        _aa.visible = true
                        toutchimg2.visible = false
                        toutchimg3.visible = false
                        sounddiference.play()
                        _txtdica.visible = true
                        if(_aa.visible){
                            toutchimg4.visible = true
                            aa.visible = false
                            leftaa.visible = false
                            contador[0]++
                            txtcontador.text = contador[0]
                        }
                        if (_aa.visible && _bb.visible && _cc.visible && _dd.visible && _ee.visible) {
                            _win1.visible = true;
                            winclick.play()
                        }
                    }
                }
            }

            Text {
                id: _leftaa
                font.pixelSize: 50
                font.bold: true
                text: "X"
                color: "Blue"
                visible: false
                anchors.centerIn: aa
            }

            Rectangle {
                id:leftbb
                width: 55
                height: 55
                color: "transparent"
                visible: false
                opacity: 0.5
                anchors.bottom : parent.bottom
                anchors.bottomMargin: 155
                anchors.left:  parent.left
                anchors.leftMargin: 250

                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        _bb.visible = true
                        sounddiference.play()
                        if(_bb.visible){
                            bb.visible = false
                            leftbb.visible = false
                            contador[0]++
                            txtcontador.text = contador[0]
                            toutchimg9.visible = false
                            toutchimg10.visible = false
                            dd.visible = true
                            leftdd.visible = true
                            ee.visible = true
                            leftee.visible = true
                        }
                        if (_aa.visible && _bb.visible && _cc.visible && _dd.visible && _ee.visible) {
                            _win1.visible = true;
                            winclick.play()
                        }
                    }
                }
            }

            Text {
                id: _leftbb
                font.pixelSize: 50
                font.bold: true
                text: "X"
                color: "Blue"
                visible: false
                anchors.centerIn: bb
            }

            Rectangle {
                id:leftcc
                width: 30
                height: 30
                radius: 150
                color: "transparent"
                visible: false
                opacity: 0.7
                anchors.top: parent.top
                anchors.topMargin: 162
                anchors.left:  parent.left
                anchors.leftMargin: 210

                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        _cc.visible = true
                        sounddiference.play()
                        toutchimg5.visible = false
                        toutchimg6.visible = false
                        toutchimg7.visible = true
                        zoomtxt.visible = true
                        if(_cc.visible){
                            cc.visible = false
                            leftcc.visible = false
                            contador[0]++
                            txtcontador.text = contador[0]
                        }
                        if (_aa.visible && _bb.visible && _cc.visible &&  _dd.visible && _ee.visible) {
                            _win1.visible = true;
                            winclick.play()
                        }
                    }
                }
            }

            Rectangle {
                id:leftdd
                width: 95
                height: 25
                radius: 50
                color: "transparent"
                visible: false
                opacity:0.5
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 85
                anchors.left:  parent.left
                anchors.leftMargin: 140

                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        _dd.visible = true
                        sounddiference.play()
                        if(_dd.visible){
                            dd.visible = false
                            leftdd.visible = false
                            contador[0]++
                            txtcontador.text = contador[0]
                        }
                        if (_aa.visible && _bb.visible && _cc.visible && _dd.visible && _ee.visible) {
                            _win1.visible = true;
                            winclick.play()
                        }
                    }
                }
            }

            Text {
                id: _leftdd
                font.pixelSize: 50
                font.bold: true
                text: "X"
                color: "Blue"
                visible: false
                anchors.centerIn: aa
            }

            Rectangle {
                id:leftee
                width: 25
                height: 110
                radius: 50
                color: "transparent"
                visible: false
                opacity:0.5
                anchors.bottom: parent.bottom
                anchors.bottomMargin:100
                anchors.left:  parent.left
                anchors.leftMargin: 395

                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        _ee.visible = true
                         sounddiference.play()
                        if(_ee.visible){
                            ee.visible = false
                            leftee.visible = false
                            contador[0]++
                            txtcontador.text = contador[0]
                        }
                        if (_aa.visible && _bb.visible && _cc.visible && _dd.visible && _ee.visible) {
                            _win1.visible = true;
                            winclick.play()
                        }
                    }
                }
            }

            Text {
                id: _leftee
                font.pixelSize: 50
                font.bold: true
                text: "X"
                color: "Blue"
                visible: false
                anchors.centerIn: aa
            }

        }

        Rectangle {
            id: recerros
            anchors.fill: parent
            color: "lightgrey"
            visible : false

            Image {
                id: toutchimg
                source: "file:///C:/Users/guilh/Downloads/06-20250808T012321Z-1-001/Backup --30- 06/dif - Copy2-20240528T214048Z-001/dif - Copy2/Imagens/Toutch.png"
                anchors.right: parent.right
                anchors.rightMargin: 200
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 0
            }

            Text {
                id: txtmax
                text: "Maximo de erros econtrados"
                color: "red"
                font.pixelSize: 45
                font.bold: true
                font.family:"Courier New"
                anchors.centerIn: parent
            }

            Text {
                text: "Clique na tela para dar restart level"
                color: "red"
                font.pixelSize: 45
                font.bold: true
                font.family:"Courier New"
                anchors.top: txtmax.top
                anchors.topMargin: 50
                anchors.horizontalCenter: parent.horizontalCenter
            }

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    txtcontador.text = contador = ["0"]
                    erro1.visible = false
                    erro2.visible = false
                    erro3.visible = true
                    txterros.text = 3
                    txtcontador.text = 0
                    leftaa.visible = true
                    leftbb.visible = true
                    leftcc.visible = true
                    aa.visible = true
                    bb.visible = true
                    cc.visible = true
                    _aa.visible = false
                    _bb.visible = false
                    _cc.visible = false
                    if(recerros.visible ) {
                        recerros.visible = false
                        _txtdica.visible = false
                        _Dica1.visible = false
                        zoomtxt.visible = false
                        toutchimg2.visible = true
                        toutchimg3.visible = true
                        toutchimg4.visible = false
                        toutchimg5.visible = false
                        toutchimg6.visible = false
                        toutchimg7.visible = false
                        toutchimg8.visible = false
                        toutchimg9.visible = false
                        toutchimg10.visible = false
                        erro1.visible = false
                        erro2.visible = false
                        erro3.visible = false
                    }
                }
            }
        }

        Image {
            id: toutchimg2
            width: 100
            height: 100
            visible: true
            source: "file:///C:/Users/guilh/Downloads/06-20250808T012321Z-1-001/Backup --30- 06/dif - Copy2-20240528T214048Z-001/dif - Copy2/Imagens/Toutch.png"
            anchors.top: _item.top
            anchors.topMargin: 60
            anchors.left:  _item.left
            anchors.leftMargin: 160

            SequentialAnimation{
                id: characterAnimaa1
                running: true
                loops: Animation.Infinite

                NumberAnimation {
                    target: toutchimg2
                    property: "rotation"
                    duration: 800
                    to: -30
                }

                NumberAnimation {
                    target: toutchimg2
                    property: "rotation"
                    duration: 800
                    to: 30
                }
            }
        }

        Image {
            id: toutchimg3
            width: 100
            height: 100
            visible: true
            source: "file:///C:/Users/guilh/Downloads/06-20250808T012321Z-1-001/Backup --30- 06/dif - Copy2-20240528T214048Z-001/dif - Copy2/Imagens/Toutch.png"
            anchors.top: itemleft.top
            anchors.topMargin: 60
            anchors.left:  itemleft.left
            anchors.leftMargin: 120

            SequentialAnimation{
                id: characterAnimaa2
                running: true
                loops: Animation.Infinite

                NumberAnimation {
                    target: toutchimg3
                    property: "rotation"
                    duration: 800
                    to: -30
                }

                NumberAnimation {
                    target: toutchimg3
                    property: "rotation"
                    duration: 800
                    to: 30
                }
            }
        }

        Image {
            id: toutchimg5
            width: 100
            height: 100
            visible: false
            source: "file:///C:/Users/guilh/Downloads/06-20250808T012321Z-1-001/Backup --30- 06/dif - Copy2-20240528T214048Z-001/dif - Copy2/Imagens/Toutch.png"
            anchors.top: _item.top
            anchors.topMargin: 165
            anchors.left:  _item.left
            anchors.leftMargin: 170

            SequentialAnimation{
                id: characterAnimacc1
                running: true
                loops: Animation.Infinite

                NumberAnimation {
                    target: toutchimg5
                    property: "rotation"
                    duration: 800
                    to: -30
                }

                NumberAnimation {
                    target: toutchimg5
                    property: "rotation"
                    duration: 800
                    to: 30
                }
            }
        }

        Image {
            id: toutchimg6
            width: 100
            height: 100
            visible: false
            source: "file:///C:/Users/guilh/Downloads/06-20250808T012321Z-1-001/Backup --30- 06/dif - Copy2-20240528T214048Z-001/dif - Copy2/Imagens/Toutch.png"
            anchors.top: itemleft.top
            anchors.topMargin: 165
            anchors.left: itemleft.left
            anchors.leftMargin: 165

            SequentialAnimation{
                id: characterAnimacc2
                running: true
                loops: Animation.Infinite

                NumberAnimation {
                    target: toutchimg6
                    property: "rotation"
                    duration: 800
                    to: -30
                }

                NumberAnimation {
                    target: toutchimg6
                    property: "rotation"
                    duration: 800
                    to: 30
                }
            }
        }

        Image {
            id: toutchimg9
            width: 100
            height: 100
            visible: false
            source: "file:///C:/Users/guilh/Downloads/06-20250808T012321Z-1-001/Backup --30- 06/dif - Copy2-20240528T214048Z-001/dif - Copy2/Imagens/Toutch.png"
                //"https://cdn-icons-png.flaticon.com/512/3960/3960289.png"
            anchors.top: itemleft.top
            anchors.topMargin: 250
            anchors.left: itemleft.left
            anchors.leftMargin: 225

            SequentialAnimation{
                id: characterAnimabb2
                running: true
                loops: Animation.Infinite

                NumberAnimation {
                    target: toutchimg9
                    property: "rotation"
                    duration: 800
                    to: -30
                }

                NumberAnimation {
                    target: toutchimg9
                    property: "rotation"
                    duration: 800
                    to: 30
                }
            }
        }

        Image {
            id: toutchimg10
            width: 100
            height: 100
            visible: false
            source:  "file:///C:/Users/guilh/Downloads/06-20250808T012321Z-1-001/Backup --30- 06/dif - Copy2-20240528T214048Z-001/dif - Copy2/Imagens/Toutch.png"
                //"https://cdn-icons-png.flaticon.com/512/3960/3960289.png"
            anchors.top: _item.top
            anchors.topMargin: 250
            anchors.left: _item.left
            anchors.leftMargin: 230

            SequentialAnimation{
                id: characterAnimabb1
                running: true
                loops: Animation.Infinite

                NumberAnimation {
                    target: toutchimg10
                    property: "rotation"
                    duration: 800
                    to: -30
                }

                NumberAnimation {
                    target: toutchimg10
                    property: "rotation"
                    duration: 800
                    to: 30
                }
            }
        }
    }

    Rectangle {
        id:zoom
        anchors.fill: parent
        color: "#FFE5E6"
        visible: false

        Image {
            id: imgparty2
            source:"file:///C:/Users/guilh/Downloads/06-20250808T012321Z-1-001/Backup --30- 06/dif - Copy2-20240528T214048Z-001/dif - Copy2/Imagens/tutorial .jpg"
            anchors.fill: parent
        }

        Rectangle {
            id:_retanguloback
            width: 50
            height: 50
            radius: 300
            color: "black"
            opacity: 1
            anchors.top: parent.top
            anchors.topMargin: 20
            anchors.right: parent.right
            anchors.rightMargin: 20

            Text{
                text: ">"
                color: "white"
                font.pixelSize: 20
                font.bold: true
                font.family:"Courier New"
                anchors.centerIn: parent
            }

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    zoom.visible = false
                    itemerros.visible = true
                    toutchimg7.visible = false
                    toutchimg8.visible = false
                    click.play()
                }
            }
        }

        Image {
            id: toutchimg8
            width: 100
            height: 100
            visible: true
            source: "file:///C:/Users/guilh/Downloads/06-20250808T012321Z-1-001/Backup --30- 06/dif - Copy2-20240528T214048Z-001/dif - Copy2/Imagens/Toutch.png"
            anchors.top: parent.top
            anchors.topMargin: 45
            anchors.right: parent.right
            anchors.rightMargin: 0

            SequentialAnimation{
                id: characterAnimzoom2
                running: true
                loops: Animation.Infinite

                NumberAnimation {
                    target: toutchimg8
                    property: "rotation"
                    duration: 800
                    to: -30
                }

                NumberAnimation {
                    target: toutchimg8
                    property: "rotation"
                    duration: 800
                    to: 30
                }
            }
        }
    }

    Rectangle {
        id: _win1
        anchors.fill: parent
        color: "#FFE5E6"
        visible: false

        Text {
            id: _youwin
            text: "You Win"
            anchors.centerIn: parent
            font.pixelSize: 100
            font.bold: true
            font.family: "Courier New"
        }

        Text {
            id:_txtselectlvl2
            text: "Selecione o Butão Menu Principal para Sair do Tutorial"
            font.pixelSize: 30
            font.bold: true
            font.family: "Courier New"
            anchors.top: _youwin.bottom
            anchors.topMargin: 0
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Rectangle {
            id: tuturialback
            width: 250
            height:100
            radius: 20
            color:"black"
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: _txtselectlvl2.bottom
            anchors.topMargin: 15

            Text{
                text: "Menu Principal"
                color: "white"
                font.pixelSize: 23
                font.bold: true
                font.family:"Courier New"
                anchors.centerIn: parent
            }

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    tuturialpag.back();
                    imgconfig.visible = true
                    click.play()
                    _grid.visible = true
                    carrinhoimg.visible = true
                    _row2.visible = true
                    _row.visible = true
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
}
