
IF(NOT EXISTS "/private/var/folders/bb/n7t3rs157850byt_jfdcq9k80000gn/T/pip-req-build-z8o4dvuq/build/lib.macosx-10.6-intel-3.7/atari_py/ale_interface/build/install_manifest.txt")
  MESSAGE(FATAL_ERROR "Cannot find install manifest: /private/var/folders/bb/n7t3rs157850byt_jfdcq9k80000gn/T/pip-req-build-z8o4dvuq/build/lib.macosx-10.6-intel-3.7/atari_py/ale_interface/build/install_manifest.txt")
ENDIF(NOT EXISTS "/private/var/folders/bb/n7t3rs157850byt_jfdcq9k80000gn/T/pip-req-build-z8o4dvuq/build/lib.macosx-10.6-intel-3.7/atari_py/ale_interface/build/install_manifest.txt")

FILE(READ "/private/var/folders/bb/n7t3rs157850byt_jfdcq9k80000gn/T/pip-req-build-z8o4dvuq/build/lib.macosx-10.6-intel-3.7/atari_py/ale_interface/build/install_manifest.txt" files)
STRING(REGEX REPLACE "\n" ";" files "${files}")
FOREACH(file ${files})
  MESSAGE(STATUS "Uninstalling "$ENV{DESTDIR}${file}"")
  IF(EXISTS "$ENV{DESTDIR}${file}")
    EXEC_PROGRAM(
      "/Users/travis/build/openai/atari-py/venv/lib/python3.7/site-packages/cmake/data/CMake.app/Contents/bin/cmake" ARGS "-E remove "$ENV{DESTDIR}${file}""
      OUTPUT_VARIABLE rm_out
      RETURN_VALUE rm_retval
      )
    IF(NOT "${rm_retval}" STREQUAL 0)
      MESSAGE(FATAL_ERROR "Problem when removing "$ENV{DESTDIR}${file}"")
    ENDIF(NOT "${rm_retval}" STREQUAL 0)
  ELSE(EXISTS "$ENV{DESTDIR}${file}")
    MESSAGE(STATUS "File "$ENV{DESTDIR}${file}" does not exist.")
  ENDIF(EXISTS "$ENV{DESTDIR}${file}")
ENDFOREACH(file)
