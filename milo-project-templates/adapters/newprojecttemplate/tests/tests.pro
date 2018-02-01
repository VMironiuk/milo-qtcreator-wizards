# Main qmake configuration file for unit tests

TEMPLATE = subdirs

# Add new test cases here:
SUBDIRS += \\
@if "%{MConfigChB}" == "MConfigChBChecked"
	../milo/mconfig/tst_mconfig \\
@endif
@if "%{MCryptoChB}" == "MCryptoChBChecked"
	../milo/mcrypto/tst_mcrypto \\
@endif
@if "%{MLogChB}" == "MLogChBChecked"
	../milo/mlog/tst_mlog \\
@endif
@if "%{MSentryChB}" == "MSentryChBChecked"
	../milo/msentry/tst_msentry \\
@endif
@if "%{MRestAPIChB}" == "MRestAPIChBChecked"
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
