
#ifndef __ADS8681_H_
#define __ADS8681_H_

#include "xparameters.h"	/* XPAR parameters */
#include "xspi.h"		/* SPI device driver */
#include "xspi_l.h"

extern  XSpi SpiInstace;

#define ADS8681_FSR_CENTER	0x8000

typedef union data{
	u32 dword;
	u8 bytes[4];
}ads8681_data;


int ADS8681_Init();
int ADS8681_Readout(XSpi* InstancePtr,ads8681_data* data);


#endif // __ADS8681_H_
