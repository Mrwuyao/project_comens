import QtQuick 2.0

Item {
    property QtObject navInfo: ListElement{}
    width:parent.width
    height: 150
    Row{
        width:parent.width;
        height: 100;
        Rectangle{
            id:logo
            color:"yellow"
            width:400
            height:parent.height
            Text{
                anchors.centerIn: parent
                text:"COMENS"
                font.pixelSize:50
                color:"#fff"
            }
        }
        Rectangle{
            width:parent.width-logo.width
            height:parent.height
            color:"green"
            Text{
                anchors.verticalCenter: parent.verticalCenter
                x:100
                text:"gao meng ke ji"
                font.pixelSize: 50
                color:"#fff"
            }
        }
    }

        Rectangle{
            id:banner
            width:parent.width-100;
            height: 50;
            anchors.bottom: parent.bottom
            anchors.horizontalCenter: parent.horizontalCenter
//            color:"#999"
            radius: 10
            ListView{
                anchors.fill:banner
                anchors.centerIn:banner
                anchors.right:parent.right
                anchors.rightMargin: 10
                anchors.left:parent.left
                anchors.leftMargin: 10
                model:navInfo
                orientation: ListView.Horizontal
                clip:true
                delegate: Component{
                    Rectangle{
                        id:wraper
                        width: (banner.width-20)/ navInfo.count
                        height:banner.height
                        color:ListView.isCurrentItem ? "#157efb" : "#53d769"
                        Image {

                            id: currBg
                            visible: wraper.ListView.isCurrentItem ?true :false
                            source: "picture/hour.png"
                        }
                        Text{
                            anchors.centerIn: parent
                            font.pixelSize: 20
                            text:navName;
                            color:"#000"
                        }
                        MouseArea{
                            anchors.fill:parent
                            onClicked: {
                                 wraper.ListView.view.currentIndex = index
                            }
                        }
                    }
                }
            }
        }
}
