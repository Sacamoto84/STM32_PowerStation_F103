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
#include "power.h"
#include "tim.h"

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
Power power;
classLog Log;


extern "C" void TIM1_UP_IRQHandler(void)
{
  /* USER CODE BEGIN TIM1_UP_IRQn 0 */
	power.tickKey();


  /* USER CODE END TIM1_UP_IRQn 0 */
  HAL_TIM_IRQHandler(&htim1);
  /* USER CODE BEGIN TIM1_UP_IRQn 1 */

  /* USER CODE END TIM1_UP_IRQn 1 */
}


extern "C" void setup() {
	HAL_Delay(100);
	DWT_Init();

	tft.init(&LCD_0);
	tft.Fill1(0);
	tft.driver.Update();
	tft.SetFontColor(1, 0);
	//tft.GotoXY(20, 20);
	//FontClassicPuts(&tft, (char*) "1111", &Font_7x10, 0);
	//tft.LineH(10, 10, 50, 1);
	//tft.driver.Update();

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

	power.tft = &tft;
    power.init();

	power.adc.sendCommand(RESET);
	power.adc.sendCommand(STOPC);
	//adc.sendCommand(DSYNC);

	power.adc.sendCommand(SELFCAL);
	power.adc.sendCommand(DSYNC);
	HAL_Delay(100);

	power.adc.writeRegister(2, 0x40);


	HAL_TIM_Base_Start_IT(&htim1);

	loop();
}






void loop() {
	while (1) {

		power.tick();


//		adc.readAllRegister();
//
//		adc.setPGA(PGA_1);
//		adc.setPSEL(5);
//		adc.setNSEL(6);
//		v = (adc.ADSregister.DOR2<<16) | (adc.ADSregister.DOR1<<8) | adc.ADSregister.DOR0;
//		v5_6 = (float)v / (256.0f*256.0f*256.0f);
//
//
		//adc.setPGA(PGA_1);
		//adc.sendCommand(SELFCAL);
		//adc.sendCommand(DSYNC);
		//HAL_Delay(50);

//////////////////////////////

		//adc.setPGA(PGA_8);

		//adc.sendCommand(SELFCAL);
		//adc.sendCommand(DSYNC);
		//HAL_Delay(100);


		//
		//			HAL_Delay(0);
//		v = (adc.ADSregister.DOR2<<16) | (adc.ADSregister.DOR1<<8) | adc.ADSregister.DOR0;
//		v4_6 = (float)v / (256.0f*256.0f*256.0f);
//
//
//		char str[64];
//		tft.GotoXY(0, 8);
//		sprintf(str, "b1 %.3f", power.b1);
//		FontClassicPuts(&tft, str, &Font_7x10, 0);
//
//		tft.GotoXY(0, 16);
//		sprintf(str, "b2 %.3f", power.b2);
//		FontClassicPuts(&tft, str, &Font_7x10, 0);
//
//		tft.GotoXY(0, 24);
//		sprintf(str, "b3 %.3f", power.b2);
//		FontClassicPuts(&tft, str, &Font_7x10, 0);
//
//		tft.GotoXY(0, 32);
//		sprintf(str, "v12 %.3f", power.v12);
//		FontClassicPuts(&tft, str, &Font_7x10, 0);
//
//		tft.GotoXY(0, 40);
//		sprintf(str, "v8 %.3f", power.v8);
//		FontClassicPuts(&tft, str, &Font_7x10, 0);
//
//		tft.GotoXY(0, 49);
//		sprintf(str, "vout %.3f ", power.vOut);
//		FontClassicPuts(&tft, str, &Font_7x10, 0);
//
//		tft.GotoXY(64, 49);
//		sprintf(str, "%4.0fmA ", power.iOut);
//		FontClassicPuts(&tft, str, &Font_7x10, 0);
//
//		tft.driver.Update();


	}

}
