################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
D:/Dropbox/Actual/Drivers/Display/uTFT2/Video/video.cpp 

OBJS += \
./uTFT2/Video/video.o 

CPP_DEPS += \
./uTFT2/Video/video.d 


# Each subdirectory must supply rules for building sources it contributes
uTFT2/Video/video.o: D:/Dropbox/Actual/Drivers/Display/uTFT2/Video/video.cpp uTFT2/Video/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m3 -std=gnu++14 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-uTFT2-2f-Video

clean-uTFT2-2f-Video:
	-$(RM) ./uTFT2/Video/video.cyclo ./uTFT2/Video/video.d ./uTFT2/Video/video.o ./uTFT2/Video/video.su

.PHONY: clean-uTFT2-2f-Video

