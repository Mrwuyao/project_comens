import QtQuick 2.0

Rectangle{
    id:root
    property alias text: lable.text;
    signal clicked;

    width:100
    height:30
    color:"lightsteelblue"
    border.color: "slategrey"

    Text{
        id:lable
        anchors.centerIn: parent
        text:"start"
    }
    MouseArea{
        anchors.fill:parent
        onClicked: {
            root.clicked();
        }
    }
}
