################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
D:/Dropbox/Actual/Drivers/Display/uTFT2/Transformation/transformation.cpp 

OBJS += \
./uTFT2/Transformation/transformation.o 

CPP_DEPS += \
./uTFT2/Transformation/transformation.d 


# Each subdirectory must supply rules for building sources it contributes
uTFT2/Transformation/transformation.o: D:/Dropbox/Actual/Drivers/Display/uTFT2/Transformation/transformation.cpp uTFT2/Transformation/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m3 -std=gnu++14 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-uTFT2-2f-Transformation

clean-uTFT2-2f-Transformation:
	-$(RM) ./uTFT2/Transformation/transformation.cyclo ./uTFT2/Transformation/transformation.d ./uTFT2/Transformation/transformation.o ./uTFT2/Transformation/transformation.su

.PHONY: clean-uTFT2-2f-Transformation

