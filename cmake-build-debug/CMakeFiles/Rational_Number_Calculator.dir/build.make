# CMAKE generated file: DO NOT EDIT!
# Generated by "NMake Makefiles" Generator, CMake Version 3.20

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE
NULL=nul
!ENDIF
SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2021.2.1\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2021.2.1\bin\cmake\win\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "C:\Users\rscov\Desktop\school\prog2100\assignments\Assignment3\Rational Number Calculator"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "C:\Users\rscov\Desktop\school\prog2100\assignments\Assignment3\Rational Number Calculator\cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles\Rational_Number_Calculator.dir\depend.make
# Include the progress variables for this target.
include CMakeFiles\Rational_Number_Calculator.dir\progress.make

# Include the compile flags for this target's objects.
include CMakeFiles\Rational_Number_Calculator.dir\flags.make

CMakeFiles\Rational_Number_Calculator.dir\main.cpp.obj: CMakeFiles\Rational_Number_Calculator.dir\flags.make
CMakeFiles\Rational_Number_Calculator.dir\main.cpp.obj: ..\main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="C:\Users\rscov\Desktop\school\prog2100\assignments\Assignment3\Rational Number Calculator\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Rational_Number_Calculator.dir/main.cpp.obj"
	C:\PROGRA~2\MICROS~2\2017\BUILDT~1\VC\Tools\MSVC\1416~1.270\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\Rational_Number_Calculator.dir\main.cpp.obj /FdCMakeFiles\Rational_Number_Calculator.dir\ /FS -c "C:\Users\rscov\Desktop\school\prog2100\assignments\Assignment3\Rational Number Calculator\main.cpp"
<<

CMakeFiles\Rational_Number_Calculator.dir\main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Rational_Number_Calculator.dir/main.cpp.i"
	C:\PROGRA~2\MICROS~2\2017\BUILDT~1\VC\Tools\MSVC\1416~1.270\bin\Hostx86\x86\cl.exe > CMakeFiles\Rational_Number_Calculator.dir\main.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "C:\Users\rscov\Desktop\school\prog2100\assignments\Assignment3\Rational Number Calculator\main.cpp"
<<

CMakeFiles\Rational_Number_Calculator.dir\main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Rational_Number_Calculator.dir/main.cpp.s"
	C:\PROGRA~2\MICROS~2\2017\BUILDT~1\VC\Tools\MSVC\1416~1.270\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\Rational_Number_Calculator.dir\main.cpp.s /c "C:\Users\rscov\Desktop\school\prog2100\assignments\Assignment3\Rational Number Calculator\main.cpp"
<<

CMakeFiles\Rational_Number_Calculator.dir\RationalNumber.cpp.obj: CMakeFiles\Rational_Number_Calculator.dir\flags.make
CMakeFiles\Rational_Number_Calculator.dir\RationalNumber.cpp.obj: ..\RationalNumber.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="C:\Users\rscov\Desktop\school\prog2100\assignments\Assignment3\Rational Number Calculator\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/Rational_Number_Calculator.dir/RationalNumber.cpp.obj"
	C:\PROGRA~2\MICROS~2\2017\BUILDT~1\VC\Tools\MSVC\1416~1.270\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\Rational_Number_Calculator.dir\RationalNumber.cpp.obj /FdCMakeFiles\Rational_Number_Calculator.dir\ /FS -c "C:\Users\rscov\Desktop\school\prog2100\assignments\Assignment3\Rational Number Calculator\RationalNumber.cpp"
<<

CMakeFiles\Rational_Number_Calculator.dir\RationalNumber.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Rational_Number_Calculator.dir/RationalNumber.cpp.i"
	C:\PROGRA~2\MICROS~2\2017\BUILDT~1\VC\Tools\MSVC\1416~1.270\bin\Hostx86\x86\cl.exe > CMakeFiles\Rational_Number_Calculator.dir\RationalNumber.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "C:\Users\rscov\Desktop\school\prog2100\assignments\Assignment3\Rational Number Calculator\RationalNumber.cpp"
<<

CMakeFiles\Rational_Number_Calculator.dir\RationalNumber.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Rational_Number_Calculator.dir/RationalNumber.cpp.s"
	C:\PROGRA~2\MICROS~2\2017\BUILDT~1\VC\Tools\MSVC\1416~1.270\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\Rational_Number_Calculator.dir\RationalNumber.cpp.s /c "C:\Users\rscov\Desktop\school\prog2100\assignments\Assignment3\Rational Number Calculator\RationalNumber.cpp"
<<

CMakeFiles\Rational_Number_Calculator.dir\Driver.cpp.obj: CMakeFiles\Rational_Number_Calculator.dir\flags.make
CMakeFiles\Rational_Number_Calculator.dir\Driver.cpp.obj: ..\Driver.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="C:\Users\rscov\Desktop\school\prog2100\assignments\Assignment3\Rational Number Calculator\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/Rational_Number_Calculator.dir/Driver.cpp.obj"
	C:\PROGRA~2\MICROS~2\2017\BUILDT~1\VC\Tools\MSVC\1416~1.270\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\Rational_Number_Calculator.dir\Driver.cpp.obj /FdCMakeFiles\Rational_Number_Calculator.dir\ /FS -c "C:\Users\rscov\Desktop\school\prog2100\assignments\Assignment3\Rational Number Calculator\Driver.cpp"
