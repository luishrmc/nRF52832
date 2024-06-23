###################### CONSTANTS ######################################
set (CMAKE_SYSTEM_NAME                 Linux)
set (CMAKE_SYSTEM_PROCESSOR            arm)
set (TRIPLE                            arm-none-eabi)
set (MCU                              "NRF52832_XXAA")
set (MCPU_CORTEX_M0				      "-mcpu=cortex-m0")
set (MCPU_CORTEX_M0PLUS				  "-mcpu=cortex-m0plus")
set (MCPU_CORTEX_M3				      "-mcpu=cortex-m3")
set (MCPU_CORTEX_M4				      "-mcpu=cortex-m4")
set (MCPU_CORTEX_M7				      "-mcpu=cortex-m7")
set (MCPU_CORTEX_M33				  "-mcpu=cortex-m33")
set (MCPU_CORTEX_M55				  "-mcpu=cortex-m55")
set (MCPU_CORTEX_M85				  "-mcpu=cortex-m85")
set (MFPU_FPV4_SP_D16                 "-mfpu=fpv4-sp-d16")
set (MFPU_FPV5_D16                    "-mfpu=fpv5-d16")
set (RUNTIME_LIBRARY_REDUCED_C        "--specs=nano.specs")
set (RUNTIME_LIBRARY_STD_C            "")
set (RUNTIME_LIBRARY_SYSCALLS_MINIMAL "--specs=nosys.specs")
set (RUNTIME_LIBRARY_SYSCALLS_NONE    "")
set (MFLOAT_ABI_SOFTWARE              "-mfloat-abi=soft")
set (MFLOAT_ABI_HARDWARE              "-mfloat-abi=hard")
set (MFLOAT_ABI_MIX                   "-mfloat-abi=softfp")
set (GARBAGE_COLLECT_SECTIONS         "-ffunction-sections -fdata-sections")
set (CPP_EXCEPTIONS                   "-fno-exceptions")
set (CPP_RTTI                         "-fno-rtti")
set (CPP_ATEXIT                       "-fno-use-cxa-atexit")
#######################################################################

###################### VARIABLES ######################################
set (LINKER_SCRIPT            "STM32F103C8TX.ld")
set (MCPU                     ${MCPU_CORTEX_M4})
set (MFLOAT_ABI               ${MFLOAT_ABI_HARDWARE})
set (MFPU                     ${MFPU_FPV4_SP_D16})
set (RUNTIME_LIBRARY          ${RUNTIME_LIBRARY_REDUCED_C})
set (RUNTIME_LIBRARY_SYSCALLS ${RUNTIME_LIBRARY_SYSCALLS_MINIMAL})
#######################################################################

set(CMAKE_C_FLAGS "${MCPU} -std=gnu11 -mthumb ${MFPU} ${MFLOAT_ABI} ${GARBAGE_COLLECT_SECTIONS}")
set(CMAKE_CXX_FLAGS "${MCPU} -std=gnu++14 -mthumb ${MFPU} ${MFLOAT_ABI} ${GARBAGE_COLLECT_SECTIONS} ${CPP_EXCEPTIONS} ${CPP_RTTI} ${CPP_ATEXIT}")
set(CMAKE_ASM_FLAGS "${CMAKE_C_FLAGS} -x assembler-with-cpp")

set(CMAKE_C_COMPILER ${TRIPLE}-gcc)
set(CMAKE_CXX_COMPILER ${TRIPLE}-g++)
set(CMAKE_C_COMPILER_TARGET ${TRIPLE})
set(CMAKE_CXX_COMPILER_TARGET ${TRIPLE})

set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_PACKAGE ONLY)
