import QtQuick 2.5
import QtQuick.Window 2.2

Window {
    id:root;
    property QtObject model: GlobalModel{}
    visible: true
    width: 1920
    height: 1080
    Head{
        navInfo:model.navInfo
    }
    Department{
        id:department
        anchors.left:parent.left
        anchors.leftMargin: 50
        y:160
        departmentInfo:model.departmentInfo
    }
    Content{
        y:160
        anchors.horizontalCenter: parent.horizontalCenter
    }
     Row{

     }

//    Head{}
//    Banner{}
//    Navigation{}
//    Content{}
}

