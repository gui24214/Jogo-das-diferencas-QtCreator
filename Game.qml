import QtQuick
import Qt5Compat.GraphicalEffects
import QtMultimedia

Item {
    id: _game
    width: 1300
    height: 700

    signal back()
    property var contador:["0"]
    property var erros: ["3"]
    property var temposeg:["59"]
    property var tempomin: ["2"]

    Rectangle {
        anchors.fill: parent
        color: "#FFE5E6"
    }

    Timer {
        id: timer_tempo
        interval: 1000
        repeat: true
        running: false
        onTriggered: {
            temposeg[0]--
            txttempo.text = temposeg[0]
            if (temposeg <= 0 && tempomin <= 0)
                timer_tempo.stop() , recerros.visible = true , loseclick.play()
            else {
                if (temposeg <= 0 ) {
                    temposeg = [59]
                    tempomin[0]--
                }
                txttempo2.text = tempomin[0]
            }
            if (tempomin <= 0 && txtcontador.text === "5"){
                stars0_1.visible = false
                stars1_1.visible = true
                stars2_1.visible = false
                stars3_1.visible = false
                timer_tempo.stop()
                txtestrelas.text = estrelas[txtestrelas.text] + 1
            }

            if (tempomin > 0 && tempomin < 2 && temposeg <= 59 && txtcontador.text === "5"){
                stars0_1.visible = false
                stars1_1.visible = false
                stars2_1.visible = true
                stars3_1.visible = false
                timer_tempo.stop()
                txtestrelas.text = estrelas[txtestrelas.text] + 2
            }

            if (tempomin >= 2 && txtcontador.text === "5"){
                stars3_1.visible = true
                stars0_1.visible = false
                stars1_1.visible = false
                stars2_1.visible = false
                timer_tempo.stop()
                txtestrelas.text = estrelas[txtestrelas.text] + 3
            }

            if ( txttempo2.text === "?" && txtcontador.text === "5" ) {
                stars0_1.visible = false
                stars1_1.visible = true
                stars2_1.visible = false
                stars3_1.visible = false
                timer_tempo.stop()
                txtestrelas.text = estrelas[txtestrelas.text] + 1
            }

            if (tempomin >= 2 && temposeg <= 59 ) {
                stars0.visible = false
                stars1.visible = false
                stars2.visible = false
                stars3.visible = true
            }
            if (tempomin > 0 && tempomin < 2 && temposeg <= 59) {
                stars0.visible = false
                stars1.visible = false
                stars2.visible = true
                stars3.visible = false
            }
            if (tempomin <= 0) {
                stars0.visible = false
                stars1.visible = true
                stars2.visible = false
                stars3.visible = false
            }

            if ( txttempo2.text === "?") {
                stars0.visible = false
                stars1.visible = true
                stars2.visible = false
                stars3.visible = false
            }
        }
    }

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
        id: imgdog
        source:"file:///C:/Users/guilh/Downloads/06-20250808T012321Z-1-001/Backup --30- 06/dif - Copy2-20240528T214048Z-001/dif - Copy2/Imagens/level1.jpg"
        //"https://multiversonoticias.com.br/wp-content/uploads/2023/03/jogo-das-diferencas-1-1024x576.jpg"
        anchors.centerIn: parent
    }

    Image {
        id:stars0
        source: "file:///C:/Users/guilh/Downloads/06-20250808T012321Z-1-001/Backup --30- 06/dif - Copy2-20240528T214048Z-001/dif - Copy2/Imagens/0_stars.png"
        width: 170
        height: 90
        fillMode: Image.PreserveAspectFit
        anchors.top: parent.top
        anchors.topMargin: 25
        anchors.left: parent.left
        anchors.leftMargin: 260
        visible: false
    }

    Image {
        id:stars1
        source: "file:///C:/Users/guilh/Downloads/06-20250808T012321Z-1-001/Backup --30- 06/dif - Copy2-20240528T214048Z-001/dif - Copy2/Imagens/1_stars.png"
        width: 170
        height: 90
        fillMode: Image.PreserveAspectFit
        anchors.top: parent.top
        anchors.topMargin: 25
        anchors.left: parent.left
        anchors.leftMargin: 260
        visible: false
    }

    Image {
        id:stars2
        source: "file:///C:/Users/guilh/Downloads/06-20250808T012321Z-1-001/Backup --30- 06/dif - Copy2-20240528T214048Z-001/dif - Copy2/Imagens/2_stars.png"
        width: 170
        height: 90
        fillMode: Image.PreserveAspectFit
        anchors.top: parent.top
        anchors.topMargin: 25
        anchors.left: parent.left
        anchors.leftMargin: 260
        visible: false
    }

    Image {
        id:stars3
        source: "file:///C:/Users/guilh/Downloads/06-20250808T012321Z-1-001/Backup --30- 06/dif - Copy2-20240528T214048Z-001/dif - Copy2/Imagens/3_stars.png"
        width: 170
        height: 90
        fillMode: Image.PreserveAspectFit
        anchors.top: parent.top
        anchors.topMargin: 25
        anchors.left: parent.left
        anchors.leftMargin: 260
        visible: true
    }

    Rectangle {
        id: recpowers
        width: 170
        height:50
        radius: 150
        visible: true
        color: "white"
        border.color: "black"
        border.width: 2
        anchors.right:_borda.right
        anchors.rightMargin: 30
        anchors.top: _borda.top
        anchors.topMargin: 40

        Text {
            id:txtpowers
            text:"Ver Poderes"
            font.pixelSize: 18
            font.bold: true
            font.family: "Courier New"
            anchors.left: parent.left
            anchors.leftMargin:  5
            anchors.top: parent.top
            anchors.topMargin: 15
        }

        Image {
            id:eyenotvisiblepowers
            width: 30
            height:30
            source: "file:///C:/Users/guilh/Downloads/06-20250808T012321Z-1-001/Backup --30- 06/dif - Copy2-20240528T214048Z-001/dif - Copy2/Imagens/NotVisible.png"
            fillMode: Image.PreserveAspectFit
            anchors.left: txtpowers.right
            anchors.leftMargin: 5
            anchors.top: parent.top
            anchors.topMargin: 12
            visible: true
        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
                recpowers.visible = false
                recpowers2.visible = true
                click.play()
                if (_recblue.visible) {
                    iceimg.visible = true
                    contadorice.visible = true
                }
                if (_recred.visible) {
                    heartimg.visible = true
                    contadorheart.visible = true
                }
            }
        }
    }

    Rectangle {
        id: recpowers2
        width: 220
        height:50
        radius: 150
        color: "white"
        border.color: "black"
        border.width: 2
        anchors.right:_borda.right
        anchors.rightMargin: 30
        anchors.top: _borda.top
        anchors.topMargin: 40
        visible: false

        Text {
            id:txtpowers2
            text:"Esconder Poderes"
            font.pixelSize: 18
            font.bold: true
            font.family: "Courier New"
            anchors.left: parent.left
            anchors.leftMargin:  5
            anchors.top: parent.top
            anchors.topMargin: 15
        }

        Image {
            id:eyevisiblepowers
            width: 30
            height:30
            source: "file:///C:/Users/guilh/Downloads/06-20250808T012321Z-1-001/Backup --30- 06/dif - Copy2-20240528T214048Z-001/dif - Copy2/Imagens/visible.png"
            fillMode: Image.PreserveAspectFit
            visible: true
            anchors.left: txtpowers2.right
            anchors.leftMargin: 5
            anchors.top: parent.top
            anchors.topMargin: 12
        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
                recpowers.visible = true
                recpowers2.visible = false
                iceimg.visible = false
                heartimg.visible = false
                click.play()
            }
        }
    }

    Image {
        id: iceimg
        width: 70
        height: 70
        source: "file:///C:/Users/guilh/Downloads/06-20250808T012321Z-1-001/Backup --30- 06/dif - Copy2-20240528T214048Z-001/dif - Copy2/Imagens/ice-removebg-preview.png"
        anchors.right:_borda.right
        anchors.rightMargin: 20
        anchors.top: _borda.top
        anchors.topMargin: 100
        visible: false

        MouseArea {
            anchors.fill: parent
            onClicked: {
                timer_tempo.running = false
                iceimg.visible = false
                _recblue.visible = false
                click.play()
            }
        }
    }

    Rectangle {
        id:contadorice
        width: 25
        height: 25
        color: "black"
        radius: 150
        anchors.bottom: iceimg.top
        anchors.bottomMargin: -25
        anchors.right: iceimg.right
        anchors.rightMargin: 5
        visible: false

        Text {
            id: txtice
            text: txtquantidadeice.text
            font.family: "Courier new"
            font.pixelSize: 18
            font.bold: true
            color: "white"
            anchors.centerIn: parent
        }
    }

    Image {
        id: heartimg
        width: 50
        height: 50
        source: "file:///C:/Users/guilh/Downloads/06-20250808T012321Z-1-001/Backup --30- 06/dif - Copy2-20240528T214048Z-001/dif - Copy2/Imagens/coracao.png"
        anchors.right:_borda.right
        anchors.rightMargin: 30
        anchors.top: _borda.top
        anchors.topMargin: 180
        visible: false

        MouseArea {
            anchors.fill: parent
            onClicked: {
                erros[0]++
                txterros.text = erros[0]
                heartimg.visible = false
                _recred.visible = false
                click.play()
            }
        }
    }

    Rectangle {
        id:contadorheart
        width: 25
        height: 25
        color: "black"
        radius: 150
        anchors.bottom: heartimg.top
        anchors.bottomMargin: -20
        anchors.right: heartimg.right
        anchors.rightMargin: -5
        visible: false

        Text {
            id: txtheart
            text: txtquantidadeheart.text
            font.family: "Courier new"
            font.pixelSize: 18
            font.bold: true
            color: "white"
            anchors.centerIn: parent
        }
    }

    Row {
        id: rowcontador
        width: 120
        height: 40
        anchors.left: parent.left
        anchors.leftMargin: 800
        anchors.top: parent.top
        anchors.topMargin: 30
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

    Item {
        id: itemtempo
        width: 200
        height: 100
        visible: true
        anchors.top: _borda.top
        anchors.topMargin: 10
        anchors.left: parent.left
        anchors.leftMargin: 550

        Rectangle {
            anchors.fill:  parent
            color: "transparent"
            opacity: 0.5
        }

        Text {
            id: txttempo
            text: temposeg[0]
            color: "black"
            font.bold: true
            font.pixelSize: 68
            font.family: "Courier New"
            anchors.top: parent.top
            anchors.topMargin: 10
            anchors.left: parent.left
            anchors.leftMargin: 50
        }

        Text {
            id: txttempo2
            text: tempomin[0]
            color: "black"
            font.bold: true
            font.pixelSize: 68
            font.family: "Courier New"
            anchors.top: parent.top
            anchors.topMargin: 10
            anchors.left: parent.left
            anchors.leftMargin: 0
        }

        Text {
            id: txttempo3
            text: ":"
            color: "black"
            font.bold: true
            font.pixelSize: 68
            font.family: "Courier New"
            anchors.top: parent.top
            anchors.topMargin: 5
            anchors.left: parent.left
            anchors.leftMargin: 25
        }
    }

    Image {
        id: hearticon
        width: 50
        height: 50
        source:"file:///C:/Users/guilh/Downloads/06-20250808T012321Z-1-001/Backup --30- 06/dif - Copy2-20240528T214048Z-001/dif - Copy2/Imagens/coracao.png"
        //"https://cdn-icons-png.freepik.com/256/11680/11680038.png"
        anchors.left: _borda.left
        anchors.leftMargin: 30
        anchors.top: _borda.top
        anchors.topMargin: 30
    }

    Text {
        id: txterros
        text: erros[0]
        color: "red"
        font.bold: true
        font.pixelSize: 68
        font.family: "Courier New"
        anchors.left: _borda.left
        anchors.leftMargin: 80
        anchors.top: _borda.top
        anchors.topMargin: 25
    }

    Text {
        id: zoomtxt
        text: "Zoom"
        color: "Black"
        font.pixelSize: 40
        font.bold: true
        font.family: "Courier New"
        anchors.bottom: _borda.bottom
        anchors.bottomMargin: 20
        anchors.right: _borda.right
        anchors.rightMargin: 30

        MouseArea {
            anchors.fill: parent
            onClicked: {
                zoom.visible = true
                _gameback0.visible = false
                itemerros.visible = false
                click.play()
            }
        }
    }

    Text {
        id: _Dica1
        text: "DICA: Patas"
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
        anchors.bottom: _borda.bottom
        anchors.bottomMargin: 20
        anchors.right: zoomtxt.left
        anchors.rightMargin: 25
        visible: true

        MouseArea {
            anchors.fill: parent
            onClicked: {
                _Dica1.visible = true
                _txtdica.visible = false
                dicaclick.play()
            }
        }
    }

    Item {
        id: itemerros
        width: 980
        height: 485
        visible: true
        anchors.top: _borda.top
        anchors.topMargin: 115
        anchors.left: _borda.left
        anchors.leftMargin: 110

        Rectangle {
            anchors.fill: parent
            color: "transparent"
            opacity: 0.05
        }

        Rectangle {
            id: erro1
            anchors.fill: parent
            visible:true
            color: "transparent"

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    txterros.text = 0;
                    error.play()
                    erros[0]--
                    txterros.text = erros[0]
                    if (txterros.text === "0"){
                        recerros.visible = true
                        loseclick.play()
                    }
                }
            }
        }
    }

    Item {
        id: _item
        anchors.right: imgdog.right
        anchors.rightMargin: 8
        anchors.top: imgdog.top
        anchors.topMargin: 50
        width: 450
        height: 500

        Rectangle {
            id:aa
            width: 50
            height: 70
            color: "transparent"
            opacity:0.5
            anchors.bottom : parent.bottom
            anchors.bottomMargin: -5
            anchors.right: parent.right
            anchors.rightMargin: 30

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    _aa.visible = true
                    sounddiference.play()
                    timer_tempo.running = true
                    if(_aa.visible){
                        leftaa.visible = false
                        aa.visible = false
                        contador[0]++
                        txtcontador.text = contador[0]
                    }
                    if (_aa.visible && _bb.visible && _cc.visible && _dd.visible && _ee.visible) {
                        _win1.visible = true;
                        winclick.play()
                        level2fake.visible = false
                        level2.visible = true
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
            width: 150
            height: 55
            rotation: 135
            radius: 30
            color: "transparent"
            opacity: 0.5
            anchors.bottom : parent.bottom
            anchors.bottomMargin: 120
            anchors.left:  parent.left
            anchors.leftMargin: -10

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    _bb.visible = true
                    sounddiference.play()
                    timer_tempo.running = true
                    if(_bb.visible){
                        leftbb.visible = false
                        bb.visible = false
                        contador[0]++
                        txtcontador.text = contador[0]
                    }
                    if (_aa.visible && _bb.visible && _cc.visible && _dd.visible && _ee.visible) {
                        _win1.visible = true;
                        winclick.play()
                        level2fake.visible = false
                        level2.visible = true
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
            width: 40
            height: 40
            radius: 150
            color: "transparent"
            opacity: 0.5
            anchors.top: parent.top
            anchors.topMargin: 65
            anchors.left:  parent.left
            anchors.leftMargin: 60

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    _cc.visible = true
                    sounddiference.play()
                    timer_tempo.running = true
                    if(_cc.visible){
                        leftcc.visible = false
                        cc.visible = false
                        contador[0]++
                        txtcontador.text = contador[0]
                    }
                    if (_aa.visible && _bb.visible && _cc.visible && _dd.visible && _ee.visible) {
                        _win1.visible = true;
                        winclick.play()
                        level2fake.visible = false
                        level2.visible = true
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
            width: 100
            height: 25
            rotation: 162
            radius: 150
            color: "transparent"
            opacity: 0.75
            anchors.top: parent.top
            anchors.topMargin: 184
            anchors.left:  parent.left
            anchors.leftMargin: 67

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    _dd.visible = true
                    sounddiference.play()
                    timer_tempo.running = true
                    if(_dd.visible){
                        leftdd.visible = false
                        dd.visible = false
                        contador[0]++
                        txtcontador.text = contador[0]
                    }
                    if (_aa.visible && _bb.visible && _cc.visible && _dd.visible && _ee.visible) {
                        _win1.visible = true;
                        winclick.play()
                        level2fake.visible = false
                        level2.visible = true
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
            width: 180
            height: 50
            radius: 150
            rotation: 70
            color: "transparent"
            opacity: 0.5
            anchors.top: parent.top
            anchors.topMargin: 270
            anchors.right:  parent.right
            anchors.rightMargin: -75

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    _ee.visible = true
                    sounddiference.play()
                    timer_tempo.running = true
                    if(_ee.visible){
                        leftee.visible = false
                        ee.visible = false
                        contador[0]++
                        txtcontador.text = contador[0]
                    }
                    if (_aa.visible && _bb.visible && _cc.visible && _dd.visible && _ee.visible) {
                        _win1.visible = true
                        winclick.play()
                        level2fake.visible = false
                        level2.visible = true
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
        anchors.left: imgdog.left
        anchors.leftMargin: 17
        anchors.top: imgdog.top
        anchors.topMargin: 50
        width: 450
        height: 500

        Rectangle {
            anchors.fill: parent
            color: "transparent"
            opacity: 0.5
        }

        Rectangle {
            id:leftaa
            width: 50
            height: 70
            color: "transparent"
            opacity:0.5
            anchors.bottom : parent.bottom
            anchors.bottomMargin: -5
            anchors.right: parent.right
            anchors.rightMargin: 30

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    _aa.visible = true
                    sounddiference.play()
                    timer_tempo.running = true
                    if(_aa.visible){
                        aa.visible = false
                        leftaa.visible = false
                        contador[0]++
                        txtcontador.text = contador[0]
                    }
                    if (_aa.visible && _bb.visible && _cc.visible && _dd.visible && _ee.visible) {
                        _win1.visible = true;
                        winclick.play()
                        level2fake.visible = false
                        level2.visible = true
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
            width: 65
            height: 175
            radius: 30
            color: "transparent"
            opacity: 0.5
            anchors.bottom : parent.bottom
            anchors.bottomMargin: 20
            anchors.left:  parent.left
            anchors.leftMargin: 90

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    _bb.visible = true
                    sounddiference.play()
                    timer_tempo.running = true
                    if(_bb.visible){
                        bb.visible = false
                        leftbb.visible = false
                        contador[0]++
                        txtcontador.text = contador[0]
                    }
                    if (_aa.visible && _bb.visible && _cc.visible && _dd.visible && _ee.visible) {
                        _win1.visible = true;
                        winclick.play()
                        level2fake.visible = false
                        level2.visible = true
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
            width: 40
            height: 40
            radius: 150
            color: "transparent"
            opacity: 0.5
            anchors.top: parent.top
            anchors.topMargin: 65
            anchors.left:  parent.left
            anchors.leftMargin: 60

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    _cc.visible = true
                    sounddiference.play()
                    timer_tempo.running = true
                    if(_cc.visible){
                        cc.visible = false
                        leftcc.visible = false
                        contador[0]++
                        txtcontador.text = contador[0]
                    }
                    if (_aa.visible && _bb.visible && _cc.visible && _dd.visible && _ee.visible) {
                        _win1.visible = true;
                        winclick.play()
                        level2fake.visible = false
                        level2.visible = true
                    }
                }
            }
        }

        Text {
            id: _leftcc
            font.pixelSize: 50
            font.bold: true
            text: "X"
            color: "Blue"
            visible: false
            anchors.centerIn: cc
        }

        Rectangle {
            id:leftdd
            width: 100
            height: 25
            rotation: 162
            radius: 150
            color: "transparent"
            opacity: 0.75
            anchors.top: parent.top
            anchors.topMargin: 184
            anchors.left:  parent.left
            anchors.leftMargin: 67

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    _dd.visible = true
                    sounddiference.play()
                    timer_tempo.running = true
                    if(_dd.visible){
                        dd.visible = false
                        leftdd.visible = false
                        contador[0]++
                        txtcontador.text = contador[0]
                    }
                    if (_aa.visible && _bb.visible && _cc.visible && _dd.visible && _ee.visible) {
                        _win1.visible = true;
                        winclick.play()
                        level2fake.visible = false
                        level2.visible = true
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
            anchors.centerIn: dd
        }

        Rectangle {
            id:leftee
            width: 180
            height: 50
            radius: 150
            rotation: 70
            color: "transparent"
            opacity: 0.5
            anchors.top: parent.top
            anchors.topMargin: 270
            anchors.right:  parent.right
            anchors.rightMargin: -75

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    _ee.visible = true
                    sounddiference.play()
                    timer_tempo.running = true
                    if(_ee.visible){
                        ee.visible = false
                        leftee.visible = false
                        contador[0]++
                        txtcontador.text = contador[0]
                    }
                    if (_aa.visible && _bb.visible && _cc.visible && _dd.visible && _ee.visible) {
                        _win1.visible = true
                        winclick.play()
                        level2fake.visible = false
                        level2.visible = true
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
            anchors.centerIn: ee
        }
    }

    Rectangle {
        id: _gameback0
        width: 200
        height:60
        radius: 20
        color:"black"
        anchors.bottom:  _borda.bottom
        anchors.left: _borda.left
        anchors.bottomMargin: 15
        anchors.leftMargin:  15

        Text{
            text: "Menu"
            color: "white"
            font.pixelSize: 24
            font.bold: true
            font.family:"Courier New"
            anchors.centerIn: parent
        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
                _game.back();
                _grid.visible = true
                click.play()
                runlevel.visible = true
                timer_tempo.stop()
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
            width: parent.width
            height: parent.height
            source:"file:///C:/Users/guilh/Downloads/06-20250808T012321Z-1-001/Backup --30- 06/dif - Copy2-20240528T214048Z-001/dif - Copy2/Imagens/level1.jpg"
            //"https://multiversonoticias.com.br/wp-content/uploads/2023/03/jogo-das-diferencas-1-1024x576.jpg"
            fillMode: Image.PreserveAspectFit
            anchors.fill: parent
            anchors.horizontalCenter: parent.horizontalCenter
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
                    _gameback0.visible = true
                    itemerros.visible = true
                    click.play()
                }
            }
        }
    }

    Rectangle {
        id: recerros
        anchors.fill: parent
        color: "lightgrey"
        visible : false

        Image {
            id: toutchimg
            source:"file:///C:/Users/guilh/Downloads/06-20250808T012321Z-1-001/Backup --30- 06/dif - Copy2-20240528T214048Z-001/dif - Copy2/Imagens/Toutch.png"
            //"https://cdn-icons-png.flaticon.com/512/3960/3960289.png"
            anchors.right: parent.right
            anchors.rightMargin: 200
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 0
        }

        Text {
            id: txtmax
            text: "PERDESTE!!"
            rotation: 320
            color: "red"
            font.pixelSize: 100
            font.bold: true
            font.family:"Courier New"
            anchors.left: parent.left
            anchors.leftMargin: 30
            anchors.top: parent.top
            anchors.topMargin: 170
        }


        Text {
            text: "Clique na tela para
 recomeçar o nivel "
            color: "red"
            font.pixelSize: 45
            //rotation: 45
            font.bold: true
            font.family:"Courier New"
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 80
            anchors.left: parent.left
            anchors.leftMargin: 100
        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
                txtcontador.text = contador = ["0"]
                txttempo.text = temposeg = ["?"]
                txttempo2.text = tempomin = ["?"]
                itemtempo.visible = false
                rowcontador.anchors.leftMargin = 600
                txterros.text = erros = ["3"]
                txtcontador.text = 0
                click.play()
                leftaa.visible = true
                leftbb.visible = true
                leftcc.visible = true
                leftdd.visible = true
                leftee.visible = true
                aa.visible = true
                bb.visible = true
                cc.visible = true
                dd.visible = true
                ee.visible = true
                _aa.visible = false
                _bb.visible = false
                _cc.visible = false
                _dd.visible = false
                _ee.visible = false
                if(recerros.visible ) {
                    recerros.visible = false
                    _txtdica.visible = true
                    _Dica1.visible = false
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
            text: "Selecione o Butão Menu Principal para jogar o nivel 2"
            font.pixelSize: 30
            font.bold: true
            font.family: "Courier New"
            anchors.top: _youwin.bottom
            anchors.topMargin: 0
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Row {
            spacing: 30
            anchors.top: _txtselectlvl2.bottom
            anchors.topMargin: 20
            anchors.horizontalCenter: parent.horizontalCenter

            Rectangle {
                id: _gameback
                width: 250
                height:100
                radius: 20
                color:"black"

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
                        _game.back();
                        _settings.visible = true;
                        _grid.visible = true
                        _Dica1.visible = true
                        _txtdica.visible = false
                        click.play()
                    }
                }
            }
        }
    }

    Rectangle {
        id: runlevel
        anchors.fill: parent
        visible: true
        color: "#FFE5E6"

        Text {
            id:txtinicia
            text: "Clica na tela para iniciar o nível"
            font.pixelSize: 50
            font.bold: true
            font.family: "Courier New"
            anchors.top: parent.top
            anchors.topMargin: 110
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Image {
            id: toutchimg4
            width: 500
            height: 500
            visible: true
            source:"file:///C:/Users/guilh/Downloads/06-20250808T012321Z-1-001/Backup --30- 06/dif - Copy2-20240528T214048Z-001/dif - Copy2/Imagens/Toutch.png"
            //"https://cdn-icons-png.flaticon.com/512/3960/3960289.png"
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 0
            anchors.horizontalCenter: parent.horizontalCenter
        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
                runlevel.visible = false
                timer_tempo.running = true
                if(_recgreen.visible) {
                    click.play()
                    click.audioOutput.volume = 0.25
                    sounddiference.audioOutput.volume = 1
                    dicaclick.audioOutput.volume = 1
                    winclick.audioOutput.volume = 1
                    error.audioOutput.volume = 1
                    loseclick.audioOutput.volume = 1
                } else {
                    click.audioOutput.volume = 0
                    sounddiference.audioOutput.volume = 0
                    dicaclick.audioOutput.volume = 0
                    winclick.audioOutput.volume = 0
                    error.audioOutput.volume = 0
                    loseclick.audioOutput.volume = 0
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
}
