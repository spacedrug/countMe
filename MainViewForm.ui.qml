import QtQuick 2.4
import QtQuick.Controls 2.3

Item {
    id: item1
    width: 400
    height: 350

    property alias secText: secText
    property alias minText: minText
    property alias minSpin: minSpin
    property alias secSpin: secSpin


    Rectangle {
        id: rectangle
        color: "#444444"
        anchors.fill: parent

        SpinBox {
            id: minSpin
            x: 44
            y: 193
            width: 120
            height: 37
        }

        SpinBox {
            id: secSpin
            x: 222
            y: 193
            width: 120
            height: 37

            onValueChanged: secText.text = secSpin.value
        }

        TextArea {
            id: minText
            x: 70
            y: 93
            width: 85
            height: 57
            text: qsTr("00")
            font.pointSize: 35


        }

        TextArea {
            id: secText
            x: 240
            y: 93
            width: 85
            height: 57
            text: qsTr("00")
            font.pointSize: 35
        }

        Text {
            id: colonText
            x: 186
            y: 96
            width: 28
            height: 51
            text: qsTr(":")
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 35
        }
    }
}