import QtQuick 2.0

Item {
    id:modelGlobal
    property QtObject navInfo: ListModel{
        ListElement{navName:'index'}
        ListElement{navName:'baocaishiyebu'}
        ListElement{navName:'tabcaishiyebu'}
        ListElement{navName:'guangfushiyebu'}
        ListElement{navName:'guidaojiaotongdianzishiyebu'}
        ListElement{navName:'shuixingshuzhishiyebu'}
    }
    property QtObject departmentInfo: ListModel{
        ListElement{depName:'shouye'}
        ListElement{depName:'baocaishiyebu'}
        ListElement{depName:'tabcaishiyebu'}
        ListElement{depName:'guangfushiyebu'}
        ListElement{depName:'guidaojiaotongdianzishiyebu'}
        ListElement{depName:'shuixingshuzhishiyebu'}
    }
}
