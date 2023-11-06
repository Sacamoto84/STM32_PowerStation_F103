//	        ╔════╗
//     GND ─╢0  3╟─ GND    B1  5-6
//     B3  ─╢1  2╟─ OUT    B2  4-6
//     B2  ─╢4  7╟─ I      B3  1-6
//     B1  ─╢5  6╟─ GND    OUT 2-7
//          ╚════╝         I   7-6

//
//
//
//
//
//
//
//
//

#ifndef SRC_POWER_H_
#define SRC_POWER_H_

#include <gfx_fonts_includes.h>
#include "main.h"
#include "ADS1243.h"
#include "GyverButton.h"

#include "FontGFX/gfxfont.h"

GButton key(KEY_GPIO_Port, GPIO_PIN_6);
GButton keyC(GPIOB, GPIO_PIN_15);
GFXFONT gfxfont;

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

	GPIO_PinState keyC;

	void init() {
		gfxfont.init(tft);
	}

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

		tft->Rectangle(0, 0, 127, 63, 1);
		tft->LineHW(1, 47, 126, 1);

		///////////////////////////////////////////////
		gfxfont.setFont(&DejaVu_Sans_Mono_Bold_24);
		gfxfont.set_delta_x(2);

		tft->GotoXY(109, 22);

		gfxfont.Puts((char*) "V");
		tft->GotoXY(109, 44);
		gfxfont.Puts((char*) "A");

		sprintf(str, "%6.3f", vOut);
		tft->GotoXY(12, 22);
		gfxfont.Puts(str);

		sprintf(str, "%6.3f", iOut / 1000.0F);
		tft->GotoXY(12, 44);
		gfxfont.Puts(str);
		///////////////////////////////////////////////

		tft->LineV(63, 48, 63, 1);

		gfxfont.setFont(&FreeMono9pt7b);
		gfxfont.set_delta_x(-3);
		tft->GotoXY(2, 60);
		gfxfont.Puts((char*) "P");

		tft->GotoXY(64, 60);
		gfxfont.Puts((char*) "R");

		gfxfont.setFont(&FreeMono9pt7bNew);
		gfxfont.set_delta_x(-2);
		float power = vOut * iOut / 1000.0F;

		float cc1, dc1;
		///////////////////////////////////////////////
		dc1 = modff(power, &cc1);
		tft->GotoXY(21, 60);
		if (cc1 < 100) {
			if (cc1 < 10.0F) {
				sprintf(str, "%d .%03d", (int) cc1, (int) (dc1 * 1000));
			} else {
				sprintf(str, "%d .%03d", (int) cc1, (int) (dc1 * 1000));
				tft->GotoXY(13, 60);
			}
		} else
			sprintf(str, "%d .%01d", (int) cc1, (int) (dc1 * 10));
		gfxfont.Puts(str);
		///////////////////////////////////////////////
		float R = vOut / (iOut / 1000.0F);

		if (R < 20000) {
			dc1 = modff(R, &cc1);
			//sprintf(str, "%d .%2d", (int) cc1, (int) (dc1 * 10));

			if (R > 10000.0f){
			tft->GotoXY(80, 60);
			sprintf(str, "%.0f", R);
			}
			else
			{
				tft->GotoXY(78, 60);
							sprintf(str, "%.1f", R);
			}

			gfxfont.Puts(str);
		} else {
			gfxfont.setFont(&FreeMono9pt7b);
			gfxfont.set_delta_x(-2);
			sprintf(str, "INF");
			tft->GotoXY(98, 60);
			gfxfont.Puts(str);
		}

		if (HAL_GPIO_ReadPin(GPIOB, GPIO_PIN_15) == GPIO_PIN_SET) {
			tft->GotoXY(2, 4);
			sprintf(str, "CV", iOut);
			FontClassicPuts(tft, str, &Font_11x18, 0);
		}

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

		tft->GotoXY(64, 2);
		sprintf(str, "%2.3f", v12);
		FontClassicPuts(tft, str, &Font_11x18, 0);

		uint8_t x = 2;
		tft->GotoXY(x, 2);
		sprintf(str, "%.4f", b3);
		FontClassicPuts(tft, str, &Font_11x18, 0);

		tft->GotoXY(x, 23);
		sprintf(str, "%.4f", b2);
		FontClassicPuts(tft, str, &Font_11x18, 0);

		tft->GotoXY(x, 45);
		sprintf(str, "%.4f", b1);
		FontClassicPuts(tft, str, &Font_11x18, 0);

		tft->GotoXY(65, 53);
		sprintf(str, "v8  %.4f", v8);
		FontClassicPuts(tft, str, &Font_7x10, 0);

		tft->Rectangle(0, 0, 127, 63, 1);
		tft->LineV(63, 1, 63, 1);
		tft->LineHW(1, 20, 63, 1);
        tft->LineHW(1, 42, 63, 1);

		tft->driver.Update();
	}

	void readB1(void) {
		uint32_t v = adc.readADC(5, 6);
		b1 = (float) v / (256.0f * 256.0f * 256.0f) * 2.5F * 4.120 / 2.0202
				* 4.119 / 4.2;
	}

	void readB2() {

		uint32_t v = adc.readADC(4, 6);
		v8 = (float) v / (256.0f * 256.0f * 256.0f) * 2.5F * 8.197 / 2.1743
				* 8.197 / 8.196 * 8.192 / 8.191 * 8.090/8.092;
		b2 = v8 - b1;
	}

	void readB3(void) {
		uint32_t v = adc.readADC(1, 6);
		v12 = (float) v / (256.0f * 256.0f * 256.0f) * 2.5F * 12.292 / 2.1478 * 12.143/12.146 *12.150/12.147;
		b3 = v12 - v8;
	}

//Чтение выходного напряжения 2-7
	void readOut(void) {
		uint32_t v = adc.readADC(2, 0);
		vOut = (float) v / (256.0f * 256.0f * 256.0f) * 2.5F * 12.0 / 2.1269
				* 3.000 / 3.004 * 5.0 / 4.997;

		//vOut = map(vOut, 1.2532, 11.004 , 1.2530, 11.015);
		vOut -= (iOut) * 0.00008;

	}

//Чтение тока 7-6
	void readI(void) {
		uint32_t v = adc.readADC(7, 6);
		iOut = (float) v / (256.0f * 256.0f * 256.0f) * 2.5F * 20000.0F;
		if (iOut < 0)
			iOut = 0;
		iOut = map(iOut, 3.5F, 996.0f, 0.0f, 996.00f); // - 3.5F;

	}

	long map(float x, float in_min, float in_max, float out_min,
			float out_max) {
		return (x - in_min) * (out_max - out_min) / (in_max - in_min) + out_min;
	}

};

#endif /* SRC_POWER_H_ */
