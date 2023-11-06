################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
D:/Dropbox/Actual/Drivers/Gyver/GyverButton\ V3.8/GyverButton.cpp 

OBJS += \
./GyverButton\ V3.8/GyverButton.o 

CPP_DEPS += \
./GyverButton\ V3.8/GyverButton.d 


# Each subdirectory must supply rules for building sources it contributes
GyverButton\ V3.8/GyverButton.o: D:/Dropbox/Actual/Drivers/Gyver/GyverButton\ V3.8/GyverButton.cpp GyverButton\ V3.8/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m3 -std=gnu++14 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"D:/Dropbox/Actual/Drivers/Display/uTFT2" -I"D:/Dropbox/Actual/Drivers/libs/logUART" -I"D:/Dropbox/Actual/Drivers/libs/Micros" -I"D:/Dropbox/Actual/Drivers/Display/uTFT2/FontGFX" -Ofast -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"GyverButton V3.8/GyverButton.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-GyverButton-20-V3-2e-8

clean-GyverButton-20-V3-2e-8:
	-$(RM) ./GyverButton\ V3.8/GyverButton.cyclo ./GyverButton\ V3.8/GyverButton.d ./GyverButton\ V3.8/GyverButton.o ./GyverButton\ V3.8/GyverButton.su

.PHONY: clean-GyverButton-20-V3-2e-8

