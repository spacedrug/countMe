import QtQuick 2.4
import QtQuick.Controls 2.3

Rectangle {
    id: rectangleBottomView
    color: "#646464"
    width: 400
    height: 150

    Text {
        id: text1
        color: "#262626"
        text: qsTr("your note")
        anchors.top: parent.top
        anchors.topMargin: 12
        anchors.left: parent.left
        anchors.leftMargin: 12
        font.pixelSize: 12
    }

    ScrollView {
        id: scrollView
        anchors.rightMargin: 8
        anchors.bottomMargin: 15
        anchors.leftMargin: 8
        anchors.top: text1.bottom
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.left: parent.left
        anchors.topMargin: 5

        TextArea {
            id: textArea
            x: 0
            y: 0
            width: 384
            height: 99
            text: qsTr("")
            wrapMode: Text.WordWrap
            placeholderText: "type a note here..."
        }
    }
}
