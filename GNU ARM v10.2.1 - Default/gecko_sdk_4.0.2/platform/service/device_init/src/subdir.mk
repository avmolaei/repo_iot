################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk/platform/service/device_init/src/sl_device_init_dcdc_s1.c \
C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk/platform/service/device_init/src/sl_device_init_emu_s1.c \
C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk/platform/service/device_init/src/sl_device_init_hfxo_s1.c \
C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk/platform/service/device_init/src/sl_device_init_lfxo_s1.c \
C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk/platform/service/device_init/src/sl_device_init_nvic.c 

OBJS += \
./gecko_sdk_4.0.2/platform/service/device_init/src/sl_device_init_dcdc_s1.o \
./gecko_sdk_4.0.2/platform/service/device_init/src/sl_device_init_emu_s1.o \
./gecko_sdk_4.0.2/platform/service/device_init/src/sl_device_init_hfxo_s1.o \
./gecko_sdk_4.0.2/platform/service/device_init/src/sl_device_init_lfxo_s1.o \
./gecko_sdk_4.0.2/platform/service/device_init/src/sl_device_init_nvic.o 

C_DEPS += \
./gecko_sdk_4.0.2/platform/service/device_init/src/sl_device_init_dcdc_s1.d \
./gecko_sdk_4.0.2/platform/service/device_init/src/sl_device_init_emu_s1.d \
./gecko_sdk_4.0.2/platform/service/device_init/src/sl_device_init_hfxo_s1.d \
./gecko_sdk_4.0.2/platform/service/device_init/src/sl_device_init_lfxo_s1.d \
./gecko_sdk_4.0.2/platform/service/device_init/src/sl_device_init_nvic.d 


# Each subdirectory must supply rules for building sources it contributes
gecko_sdk_4.0.2/platform/service/device_init/src/sl_device_init_dcdc_s1.o: C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk/platform/service/device_init/src/sl_device_init_dcdc_s1.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c99 '-DEFR32MG12P332F1024GL125=1' '-DSL_BOARD_NAME="BRD4166A"' '-DSL_BOARD_REV="D03"' '-DSL_COMPONENT_CATALOG_PRESENT=1' '-DMBEDTLS_CONFIG_FILE=<mbedtls_config.h>' '-DMBEDTLS_PSA_CRYPTO_CLIENT=1' '-DMBEDTLS_PSA_CRYPTO_CONFIG_FILE=<psa_crypto_config.h>' '-DSL_RAIL_LIB_MULTIPROTOCOL_SUPPORT=0' '-DSL_RAIL_UTIL_PA_CONFIG_HEADER=<sl_rail_util_pa_config.h>' '-DBRD4166A_SUPPORT=1' -I"C:\Users\avest\SimplicityStudio\v5_workspace\soc_empty_ac_am_test" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//platform/Device/SiliconLabs/EFR32MG12P/Include" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//app/common/util/app_assert" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//app/common/util/app_log" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//platform/common/inc" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//protocol/bluetooth/inc" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//hardware/board/inc" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//platform/bootloader" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//platform/bootloader/api" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//platform/CMSIS/Include" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//platform/service/device_init/inc" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/inc" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/host/inc" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//platform/driver/i2cspm/inc" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//platform/service/iostream/inc" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//util/third_party/crypto/mbedtls/include" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//util/third_party/crypto/mbedtls/library" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//util/third_party/crypto/sl_component/sl_mbedtls_support/config" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//util/third_party/crypto/sl_component/sl_mbedtls_support/inc" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//platform/service/mpu/inc" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//hardware/driver/mx25_flash_shutdown/inc/sl_mx25_flash_shutdown_usart" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//app/bluetooth/common/ota_dfu" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//platform/service/power_manager/inc" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//util/third_party/crypto/sl_component/sl_psa_driver/inc" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//platform/radio/rail_lib/common" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//platform/radio/rail_lib/protocol/ble" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//platform/radio/rail_lib/protocol/ieee802154" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//platform/radio/rail_lib/protocol/zwave" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//platform/radio/rail_lib/chip/efr32/efr32xg1x" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//platform/radio/rail_lib/plugin/pa-conversions" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//platform/radio/rail_lib/plugin/pa-conversions/efr32xg1x" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//platform/radio/rail_lib/plugin/rail_util_pti" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//app/bluetooth/common/sensor_rht" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//app/bluetooth/common/sensor_select" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//hardware/driver/si70xx/inc" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//util/silicon_labs/silabs_core/memory_manager" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//platform/common/toolchain/inc" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//platform/service/system/inc" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//platform/service/sleeptimer/inc" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//util/third_party/crypto/sl_component/sl_protocol_crypto/src" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//platform/service/udelay/inc" -I"C:\Users\avest\SimplicityStudio\v5_workspace\soc_empty_ac_am_test\autogen" -I"C:\Users\avest\SimplicityStudio\v5_workspace\soc_empty_ac_am_test\config" -Os -Wall -Wextra -Werror -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -c -fmessage-length=0 -MMD -MP -MF"gecko_sdk_4.0.2/platform/service/device_init/src/sl_device_init_dcdc_s1.d" -MT"gecko_sdk_4.0.2/platform/service/device_init/src/sl_device_init_dcdc_s1.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

