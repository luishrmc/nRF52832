# CMake generated Testfile for 
# Source directory: /home/lumac/learning/nordic/nRF52832/tests
# Build directory: /home/lumac/learning/nordic/nRF52832/build/tests
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test([=[TagProcDist]=] "/home/lumac/learning/nordic/nRF52832/build/tests/TEST_FOO")
set_tests_properties([=[TagProcDist]=] PROPERTIES  _BACKTRACE_TRIPLES "/home/lumac/learning/nordic/nRF52832/tests/CMakeLists.txt;33;add_test;/home/lumac/learning/nordic/nRF52832/tests/CMakeLists.txt;0;")
subdirs("../_deps/unity-build")
subdirs("prototype")
