QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++17

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    model/cave.cpp \
    controller/controller.cpp \
    main.cpp \
    View/mainwindow.cpp \
    model/maze.cpp \
    View/widgetCave.cpp \
    View/widgetMaze.cpp

HEADERS += \
    model/cave.h \
    controller/controller.h \
    View/mainwindow.h \
    model/maze.h \
    View/widgetCave.h \
    View/widgetMaze.h

FORMS += \
    View/mainwindow.ui \
    View/widgetCave.ui \
    View/widgetMaze.ui

ICON = img/icon.icns

LIBS +=        -framework AppKit

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

RESOURCES += \
    view/resurses.qrc

DISTFILES += \
    img/wolf_pack.jpg \
    img/wolf_pack2.jpg
