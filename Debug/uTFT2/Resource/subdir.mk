################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
D:/Dropbox/Actual/Drivers/Display/uTFT2/Resource/resource.cpp 

OBJS += \
./uTFT2/Resource/resource.o 

CPP_DEPS += \
./uTFT2/Resource/resource.d 


# Each subdirectory must supply rules for building sources it contributes
uTFT2/Resource/resource.o: D:/Dropbox/Actual/Drivers/Display/uTFT2/Resource/resource.cpp uTFT2/Resource/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m3 -std=gnu++14 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"D:/Dropbox/Actual/Drivers/Display/uTFT2" -I"D:/Dropbox/Actual/Drivers/libs/logUART" -I"D:/Dropbox/Actual/Drivers/libs/Micros" -I"D:/Dropbox/Actual/Drivers/Display/uTFT2/FontGFX" -Ofast -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-uTFT2-2f-Resource

clean-uTFT2-2f-Resource:
	-$(RM) ./uTFT2/Resource/resource.cyclo ./uTFT2/Resource/resource.d ./uTFT2/Resource/resource.o ./uTFT2/Resource/resource.su

.PHONY: clean-uTFT2-2f-Resource

