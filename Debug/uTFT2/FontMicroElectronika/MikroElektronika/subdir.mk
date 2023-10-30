################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
D:/Dropbox/Actual/Drivers/Display/uTFT2/FontMicroElectronika/MikroElektronika/Arial_Narrow9x15.c \
D:/Dropbox/Actual/Drivers/Display/uTFT2/FontMicroElectronika/MikroElektronika/Courier12x18.c \
D:/Dropbox/Actual/Drivers/Display/uTFT2/FontMicroElectronika/MikroElektronika/Fewture12x12.c \
D:/Dropbox/Actual/Drivers/Display/uTFT2/FontMicroElectronika/MikroElektronika/Microsoft_YaHeiUI12_20x22.c \
D:/Dropbox/Actual/Drivers/Display/uTFT2/FontMicroElectronika/MikroElektronika/Microsoft_YaHeiUI16_27x30.c \
D:/Dropbox/Actual/Drivers/Display/uTFT2/FontMicroElectronika/MikroElektronika/Microsoft_YaHeiUI24_41x45.c \
D:/Dropbox/Actual/Drivers/Display/uTFT2/FontMicroElectronika/MikroElektronika/Verdana39x32.c \
D:/Dropbox/Actual/Drivers/Display/uTFT2/FontMicroElectronika/MikroElektronika/Wingdings_2_31x26.c 

C_DEPS += \
./uTFT2/FontMicroElectronika/MikroElektronika/Arial_Narrow9x15.d \
./uTFT2/FontMicroElectronika/MikroElektronika/Courier12x18.d \
./uTFT2/FontMicroElectronika/MikroElektronika/Fewture12x12.d \
./uTFT2/FontMicroElectronika/MikroElektronika/Microsoft_YaHeiUI12_20x22.d \
./uTFT2/FontMicroElectronika/MikroElektronika/Microsoft_YaHeiUI16_27x30.d \
./uTFT2/FontMicroElectronika/MikroElektronika/Microsoft_YaHeiUI24_41x45.d \
./uTFT2/FontMicroElectronika/MikroElektronika/Verdana39x32.d \
./uTFT2/FontMicroElectronika/MikroElektronika/Wingdings_2_31x26.d 

OBJS += \
./uTFT2/FontMicroElectronika/MikroElektronika/Arial_Narrow9x15.o \
./uTFT2/FontMicroElectronika/MikroElektronika/Courier12x18.o \
./uTFT2/FontMicroElectronika/MikroElektronika/Fewture12x12.o \
./uTFT2/FontMicroElectronika/MikroElektronika/Microsoft_YaHeiUI12_20x22.o \
./uTFT2/FontMicroElectronika/MikroElektronika/Microsoft_YaHeiUI16_27x30.o \
./uTFT2/FontMicroElectronika/MikroElektronika/Microsoft_YaHeiUI24_41x45.o \
./uTFT2/FontMicroElectronika/MikroElektronika/Verdana39x32.o \
./uTFT2/FontMicroElectronika/MikroElektronika/Wingdings_2_31x26.o 


# Each subdirectory must supply rules for building sources it contributes
uTFT2/FontMicroElectronika/MikroElektronika/Arial_Narrow9x15.o: D:/Dropbox/Actual/Drivers/Display/uTFT2/FontMicroElectronika/MikroElektronika/Arial_Narrow9x15.c uTFT2/FontMicroElectronika/MikroElektronika/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"D:/Dropbox/Actual/Drivers/Display/uTFT2" -I"D:/Dropbox/Actual/Drivers/libs/logUART" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
uTFT2/FontMicroElectronika/MikroElektronika/Courier12x18.o: D:/Dropbox/Actual/Drivers/Display/uTFT2/FontMicroElectronika/MikroElektronika/Courier12x18.c uTFT2/FontMicroElectronika/MikroElektronika/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"D:/Dropbox/Actual/Drivers/Display/uTFT2" -I"D:/Dropbox/Actual/Drivers/libs/logUART" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
uTFT2/FontMicroElectronika/MikroElektronika/Fewture12x12.o: D:/Dropbox/Actual/Drivers/Display/uTFT2/FontMicroElectronika/MikroElektronika/Fewture12x12.c uTFT2/FontMicroElectronika/MikroElektronika/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"D:/Dropbox/Actual/Drivers/Display/uTFT2" -I"D:/Dropbox/Actual/Drivers/libs/logUART" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
uTFT2/FontMicroElectronika/MikroElektronika/Microsoft_YaHeiUI12_20x22.o: D:/Dropbox/Actual/Drivers/Display/uTFT2/FontMicroElectronika/MikroElektronika/Microsoft_YaHeiUI12_20x22.c uTFT2/FontMicroElectronika/MikroElektronika/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"D:/Dropbox/Actual/Drivers/Display/uTFT2" -I"D:/Dropbox/Actual/Drivers/libs/logUART" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
uTFT2/FontMicroElectronika/MikroElektronika/Microsoft_YaHeiUI16_27x30.o: D:/Dropbox/Actual/Drivers/Display/uTFT2/FontMicroElectronika/MikroElektronika/Microsoft_YaHeiUI16_27x30.c uTFT2/FontMicroElectronika/MikroElektronika/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"D:/Dropbox/Actual/Drivers/Display/uTFT2" -I"D:/Dropbox/Actual/Drivers/libs/logUART" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
uTFT2/FontMicroElectronika/MikroElektronika/Microsoft_YaHeiUI24_41x45.o: D:/Dropbox/Actual/Drivers/Display/uTFT2/FontMicroElectronika/MikroElektronika/Microsoft_YaHeiUI24_41x45.c uTFT2/FontMicroElectronika/MikroElektronika/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"D:/Dropbox/Actual/Drivers/Display/uTFT2" -I"D:/Dropbox/Actual/Drivers/libs/logUART" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
uTFT2/FontMicroElectronika/MikroElektronika/Verdana39x32.o: D:/Dropbox/Actual/Drivers/Display/uTFT2/FontMicroElectronika/MikroElektronika/Verdana39x32.c uTFT2/FontMicroElectronika/MikroElektronika/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"D:/Dropbox/Actual/Drivers/Display/uTFT2" -I"D:/Dropbox/Actual/Drivers/libs/logUART" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
uTFT2/FontMicroElectronika/MikroElektronika/Wingdings_2_31x26.o: D:/Dropbox/Actual/Drivers/Display/uTFT2/FontMicroElectronika/MikroElektronika/Wingdings_2_31x26.c uTFT2/FontMicroElectronika/MikroElektronika/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"D:/Dropbox/Actual/Drivers/Display/uTFT2" -I"D:/Dropbox/Actual/Drivers/libs/logUART" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-uTFT2-2f-FontMicroElectronika-2f-MikroElektronika

