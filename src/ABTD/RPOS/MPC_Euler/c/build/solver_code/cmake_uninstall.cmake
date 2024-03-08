if(NOT EXISTS "/home/Inspecity/Codes/RPOS_control/src/air_table_demo/MPC_Euler/c/build/solver_code/install_manifest.txt")
    message(WARNING "Cannot find install manifest: \"/home/Inspecity/Codes/RPOS_control/src/air_table_demo/MPC_Euler/c/build/solver_code/install_manifest.txt\"")
    return()
endif()

file(READ "/home/Inspecity/Codes/RPOS_control/src/air_table_demo/MPC_Euler/c/build/solver_code/install_manifest.txt" files)
string(STRIP "${files}" files)
string(REGEX REPLACE "\n" ";" files "${files}")
list(REVERSE files)
foreach(file ${files})
    message(STATUS "Uninstalling: $ENV{DESTDIR}${file}")
    if(EXISTS "$ENV{DESTDIR}${file}")
        execute_process(
            COMMAND ${CMAKE_COMMAND} -E remove "$ENV{DESTDIR}${file}"
            OUTPUT_VARIABLE rm_out
            RESULT_VARIABLE rm_retval)
        if(NOT "${rm_retval}" EQUAL 0)
            message(FATAL_ERROR "Problem when removing \"$ENV{DESTDIR}${file}\"")
        endif()
    else()
        message(STATUS "File \"$ENV{DESTDIR}${file}\" does not exist.")
    endif()
endforeach(file)
