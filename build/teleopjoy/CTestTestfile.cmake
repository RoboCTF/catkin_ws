# CMake generated Testfile for 
# Source directory: /home/ubuntu/catkin_ws/src/teleopjoy
# Build directory: /home/ubuntu/catkin_ws/build/teleopjoy
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_teleop_twist_joy_roslint_package "/home/ubuntu/catkin_ws/build/catkin_generated/env_cached.sh" "/usr/bin/python2" "/opt/ros/kinetic/share/catkin/cmake/test/run_tests.py" "/home/ubuntu/catkin_ws/build/test_results/teleop_twist_joy/roslint-teleop_twist_joy.xml" "--working-dir" "/home/ubuntu/catkin_ws/build/teleopjoy" "--return-code" "/opt/ros/kinetic/share/roslint/cmake/../../../lib/roslint/test_wrapper /home/ubuntu/catkin_ws/build/test_results/teleop_twist_joy/roslint-teleop_twist_joy.xml make roslint_teleop_twist_joy")
add_test(_ctest_teleop_twist_joy_roslaunch-check_launch_teleop.launch "/home/ubuntu/catkin_ws/build/catkin_generated/env_cached.sh" "/usr/bin/python2" "/opt/ros/kinetic/share/catkin/cmake/test/run_tests.py" "/home/ubuntu/catkin_ws/build/test_results/teleop_twist_joy/roslaunch-check_launch_teleop.launch.xml" "--return-code" "/usr/bin/cmake -E make_directory /home/ubuntu/catkin_ws/build/test_results/teleop_twist_joy" "/opt/ros/kinetic/share/roslaunch/cmake/../scripts/roslaunch-check -o '/home/ubuntu/catkin_ws/build/test_results/teleop_twist_joy/roslaunch-check_launch_teleop.launch.xml' '/home/ubuntu/catkin_ws/src/teleopjoy/launch/teleop.launch' ")
add_test(_ctest_teleop_twist_joy_rostest_test_differential_joy.test "/home/ubuntu/catkin_ws/build/catkin_generated/env_cached.sh" "/usr/bin/python2" "/opt/ros/kinetic/share/catkin/cmake/test/run_tests.py" "/home/ubuntu/catkin_ws/build/test_results/teleop_twist_joy/rostest-test_differential_joy.xml" "--return-code" "/opt/ros/kinetic/share/rostest/cmake/../../../bin/rostest --pkgdir=/home/ubuntu/catkin_ws/src/teleopjoy --package=teleop_twist_joy --results-filename test_differential_joy.xml --results-base-dir \"/home/ubuntu/catkin_ws/build/test_results\" /home/ubuntu/catkin_ws/src/teleopjoy/test/differential_joy.test ")
add_test(_ctest_teleop_twist_joy_rostest_test_holonomic_joy.test "/home/ubuntu/catkin_ws/build/catkin_generated/env_cached.sh" "/usr/bin/python2" "/opt/ros/kinetic/share/catkin/cmake/test/run_tests.py" "/home/ubuntu/catkin_ws/build/test_results/teleop_twist_joy/rostest-test_holonomic_joy.xml" "--return-code" "/opt/ros/kinetic/share/rostest/cmake/../../../bin/rostest --pkgdir=/home/ubuntu/catkin_ws/src/teleopjoy --package=teleop_twist_joy --results-filename test_holonomic_joy.xml --results-base-dir \"/home/ubuntu/catkin_ws/build/test_results\" /home/ubuntu/catkin_ws/src/teleopjoy/test/holonomic_joy.test ")
add_test(_ctest_teleop_twist_joy_rostest_test_six_dof_joy.test "/home/ubuntu/catkin_ws/build/catkin_generated/env_cached.sh" "/usr/bin/python2" "/opt/ros/kinetic/share/catkin/cmake/test/run_tests.py" "/home/ubuntu/catkin_ws/build/test_results/teleop_twist_joy/rostest-test_six_dof_joy.xml" "--return-code" "/opt/ros/kinetic/share/rostest/cmake/../../../bin/rostest --pkgdir=/home/ubuntu/catkin_ws/src/teleopjoy --package=teleop_twist_joy --results-filename test_six_dof_joy.xml --results-base-dir \"/home/ubuntu/catkin_ws/build/test_results\" /home/ubuntu/catkin_ws/src/teleopjoy/test/six_dof_joy.test ")
add_test(_ctest_teleop_twist_joy_rostest_test_no_enable_joy.test "/home/ubuntu/catkin_ws/build/catkin_generated/env_cached.sh" "/usr/bin/python2" "/opt/ros/kinetic/share/catkin/cmake/test/run_tests.py" "/home/ubuntu/catkin_ws/build/test_results/teleop_twist_joy/rostest-test_no_enable_joy.xml" "--return-code" "/opt/ros/kinetic/share/rostest/cmake/../../../bin/rostest --pkgdir=/home/ubuntu/catkin_ws/src/teleopjoy --package=teleop_twist_joy --results-filename test_no_enable_joy.xml --results-base-dir \"/home/ubuntu/catkin_ws/build/test_results\" /home/ubuntu/catkin_ws/src/teleopjoy/test/no_enable_joy.test ")
add_test(_ctest_teleop_twist_joy_rostest_test_turbo_enable_joy.test "/home/ubuntu/catkin_ws/build/catkin_generated/env_cached.sh" "/usr/bin/python2" "/opt/ros/kinetic/share/catkin/cmake/test/run_tests.py" "/home/ubuntu/catkin_ws/build/test_results/teleop_twist_joy/rostest-test_turbo_enable_joy.xml" "--return-code" "/opt/ros/kinetic/share/rostest/cmake/../../../bin/rostest --pkgdir=/home/ubuntu/catkin_ws/src/teleopjoy --package=teleop_twist_joy --results-filename test_turbo_enable_joy.xml --results-base-dir \"/home/ubuntu/catkin_ws/build/test_results\" /home/ubuntu/catkin_ws/src/teleopjoy/test/turbo_enable_joy.test ")
add_test(_ctest_teleop_twist_joy_rostest_test_only_turbo_joy.test "/home/ubuntu/catkin_ws/build/catkin_generated/env_cached.sh" "/usr/bin/python2" "/opt/ros/kinetic/share/catkin/cmake/test/run_tests.py" "/home/ubuntu/catkin_ws/build/test_results/teleop_twist_joy/rostest-test_only_turbo_joy.xml" "--return-code" "/opt/ros/kinetic/share/rostest/cmake/../../../bin/rostest --pkgdir=/home/ubuntu/catkin_ws/src/teleopjoy --package=teleop_twist_joy --results-filename test_only_turbo_joy.xml --results-base-dir \"/home/ubuntu/catkin_ws/build/test_results\" /home/ubuntu/catkin_ws/src/teleopjoy/test/only_turbo_joy.test ")
add_test(_ctest_teleop_twist_joy_rostest_test_turbo_angular_enable_joy.test "/home/ubuntu/catkin_ws/build/catkin_generated/env_cached.sh" "/usr/bin/python2" "/opt/ros/kinetic/share/catkin/cmake/test/run_tests.py" "/home/ubuntu/catkin_ws/build/test_results/teleop_twist_joy/rostest-test_turbo_angular_enable_joy.xml" "--return-code" "/opt/ros/kinetic/share/rostest/cmake/../../../bin/rostest --pkgdir=/home/ubuntu/catkin_ws/src/teleopjoy --package=teleop_twist_joy --results-filename test_turbo_angular_enable_joy.xml --results-base-dir \"/home/ubuntu/catkin_ws/build/test_results\" /home/ubuntu/catkin_ws/src/teleopjoy/test/turbo_angular_enable_joy.test ")
add_test(_ctest_teleop_twist_joy_rostest_test_turbo_angular_enable_joy_with_rosparam_map.test "/home/ubuntu/catkin_ws/build/catkin_generated/env_cached.sh" "/usr/bin/python2" "/opt/ros/kinetic/share/catkin/cmake/test/run_tests.py" "/home/ubuntu/catkin_ws/build/test_results/teleop_twist_joy/rostest-test_turbo_angular_enable_joy_with_rosparam_map.xml" "--return-code" "/opt/ros/kinetic/share/rostest/cmake/../../../bin/rostest --pkgdir=/home/ubuntu/catkin_ws/src/teleopjoy --package=teleop_twist_joy --results-filename test_turbo_angular_enable_joy_with_rosparam_map.xml --results-base-dir \"/home/ubuntu/catkin_ws/build/test_results\" /home/ubuntu/catkin_ws/src/teleopjoy/test/turbo_angular_enable_joy_with_rosparam_map.test ")