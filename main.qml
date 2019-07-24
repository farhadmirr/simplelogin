import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12
import QtQuick.Particles 2.12
import QtGraphicalEffects 1.3


ApplicationWindow {
    Material.theme: Material.Dark
    visible: true
    width: 300
    height: 480
    title: qsTr("Login Before Continue")
    Rectangle{
        anchors.fill: parent
        gradient:Gradient{
            GradientStop{position: 0.0;color:"#F44336"}
            GradientStop{position: 0.5;color:"#E91E63"}
            GradientStop{position: 1.0;color:"#F44336"}
        }
        Image {
            id: fallouot
            source: "qrc:/fallout_copy.png"
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            anchors.topMargin: 20
            width: 100
            height: 100
            visible: false
        }
      ColorOverlay{
          anchors.fill:fallouot
          source:fallouot
          color: "#3F51B5"
      }
        DropShadow{
            id:dropshadow
            anchors.fill: facebookrect
            horizontalOffset: 0
            verticalOffset: 0
            radius: 8.0
            samples: 17
            color: "#80000000"
            source:facebookrect
        }
        Rectangle{

            id:facebookrect
            color:"#00BCD4"
            radius: 5
            width: 180
            height: 40
            anchors.top: fallouot.bottom
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.topMargin: 30
            Image {
                source: "qrc:/facebook-social-media-icon-design-template-vector-png_126824.png"
                id:facebook
                width: 50
                height:50
                anchors.verticalCenter: parent.verticalCenter
                anchors.left: parent.left


            }
            Text {
                id: facebooktexr
                text: qsTr("Login with Facebook")
                anchors.left: facebook.right
                anchors.leftMargin:-5
                anchors.verticalCenter: parent.verticalCenter

            }
            MouseArea{
                cursorShape: Qt.PointingHandCursor
                hoverEnabled: true
                anchors.fill: parent
                onEntered: {
                    dropshadow.horizontalOffset=5
                    dropshadow.verticalOffset=5
                }
                onExited: {
                    dropshadow.horizontalOffset=0
                    dropshadow.verticalOffset=0
                }


            }
        }
        DropShadow{
            anchors.fill: gmailrect
            id:gmaildropshadow
            source: gmailrect
            horizontalOffset: 0
            verticalOffset: 0
            radius: 8
            color: "#80000000"
            samples: 17
        }

        Rectangle{
            id:gmailrect
            color:"#FF9800"
            width: 180
            height: 40
            radius: 5
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: facebookrect.bottom
            anchors.topMargin: 10
            Image {
                id: gmail
                source: "qrc:/gmail.svg"
                width: 30
                height: 30
                anchors.verticalCenter: parent.verticalCenter
                anchors.left: parent.left
                anchors.leftMargin: 10
                Text {
                    id: gmailtext
                    text: qsTr("Login with Gmail")
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.left: gmail.right
                    anchors.leftMargin: 8
                }
            }
            MouseArea{
                anchors.fill: parent
                hoverEnabled: true
                cursorShape: Qt.PointingHandCursor
                onEntered: {
                    gmaildropshadow.horizontalOffset=3
                    gmaildropshadow.verticalOffset=3
                }
                onExited: {
                    gmaildropshadow.horizontalOffset=0
                    gmaildropshadow.verticalOffset=0
                }
            }
        }
        DropShadow{
            id:instagramdropshadow
            horizontalOffset: 0
            verticalOffset: 0
            anchors.fill: instagramrect
            source: instagramrect
            samples: 17
            radius: 8
            color: "#80000000"
        }
        Rectangle{
            id:instagramrect
            width: 180
            height:40
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: gmailrect.bottom
            anchors.topMargin: 10
            radius: 5
            color:"#9C27B0"
            Image {
                id: instagram
                source: "qrc:/instagram.svg"
                width: 30
                height: 30
                anchors.verticalCenter: parent.verticalCenter
                anchors.left: instagramrect.left
                anchors.leftMargin: 8
                Text {
                    id: instagramtext
                    text: qsTr("Login with Instagram")
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.left: parent.right
                    anchors.leftMargin: 8
                }
            }
            MouseArea{
                anchors.fill: parent
                cursorShape: Qt.PointingHandCursor
                hoverEnabled: true
                onClicked: {

                }

                onEntered: {
                    instagramdropshadow.horizontalOffset=3
                    instagramdropshadow.verticalOffset=3
                }
                onExited: {
                    instagramdropshadow.horizontalOffset=0
                    instagramdropshadow.verticalOffset=0
                }
            }

        }
    Text {
        id:moretext
        width: 300
        text: qsTr("You can login easily and use more than 1,915,639 items without attribution.")
        anchors.top: instagramrect.bottom
        anchors.topMargin: 30
        wrapMode: Text.WordWrap
        horizontalAlignment: Text.AlignHCenter
    }
    Text {
        id: learnmore
        text: qsTr("Learn more")
        anchors.top: moretext.bottom
        anchors.topMargin: 1
        anchors.left: parent.left
        anchors.leftMargin: 100
    }
    Text {
        id: here
        text: qsTr("here")
        anchors.top: learnmore.top
        anchors.left: learnmore.right
        anchors.leftMargin: 5
        font.bold: true
        MouseArea{
            anchors.fill: parent
            hoverEnabled: true
            onEntered: here.font.underline=true
            onExited: here.font.underline=false
            cursorShape: Qt.PointingHandCursor
        }
    }





}
}
