# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ww/smart/obs_tr_node/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ww/smart/obs_tr_node/build

# Include any dependencies generated for this target.
include obs_pub/CMakeFiles/obs_pub.dir/depend.make

# Include the progress variables for this target.
include obs_pub/CMakeFiles/obs_pub.dir/progress.make

# Include the compile flags for this target's objects.
include obs_pub/CMakeFiles/obs_pub.dir/flags.make

obs_pub/CMakeFiles/obs_pub.dir/src/main.cpp.o: obs_pub/CMakeFiles/obs_pub.dir/flags.make
obs_pub/CMakeFiles/obs_pub.dir/src/main.cpp.o: /home/ww/smart/obs_tr_node/src/obs_pub/src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ww/smart/obs_tr_node/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object obs_pub/CMakeFiles/obs_pub.dir/src/main.cpp.o"
	cd /home/ww/smart/obs_tr_node/build/obs_pub && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/obs_pub.dir/src/main.cpp.o -c /home/ww/smart/obs_tr_node/src/obs_pub/src/main.cpp

obs_pub/CMakeFiles/obs_pub.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/obs_pub.dir/src/main.cpp.i"
	cd /home/ww/smart/obs_tr_node/build/obs_pub && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ww/smart/obs_tr_node/src/obs_pub/src/main.cpp > CMakeFiles/obs_pub.dir/src/main.cpp.i

obs_pub/CMakeFiles/obs_pub.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/obs_pub.dir/src/main.cpp.s"
	cd /home/ww/smart/obs_tr_node/build/obs_pub && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ww/smart/obs_tr_node/src/obs_pub/src/main.cpp -o CMakeFiles/obs_pub.dir/src/main.cpp.s

obs_pub/CMakeFiles/obs_pub.dir/src/main.cpp.o.requires:

.PHONY : obs_pub/CMakeFiles/obs_pub.dir/src/main.cpp.o.requires

obs_pub/CMakeFiles/obs_pub.dir/src/main.cpp.o.provides: obs_pub/CMakeFiles/obs_pub.dir/src/main.cpp.o.requires
	$(MAKE) -f obs_pub/CMakeFiles/obs_pub.dir/build.make obs_pub/CMakeFiles/obs_pub.dir/src/main.cpp.o.provides.build
.PHONY : obs_pub/CMakeFiles/obs_pub.dir/src/main.cpp.o.provides

obs_pub/CMakeFiles/obs_pub.dir/src/main.cpp.o.provides.build: obs_pub/CMakeFiles/obs_pub.dir/src/main.cpp.o


# Object files for target obs_pub
obs_pub_OBJECTS = \
"CMakeFiles/obs_pub.dir/src/main.cpp.o"

# External object files for target obs_pub
obs_pub_EXTERNAL_OBJECTS =

