@if "%{UseNewProjectTemplate}" == "NewProjectTemplate"
CONFIG += tests

TEMPLATE = subdirs

SUBDIRS += %{ProjectName} \\

tests {
    !android {
        CONFIG(debug, debug|release) {
            message("Running test suite")
            SUBDIRS += tests \\
        }
    }
}
@else
@if "%{IncludeMRestAPI}" == "MRestAPI"
include(milo/mrestapi/mrestapi.pri)
@endif
@if "%{IncludeMCharts}" == "MCharts"
include(milo/mcharts/mcharts.pri)
@endif
@if "%{IncludeMBarcodeScanner}" == "MBarcodeScanner"
include(milo/mbarcodescanner/mbarcodescanner.pri)
@endif
@if "%{IncludeMSentry}" == "MSentry"
include(milo/msentry/msentry.pri)
@endif
@if "%{IncludeMLog}" == "MLog"
include(milo/mlog/mlog.pri)
@endif
@if "%{IncludeMCrypto}" == "MCrypto"
include(milo/mcrypto/mcrypto.pri)
@endif
@if "%{IncludeMConfig}" == "MConfig"
include(milo/mconfig/mconfig.pri)
@endif
@if "%{IncludeMScripts}" == "MScripts"
include(milo/mscripts/mscripts.pri)
@endif
@endif
