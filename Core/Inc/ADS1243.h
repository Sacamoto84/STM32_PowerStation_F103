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

#define ADS124x_NUM_REG 16

#define ADS124x_CS_0 HAL_GPIO_WritePin(SPI1_CS_GPIO_Port, SPI1_CS_Pin, GPIO_PIN_RESET)
#define ADS124x_CS_1 HAL_GPIO_WritePin(SPI1_CS_GPIO_Port, SPI1_CS_Pin, GPIO_PIN_SET)

typedef struct {
	uint8_t SETUP;
	uint8_t MUX;
	uint8_t ACR;
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

class ADS1243 {
public:

	ADS124xRegister ADSregister;

	uint32_t ValueData;

	// Получить байт, одновременно отправить данные
	unsigned char XferByte(uint8_t txData)
	{
		uint8_t rxData;
		while(hspi1.State == HAL_SPI_STATE_BUSY);
		HAL_StatusTypeDef s = HAL_SPI_TransmitReceive( &hspi1, &txData, &rxData, 1, 1000);
		return (unsigned char) rxData;
	}


	void readAllRegister()
	{
		ADS124x_CS_0;
		HAL_Delay(1);

		XferByte(0x10);
		XferByte(15);

		ADSregister.SETUP = XferByte(0);
		ADSregister.MUX=XferByte(0);
		ADSregister.ACR=XferByte(0);
		ADSregister.ODAC=XferByte(0);
		ADSregister.DIO=XferByte(0);
		ADSregister.DIR=XferByte(0);
		ADSregister.IOCON=XferByte(0);
		ADSregister.OCR0=XferByte(0);
		ADSregister.OCR1=XferByte(0);
		ADSregister.OCR2=XferByte(0);
		ADSregister.FSR0=XferByte(0);
		ADSregister.FSR1=XferByte(0);
		ADSregister.FSR2=XferByte(0);
		ADSregister.DOR2=XferByte(0);
		ADSregister.DOR1=XferByte(0);
		ADSregister.DOR0=XferByte(0);
		HAL_Delay(1);
		ADS124x_CS_1;

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
