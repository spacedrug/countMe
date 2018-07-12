import QtQuick 2.4

MainViewForm {

    secSpin.onValueChanged: {

        console.log("secText lenght: " + secText.length)
        console.log("secText.text = " + secText.text)
        if(secSpin.value < 10) {
            secText.text = "0" + secSpin.value            
        }
        else {
            secText.text = secSpin.value
        }
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
    }



    buttonCount.onClicked: {
        if(buttonCount.text == "count") {
            buttonCount.text = "stop"
            buttonCount.enabled = false
            timer.start()
            console.log("Wcisnieto button - timer.start()")
        }
        if(minText.placeholderText == "00") minText.text = "00"
    }

    Timer {
        id: timer
        triggeredOnStart: false // manage this property how its working
        repeat: true
        onTriggered: {

            if(minText.text == "00" && secText.text == "00") {
                timer.stop()
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
            else if(minText.text != "00") {
                console.log("if #3")
                minText.text--
            }

            else {
                console.log("else")

            }
            console.log("timer.onTriggered, minText:" + minText.text + " secText:" + secText.text)
        }
    }
}