/home/ww/smart/obs_tr_node/devel/lib/obs_pub/obs_pub: obs_pub/CMakeFiles/obs_pub.dir/src/main.cpp.o
/home/ww/smart/obs_tr_node/devel/lib/obs_pub/obs_pub: obs_pub/CMakeFiles/obs_pub.dir/build.make
/home/ww/smart/obs_tr_node/devel/lib/obs_pub/obs_pub: /opt/ros/melodic/lib/libroscpp.so
/home/ww/smart/obs_tr_node/devel/lib/obs_pub/obs_pub: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
/home/ww/smart/obs_tr_node/devel/lib/obs_pub/obs_pub: /opt/ros/melodic/lib/librosconsole.so
/home/ww/smart/obs_tr_node/devel/lib/obs_pub/obs_pub: /opt/ros/melodic/lib/librosconsole_log4cxx.so
/home/ww/smart/obs_tr_node/devel/lib/obs_pub/obs_pub: /opt/ros/melodic/lib/librosconsole_backend_interface.so
/home/ww/smart/obs_tr_node/devel/lib/obs_pub/obs_pub: /usr/lib/x86_64-linux-gnu/liblog4cxx.so
/home/ww/smart/obs_tr_node/devel/lib/obs_pub/obs_pub: /usr/lib/x86_64-linux-gnu/libboost_regex.so
/home/ww/smart/obs_tr_node/devel/lib/obs_pub/obs_pub: /opt/ros/melodic/lib/libroscpp_serialization.so
/home/ww/smart/obs_tr_node/devel/lib/obs_pub/obs_pub: /opt/ros/melodic/lib/libxmlrpcpp.so
/home/ww/smart/obs_tr_node/devel/lib/obs_pub/obs_pub: /opt/ros/melodic/lib/librostime.so
/home/ww/smart/obs_tr_node/devel/lib/obs_pub/obs_pub: /opt/ros/melodic/lib/libcpp_common.so
/home/ww/smart/obs_tr_node/devel/lib/obs_pub/obs_pub: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/ww/smart/obs_tr_node/devel/lib/obs_pub/obs_pub: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/ww/smart/obs_tr_node/devel/lib/obs_pub/obs_pub: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
/home/ww/smart/obs_tr_node/devel/lib/obs_pub/obs_pub: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/ww/smart/obs_tr_node/devel/lib/obs_pub/obs_pub: /usr/lib/x86_64-linux-gnu/libboost_atomic.so
/home/ww/smart/obs_tr_node/devel/lib/obs_pub/obs_pub: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/ww/smart/obs_tr_node/devel/lib/obs_pub/obs_pub: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so.0.4
/home/ww/smart/obs_tr_node/devel/lib/obs_pub/obs_pub: /home/ww/smart/obs_tr_node/devel/lib/libmylib.so
/home/ww/smart/obs_tr_node/devel/lib/obs_pub/obs_pub: /usr/local/lib/libopencv_dnn.so.4.5.0
/home/ww/smart/obs_tr_node/devel/lib/obs_pub/obs_pub: /usr/local/lib/libopencv_gapi.so.4.5.0
/home/ww/smart/obs_tr_node/devel/lib/obs_pub/obs_pub: /usr/local/lib/libopencv_highgui.so.4.5.0
/home/ww/smart/obs_tr_node/devel/lib/obs_pub/obs_pub: /usr/local/lib/libopencv_ml.so.4.5.0
/home/ww/smart/obs_tr_node/devel/lib/obs_pub/obs_pub: /usr/local/lib/libopencv_objdetect.so.4.5.0
/home/ww/smart/obs_tr_node/devel/lib/obs_pub/obs_pub: /usr/local/lib/libopencv_photo.so.4.5.0
/home/ww/smart/obs_tr_node/devel/lib/obs_pub/obs_pub: /usr/local/lib/libopencv_stitching.so.4.5.0
/home/ww/smart/obs_tr_node/devel/lib/obs_pub/obs_pub: /usr/local/lib/libopencv_video.so.4.5.0
/home/ww/smart/obs_tr_node/devel/lib/obs_pub/obs_pub: /usr/local/lib/libopencv_calib3d.so.4.5.0
/home/ww/smart/obs_tr_node/devel/lib/obs_pub/obs_pub: /usr/local/lib/libopencv_features2d.so.4.5.0
/home/ww/smart/obs_tr_node/devel/lib/obs_pub/obs_pub: /usr/local/lib/libopencv_flann.so.4.5.0
/home/ww/smart/obs_tr_node/devel/lib/obs_pub/obs_pub: /usr/local/lib/libopencv_videoio.so.4.5.0
/home/ww/smart/obs_tr_node/devel/lib/obs_pub/obs_pub: /usr/local/lib/libopencv_imgcodecs.so.4.5.0
/home/ww/smart/obs_tr_node/devel/lib/obs_pub/obs_pub: /usr/local/lib/libopencv_imgproc.so.4.5.0
/home/ww/smart/obs_tr_node/devel/lib/obs_pub/obs_pub: /usr/local/lib/libopencv_core.so.4.5.0
/home/ww/smart/obs_tr_node/devel/lib/obs_pub/obs_pub: obs_pub/CMakeFiles/obs_pub.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ww/smart/obs_tr_node/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /home/ww/smart/obs_tr_node/devel/lib/obs_pub/obs_pub"
	cd /home/ww/smart/obs_tr_node/build/obs_pub && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/obs_pub.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
obs_pub/CMakeFiles/obs_pub.dir/build: /home/ww/smart/obs_tr_node/devel/lib/obs_pub/obs_pub

.PHONY : obs_pub/CMakeFiles/obs_pub.dir/build

obs_pub/CMakeFiles/obs_pub.dir/requires: obs_pub/CMakeFiles/obs_pub.dir/src/main.cpp.o.requires

.PHONY : obs_pub/CMakeFiles/obs_pub.dir/requires

obs_pub/CMakeFiles/obs_pub.dir/clean:
	cd /home/ww/smart/obs_tr_node/build/obs_pub && $(CMAKE_COMMAND) -P CMakeFiles/obs_pub.dir/cmake_clean.cmake
.PHONY : obs_pub/CMakeFiles/obs_pub.dir/clean

obs_pub/CMakeFiles/obs_pub.dir/depend:
	cd /home/ww/smart/obs_tr_node/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ww/smart/obs_tr_node/src /home/ww/smart/obs_tr_node/src/obs_pub /home/ww/smart/obs_tr_node/build /home/ww/smart/obs_tr_node/build/obs_pub /home/ww/smart/obs_tr_node/build/obs_pub/CMakeFiles/obs_pub.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : obs_pub/CMakeFiles/obs_pub.dir/depend

