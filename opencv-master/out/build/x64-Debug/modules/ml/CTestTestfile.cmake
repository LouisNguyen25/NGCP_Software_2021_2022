# CMake generated Testfile for 
# Source directory: C:/Users/KingFu/Desktop/UGV - NGCP internship/test/NGCP_Software_2021_2022/opencv-master/modules/ml
# Build directory: C:/Users/KingFu/Desktop/UGV - NGCP internship/test/NGCP_Software_2021_2022/opencv-master/out/build/x64-Debug/modules/ml
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(opencv_test_ml "C:/Users/KingFu/Desktop/UGV - NGCP internship/test/NGCP_Software_2021_2022/opencv-master/out/build/x64-Debug/bin/opencv_test_mld.exe" "--gtest_output=xml:opencv_test_ml.xml")
set_tests_properties(opencv_test_ml PROPERTIES  LABELS "Main;opencv_ml;Accuracy" WORKING_DIRECTORY "C:/Users/KingFu/Desktop/UGV - NGCP internship/test/NGCP_Software_2021_2022/opencv-master/out/build/x64-Debug/test-reports/accuracy" _BACKTRACE_TRIPLES "C:/Users/KingFu/Desktop/UGV - NGCP internship/test/NGCP_Software_2021_2022/opencv-master/cmake/OpenCVUtils.cmake;1726;add_test;C:/Users/KingFu/Desktop/UGV - NGCP internship/test/NGCP_Software_2021_2022/opencv-master/cmake/OpenCVModule.cmake;1321;ocv_add_test_from_target;C:/Users/KingFu/Desktop/UGV - NGCP internship/test/NGCP_Software_2021_2022/opencv-master/cmake/OpenCVModule.cmake;1079;ocv_add_accuracy_tests;C:/Users/KingFu/Desktop/UGV - NGCP internship/test/NGCP_Software_2021_2022/opencv-master/modules/ml/CMakeLists.txt;2;ocv_define_module;C:/Users/KingFu/Desktop/UGV - NGCP internship/test/NGCP_Software_2021_2022/opencv-master/modules/ml/CMakeLists.txt;0;")
