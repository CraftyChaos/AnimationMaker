#    Copyright (C) 2018 Olaf Japp
#    https://facebook.com/artanidos
#
#    This file is part of AnimationMaker.
#
#    AnimationMaker is free software: you can redistribute it and/or modify
#    it under the terms of the GNU General Public License as published by
#    the Free Software Foundation, either version 3 of the License, or
#    (at your option) any later version.
#
#    AnimationMaker is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU General Public License for more details.
#
#    You should have received a copy of the GNU General Public License
#    along with AnimationMaker.  If not, see <http://www.gnu.org/licenses/>.

QT += widgets testlib xml svg
SOURCES = testgui.cpp
DEFINES += TEST
unix:!macx: LIBS += -L$$OUT_PWD/../Widgets/ -lWidgets
win32:CONFIG(release, debug|release): LIBS += -L$$OUT_PWD/../Widgets/release/ -lWidgets
else:win32:CONFIG(debug, debug|release): LIBS += -L$$OUT_PWD/../Widgets/debug/ -lWidgets
INCLUDEPATH += $$PWD/../Widgets
DEPENDPATH += $$PWD/../Widgets
