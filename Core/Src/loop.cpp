/*
 * loop.cpp
 *
 *  Created on: Oct 29, 2023
 *      Author: user
 */

#include "main.h"
#include "TFT.h"
#include "i2c.h"
#include "FontClassic/FontClassic.h"

#include "ADS1243.h"
#include "spi.h"

#include "logUART.h"
#include "usart.h"

#include "micros.h"



void loop();

//SSD1306 128 64 1 bit
uint8_t LCD_Buffer[128 * 8];
TFT_LCD_t LCD_0 = { 128,                  // Ширина экрана
		64,                   // Высота экрана
		SSD1306,              // Драйвер
		1,                    // bit
		NULL,                 // notUse (SPI)
		&hi2c2,	               // I2C
		0x78,                 // адресс
		NULL,                 // 16  бит буффер
		&LCD_Buffer[0],       // !16 бит буффер
		};

TFT tft;

ADS1243 adc;

classLog Log;

extern "C" void setup() {

	DWT_Init();

	tft.init(&LCD_0);
	tft.Fill1(0);
	tft.driver.Update();
	tft.SetFontColor(1, 0);
	tft.GotoXY(20, 20);
	FontClassicPuts(&tft, (char*) "1111", &Font_7x10, 0);
	tft.LineH(10, 10, 50, 1);
	tft.driver.Update();

	Log.init(&huart1);
	Log.i("Start");

//	Log.println("SETUP 00h %d", adc.readRegister(0));
//	Log.println("MUX   01h %d", adc.readRegister(1));
//	Log.println("ACR   02h %d", adc.readRegister(2));
//	Log.println("ODAC  03h %d", adc.readRegister(3));
//	Log.println("DIO   04h %d", adc.readRegister(4));
//	Log.println("DIR   05h %d", adc.readRegister(5));
//	Log.println("IOCON 06h %d", adc.readRegister(6));
//	Log.println("OCR0  07h %d", adc.readRegister(7));
//	Log.println("OCR1  08h %d", adc.readRegister(8));
//	Log.println("OCR2  09h %d", adc.readRegister(9));
//	Log.println("FSR0  0Ah %d", adc.readRegister(10));
//	Log.println("FSR1  0Bh %d", adc.readRegister(11));
//	Log.println("FSR2  0Ch %d", adc.readRegister(12));
//	Log.println("DOR2  0Dh %d", adc.readRegister(13));
//	Log.println("DOR1  0Eh %d", adc.readRegister(14));
//	Log.println("DOR0  0Fh %d", adc.readRegister(15));




	loop();
}
uint32_t v;
float v1;
void loop() {
	while (1) {

		adc.readAllRegister();

		v = (adc.ADSregister.DOR2<<16) | (adc.ADSregister.DOR1<<8) | adc.ADSregister.DOR0;
        v1 = (float)v / (256.0f*256.0f*256.0f);

        adc.setPSEL(5);
        adc.setNSEL(6);

        adc.setPGA(PGA_128);

        adc.readAllRegister();

        adc.setPGA(PGA_4);

        adc.setPSEL(1);
        adc.setNSEL(4);

        adc.readAllRegister();

		//Log.clear();
		Log.println("----");
		Log.println("SETUP 00h %d", adc.ADSregister.SETUP);
//		Log.println("MUX   01h %d", adc.readRegister(1));
//		Log.println("ACR   02h %d", adc.readRegister(2));
//		Log.println("ODAC  03h %d", adc.readRegister(3));
//		Log.println("DIO   04h %d", adc.readRegister(4));
//		Log.println("DIR   05h %d", adc.readRegister(5));
//		Log.println("IOCON 06h %d", adc.readRegister(6));
//		Log.println("OCR0  07h %d", adc.readRegister(7));
//		Log.println("OCR1  08h %d", adc.readRegister(8));
//		Log.println("OCR2  09h %d", adc.readRegister(9));
//		Log.println("FSR0  0Ah %d", adc.readRegister(10));
//		Log.println("FSR1  0Bh %d", adc.readRegister(11));
//		Log.println("FSR2  0Ch %d", adc.readRegister(12));
//		Log.println("DOR2  0Dh %d", adc.readRegister(13));
//		Log.println("DOR1  0Eh %d", adc.readRegister(14));
//		Log.println("DOR0  0Fh %d", adc.readRegister(15));

		HAL_Delay(1);

	}

}
