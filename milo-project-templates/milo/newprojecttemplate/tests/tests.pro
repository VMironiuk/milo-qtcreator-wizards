# Main qmake configuration file for unit tests

TEMPLATE = subdirs

# Add new test cases here:
SUBDIRS += \\
@if "%{IncludeMConfig}" == "MConfig"
	../milo/mconfig/tst_mconfig \\
@endif
@if "%{IncludeMCrypto}" == "MCrypto"
	../milo/mcrypto/tst_mcrypto \\
@endif
@if "%{IncludeMLog}" == "MLog"
	../milo/mlog/tst_mlog \\
@endif
@if "%{IncludeMSentry}" == "MSentry"
	../milo/msentry/tst_msentry \\
@endif
@if "%{IncludeMRestAPI}" == "MRestAPI"
	../milo/mrestapi/tst_mrestapi \\
@endif
    tst_%{ProjectName}


# Please use convenience includes:
# testConfig.pri - contains general configs
# helpers/helpers.pri - contains property tester, great for testing QObjects

# Tests can be run in Qt Creator (enable AutoTest plugin, then run tests from
# panel 8). Tests can be run from command line. Just run:
# $ make check
# In build directory (where root Makefile is).
