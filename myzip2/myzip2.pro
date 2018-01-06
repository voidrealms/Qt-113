#-------------------------------------------------
#
# Project created by QtCreator 2014-01-19T13:22:16
#
#-------------------------------------------------

QT       += core

QT       -= gui

TARGET = myzip2
CONFIG   += console
CONFIG   -= app_bundle

TEMPLATE = app

#Set variables
QUAZIPCODEDIR = "/home/rootshell/ZipVids/quazip-0.5.1/quazip"
ZLIBCODEDIR = "/home/rootshell/ZipVids/Libs"

#include the compiled code
unix {
    LIBS += -L$${ZLIBCODEDIR} -lz
}

win32 {
    LIBS += -L$${ZLIBCODEDIR} -lzdll
}

#include files
INCLUDEPATH += $${QUAZIPCODEDIR}
HEADERS += $${QUAZIPCODEDIR}/*.h
SOURCES += $${QUAZIPCODEDIR}/*.cpp
SOURCES += $${QUAZIPCODEDIR}/*.c

SOURCES += main.cpp
