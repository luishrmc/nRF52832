set(HAL "${MCU}_HAL")
set(HAL_DRV "nrfx/drivers")
set(SOFT_DEV "softdevice")
set(INT "integration")
set(NORDIC_LIBS "libraries")

add_library(${HAL} STATIC)

target_sources(${HAL} PUBLIC
    ${CMAKE_CURRENT_SOURCE_DIR}/${HAL_DRV}/src/nrfx_adc.c
    ${CMAKE_CURRENT_SOURCE_DIR}/${HAL_DRV}/src/nrfx_bellboard.c
    ${CMAKE_CURRENT_SOURCE_DIR}/${HAL_DRV}/src/nrfx_clock.c
    ${CMAKE_CURRENT_SOURCE_DIR}/${HAL_DRV}/src/nrfx_comp.c
    ${CMAKE_CURRENT_SOURCE_DIR}/${HAL_DRV}/src/nrfx_dppi.c
    ${CMAKE_CURRENT_SOURCE_DIR}/${HAL_DRV}/src/nrfx_egu.c
    ${CMAKE_CURRENT_SOURCE_DIR}/${HAL_DRV}/src/nrfx_gpiote.c
    ${CMAKE_CURRENT_SOURCE_DIR}/${HAL_DRV}/src/nrfx_grtc.c
    ${CMAKE_CURRENT_SOURCE_DIR}/${HAL_DRV}/src/nrfx_i2s.c
    ${CMAKE_CURRENT_SOURCE_DIR}/${HAL_DRV}/src/nrfx_ipc.c
    ${CMAKE_CURRENT_SOURCE_DIR}/${HAL_DRV}/src/nrfx_lpcomp.c
    ${CMAKE_CURRENT_SOURCE_DIR}/${HAL_DRV}/src/nrfx_nfct.c
    ${CMAKE_CURRENT_SOURCE_DIR}/${HAL_DRV}/src/nrfx_nvmc.c
    ${CMAKE_CURRENT_SOURCE_DIR}/${HAL_DRV}/src/nrfx_pdm.c
    ${CMAKE_CURRENT_SOURCE_DIR}/${HAL_DRV}/src/nrfx_power.c
    ${CMAKE_CURRENT_SOURCE_DIR}/${HAL_DRV}/src/nrfx_ppi.c
    ${CMAKE_CURRENT_SOURCE_DIR}/${HAL_DRV}/src/nrfx_pwm.c
    ${CMAKE_CURRENT_SOURCE_DIR}/${HAL_DRV}/src/nrfx_qdec.c
    ${CMAKE_CURRENT_SOURCE_DIR}/${HAL_DRV}/src/nrfx_qspi.c
    ${CMAKE_CURRENT_SOURCE_DIR}/${HAL_DRV}/src/nrfx_rng.c
    ${CMAKE_CURRENT_SOURCE_DIR}/${HAL_DRV}/src/nrfx_rramc.c
    ${CMAKE_CURRENT_SOURCE_DIR}/${HAL_DRV}/src/nrfx_rtc.c
    ${CMAKE_CURRENT_SOURCE_DIR}/${HAL_DRV}/src/nrfx_saadc.c
    ${CMAKE_CURRENT_SOURCE_DIR}/${HAL_DRV}/src/nrfx_spi.c
    ${CMAKE_CURRENT_SOURCE_DIR}/${HAL_DRV}/src/nrfx_spim.c
    ${CMAKE_CURRENT_SOURCE_DIR}/${HAL_DRV}/src/nrfx_spis.c
    ${CMAKE_CURRENT_SOURCE_DIR}/${HAL_DRV}/src/nrfx_systick.c
    ${CMAKE_CURRENT_SOURCE_DIR}/${HAL_DRV}/src/nrfx_tbm.c
    ${CMAKE_CURRENT_SOURCE_DIR}/${HAL_DRV}/src/nrfx_temp.c
    ${CMAKE_CURRENT_SOURCE_DIR}/${HAL_DRV}/src/nrfx_timer.c
    ${CMAKE_CURRENT_SOURCE_DIR}/${HAL_DRV}/src/nrfx_twi.c
    ${CMAKE_CURRENT_SOURCE_DIR}/${HAL_DRV}/src/nrfx_twim.c
    ${CMAKE_CURRENT_SOURCE_DIR}/${HAL_DRV}/src/nrfx_twis.c
    ${CMAKE_CURRENT_SOURCE_DIR}/${HAL_DRV}/src/nrfx_twi_twim.c
    ${CMAKE_CURRENT_SOURCE_DIR}/${HAL_DRV}/src/nrfx_uart.c
    ${CMAKE_CURRENT_SOURCE_DIR}/${HAL_DRV}/src/nrfx_uarte.c
    ${CMAKE_CURRENT_SOURCE_DIR}/${HAL_DRV}/src/nrfx_usbd.c
    ${CMAKE_CURRENT_SOURCE_DIR}/${HAL_DRV}/src/nrfx_usbreg.c
    ${CMAKE_CURRENT_SOURCE_DIR}/${HAL_DRV}/src/nrfx_vevif.c
    ${CMAKE_CURRENT_SOURCE_DIR}/${HAL_DRV}/src/nrfx_wdt.c
    ${CMAKE_CURRENT_SOURCE_DIR}/${HAL_DRV}/src/prs/nrfx_prs.c

    ${CMAKE_CURRENT_SOURCE_DIR}/nrfx/helpers/nrfx_flag32_allocator.c
    ${CMAKE_CURRENT_SOURCE_DIR}/nrfx/helpers/nrfx_gppi_dppi.c
    ${CMAKE_CURRENT_SOURCE_DIR}/nrfx/helpers/nrfx_gppi_dppi_ppib.c
    ${CMAKE_CURRENT_SOURCE_DIR}/nrfx/helpers/nrfx_gppi_dppi_ppib_lumos.c
    ${CMAKE_CURRENT_SOURCE_DIR}/nrfx/helpers/nrfx_gppi_ppi.c
    ${CMAKE_CURRENT_SOURCE_DIR}/nrfx/helpers/nrfx_ram_ctrl.c

    ${CMAKE_CURRENT_SOURCE_DIR}/nrfx/soc/interconnect/apb/nrfx_interconnect_apb.c
    ${CMAKE_CURRENT_SOURCE_DIR}/nrfx/soc/interconnect/dppic_ppib/nrfx_interconnect_dppic_ppib.c
    ${CMAKE_CURRENT_SOURCE_DIR}/nrfx/soc/interconnect/ipct/nrfx_interconnect_ipct.c

    ${CMAKE_CURRENT_SOURCE_DIR}/${INT}/legacy/nrf_drv_clock.c
    ${CMAKE_CURRENT_SOURCE_DIR}/${INT}/legacy/nrf_drv_power.c
    ${CMAKE_CURRENT_SOURCE_DIR}/${INT}/legacy/nrf_drv_ppi.c
    ${CMAKE_CURRENT_SOURCE_DIR}/${INT}/legacy/nrf_drv_rng.c
    ${CMAKE_CURRENT_SOURCE_DIR}/${INT}/legacy/nrf_drv_spi.c
    ${CMAKE_CURRENT_SOURCE_DIR}/${INT}/legacy/nrf_drv_spis.c
    ${CMAKE_CURRENT_SOURCE_DIR}/${INT}/legacy/nrf_drv_swi.c
    ${CMAKE_CURRENT_SOURCE_DIR}/${INT}/legacy/nrf_drv_twi.c
    ${CMAKE_CURRENT_SOURCE_DIR}/${INT}/legacy/nrf_drv_uart.c
)