gecko_sdk_4.0.2/platform/service/device_init/src/sl_device_init_emu_s1.o: C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk/platform/service/device_init/src/sl_device_init_emu_s1.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c99 '-DEFR32MG12P332F1024GL125=1' '-DSL_BOARD_NAME="BRD4166A"' '-DSL_BOARD_REV="D03"' '-DSL_COMPONENT_CATALOG_PRESENT=1' '-DMBEDTLS_CONFIG_FILE=<mbedtls_config.h>' '-DMBEDTLS_PSA_CRYPTO_CLIENT=1' '-DMBEDTLS_PSA_CRYPTO_CONFIG_FILE=<psa_crypto_config.h>' '-DSL_RAIL_LIB_MULTIPROTOCOL_SUPPORT=0' '-DSL_RAIL_UTIL_PA_CONFIG_HEADER=<sl_rail_util_pa_config.h>' '-DBRD4166A_SUPPORT=1' -I"C:\Users\avest\SimplicityStudio\v5_workspace\soc_empty_ac_am_test" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//platform/Device/SiliconLabs/EFR32MG12P/Include" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//app/common/util/app_assert" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//app/common/util/app_log" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//platform/common/inc" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//protocol/bluetooth/inc" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//hardware/board/inc" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//platform/bootloader" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//platform/bootloader/api" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//platform/CMSIS/Include" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//platform/service/device_init/inc" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/inc" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/host/inc" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//platform/driver/i2cspm/inc" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//platform/service/iostream/inc" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//util/third_party/crypto/mbedtls/include" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//util/third_party/crypto/mbedtls/library" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//util/third_party/crypto/sl_component/sl_mbedtls_support/config" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//util/third_party/crypto/sl_component/sl_mbedtls_support/inc" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//platform/service/mpu/inc" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//hardware/driver/mx25_flash_shutdown/inc/sl_mx25_flash_shutdown_usart" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//app/bluetooth/common/ota_dfu" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//platform/service/power_manager/inc" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//util/third_party/crypto/sl_component/sl_psa_driver/inc" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//platform/radio/rail_lib/common" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//platform/radio/rail_lib/protocol/ble" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//platform/radio/rail_lib/protocol/ieee802154" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//platform/radio/rail_lib/protocol/zwave" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//platform/radio/rail_lib/chip/efr32/efr32xg1x" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//platform/radio/rail_lib/plugin/pa-conversions" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//platform/radio/rail_lib/plugin/pa-conversions/efr32xg1x" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//platform/radio/rail_lib/plugin/rail_util_pti" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//app/bluetooth/common/sensor_rht" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//app/bluetooth/common/sensor_select" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//hardware/driver/si70xx/inc" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//util/silicon_labs/silabs_core/memory_manager" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//platform/common/toolchain/inc" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//platform/service/system/inc" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//platform/service/sleeptimer/inc" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//util/third_party/crypto/sl_component/sl_protocol_crypto/src" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//platform/service/udelay/inc" -I"C:\Users\avest\SimplicityStudio\v5_workspace\soc_empty_ac_am_test\autogen" -I"C:\Users\avest\SimplicityStudio\v5_workspace\soc_empty_ac_am_test\config" -Os -Wall -Wextra -Werror -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -c -fmessage-length=0 -MMD -MP -MF"gecko_sdk_4.0.2/platform/service/device_init/src/sl_device_init_emu_s1.d" -MT"gecko_sdk_4.0.2/platform/service/device_init/src/sl_device_init_emu_s1.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

