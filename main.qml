import QtQuick 2.11
import QtQuick.Window 2.11
import QtQuick.Controls 2.3

Window {
    id: window
    visible: true
    width: 400
    height: 600
    color: "#444444"
    title: qsTr("countMe")
    maximumHeight: 600
    maximumWidth: 400
    minimumHeight: 600
    minimumWidth: 400

    Rectangle {
        id: topBar
        height: 50
        color: "#444444"
        border.color: "#00000000"
        anchors.left: parent.left
        anchors.leftMargin: 0
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.top: parent.top
        anchors.topMargin: 0

        ToolBar {
            id: toolBar
            font.family: "Times New Roman"
            anchors.fill: parent

            ToolButton {
                id: toolButton
                text: qsTr("<")
                enabled: false
                checked: false
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 0
                anchors.top: parent.top
                anchors.topMargin: 0
                anchors.left: parent.left
                anchors.leftMargin: 0
            }

            ToolButton {
                id: toolButton1
                x: 138
                y: 0
                height: 50
                text: "countMe"
                font.family: "Verdana"
                enabled: false
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
            }

            ToolButton {
                id: toolButton2
                x: 311
                text: qsTr(":")
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 0
                anchors.top: parent.top
                anchors.topMargin: 0
                anchors.right: parent.right
                anchors.rightMargin: 0
            }
        }
    } // topBar


    MainView {
        id: mainView

        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 0
        anchors.bottom: bottomBar.top
        anchors.bottomMargin: 0
        anchors.top: topBar.bottom

    } // mainView


    BottonView {
        id: bottomBar
        height: 200
        anchors.right: parent.right
        anchors.left: parent.left
        anchors.leftMargin: 0
        anchors.bottom: parent.bottom

    } // bottomView


} // Window