target_include_directories(${HAL} PUBLIC

    ${PROJECT_SOURCE_DIR}/config/sdk_config.h

    ${CMAKE_CURRENT_SOURCE_DIR}/${HAL_DRV}
    ${CMAKE_CURRENT_SOURCE_DIR}/${HAL_DRV}/include
    ${CMAKE_CURRENT_SOURCE_DIR}/${HAL_DRV}/src
    ${CMAKE_CURRENT_SOURCE_DIR}/${HAL_DRV}/src/prs

    ${CMAKE_CURRENT_SOURCE_DIR}/nrfx
    ${CMAKE_CURRENT_SOURCE_DIR}/nrfx/hal
    ${CMAKE_CURRENT_SOURCE_DIR}/nrfx/haly
    ${CMAKE_CURRENT_SOURCE_DIR}/nrfx/helpers
    ${CMAKE_CURRENT_SOURCE_DIR}/nrfx/mdk
    ${CMAKE_CURRENT_SOURCE_DIR}/nrfx/soc
    ${CMAKE_CURRENT_SOURCE_DIR}/nrfx/soc/interconnect/apb
    ${CMAKE_CURRENT_SOURCE_DIR}/nrfx/soc/interconnect/dppic_ppib
    ${CMAKE_CURRENT_SOURCE_DIR}/nrfx/soc/interconnect/ipct

    ${CMAKE_CURRENT_SOURCE_DIR}/${SOFT_DEV}/common
    ${CMAKE_CURRENT_SOURCE_DIR}/${SOFT_DEV}/mbr/headers
    ${CMAKE_CURRENT_SOURCE_DIR}/${SOFT_DEV}/mbr/headers
    ${CMAKE_CURRENT_SOURCE_DIR}/${SOFT_DEV}/s132/headers
    ${CMAKE_CURRENT_SOURCE_DIR}/${SOFT_DEV}/s132/headers/nrf52

    ${CMAKE_CURRENT_SOURCE_DIR}/${INT}
    ${CMAKE_CURRENT_SOURCE_DIR}/${INT}/legacy

    ${CMAKE_CURRENT_SOURCE_DIR}/${NORDIC_LIBS}/atomic
    ${CMAKE_CURRENT_SOURCE_DIR}/${NORDIC_LIBS}/atomic_fifo
    ${CMAKE_CURRENT_SOURCE_DIR}/${NORDIC_LIBS}/atomic_flags
    ${CMAKE_CURRENT_SOURCE_DIR}/${NORDIC_LIBS}/balloc
    ${CMAKE_CURRENT_SOURCE_DIR}/${NORDIC_LIBS}/block_dev
    ${CMAKE_CURRENT_SOURCE_DIR}/${NORDIC_LIBS}/bootloader
    ${CMAKE_CURRENT_SOURCE_DIR}/${NORDIC_LIBS}/bsp
    ${CMAKE_CURRENT_SOURCE_DIR}/${NORDIC_LIBS}/button
    ${CMAKE_CURRENT_SOURCE_DIR}/${NORDIC_LIBS}/cli
    ${CMAKE_CURRENT_SOURCE_DIR}/${NORDIC_LIBS}/crc16
    ${CMAKE_CURRENT_SOURCE_DIR}/${NORDIC_LIBS}/crc32
    ${CMAKE_CURRENT_SOURCE_DIR}/${NORDIC_LIBS}/crypto
    ${CMAKE_CURRENT_SOURCE_DIR}/${NORDIC_LIBS}/csense
    ${CMAKE_CURRENT_SOURCE_DIR}/${NORDIC_LIBS}/csense_drv
    ${CMAKE_CURRENT_SOURCE_DIR}/${NORDIC_LIBS}/delay
    ${CMAKE_CURRENT_SOURCE_DIR}/${NORDIC_LIBS}/ecc
    ${CMAKE_CURRENT_SOURCE_DIR}/${NORDIC_LIBS}/experimental_section_vars
    ${CMAKE_CURRENT_SOURCE_DIR}/${NORDIC_LIBS}/experimental_task_manager
    ${CMAKE_CURRENT_SOURCE_DIR}/${NORDIC_LIBS}/fds
    ${CMAKE_CURRENT_SOURCE_DIR}/${NORDIC_LIBS}/fifo
    ${CMAKE_CURRENT_SOURCE_DIR}/${NORDIC_LIBS}/fstorage
    ${CMAKE_CURRENT_SOURCE_DIR}/${NORDIC_LIBS}/gfx
    ${CMAKE_CURRENT_SOURCE_DIR}/${NORDIC_LIBS}/gpiote
    ${CMAKE_CURRENT_SOURCE_DIR}/${NORDIC_LIBS}/hardfault
    ${CMAKE_CURRENT_SOURCE_DIR}/${NORDIC_LIBS}/hci
    ${CMAKE_CURRENT_SOURCE_DIR}/${NORDIC_LIBS}/led_softblink
    ${CMAKE_CURRENT_SOURCE_DIR}/${NORDIC_LIBS}/NORDIC_LIBSuarte
    ${CMAKE_CURRENT_SOURCE_DIR}/${NORDIC_LIBS}/log
    ${CMAKE_CURRENT_SOURCE_DIR}/${NORDIC_LIBS}/low_power_pwm
    ${CMAKE_CURRENT_SOURCE_DIR}/${NORDIC_LIBS}/mem_manager
    ${CMAKE_CURRENT_SOURCE_DIR}/${NORDIC_LIBS}/memobj
    ${CMAKE_CURRENT_SOURCE_DIR}/${NORDIC_LIBS}/mpu
    ${CMAKE_CURRENT_SOURCE_DIR}/${NORDIC_LIBS}/mutex
    ${CMAKE_CURRENT_SOURCE_DIR}/${NORDIC_LIBS}/pwm
    ${CMAKE_CURRENT_SOURCE_DIR}/${NORDIC_LIBS}/pwr_mgmt
    ${CMAKE_CURRENT_SOURCE_DIR}/${NORDIC_LIBS}/queue
    ${CMAKE_CURRENT_SOURCE_DIR}/${NORDIC_LIBS}/ringbuf
    ${CMAKE_CURRENT_SOURCE_DIR}/${NORDIC_LIBS}/scheduler
    ${CMAKE_CURRENT_SOURCE_DIR}/${NORDIC_LIBS}/sdcard
    ${CMAKE_CURRENT_SOURCE_DIR}/${NORDIC_LIBS}/sensorsim
    ${CMAKE_CURRENT_SOURCE_DIR}/${NORDIC_LIBS}/sha256
    ${CMAKE_CURRENT_SOURCE_DIR}/${NORDIC_LIBS}/simple_timer
    ${CMAKE_CURRENT_SOURCE_DIR}/${NORDIC_LIBS}/slip
    ${CMAKE_CURRENT_SOURCE_DIR}/${NORDIC_LIBS}/sortlist
    ${CMAKE_CURRENT_SOURCE_DIR}/${NORDIC_LIBS}/spi_mngr
    ${CMAKE_CURRENT_SOURCE_DIR}/${NORDIC_LIBS}/stack_guard
    ${CMAKE_CURRENT_SOURCE_DIR}/${NORDIC_LIBS}/stack_info
    ${CMAKE_CURRENT_SOURCE_DIR}/${NORDIC_LIBS}/strerror
    ${CMAKE_CURRENT_SOURCE_DIR}/${NORDIC_LIBS}/svc
    ${CMAKE_CURRENT_SOURCE_DIR}/${NORDIC_LIBS}/timer
    ${CMAKE_CURRENT_SOURCE_DIR}/${NORDIC_LIBS}/twi_mngr
    ${CMAKE_CURRENT_SOURCE_DIR}/${NORDIC_LIBS}/twi_sensor
    ${CMAKE_CURRENT_SOURCE_DIR}/${NORDIC_LIBS}/uart
    ${CMAKE_CURRENT_SOURCE_DIR}/${NORDIC_LIBS}/usbd
    ${CMAKE_CURRENT_SOURCE_DIR}/${NORDIC_LIBS}/util

    ${CMAKE_CURRENT_SOURCE_DIR}/../CMSIS-6/CMSIS/Core/Include
)

target_compile_definitions(${HAL} PUBLIC
    ${MCU}
    __SIZEOF_WCHAR_T=4
    __ARM_ARCH_7EM__
    __SES_ARM
    __ARM_ARCH_FPV4_SP_D16__
    __HEAP_SIZE__=2048
    __STACKSIZE__=2048
    __GNU_LINKER
    __SES_VERSION=81001
    BOARD_DW1001_DEV
    BSP_SIMPLE
    CONFIG_GPIO_AS_PINRESET
    FLOAT_ABI_HARD
    NRF52
    NRF52_PAN_74
    NRF_SD_BLE_API_VERSION=7
    S132
    SOFTDEVICE_PRESENT
)
