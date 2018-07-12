import QtQuick 2.4

MainViewForm {

    secSpin.onValueChanged: {        
        console.log("secSpin value changed")

        if(secText.text < 10) {
            secText.text = "0" + secSpin.value
            console.log(secText.text)
        }
        else {
            secText.text = secSpin.value
        }
    }

    minSpin.onValueChanged: {

        console.log("minSpin value changed")
        if(minText.text < 10) {
            minText.text = "0" + minSpin.value
            console.log(minText.text)
        }
        else {
            minText.text = minSpin.value
        }
    }

    buttonCount.onClicked: {
        if(buttonCount.text == "count") {
            buttonCount.text = "stop"
            buttonCount.enabled = false
            timer.start()
        }
    }

    Timer {
        id: timer
        triggeredOnStart: false // manage this property how its working
        onTriggered: time.text = Date().toString()
    }
}
