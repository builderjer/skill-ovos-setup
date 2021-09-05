/*
 * Copyright 2018 Aditya Mehra <aix.m@outlook.com>
 * 
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *    http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 */

import QtQuick.Layouts 1.4
import QtQuick 2.4
import QtQuick.Controls 2.0
import org.kde.kirigami 2.5 as Kirigami
import org.kde.plasma.core 2.0 as PlasmaCore
import Mycroft 1.0 as Mycroft

Item {
    id: backendView
    anchors.fill: parent
    property bool horizontalMode: backendView.width > backendView.height ? 1 :0

    Rectangle {
        color: Qt.rgba(0, 0, 0, 1)
        anchors.fill: parent
        anchors.margins: Mycroft.Units.gridUnit * 2

        GridLayout {
            anchors.fill: parent
            z: 1
            columns: horizontalMode ? 2 : 1
            columnSpacing: Kirigami.Units.largeSpacing
            Layout.alignment: horizontalMode ? Qt.AlignVCenter : Qt.AlignTop

            ColumnLayout {
                Layout.maximumWidth: horizontalMode ? parent.width / 2 : parent.width
                Layout.preferredHeight: horizontalMode ? parent.height : parent.height / 2
                Layout.alignment: horizontalMode ? Qt.AlignVCenter : Qt.AlignTop

                Label {
                    id: configureSttEngineText
                    Layout.fillWidth: true
                    wrapMode: Text.WordWrap
                    font.bold: true
                    font.pixelSize: backendView.width * 0.05
                    color: "#ff0000"
                    text: "Configure Your TTS Engine"
                }

                Label {
                    id: warnText
                    Layout.fillWidth: true
                    Layout.alignment: Qt.AlignTop
                    wrapMode: Text.WordWrap
                    font.pixelSize: backendView.width * 0.04
                    color: "white"
                    text: "Text-To-Speech (TTS) is the process of converting strings of text into audio of spoken words"
                }
            }

            ColumnLayout {
                Layout.fillWidth: true
                Layout.fillHeight: true

                Button {
                    id: bt1
                    Layout.fillWidth: true
                    Layout.fillHeight: true

                    background: Rectangle {
                        color: bt1.down ? "#14415E" : "#34a4fc"
                        border.width: 6
                        border.color: Qt.darker("#34a4fc", 1.2)
                        radius: 10
                    }

                    contentItem: Kirigami.Heading {
                        width: parent.width
                        height: parent.height
                        verticalAlignment: Text.AlignVCenter
                        horizontalAlignment: Text.AlignHCenter
                        wrapMode: Text.WordWrap
                        elide: Text.ElideRight
                        level: 3
                        text: "Mimic2 (online male)"
                    }

                    onClicked: {
                        triggerGuiEvent("mycroft.device.confirm.tts", {"engine": "mimic2"})
                    }
                }

                Button {
                    id: bt2
                    Layout.fillWidth: true
                    Layout.fillHeight: true

                    background: Rectangle {
                        color: bt4.down ? "#BC4729" : "#ee5534"
                        border.width: 6
                        border.color: Qt.darker("#34a4fc", 1.2)
                        radius: 10
                    }

                    contentItem: Kirigami.Heading {
                        width: parent.width
                        height: parent.height
                        verticalAlignment: Text.AlignVCenter
                        horizontalAlignment: Text.AlignHCenter
                        wrapMode: Text.WordWrap
                        elide: Text.ElideRight
                        level: 3
                        text: "Larynx (online female)"
                    }

                    onClicked: {
                        triggerGuiEvent("mycroft.device.confirm.tts",
                        {"engine": "larynx"})
                    }
                }

                Button {
                    id: bt3
                    Layout.fillWidth: true
                    Layout.fillHeight: true

                    background: Rectangle {
                        color: bt1.down ? "#14415E" : "#34a4fc"
                        border.width: 6
                        border.color: Qt.darker("#ee5534", 1.2)
                        radius: 10
                    }

                    contentItem: Kirigami.Heading {
                        width: parent.width
                        height: parent.height
                        verticalAlignment: Text.AlignVCenter
                        horizontalAlignment: Text.AlignHCenter
                        wrapMode: Text.WordWrap
                        elide: Text.ElideRight
                        level: 3
                        text: "Mimic (offline male)"
                    }

                    onClicked: {
                        triggerGuiEvent("mycroft.device.confirm.tts", {"engine": "mimic"})
                    }
                }
                Button {
                    id: bt4
                    Layout.fillWidth: true
                    Layout.fillHeight: true

                    background: Rectangle {
                        color: bt4.down ? "#BC4729" : "#ee5534"
                        border.width: 6
                        border.color: Qt.darker("#ee5534", 1.2)
                        radius: 10
                    }

                    contentItem: Kirigami.Heading {
                        width: parent.width
                        height: parent.height
                        verticalAlignment: Text.AlignVCenter
                        horizontalAlignment: Text.AlignHCenter
                        wrapMode: Text.WordWrap
                        elide: Text.ElideRight
                        level: 3
                        text: "Pico (offline female)"
                    }

                    onClicked: {
                        triggerGuiEvent("mycroft.device.confirm.tts",
                        {"engine": "pico"})
                    }
                }
            }
        }
    }
} 
