################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
D:/Dropbox/Actual/Drivers/Display/uTFT2/Bitmap/BMPFromFile.cpp \
D:/Dropbox/Actual/Drivers/Display/uTFT2/Bitmap/BMPFromFile32b.cpp \
D:/Dropbox/Actual/Drivers/Display/uTFT2/Bitmap/BMPFromFileTransparent.cpp \
D:/Dropbox/Actual/Drivers/Display/uTFT2/Bitmap/BitmapFromFlash16b.cpp \
D:/Dropbox/Actual/Drivers/Display/uTFT2/Bitmap/BitmapFromFlash1b.cpp \
D:/Dropbox/Actual/Drivers/Display/uTFT2/Bitmap/BitmapFromFlash24b.cpp \
D:/Dropbox/Actual/Drivers/Display/uTFT2/Bitmap/BitmapFromFlash32b.cpp \
D:/Dropbox/Actual/Drivers/Display/uTFT2/Bitmap/BitmapFromFlashAlpha.cpp \
D:/Dropbox/Actual/Drivers/Display/uTFT2/Bitmap/BitmapFromFlashBackground16bit.cpp \
D:/Dropbox/Actual/Drivers/Display/uTFT2/Bitmap/BitmapFromFlashTransparent.cpp 

OBJS += \
./uTFT2/Bitmap/BMPFromFile.o \
./uTFT2/Bitmap/BMPFromFile32b.o \
./uTFT2/Bitmap/BMPFromFileTransparent.o \
./uTFT2/Bitmap/BitmapFromFlash16b.o \
./uTFT2/Bitmap/BitmapFromFlash1b.o \
./uTFT2/Bitmap/BitmapFromFlash24b.o \
./uTFT2/Bitmap/BitmapFromFlash32b.o \
./uTFT2/Bitmap/BitmapFromFlashAlpha.o \
./uTFT2/Bitmap/BitmapFromFlashBackground16bit.o \
./uTFT2/Bitmap/BitmapFromFlashTransparent.o 

CPP_DEPS += \
./uTFT2/Bitmap/BMPFromFile.d \
./uTFT2/Bitmap/BMPFromFile32b.d \
./uTFT2/Bitmap/BMPFromFileTransparent.d \
./uTFT2/Bitmap/BitmapFromFlash16b.d \
./uTFT2/Bitmap/BitmapFromFlash1b.d \
./uTFT2/Bitmap/BitmapFromFlash24b.d \
./uTFT2/Bitmap/BitmapFromFlash32b.d \
./uTFT2/Bitmap/BitmapFromFlashAlpha.d \
./uTFT2/Bitmap/BitmapFromFlashBackground16bit.d \
./uTFT2/Bitmap/BitmapFromFlashTransparent.d 


# Each subdirectory must supply rules for building sources it contributes
uTFT2/Bitmap/BMPFromFile.o: D:/Dropbox/Actual/Drivers/Display/uTFT2/Bitmap/BMPFromFile.cpp uTFT2/Bitmap/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m3 -std=gnu++14 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"D:/Dropbox/Actual/Drivers/Display/uTFT2" -I"D:/Dropbox/Actual/Drivers/libs/logUART" -I"D:/Dropbox/Actual/Drivers/libs/Micros" -I"D:/Dropbox/Actual/Drivers/Display/uTFT2/FontGFX" -Ofast -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
uTFT2/Bitmap/BMPFromFile32b.o: D:/Dropbox/Actual/Drivers/Display/uTFT2/Bitmap/BMPFromFile32b.cpp uTFT2/Bitmap/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m3 -std=gnu++14 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"D:/Dropbox/Actual/Drivers/Display/uTFT2" -I"D:/Dropbox/Actual/Drivers/libs/logUART" -I"D:/Dropbox/Actual/Drivers/libs/Micros" -I"D:/Dropbox/Actual/Drivers/Display/uTFT2/FontGFX" -Ofast -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
uTFT2/Bitmap/BMPFromFileTransparent.o: D:/Dropbox/Actual/Drivers/Display/uTFT2/Bitmap/BMPFromFileTransparent.cpp uTFT2/Bitmap/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m3 -std=gnu++14 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"D:/Dropbox/Actual/Drivers/Display/uTFT2" -I"D:/Dropbox/Actual/Drivers/libs/logUART" -I"D:/Dropbox/Actual/Drivers/libs/Micros" -I"D:/Dropbox/Actual/Drivers/Display/uTFT2/FontGFX" -Ofast -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
uTFT2/Bitmap/BitmapFromFlash16b.o: D:/Dropbox/Actual/Drivers/Display/uTFT2/Bitmap/BitmapFromFlash16b.cpp uTFT2/Bitmap/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m3 -std=gnu++14 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"D:/Dropbox/Actual/Drivers/Display/uTFT2" -I"D:/Dropbox/Actual/Drivers/libs/logUART" -I"D:/Dropbox/Actual/Drivers/libs/Micros" -I"D:/Dropbox/Actual/Drivers/Display/uTFT2/FontGFX" -Ofast -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
uTFT2/Bitmap/BitmapFromFlash1b.o: D:/Dropbox/Actual/Drivers/Display/uTFT2/Bitmap/BitmapFromFlash1b.cpp uTFT2/Bitmap/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m3 -std=gnu++14 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"D:/Dropbox/Actual/Drivers/Display/uTFT2" -I"D:/Dropbox/Actual/Drivers/libs/logUART" -I"D:/Dropbox/Actual/Drivers/libs/Micros" -I"D:/Dropbox/Actual/Drivers/Display/uTFT2/FontGFX" -Ofast -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
uTFT2/Bitmap/BitmapFromFlash24b.o: D:/Dropbox/Actual/Drivers/Display/uTFT2/Bitmap/BitmapFromFlash24b.cpp uTFT2/Bitmap/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m3 -std=gnu++14 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"D:/Dropbox/Actual/Drivers/Display/uTFT2" -I"D:/Dropbox/Actual/Drivers/libs/logUART" -I"D:/Dropbox/Actual/Drivers/libs/Micros" -I"D:/Dropbox/Actual/Drivers/Display/uTFT2/FontGFX" -Ofast -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
uTFT2/Bitmap/BitmapFromFlash32b.o: D:/Dropbox/Actual/Drivers/Display/uTFT2/Bitmap/BitmapFromFlash32b.cpp uTFT2/Bitmap/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m3 -std=gnu++14 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"D:/Dropbox/Actual/Drivers/Display/uTFT2" -I"D:/Dropbox/Actual/Drivers/libs/logUART" -I"D:/Dropbox/Actual/Drivers/libs/Micros" -I"D:/Dropbox/Actual/Drivers/Display/uTFT2/FontGFX" -Ofast -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
uTFT2/Bitmap/BitmapFromFlashAlpha.o: D:/Dropbox/Actual/Drivers/Display/uTFT2/Bitmap/BitmapFromFlashAlpha.cpp uTFT2/Bitmap/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m3 -std=gnu++14 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"D:/Dropbox/Actual/Drivers/Display/uTFT2" -I"D:/Dropbox/Actual/Drivers/libs/logUART" -I"D:/Dropbox/Actual/Drivers/libs/Micros" -I"D:/Dropbox/Actual/Drivers/Display/uTFT2/FontGFX" -Ofast -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
uTFT2/Bitmap/BitmapFromFlashBackground16bit.o: D:/Dropbox/Actual/Drivers/Display/uTFT2/Bitmap/BitmapFromFlashBackground16bit.cpp uTFT2/Bitmap/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m3 -std=gnu++14 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"D:/Dropbox/Actual/Drivers/Display/uTFT2" -I"D:/Dropbox/Actual/Drivers/libs/logUART" -I"D:/Dropbox/Actual/Drivers/libs/Micros" -I"D:/Dropbox/Actual/Drivers/Display/uTFT2/FontGFX" -Ofast -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
uTFT2/Bitmap/BitmapFromFlashTransparent.o: D:/Dropbox/Actual/Drivers/Display/uTFT2/Bitmap/BitmapFromFlashTransparent.cpp uTFT2/Bitmap/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m3 -std=gnu++14 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"D:/Dropbox/Actual/Drivers/Display/uTFT2" -I"D:/Dropbox/Actual/Drivers/libs/logUART" -I"D:/Dropbox/Actual/Drivers/libs/Micros" -I"D:/Dropbox/Actual/Drivers/Display/uTFT2/FontGFX" -Ofast -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-uTFT2-2f-Bitmap

