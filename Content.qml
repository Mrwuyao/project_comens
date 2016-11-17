import QtQuick 2.0

Item {
    width:980
    height:640
    Rectangle{
        anchors.fill:parent
        color:"#ccc"
        Item{
            id:wrap
            width:400
            height:30
            clip:true
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.bottom:parent.bottom
            anchors.bottomMargin: 20
            Row{
                //            spacing: 10
                Buttom{
                    id:button
                    text:"prev"
                    MouseArea{
                        anchors.fill: parent
                        onClicked: {
                            if(sliderView.currentIndex <= 0){
                                sliderView.currentIndex = 0
                            }else{
                                sliderView.currentIndex--;
                            }
                        }
                    }
                }
                Item{
                    width: wrap.width-button.width*2-20
                    height: wrap.height
                    ListView{
                        id:sliderView
                        anchors.centerIn: parent
                        width:sliderView.model*10+(sliderView.model-1)*spacing
                        model:5
                        spacing:10
                        orientation:ListView.Horizontal
                        delegate: Component{
                            Rectangle{
                                id:circular
                                anchors.verticalCenter: parent.verticalCenter
                                width:10
                                height:10
                                radius:5
                                states: State {
                                    name: "Current"
                                    when: circular.ListView.isCurrentItem
                                    PropertyChanges { target: circular;scale: 1.5}
                                }
                                transitions: Transition {
                                    NumberAnimation { easing.type: Easing.InOutElastic;properties: "scale"; duration: 100 }
                                }
                                color:circular.ListView.isCurrentItem ? "#fff" : "#999"
                            }
                        }
                    }
                }

                Buttom{
                    id:button1
                    text:"next"
                    MouseArea{
                        anchors.fill: parent
                        onClicked: {
                            if(sliderView.currentIndex >= sliderView.model-1){
                                sliderView.currentIndex = sliderView.model-1
                            }else{
                                sliderView.currentIndex++;
                            }
                        }
                    }
                }
            }
        }
    }
}
