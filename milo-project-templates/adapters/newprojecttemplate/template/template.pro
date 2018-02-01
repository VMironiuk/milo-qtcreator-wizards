## Milo Solutions - project file TEMPLATE
#
#
## (c) Milo Solutions, 2016

QT = core

# Warning! QStringBuilder can crash your app! See last point here:
# https://www.kdab.com/uncovering-32-qt-best-practices-compile-time-clazy/
# !!!
DEFINES *= QT_USE_QSTRINGBUILDER
QMAKE_CXXFLAGS += -Werror

TEMPLATE = app
CONFIG += c++14
TARGET = %{ProjectName}

HEADERS += src/globals.h

SOURCES += src/main.cpp 

RESOURCES +=  \\
    qml/qml.qrc \\
    resources/resources.qrc

OTHER_FILES += \\
    ../%{ProjectName}.doxyfile \\
    ../README.md \\
    ../Release.md \\
    ../.gitignore \\
    ../license-Qt.txt \\
    ../.gitlab-ci.yml

## Put all build files into build directory
##  This also works with shadow building, so don't worry!
BUILD_DIR = build
OBJECTS_DIR = $$BUILD_DIR
MOC_DIR = $$BUILD_DIR
RCC_DIR = $$BUILD_DIR
UI_DIR = $$BUILD_DIR
DESTDIR = $$BUILD_DIR/bin

## Platforms
@if "%{AndroidChB}" == "AndroidChBChecked"
include(platforms/android/android.pri)
@endif
@if "%{MacChB}" == "MacChBChecked"
include(platforms/mac/mac.pri)
@endif
@if "%{WindowsChB}" == "WindowsChBChecked"
include(platforms/windows/windows.pri)
@endif

## Modules
@if "%{MRestAPIChB}" == "MRestAPIChBChecked"
include(../milo/mrestapi/mrestapi.pri)
@endif
@if "%{MChartsChB}" == "MChartsChBChecked"
include(../milo/mcharts/mcharts.pri)
@endif
@if "%{MBarcodeScannerChB}" == "MBarcodeScannerChBChecked"
include(../milo/mbarcodescanner/mbarcodescanner.pri)
@endif
@if "%{MSentryChB}" == "MSentryChBChecked"
include(../milo/msentry/msentry.pri)
@endif
@if "%{MLogChB}" == "MLogChBChecked"
include(../milo/mlog/mlog.pri)
@endif
@if "%{MCryptoChB}" == "MCryptoChBChecked"
include(../milo/mcrypto/mcrypto.pri)
@endif
@if "%{MConfigChB}" == "MConfigChBChecked"
include(../milo/mconfig/mconfig.pri)
@endif
@if "%{MScriptsChB}" == "MScriptsChBChecked"
include(../milo/mscripts/mscripts.pri)
@endif
