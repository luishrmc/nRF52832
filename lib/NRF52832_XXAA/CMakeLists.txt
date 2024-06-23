set(HAL "${MCU}_HAL")
set(HAL_DRV "hal-driver/Src")

add_library(${HAL} STATIC)

target_sources(${HAL} PRIVATE
)

target_include_directories(${HAL} PUBLIC
)

target_compile_definitions(${HAL} PRIVATE
    ${MCU}
)
