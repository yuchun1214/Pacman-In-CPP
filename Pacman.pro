#-------------------------------------------------
#
# Project created by QtCreator 2019-05-24T01:03:23
#
#-------------------------------------------------

QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = Pacman
TEMPLATE = app

# The following define makes your compiler emit warnings if you use
# any feature of Qt which has been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

CONFIG += c++11

SOURCES += \
        barrier.cpp \
        dashboard.cpp \
        debugnode.cpp \
        dot.cpp \
        elf_base.cpp \
        gameobject.cpp \
        main.cpp \
        mainwindow.cpp \
        path.cpp \
        player.cpp \
        vertex.cpp

HEADERS += \
        barrier.h \
        dashboard.h \
        debugnode.h \
        def.h \
        dot.h \
        elf_base.h \
        gameobject.h \
        mainwindow.h \
        path.h \
        player.h \
        vertex.h

FORMS += \
        mainwindow.ui

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

RESOURCES += \
    res.qrc
