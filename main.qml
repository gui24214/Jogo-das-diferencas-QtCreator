import QtQuick
import Qt5Compat.GraphicalEffects
import QtMultimedia

Window {
    id:window
    width: 1300
    height: 700
    visible: true
    title: qsTr("Jogo das Diferenças")

    property bool showGame: false
    property bool showSettings: false

    Rectangle {
        anchors.fill: parent
        color: "#D8C753"
    }

    Text {
        id: _txtgame
        anchors.horizontalCenter: parent.horizontalCenter
        y: 300
        text: "Jogo das Diferenças"
        color: "white"
        font.bold: true
        font.pixelSize: 100
        font.family: "Courier New"
    }

    Rectangle {
        id: _newsettings
        width: 300
        height: 80
        radius: 50
        color : "black"
        visible: true
        anchors.top: _txtgame.bottom
        anchors.topMargin: 20
        anchors.horizontalCenter: parent.horizontalCenter

        Text {
            id:play
            text: "Play"
            anchors.centerIn: parent
            font.bold: true
            font.pixelSize: 30
            font.family: "Courier New"
            color: "white"
        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
                showSettings = true
                click.play()
            }
        }
    }

    MediaPlayer {
        id: sounddiference
        source: "file:///C:/Users/anton/Desktop/Estagio/Projectos/QML/dif - Copy2-20240512T133413Z-001/dif - Copy2/Sounds/Souds/mixkit-correct-positive-notification-957.wav"
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
    Settings {
        id: _sets
        anchors.fill: parent
        visible: showSettings
        onBack: {
            showSettings = false;
        }
    }
}
