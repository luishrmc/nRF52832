add_executable(${EXE_NAME})

set(CTRL "src/controllers")
set(SERV "src/services")
set(DRV "src/drivers")
set(NRFX "lib/${MCU}/nrfx")

target_sources(${EXE_NAME} PRIVATE
    ${CMAKE_CURRENT_SOURCE_DIR}/${CTRL}/mainController.c
    ${PROJECT_SOURCE_DIR}/${NRFX}/
)

target_include_directories(${EXE_NAME} PRIVATE
    ${CMAKE_CURRENT_SOURCE_DIR}/inc/controllers
    ${CMAKE_CURRENT_SOURCE_DIR}/inc/services
    ${CMAKE_CURRENT_SOURCE_DIR}/inc/drivers
    ${CMAKE_BINARY_DIR}/config_files/include

    ${PROJECT_SOURCE_DIR}/${NRFX}
    ${PROJECT_SOURCE_DIR}/${NRFX}/drivers/include
    ${PROJECT_SOURCE_DIR}/${NRFX}/hal
    ${PROJECT_SOURCE_DIR}/${NRFX}/mdk
    ${PROJECT_SOURCE_DIR}/${NRFX}/soc
    ${PROJECT_SOURCE_DIR}/lib/CMSIS-6/CMSIS/Core/Include
)

target_link_options(${EXE_NAME} PRIVATE
    -T${PROJECT_SOURCE_DIR}/${CORE}/${LINKER_SCRIPT}
    ${RUNTIME_LIBRARY}
    ${RUNTIME_LIBRARY_SYSCALLS}
    -Wl,--print-memory-usage
    -Wl,-Map=${PROJECT_NAME}.map
    -Wl,--gc-sections
    -static
    -Wl,--start-group
    -lc
    -lm
    -Wl,--end-group
)

target_link_libraries(${EXE_NAME} PRIVATE
    ${MCU}_HAL
)

if(${ENABLE_WARNINGS})
    target_set_warnings(
        TARGET
        ${EXE_NAME}
        ENABLE
        ${ENABLE_WARNINGS}
        AS_ERRORS
        ${ENABLE_WARNINGS_AS_ERRORS})
endif()

add_custom_command(
    TARGET ${EXE_NAME}
    POST_BUILD
    COMMAND ${CMAKE_OBJCOPY} ARGS -O binary ${EXE_NAME} ${PROJECT_NAME}.bin
)
