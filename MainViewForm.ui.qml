import QtQuick 2.4
import QtQuick.Controls 2.3

Rectangle {
    id: rectangleMainView
    width: 400
    height: 350
    color: "#444444"
    property alias buttonCount: buttonCount

    property alias secText: secText
    property alias minText: minText
    property alias minSpin: minSpin
    property alias secSpin: secSpin

    SpinBox {
        id: minSpin
        x: 65
        y: 193
        width: 110
        height: 35
        editable: true
        to: 60
        anchors.verticalCenterOffset: 30
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenterOffset: -75
        anchors.horizontalCenter: parent.horizontalCenter

        onValueModified: buttonCount.enabled = true
    }

    SpinBox {
        id: secSpin
        x: 222
        y: 193
        width: 110
        height: 35
        editable: true
        to: 62
        anchors.verticalCenterOffset: 30
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenterOffset: 75
        anchors.horizontalCenter: parent.horizontalCenter

        onValueModified: buttonCount.enabled = true
    }

    TextArea {
        id: minText
        x: 70
        y: 93
        width: 90
        height: 80
        text: qsTr("")
        placeholderText: "00"
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        anchors.horizontalCenterOffset: -55
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenterOffset: -50
        anchors.verticalCenter: parent.verticalCenter
        font.pointSize: 40
        readOnly: true

    }

    TextArea {
        id: secText
        x: 240
        y: 93
        width: 90
        height: 80
        text: "00"
        placeholderText: ""
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        anchors.horizontalCenterOffset: 55
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenterOffset: -50
        anchors.verticalCenter: parent.verticalCenter
        font.pointSize: 40
        readOnly: true
    }

    Text {
        id: colonText
        x: 186
        y: 96
        width: 28
        height: 51
        text: qsTr(":")
        anchors.verticalCenterOffset: -50
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        font.pixelSize: 35
    }

    Button {
        id: buttonCount
        x: 156
        y: 266
        width: 120
        height: 35
        text: qsTr("count")
        enabled: false
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenterOffset: 100
        anchors.verticalCenter: parent.verticalCenter
    }

}
