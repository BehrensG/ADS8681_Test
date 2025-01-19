#ifndef __SCPI_DEF_H_
#define __SCPI_DEF_H_

#include "DEVICE_INFO.h"
#include "scpi/scpi.h"

// --------------------------------------------------------------------------------------------------------------------

#define SCPI_INPUT_BUFFER_LENGTH 128
#define SCPI_ERROR_QUEUE_SIZE 17
#define SCPI_IDN1 MANUFACTURER
#define SCPI_IDN2 MODEL
#define SCPI_IDN3 "123456789"
#define SCPI_IDN4 SOFTWARE_VERSION

// --------------------------------------------------------------------------------------------------------------------

#define MAX_PART_SAMPLES 1000

// --------------------------------------------------------------------------------------------------------------------

extern const scpi_command_t scpi_commands[];
extern scpi_interface_t scpi_interface;
extern char scpi_input_buffer[];
extern scpi_error_t scpi_error_queue_data[];
extern scpi_interface_t scpi_uart_interface;
extern scpi_t scpi_uart_context;

// --------------------------------------------------------------------------------------------------------------------



void scpi_server_init(void);


#endif /* __SCPI_DEF_H_ */
