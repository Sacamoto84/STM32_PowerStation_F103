################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
D:/Dropbox/Actual/Drivers/Display/uTFT2/TFT.cpp \
D:/Dropbox/Actual/Drivers/Display/uTFT2/TFT_BMP.cpp \
D:/Dropbox/Actual/Drivers/Display/uTFT2/TFT_Primitive.cpp 

OBJS += \
./uTFT2/TFT.o \
./uTFT2/TFT_BMP.o \
./uTFT2/TFT_Primitive.o 

CPP_DEPS += \
./uTFT2/TFT.d \
./uTFT2/TFT_BMP.d \
./uTFT2/TFT_Primitive.d 


# Each subdirectory must supply rules for building sources it contributes
uTFT2/TFT.o: D:/Dropbox/Actual/Drivers/Display/uTFT2/TFT.cpp uTFT2/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m3 -std=gnu++14 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"D:/Dropbox/Actual/Drivers/Display/uTFT2" -I"D:/Dropbox/Actual/Drivers/libs/logUART" -I"D:/Dropbox/Actual/Drivers/libs/Micros" -O0 -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
uTFT2/TFT_BMP.o: D:/Dropbox/Actual/Drivers/Display/uTFT2/TFT_BMP.cpp uTFT2/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m3 -std=gnu++14 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"D:/Dropbox/Actual/Drivers/Display/uTFT2" -I"D:/Dropbox/Actual/Drivers/libs/logUART" -I"D:/Dropbox/Actual/Drivers/libs/Micros" -O0 -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
uTFT2/TFT_Primitive.o: D:/Dropbox/Actual/Drivers/Display/uTFT2/TFT_Primitive.cpp uTFT2/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m3 -std=gnu++14 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"D:/Dropbox/Actual/Drivers/Display/uTFT2" -I"D:/Dropbox/Actual/Drivers/libs/logUART" -I"D:/Dropbox/Actual/Drivers/libs/Micros" -O0 -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-uTFT2

clean-uTFT2:
	-$(RM) ./uTFT2/TFT.cyclo ./uTFT2/TFT.d ./uTFT2/TFT.o ./uTFT2/TFT.su ./uTFT2/TFT_BMP.cyclo ./uTFT2/TFT_BMP.d ./uTFT2/TFT_BMP.o ./uTFT2/TFT_BMP.su ./uTFT2/TFT_Primitive.cyclo ./uTFT2/TFT_Primitive.d ./uTFT2/TFT_Primitive.o ./uTFT2/TFT_Primitive.su

.PHONY: clean-uTFT2

