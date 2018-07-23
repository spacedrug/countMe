import QtQuick 2.4

MainViewForm {

    property bool isCounting: false

    secSpin.onValueChanged: {

        console.log("secText lenght: " + secText.length)
        console.log("secText.text = " + secText.text)
        if(secSpin.value < 10) {
            secText.text = "0" + secSpin.value            
        }
        else {
            secText.text = secSpin.value
        }

        if(minSpin.value != 0 || secSpin.value != 0) {
            buttonCount.enabled = true
        }
        else buttonCount.enabled = false
    }

    secText.onTextChanged: {
        if(secText.value < 10) {
            secText.text = "0" + secSpin.value
            console.log("AAAsecText.text = " + secText.text)
        }
    }

    minSpin.onValueChanged: {

        console.log("minSpin lenght: " + minText.length)
        console.log("minText.text = " + minText.text)
        if(minSpin.value < 10) {
            minText.text = "0" + minSpin.value            
        }
        else {
            minText.text = minSpin.value
        }

        if(minSpin.value != 0 || secSpin.value != 0) {
            buttonCount.enabled = true
        }
        else buttonCount.enabled = false
    }

    buttonCount.onClicked: {

        if(buttonCount.text == "count") {
            buttonCount.text = "stop"
            timer.start()
            textStatus.text = "running"
            buttonPause.visible = true
            console.log("Wcisnieto button - timer.start()")
        }
        else {
            timer.stop()
            secSpin.value = 0
            minSpin.value = 0
            textStatus.text = "stopped"
            console.log("Wcisnieto button - timer.stop()")
            buttonPause.visible = false
            buttonPause.text = "pause"
            buttonCount.text = "count"                       
        }

        console.log(minText.placeholderText)
        if(minText.text == "") {
            minText.text = "00"
        }
    }

    buttonPause.onClicked: {
        if(timer.running) {
            timer.stop()
            textStatus.text = "paused"
            buttonPause.text = "run"
        }
        else {
            timer.start()
            buttonPause.text = "pause"
            textStatus.text = "running"
        }
    }

    Timer {
        id: timer
        triggeredOnStart: true // manage this property - how its working
        repeat: true
        onTriggered: {

            if(minText.text == "00" && secText.text == "00") {
                timer.stop()
                buttonPause.visible = false
                secSpin.value = 0
                minSpin.value = 0
                textStatus.text = "stopped"
                buttonCount.text = "count"
                console.log("if #1 - timer.stop()")
            }
            else if(minText.text == "00" && secText.text != "00") {
                console.log("if #2")
                if(secText.text <= 10) {
                    secText.text--
                    secText.text = "0" + secText.text
                }
                else secText.text--
            }
            else if(minText.text != "00" && secText.text == "00") {
                console.log("if #3")
                if(secText.text <= 10) {
                    minText.text--
                    minText.text = "0" + minText.text
                }
                else minText.text--

                secText.text = "59"
            }
            else if(minText.text != "00" && secText.text != "00") {
                if(secText.text <= 10) {
                    secText.text--
                    secText.text = "0" + secText.text
                }
                else secText.text--
                console.log("if #4")
            }
            else {
                console.log("else")
            }

            console.log("timer.onTriggered, minText:" + minText.text + " secText:" + secText.text)
        }
    }
}
