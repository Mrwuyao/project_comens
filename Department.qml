import QtQuick 2.0

Item {

    property QtObject departmentInfo: ListElement{}
    anchors.left:parent.left
        width:350
        height:550
     Rectangle{
         id:navList
         anchors.fill:parent
         radius:10
         color:"#999"
         Gradient{
             GradientStop{position:0.0;color:"#f6f6f6"}
             GradientStop{position:1.0;color:"#d7d7d7"}
         }
         ListView{
             anchors.fill:navList
             anchors.centerIn:navList
             anchors.margins: 10
             model:departmentInfo
             delegate: component
             focus:true
             spacing: 10
         }


         Component{
             id:component
             Rectangle{
                 id:contentBox
                 width:ListView.view.width
                 height:80
                 radius:10
                 color:ListView.isCurrentItem ? "#157efb" : "#53d769"
                 border.color : Qt.lighter(color,1.1)
                 Text {
                     anchors.centerIn: parent
                     font.pixelSize: 20
                     text:depName;
                 }
                 MouseArea{
                     anchors.fill:contentBox
                     onClicked: {
                     }
                 }
             }

         }
     }
}