gecko_sdk_4.0.2/platform/service/device_init/src/sl_device_init_hfxo_s1.o: C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk/platform/service/device_init/src/sl_device_init_hfxo_s1.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c99 '-DEFR32MG12P332F1024GL125=1' '-DSL_BOARD_NAME="BRD4166A"' '-DSL_BOARD_REV="D03"' '-DSL_COMPONENT_CATALOG_PRESENT=1' '-DMBEDTLS_CONFIG_FILE=<mbedtls_config.h>' '-DMBEDTLS_PSA_CRYPTO_CLIENT=1' '-DMBEDTLS_PSA_CRYPTO_CONFIG_FILE=<psa_crypto_config.h>' '-DSL_RAIL_LIB_MULTIPROTOCOL_SUPPORT=0' '-DSL_RAIL_UTIL_PA_CONFIG_HEADER=<sl_rail_util_pa_config.h>' '-DBRD4166A_SUPPORT=1' -I"C:\Users\avest\SimplicityStudio\v5_workspace\soc_empty_ac_am_test" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//platform/Device/SiliconLabs/EFR32MG12P/Include" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//app/common/util/app_assert" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//app/common/util/app_log" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//platform/common/inc" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//protocol/bluetooth/inc" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//hardware/board/inc" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//platform/bootloader" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//platform/bootloader/api" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//platform/CMSIS/Include" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//platform/service/device_init/inc" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/inc" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/host/inc" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//platform/driver/i2cspm/inc" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//platform/service/iostream/inc" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//util/third_party/crypto/mbedtls/include" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//util/third_party/crypto/mbedtls/library" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//util/third_party/crypto/sl_component/sl_mbedtls_support/config" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//util/third_party/crypto/sl_component/sl_mbedtls_support/inc" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//platform/service/mpu/inc" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//hardware/driver/mx25_flash_shutdown/inc/sl_mx25_flash_shutdown_usart" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//app/bluetooth/common/ota_dfu" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//platform/service/power_manager/inc" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//util/third_party/crypto/sl_component/sl_psa_driver/inc" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//platform/radio/rail_lib/common" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//platform/radio/rail_lib/protocol/ble" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//platform/radio/rail_lib/protocol/ieee802154" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//platform/radio/rail_lib/protocol/zwave" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//platform/radio/rail_lib/chip/efr32/efr32xg1x" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//platform/radio/rail_lib/plugin/pa-conversions" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//platform/radio/rail_lib/plugin/pa-conversions/efr32xg1x" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//platform/radio/rail_lib/plugin/rail_util_pti" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//app/bluetooth/common/sensor_rht" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//app/bluetooth/common/sensor_select" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//hardware/driver/si70xx/inc" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//util/silicon_labs/silabs_core/memory_manager" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//platform/common/toolchain/inc" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//platform/service/system/inc" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//platform/service/sleeptimer/inc" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//util/third_party/crypto/sl_component/sl_protocol_crypto/src" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//platform/service/udelay/inc" -I"C:\Users\avest\SimplicityStudio\v5_workspace\soc_empty_ac_am_test\autogen" -I"C:\Users\avest\SimplicityStudio\v5_workspace\soc_empty_ac_am_test\config" -Os -Wall -Wextra -Werror -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -c -fmessage-length=0 -MMD -MP -MF"gecko_sdk_4.0.2/platform/service/device_init/src/sl_device_init_hfxo_s1.d" -MT"gecko_sdk_4.0.2/platform/service/device_init/src/sl_device_init_hfxo_s1.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

gecko_sdk_4.0.2/platform/service/device_init/src/sl_device_init_lfxo_s1.o: C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk/platform/service/device_init/src/sl_device_init_lfxo_s1.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c99 '-DEFR32MG12P332F1024GL125=1' '-DSL_BOARD_NAME="BRD4166A"' '-DSL_BOARD_REV="D03"' '-DSL_COMPONENT_CATALOG_PRESENT=1' '-DMBEDTLS_CONFIG_FILE=<mbedtls_config.h>' '-DMBEDTLS_PSA_CRYPTO_CLIENT=1' '-DMBEDTLS_PSA_CRYPTO_CONFIG_FILE=<psa_crypto_config.h>' '-DSL_RAIL_LIB_MULTIPROTOCOL_SUPPORT=0' '-DSL_RAIL_UTIL_PA_CONFIG_HEADER=<sl_rail_util_pa_config.h>' '-DBRD4166A_SUPPORT=1' -I"C:\Users\avest\SimplicityStudio\v5_workspace\soc_empty_ac_am_test" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//platform/Device/SiliconLabs/EFR32MG12P/Include" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//app/common/util/app_assert" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//app/common/util/app_log" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//platform/common/inc" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//protocol/bluetooth/inc" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//hardware/board/inc" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//platform/bootloader" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//platform/bootloader/api" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//platform/CMSIS/Include" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//platform/service/device_init/inc" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/inc" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/host/inc" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//platform/driver/i2cspm/inc" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//platform/service/iostream/inc" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//util/third_party/crypto/mbedtls/include" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//util/third_party/crypto/mbedtls/library" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//util/third_party/crypto/sl_component/sl_mbedtls_support/config" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//util/third_party/crypto/sl_component/sl_mbedtls_support/inc" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//platform/service/mpu/inc" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//hardware/driver/mx25_flash_shutdown/inc/sl_mx25_flash_shutdown_usart" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//app/bluetooth/common/ota_dfu" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//platform/service/power_manager/inc" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//util/third_party/crypto/sl_component/sl_psa_driver/inc" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//platform/radio/rail_lib/common" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//platform/radio/rail_lib/protocol/ble" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//platform/radio/rail_lib/protocol/ieee802154" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//platform/radio/rail_lib/protocol/zwave" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//platform/radio/rail_lib/chip/efr32/efr32xg1x" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//platform/radio/rail_lib/plugin/pa-conversions" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//platform/radio/rail_lib/plugin/pa-conversions/efr32xg1x" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//platform/radio/rail_lib/plugin/rail_util_pti" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//app/bluetooth/common/sensor_rht" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//app/bluetooth/common/sensor_select" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//hardware/driver/si70xx/inc" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//util/silicon_labs/silabs_core/memory_manager" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//platform/common/toolchain/inc" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//platform/service/system/inc" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//platform/service/sleeptimer/inc" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//util/third_party/crypto/sl_component/sl_protocol_crypto/src" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//platform/service/udelay/inc" -I"C:\Users\avest\SimplicityStudio\v5_workspace\soc_empty_ac_am_test\autogen" -I"C:\Users\avest\SimplicityStudio\v5_workspace\soc_empty_ac_am_test\config" -Os -Wall -Wextra -Werror -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -c -fmessage-length=0 -MMD -MP -MF"gecko_sdk_4.0.2/platform/service/device_init/src/sl_device_init_lfxo_s1.d" -MT"gecko_sdk_4.0.2/platform/service/device_init/src/sl_device_init_lfxo_s1.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