clean-uTFT2-2f-Bitmap:
	-$(RM) ./uTFT2/Bitmap/BMPFromFile.cyclo ./uTFT2/Bitmap/BMPFromFile.d ./uTFT2/Bitmap/BMPFromFile.o ./uTFT2/Bitmap/BMPFromFile.su ./uTFT2/Bitmap/BMPFromFile32b.cyclo ./uTFT2/Bitmap/BMPFromFile32b.d ./uTFT2/Bitmap/BMPFromFile32b.o ./uTFT2/Bitmap/BMPFromFile32b.su ./uTFT2/Bitmap/BMPFromFileTransparent.cyclo ./uTFT2/Bitmap/BMPFromFileTransparent.d ./uTFT2/Bitmap/BMPFromFileTransparent.o ./uTFT2/Bitmap/BMPFromFileTransparent.su ./uTFT2/Bitmap/BitmapFromFlash16b.cyclo ./uTFT2/Bitmap/BitmapFromFlash16b.d ./uTFT2/Bitmap/BitmapFromFlash16b.o ./uTFT2/Bitmap/BitmapFromFlash16b.su ./uTFT2/Bitmap/BitmapFromFlash1b.cyclo ./uTFT2/Bitmap/BitmapFromFlash1b.d ./uTFT2/Bitmap/BitmapFromFlash1b.o ./uTFT2/Bitmap/BitmapFromFlash1b.su ./uTFT2/Bitmap/BitmapFromFlash24b.cyclo ./uTFT2/Bitmap/BitmapFromFlash24b.d ./uTFT2/Bitmap/BitmapFromFlash24b.o ./uTFT2/Bitmap/BitmapFromFlash24b.su ./uTFT2/Bitmap/BitmapFromFlash32b.cyclo ./uTFT2/Bitmap/BitmapFromFlash32b.d ./uTFT2/Bitmap/BitmapFromFlash32b.o ./uTFT2/Bitmap/BitmapFromFlash32b.su ./uTFT2/Bitmap/BitmapFromFlashAlpha.cyclo ./uTFT2/Bitmap/BitmapFromFlashAlpha.d ./uTFT2/Bitmap/BitmapFromFlashAlpha.o ./uTFT2/Bitmap/BitmapFromFlashAlpha.su ./uTFT2/Bitmap/BitmapFromFlashBackground16bit.cyclo ./uTFT2/Bitmap/BitmapFromFlashBackground16bit.d ./uTFT2/Bitmap/BitmapFromFlashBackground16bit.o ./uTFT2/Bitmap/BitmapFromFlashBackground16bit.su ./uTFT2/Bitmap/BitmapFromFlashTransparent.cyclo ./uTFT2/Bitmap/BitmapFromFlashTransparent.d ./uTFT2/Bitmap/BitmapFromFlashTransparent.o ./uTFT2/Bitmap/BitmapFromFlashTransparent.su

.PHONY: clean-uTFT2-2f-Bitmap

