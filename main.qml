
/*
  Author:Jianwei.zhang
  Date:2018.09.12
  Brief:MainWindow
 */

import QtQuick 2.9
import QtQuick.Window 2.2

Window
{
    visible: true
    visibility:Window.FullScreen    //Show FullScreen
    title: qsTr("SmartHome")
    color:"#777777"

    Rectangle
    {
        id:m_btn_quit
        anchors.top:parent.top
        anchors.right:parent.right
        color:"#FF0000"
        width:100
        height:30
        MouseArea
        {
            anchors.fill:parent
            onClicked:
            {
                Qt.quit();
            }
        }
        Text
        {
            anchors.centerIn:parent
            color:"#FFFFFF"
            text:"退出系统"
        }
    }

    /*
      Show Date and Time
     */
    Text
    {
        id:m_date
        anchors.verticalCenter:m_btn_quit.verticalCenter
        anchors.right:m_btn_quit.left
        anchors.rightMargin: 10
        color:"#FF0000"
        text:"ssddsasdsadsad"
        Timer
        {
            interval:500
            running:true
            repeat:true
            onTriggered:
            {
                m_date.text = Qt.formatDateTime(new Date(),"yyyy年MM月dd日 hh:mm:ss dddd")
            }
        }
    }

    /*
      Show My Family Name
     */
    Text
    {
        id:m_title
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: m_btn_quit.berticalCenter
        color:"#FFFFFF"
        text:"My Family"
    }


}
