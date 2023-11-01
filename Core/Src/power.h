/*
 * power.h
 *
 *  Created on: Nov 1, 2023
 *      Author: user
 */

#ifndef SRC_POWER_H_
#define SRC_POWER_H_

#include "main.h"
#include "ADS1243.h"
#include "GyverButton.h"

GButton key(KEY_GPIO_Port, GPIO_PIN_6);

enum Screen {
	UI, BATTERY
};

class Power {
public:
	//Наряжение на батареях
	float b1;
	float b2;
	float b3;

	float v12; //Общее напряжение на батареях

	float vOut;
	float iOut;

	float v8; //8.4V

	ADS1243 adc;

	TFT *tft;

	Screen screen;

	GPIO_PinState lastKey;

	void tickKey() {

		key.tick();

		if (key.isPress()) {
			if (screen == UI)
				screen = BATTERY;
			else
				screen = UI;
		}

	}

	void tick() {

		if (screen == UI)
			screenUI();
		else
			screenBattery();

	}

	void screenUI() {

		tft->Fill1(0);

		tft->GotoXY(0, 8);
		FontClassicPuts(tft, "UI", &Font_7x10, 0);

		adc.readAllRegister();

		if (adc.ADSregister.SETUP.PGA != PGA_1) {

			adc.setPGA(PGA_1);
			HAL_Delay(1);
			adc.sendCommand(SELFCAL);
			adc.sendCommand(DSYNC);
			HAL_Delay(100);
		}

		readOut();

		readI();

		char str[64];
		tft->GotoXY(0, 35);
		sprintf(str, "vOut  %f", vOut);
		FontClassicPuts(tft, str, &Font_7x10, 0);

		tft->GotoXY(0, 44);
		sprintf(str, "I  %4.1f mA", iOut);
		FontClassicPuts(tft, str, &Font_7x10, 0);

		tft->driver.Update();
	}

	void tickBattery() {
		readB1();
		readB2();
		readB3();
	}

	void screenBattery() {

		adc.readAllRegister();

		if (adc.ADSregister.SETUP.PGA != PGA_1) {

			adc.setPGA(PGA_1);
			HAL_Delay(1);
			adc.sendCommand(SELFCAL);
			adc.sendCommand(DSYNC);
			HAL_Delay(100);
		}

		tickBattery();

		char str[64];

		tft->Fill1(0);

		tft->GotoXY(0, 8);
		sprintf(str, "v12 %f", v12);
		FontClassicPuts(tft, str, &Font_7x10, 0);

		tft->GotoXY(0, 17);
		sprintf(str, "b3  %f", b3);
		FontClassicPuts(tft, str, &Font_7x10, 0);

		tft->GotoXY(0, 26);
		sprintf(str, "b2  %f", b2);
		FontClassicPuts(tft, str, &Font_7x10, 0);

		tft->GotoXY(0, 35);
		sprintf(str, "b1  %f", b1);
		FontClassicPuts(tft, str, &Font_7x10, 0);

		tft->GotoXY(0, 44);
		sprintf(str, "v8  %f", v8);
		FontClassicPuts(tft, str, &Font_7x10, 0);

		tft->driver.Update();
	}

	void readB1(void) {
		uint32_t v = adc.readADC(5, 6);
		b1 = (float) v / (256.0f * 256.0f * 256.0f) * 2.5F * 4.120/2.0202 * 4.119/4.2;
	}

	void readB2() {

		uint32_t v = adc.readADC(4, 6);
		v8 = (float) v / (256.0f * 256.0f * 256.0f) * 2.5F * 8.197/2.1743 * 8.197/8.196 * 8.192/8.191;
		b2 = v8 - b1;
	}

	void readB3(void) {
		uint32_t v = adc.readADC(1, 6);
		v12 = (float) v / (256.0f * 256.0f * 256.0f) * 2.5F * 12.292/2.1478;
		b3 = v12 - v8;
	}

//Чтение выходного напряжения 2-7
	void readOut(void) {
		uint32_t v = adc.readADC(2, 7);
		vOut = (float) v / (256.0f * 256.0f * 256.0f) * 2.5F * 12.0/2.1269 * 3.000/3.004 * 5.0/4.997;
	}

//Чтение тока 7-6
	void readI(void) {
		uint32_t v = adc.readADC(7, 6);
		iOut = (float) v / (256.0f * 256.0f * 256.0f) * 2.5F * 20000.0F - 3.5F;
		if (iOut<0) iOut = 0;
		iOut = iOut;

	}

};

#endif /* SRC_POWER_H_ */