QT       += core gui sql network multimedia

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++17
TARGET = MyChatClient
TEMPLATE = app
# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    clientsocket.cpp \
    databasemagr.cpp \
    loginwidget.cpp \
    main.cpp \
    mainwindow.cpp

HEADERS += \
    clientsocket.h \
    databasemagr.h \
    loginwidget.h \
    mainwindow.h

FORMS += \
    loginwidget.ui \
    mainwindow.ui

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target
DESTDIR         = $$PWD/../release/Client

RESOURCES += \
    resource.qrc
include($$PWD/basewidget/basewidget.pri)
include($$PWD/commonapi/commonapi.pri)
include($$PWD/uipage/uipage.pri)
include($$PWD/pictureedit/pictureedit.pri)
include($$PWD/media/media.pri)
