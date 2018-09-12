import QtQuick 2.9
import QtQuick.Window 2.2

Window {
    visible: true
    visibility:Window.FullScreen
    title: qsTr("SmartHome")
    MouseArea
    {
        anchors.fill:parent
        onClicked:
        {
            Qt.quit();
        }
    }
}