gecko_sdk_4.0.2/platform/service/device_init/src/sl_device_init_nvic.o: C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk/platform/service/device_init/src/sl_device_init_nvic.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c99 '-DEFR32MG12P332F1024GL125=1' '-DSL_BOARD_NAME="BRD4166A"' '-DSL_BOARD_REV="D03"' '-DSL_COMPONENT_CATALOG_PRESENT=1' '-DMBEDTLS_CONFIG_FILE=<mbedtls_config.h>' '-DMBEDTLS_PSA_CRYPTO_CLIENT=1' '-DMBEDTLS_PSA_CRYPTO_CONFIG_FILE=<psa_crypto_config.h>' '-DSL_RAIL_LIB_MULTIPROTOCOL_SUPPORT=0' '-DSL_RAIL_UTIL_PA_CONFIG_HEADER=<sl_rail_util_pa_config.h>' '-DBRD4166A_SUPPORT=1' -I"C:\Users\avest\SimplicityStudio\v5_workspace\soc_empty_ac_am_test" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//platform/Device/SiliconLabs/EFR32MG12P/Include" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//app/common/util/app_assert" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//app/common/util/app_log" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//platform/common/inc" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//protocol/bluetooth/inc" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//hardware/board/inc" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//platform/bootloader" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//platform/bootloader/api" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//platform/CMSIS/Include" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//platform/service/device_init/inc" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/inc" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/host/inc" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//platform/driver/i2cspm/inc" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//platform/service/iostream/inc" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//util/third_party/crypto/mbedtls/include" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//util/third_party/crypto/mbedtls/library" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//util/third_party/crypto/sl_component/sl_mbedtls_support/config" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//util/third_party/crypto/sl_component/sl_mbedtls_support/inc" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//platform/service/mpu/inc" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//hardware/driver/mx25_flash_shutdown/inc/sl_mx25_flash_shutdown_usart" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//app/bluetooth/common/ota_dfu" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//platform/service/power_manager/inc" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//util/third_party/crypto/sl_component/sl_psa_driver/inc" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//platform/radio/rail_lib/common" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//platform/radio/rail_lib/protocol/ble" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//platform/radio/rail_lib/protocol/ieee802154" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//platform/radio/rail_lib/protocol/zwave" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//platform/radio/rail_lib/chip/efr32/efr32xg1x" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//platform/radio/rail_lib/plugin/pa-conversions" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//platform/radio/rail_lib/plugin/pa-conversions/efr32xg1x" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//platform/radio/rail_lib/plugin/rail_util_pti" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//app/bluetooth/common/sensor_rht" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//app/bluetooth/common/sensor_select" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//hardware/driver/si70xx/inc" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//util/silicon_labs/silabs_core/memory_manager" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//platform/common/toolchain/inc" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//platform/service/system/inc" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//platform/service/sleeptimer/inc" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//util/third_party/crypto/sl_component/sl_protocol_crypto/src" -I"C:/Users/avest/SimplicityStudio/SDKs/gecko_sdk//platform/service/udelay/inc" -I"C:\Users\avest\SimplicityStudio\v5_workspace\soc_empty_ac_am_test\autogen" -I"C:\Users\avest\SimplicityStudio\v5_workspace\soc_empty_ac_am_test\config" -Os -Wall -Wextra -Werror -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -c -fmessage-length=0 -MMD -MP -MF"gecko_sdk_4.0.2/platform/service/device_init/src/sl_device_init_nvic.d" -MT"gecko_sdk_4.0.2/platform/service/device_init/src/sl_device_init_nvic.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


