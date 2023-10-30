/*
 * ADS1243.h
 *
 *  Created on: Oct 29, 2023
 *      Author: user
 */

#ifndef INC_ADS1243_H_
#define INC_ADS1243_H_

#include "main.h"
#include "gpio.h"
#include "spi.h"
#include "micros.h"

#define ADS124x_NUM_REG 16

#define ADS124x_CS_0 HAL_GPIO_WritePin(SPI1_CS_GPIO_Port, SPI1_CS_Pin, GPIO_PIN_RESET)
#define ADS124x_CS_1 HAL_GPIO_WritePin(SPI1_CS_GPIO_Port, SPI1_CS_Pin, GPIO_PIN_SET)

typedef struct {
	uint8_t DR0 :1; //    00 = 15Hz (default) 01 = 7.5Hz 10 = 3.75Hz 11 = Reserved
	uint8_t DR1 :1;        //
	uint8_t RANGE :1; //2 0 = Full-Scale Output Range Equal to ±VREF(default). 1 = Full-Scale Output Range Equal to ±1/2 VREF
	uint8_t BITORDER :1;   //3 0 = MSB(default) 1 = LSB
	uint8_t BUFFER :1;     //4 0 = Buffer Disabled (default) 1 = Buffer Enabled
	uint8_t SPEED :1;      //5 0 = fMOD = fOSC/128 (default) 1 = fMOD = fOSC/256
	uint8_t DataFormat :1; //6 0 = Bipolar (default) 1 = Unipolar
	uint8_t DRDY :1;       //7
} acr;

//#pragma pack(push,1)
typedef struct {
	uint8_t NSEL :4;        //    0000 = AIN0 (default)
	uint8_t PSEL :4;        //    0001 = AIN1 (default)
} mux;
//#pragma pack(pop)

typedef struct {
	uint8_t PGA :3;
	uint8_t BOCS :1;
	uint8_t ID :4;
} _setup;

typedef struct {
	_setup SETUP;
	mux MUX;
	acr ACR;
	uint8_t ODAC;
	uint8_t DIO;
	uint8_t DIR;
	uint8_t IOCON;
	uint8_t OCR0;
	uint8_t OCR1;
	uint8_t OCR2;
	uint8_t FSR0;
	uint8_t FSR1;
	uint8_t FSR2;
	uint8_t DOR2;
	uint8_t DOR1;
	uint8_t DOR0;
} ADS124xRegister;

typedef enum {
	PGA_1 = 0x00U, /*!< Peripheral not Initialized                         */
	PGA_2 = 0x01U, /*!< Peripheral Initialized and ready for use           */
	PGA_4 = 0x02U, /*!< an internal process is ongoing                     */
	PGA_8 = 0x03U, /*!< Data Transmission process is ongoing               */
	PGA_16 = 0x04U, /*!< Data Reception process is ongoing                  */
	PGA_32 = 0x05U, /*!< Data Transmission and Reception process is ongoing */
	PGA_64 = 0x06U, /*!< SPI error state                                    */
	PGA_128 = 0x07U /*!< SPI abort is ongoing                               */
} _PGA;

class ADS1243 {
public:

	ADS124xRegister ADSregister;

	uint32_t ValueData;

	// Получить байт, одновременно отправить данные
	unsigned char XferByte(uint8_t txData) {
		uint8_t rxData;
		while (hspi1.State == HAL_SPI_STATE_BUSY)
			;
		HAL_SPI_TransmitReceive(&hspi1, &txData, &rxData, 1, 1000);
		return (unsigned char) rxData;
	}

	void writeRegister(uint8_t r, uint8_t data) {
		ADS124x_CS_0;
		delayMicroseconds(20);
		XferByte(0x50 + r);
		XferByte(0);
		XferByte(data);
		delayMicroseconds(20);
		ADS124x_CS_1;

	}

	void readAllRegister() {
		ADS124x_CS_0;
		//HAL_Delay(1);
		delayMicroseconds(20);

		XferByte(0x10);
		XferByte(15);

		readSETUP(XferByte(0));
		readMUX(XferByte(0));
		readACR(XferByte(0));

		ADSregister.ODAC = XferByte(0);
		ADSregister.DIO = XferByte(0);
		ADSregister.DIR = XferByte(0);
		ADSregister.IOCON = XferByte(0);
		ADSregister.OCR0 = XferByte(0);
		ADSregister.OCR1 = XferByte(0);
		ADSregister.OCR2 = XferByte(0);
		ADSregister.FSR0 = XferByte(0);
		ADSregister.FSR1 = XferByte(0);
		ADSregister.FSR2 = XferByte(0);
		ADSregister.DOR2 = XferByte(0);
		ADSregister.DOR1 = XferByte(0);
		ADSregister.DOR0 = XferByte(0);

		delayMicroseconds(20);

		ADS124x_CS_1;

	}

	uint8_t read_bit(uint8_t value, int pos) {
		return (value >> pos) & 1;
	}

	//PGA
	void setPGA(_PGA pga)
	{
		ADSregister.SETUP.PGA = pga;
	    uint8_t p = (ADSregister.SETUP.ID << 4) | (ADSregister.SETUP.BOCS << 3) |  ADSregister.SETUP.PGA;
		writeRegister(0, p);
	}

	//PN Sel----------------------------------
	void setPNSel(uint8_t p, uint8_t n) {
		ADSregister.MUX.PSEL = p;
		ADSregister.MUX.NSEL = n;
		writeRegister(1, (ADSregister.MUX.PSEL << 4) | ADSregister.MUX.NSEL);
	}

	void setPSEL(uint8_t value) {
		ADSregister.MUX.PSEL = value;
		uint8_t r = (ADSregister.MUX.PSEL << 4) | ADSregister.MUX.NSEL;
		writeRegister(1, r);
	}

	void setNSEL(uint8_t value) {
		ADSregister.MUX.NSEL = value;
		uint8_t r = (ADSregister.MUX.PSEL << 4) | ADSregister.MUX.NSEL;
		writeRegister(1, r);
	}

private:

	void readSETUP(uint8_t p) {
		ADSregister.SETUP.PGA = p & 0x7;
		ADSregister.SETUP.BOCS = (p >> 3) & 0x1;
		ADSregister.SETUP.ID = p >> 4;
	}

	void readMUX(uint8_t p) {
		ADSregister.MUX.NSEL = p & 0x0F;
		ADSregister.MUX.PSEL = (uint8_t) ((p >> 4) & 0x0F);
	}

	void readACR(uint8_t p) {
		ADSregister.ACR.DR0 = read_bit(p, 0);
		ADSregister.ACR.DR1 = read_bit(p, 1);
		ADSregister.ACR.RANGE = read_bit(p, 2);
		ADSregister.ACR.BITORDER = read_bit(p, 3);
		ADSregister.ACR.BUFFER = read_bit(p, 4);
		ADSregister.ACR.SPEED = read_bit(p, 5);
		ADSregister.ACR.DataFormat = read_bit(p, 6);
		ADSregister.ACR.DRDY = read_bit(p, 7);
	}
};

#endif /* INC_ADS1243_H_ */

//SETUP (00h)
//ID
//ID
//ID
//ID
//BOCS  BOCS: Burnout Current Source  [ 0 = Disabled (default) | 1 = Enabled]
//PGA2
//PGA1
//PGA0

//	bit 2-0 PGA2: PGA1: PGA0: Programmable Gain Amplifier
//	Gain Selection
//	000 = 1 (default)
//	001 = 2
//	010 = 4
//	011 = 8
//	100 = 16
//	101 = 32
//	110 = 64
//	111 = 128