<<

CMakeFiles\Rational_Number_Calculator.dir\Driver.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Rational_Number_Calculator.dir/Driver.cpp.i"
	C:\PROGRA~2\MICROS~2\2017\BUILDT~1\VC\Tools\MSVC\1416~1.270\bin\Hostx86\x86\cl.exe > CMakeFiles\Rational_Number_Calculator.dir\Driver.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "C:\Users\rscov\Desktop\school\prog2100\assignments\Assignment3\Rational Number Calculator\Driver.cpp"
<<

CMakeFiles\Rational_Number_Calculator.dir\Driver.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Rational_Number_Calculator.dir/Driver.cpp.s"
	C:\PROGRA~2\MICROS~2\2017\BUILDT~1\VC\Tools\MSVC\1416~1.270\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\Rational_Number_Calculator.dir\Driver.cpp.s /c "C:\Users\rscov\Desktop\school\prog2100\assignments\Assignment3\Rational Number Calculator\Driver.cpp"
<<

# Object files for target Rational_Number_Calculator
Rational_Number_Calculator_OBJECTS = \
"CMakeFiles\Rational_Number_Calculator.dir\main.cpp.obj" \
"CMakeFiles\Rational_Number_Calculator.dir\RationalNumber.cpp.obj" \
"CMakeFiles\Rational_Number_Calculator.dir\Driver.cpp.obj"

# External object files for target Rational_Number_Calculator
Rational_Number_Calculator_EXTERNAL_OBJECTS =

Rational_Number_Calculator.exe: CMakeFiles\Rational_Number_Calculator.dir\main.cpp.obj
Rational_Number_Calculator.exe: CMakeFiles\Rational_Number_Calculator.dir\RationalNumber.cpp.obj
Rational_Number_Calculator.exe: CMakeFiles\Rational_Number_Calculator.dir\Driver.cpp.obj
Rational_Number_Calculator.exe: CMakeFiles\Rational_Number_Calculator.dir\build.make
Rational_Number_Calculator.exe: CMakeFiles\Rational_Number_Calculator.dir\objects1.rsp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="C:\Users\rscov\Desktop\school\prog2100\assignments\Assignment3\Rational Number Calculator\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable Rational_Number_Calculator.exe"
	"C:\Program Files\JetBrains\CLion 2021.2.1\bin\cmake\win\bin\cmake.exe" -E vs_link_exe --intdir=CMakeFiles\Rational_Number_Calculator.dir --rc=C:\PROGRA~2\WI3CF2~1\10\bin\100177~1.0\x86\rc.exe --mt=C:\PROGRA~2\WI3CF2~1\10\bin\100177~1.0\x86\mt.exe --manifests -- C:\PROGRA~2\MICROS~2\2017\BUILDT~1\VC\Tools\MSVC\1416~1.270\bin\Hostx86\x86\link.exe /nologo @CMakeFiles\Rational_Number_Calculator.dir\objects1.rsp @<<
 /out:Rational_Number_Calculator.exe /implib:Rational_Number_Calculator.lib /pdb:"C:\Users\rscov\Desktop\school\prog2100\assignments\Assignment3\Rational Number Calculator\cmake-build-debug\Rational_Number_Calculator.pdb" /version:0.0 /machine:X86 /debug /INCREMENTAL /subsystem:console  kernel32.lib user32.lib gdi32.lib winspool.lib shell32.lib ole32.lib oleaut32.lib uuid.lib comdlg32.lib advapi32.lib 
<<

# Rule to build all files generated by this target.
CMakeFiles\Rational_Number_Calculator.dir\build: Rational_Number_Calculator.exe
.PHONY : CMakeFiles\Rational_Number_Calculator.dir\build

CMakeFiles\Rational_Number_Calculator.dir\clean:
	$(CMAKE_COMMAND) -P CMakeFiles\Rational_Number_Calculator.dir\cmake_clean.cmake
.PHONY : CMakeFiles\Rational_Number_Calculator.dir\clean

CMakeFiles\Rational_Number_Calculator.dir\depend:
	$(CMAKE_COMMAND) -E cmake_depends "NMake Makefiles" "C:\Users\rscov\Desktop\school\prog2100\assignments\Assignment3\Rational Number Calculator" "C:\Users\rscov\Desktop\school\prog2100\assignments\Assignment3\Rational Number Calculator" "C:\Users\rscov\Desktop\school\prog2100\assignments\Assignment3\Rational Number Calculator\cmake-build-debug" "C:\Users\rscov\Desktop\school\prog2100\assignments\Assignment3\Rational Number Calculator\cmake-build-debug" "C:\Users\rscov\Desktop\school\prog2100\assignments\Assignment3\Rational Number Calculator\cmake-build-debug\CMakeFiles\Rational_Number_Calculator.dir\DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles\Rational_Number_Calculator.dir\depend
