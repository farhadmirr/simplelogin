import QtQuick 2.0

Item {
Rectangle{
    anchors.fill: parent
    color:"red"
    Text {
        id: testtext
        text: qsTr("SALAAAAAAAAAAAAAAAAm")
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        font.pixelSize: 25
    }
}
}
