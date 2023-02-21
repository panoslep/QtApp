import sys
import os
from time import strftime, gmtime
from PyQt6.QtGui import QGuiApplication
from PyQt6.QtQml import QQmlApplicationEngine
from PyQt6.QtQuick import QQuickWindow

QQuickWindow.setSceneGraphBackend('software')
app = QGuiApplication(sys.argv)
engine = QQmlApplicationEngine()
engine.quit.connect(app.quit)
# print("check")
# sys.stdout.flush()
curr_time = strftime("%H:%M:%S", gmtime())
engine.load('./UI/main.qml')
engine.rootObjects()[0].setProperty('currTime', curr_time)
sys.exit(app.exec())
