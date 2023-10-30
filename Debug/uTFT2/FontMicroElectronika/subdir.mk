################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
D:/Dropbox/Actual/Drivers/Display/uTFT2/FontMicroElectronika/Font_MicroElecrtonika.cpp 

OBJS += \
./uTFT2/FontMicroElectronika/Font_MicroElecrtonika.o 

CPP_DEPS += \
./uTFT2/FontMicroElectronika/Font_MicroElecrtonika.d 


# Each subdirectory must supply rules for building sources it contributes
uTFT2/FontMicroElectronika/Font_MicroElecrtonika.o: D:/Dropbox/Actual/Drivers/Display/uTFT2/FontMicroElectronika/Font_MicroElecrtonika.cpp uTFT2/FontMicroElectronika/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m3 -std=gnu++14 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"D:/Dropbox/Actual/Drivers/Display/uTFT2" -I"D:/Dropbox/Actual/Drivers/libs/logUART" -O0 -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-uTFT2-2f-FontMicroElectronika

clean-uTFT2-2f-FontMicroElectronika:
	-$(RM) ./uTFT2/FontMicroElectronika/Font_MicroElecrtonika.cyclo ./uTFT2/FontMicroElectronika/Font_MicroElecrtonika.d ./uTFT2/FontMicroElectronika/Font_MicroElecrtonika.o ./uTFT2/FontMicroElectronika/Font_MicroElecrtonika.su

.PHONY: clean-uTFT2-2f-FontMicroElectronika

