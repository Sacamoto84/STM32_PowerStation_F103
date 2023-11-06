################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
D:/Dropbox/Actual/Drivers/Display/uTFT2/Driver/ILI9225.cpp \
D:/Dropbox/Actual/Drivers/Display/uTFT2/Driver/ILI9225_Init.cpp \
D:/Dropbox/Actual/Drivers/Display/uTFT2/Driver/SSD1306.cpp \
D:/Dropbox/Actual/Drivers/Display/uTFT2/Driver/ST7789.cpp 

OBJS += \
./uTFT2/Driver/ILI9225.o \
./uTFT2/Driver/ILI9225_Init.o \
./uTFT2/Driver/SSD1306.o \
./uTFT2/Driver/ST7789.o 

CPP_DEPS += \
./uTFT2/Driver/ILI9225.d \
./uTFT2/Driver/ILI9225_Init.d \
./uTFT2/Driver/SSD1306.d \
./uTFT2/Driver/ST7789.d 


# Each subdirectory must supply rules for building sources it contributes
uTFT2/Driver/ILI9225.o: D:/Dropbox/Actual/Drivers/Display/uTFT2/Driver/ILI9225.cpp uTFT2/Driver/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m3 -std=gnu++14 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"D:/Dropbox/Actual/Drivers/Display/uTFT2" -I"D:/Dropbox/Actual/Drivers/libs/logUART" -I"D:/Dropbox/Actual/Drivers/libs/Micros" -I"D:/Dropbox/Actual/Drivers/Display/uTFT2/FontGFX" -Ofast -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
uTFT2/Driver/ILI9225_Init.o: D:/Dropbox/Actual/Drivers/Display/uTFT2/Driver/ILI9225_Init.cpp uTFT2/Driver/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m3 -std=gnu++14 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"D:/Dropbox/Actual/Drivers/Display/uTFT2" -I"D:/Dropbox/Actual/Drivers/libs/logUART" -I"D:/Dropbox/Actual/Drivers/libs/Micros" -I"D:/Dropbox/Actual/Drivers/Display/uTFT2/FontGFX" -Ofast -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
uTFT2/Driver/SSD1306.o: D:/Dropbox/Actual/Drivers/Display/uTFT2/Driver/SSD1306.cpp uTFT2/Driver/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m3 -std=gnu++14 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"D:/Dropbox/Actual/Drivers/Display/uTFT2" -I"D:/Dropbox/Actual/Drivers/libs/logUART" -I"D:/Dropbox/Actual/Drivers/libs/Micros" -I"D:/Dropbox/Actual/Drivers/Display/uTFT2/FontGFX" -Ofast -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
uTFT2/Driver/ST7789.o: D:/Dropbox/Actual/Drivers/Display/uTFT2/Driver/ST7789.cpp uTFT2/Driver/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m3 -std=gnu++14 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"D:/Dropbox/Actual/Drivers/Display/uTFT2" -I"D:/Dropbox/Actual/Drivers/libs/logUART" -I"D:/Dropbox/Actual/Drivers/libs/Micros" -I"D:/Dropbox/Actual/Drivers/Display/uTFT2/FontGFX" -Ofast -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-uTFT2-2f-Driver

clean-uTFT2-2f-Driver:
	-$(RM) ./uTFT2/Driver/ILI9225.cyclo ./uTFT2/Driver/ILI9225.d ./uTFT2/Driver/ILI9225.o ./uTFT2/Driver/ILI9225.su ./uTFT2/Driver/ILI9225_Init.cyclo ./uTFT2/Driver/ILI9225_Init.d ./uTFT2/Driver/ILI9225_Init.o ./uTFT2/Driver/ILI9225_Init.su ./uTFT2/Driver/SSD1306.cyclo ./uTFT2/Driver/SSD1306.d ./uTFT2/Driver/SSD1306.o ./uTFT2/Driver/SSD1306.su ./uTFT2/Driver/ST7789.cyclo ./uTFT2/Driver/ST7789.d ./uTFT2/Driver/ST7789.o ./uTFT2/Driver/ST7789.su

.PHONY: clean-uTFT2-2f-Driver