clean-uTFT2-2f-FontMicroElectronika-2f-MikroElektronika:
	-$(RM) ./uTFT2/FontMicroElectronika/MikroElektronika/Arial_Narrow9x15.cyclo ./uTFT2/FontMicroElectronika/MikroElektronika/Arial_Narrow9x15.d ./uTFT2/FontMicroElectronika/MikroElektronika/Arial_Narrow9x15.o ./uTFT2/FontMicroElectronika/MikroElektronika/Arial_Narrow9x15.su ./uTFT2/FontMicroElectronika/MikroElektronika/Courier12x18.cyclo ./uTFT2/FontMicroElectronika/MikroElektronika/Courier12x18.d ./uTFT2/FontMicroElectronika/MikroElektronika/Courier12x18.o ./uTFT2/FontMicroElectronika/MikroElektronika/Courier12x18.su ./uTFT2/FontMicroElectronika/MikroElektronika/Fewture12x12.cyclo ./uTFT2/FontMicroElectronika/MikroElektronika/Fewture12x12.d ./uTFT2/FontMicroElectronika/MikroElektronika/Fewture12x12.o ./uTFT2/FontMicroElectronika/MikroElektronika/Fewture12x12.su ./uTFT2/FontMicroElectronika/MikroElektronika/Microsoft_YaHeiUI12_20x22.cyclo ./uTFT2/FontMicroElectronika/MikroElektronika/Microsoft_YaHeiUI12_20x22.d ./uTFT2/FontMicroElectronika/MikroElektronika/Microsoft_YaHeiUI12_20x22.o ./uTFT2/FontMicroElectronika/MikroElektronika/Microsoft_YaHeiUI12_20x22.su ./uTFT2/FontMicroElectronika/MikroElektronika/Microsoft_YaHeiUI16_27x30.cyclo ./uTFT2/FontMicroElectronika/MikroElektronika/Microsoft_YaHeiUI16_27x30.d ./uTFT2/FontMicroElectronika/MikroElektronika/Microsoft_YaHeiUI16_27x30.o ./uTFT2/FontMicroElectronika/MikroElektronika/Microsoft_YaHeiUI16_27x30.su ./uTFT2/FontMicroElectronika/MikroElektronika/Microsoft_YaHeiUI24_41x45.cyclo ./uTFT2/FontMicroElectronika/MikroElektronika/Microsoft_YaHeiUI24_41x45.d ./uTFT2/FontMicroElectronika/MikroElektronika/Microsoft_YaHeiUI24_41x45.o ./uTFT2/FontMicroElectronika/MikroElektronika/Microsoft_YaHeiUI24_41x45.su ./uTFT2/FontMicroElectronika/MikroElektronika/Verdana39x32.cyclo ./uTFT2/FontMicroElectronika/MikroElektronika/Verdana39x32.d ./uTFT2/FontMicroElectronika/MikroElektronika/Verdana39x32.o ./uTFT2/FontMicroElectronika/MikroElektronika/Verdana39x32.su ./uTFT2/FontMicroElectronika/MikroElektronika/Wingdings_2_31x26.cyclo ./uTFT2/FontMicroElectronika/MikroElektronika/Wingdings_2_31x26.d ./uTFT2/FontMicroElectronika/MikroElektronika/Wingdings_2_31x26.o ./uTFT2/FontMicroElectronika/MikroElektronika/Wingdings_2_31x26.su

.PHONY: clean-uTFT2-2f-FontMicroElectronika-2f-MikroElektronika

