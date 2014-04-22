/**
 * @file    pin_repository.c
 * @brief   I/O pin registry code
 *
 * This job of this class is to make sure that we are not using same hardware pin for two
 * different purposes.
 *
 * @date Jan 15, 2013
 * @author Andrey Belomutskiy, (c) 2012-2014
 */

#include "main.h"
#include "pin_repository.h"
#include "eficonsole.h"
#include "eficonsole_logic.h"
#include "memstreams.h"
#include "chprintf.h"
#include "rusefi.h"

#define PIN_REPO_SIZE 7 * 16
char *PIN_USED[PIN_REPO_SIZE];
static int initialized = FALSE;

static Logging logger;
static int totalPinsUsed = 0;

char *portname(GPIO_TypeDef* GPIOx) {
	if (GPIOx == GPIOA)
		return "PA";
	if (GPIOx == GPIOB)
		return "PB";
	if (GPIOx == GPIOC)
		return "PC";
	if (GPIOx == GPIOD)
		return "PD";
	if (GPIOx == GPIOE)
		return "PE";
	if (GPIOx == GPIOF)
		return "PF";
	if (GPIOx == GPIOH)
		return "PH";
	return "unknown";
}

static int getPortIndex(GPIO_TypeDef* port) {
	if (port == GPIOA)
		return 0;
	if (port == GPIOB)
		return 1;
	if (port == GPIOC)
		return 2;
	if (port == GPIOD)
		return 3;
	if (port == GPIOE)
		return 4;
	if (port == GPIOF)
		return 5;
	if (port == GPIOH)
		return 6;
	fatal("portindex");
	return -1;
}

static void reportPins(void) {
	for (int i = 0; i < PIN_REPO_SIZE; i++) {
		char *name = PIN_USED[i];
		if (name != NULL)
			print("ping %d: %s\r\n", i, name);
	}

	print("Total pins count: %d\r\n", totalPinsUsed);
}

static MemoryStream portNameStream;
static char portNameBuffer[20];

char *hwPortname(brain_pin_e brainPin) {
	GPIO_TypeDef *hwPort = getHwPort(brainPin);
	int hwPin = getHwPin(brainPin);
	portNameStream.eos = 0; // reset
	chprintf((BaseSequentialStream *) &portNameStream, "%s%d", portname(hwPort), hwPin);
	portNameStream.buffer[portNameStream.eos] = 0; // need to terminate explicitly
	return portNameBuffer;
}

void initPinRepository(void) {
	/**
	 * this method cannot use console because this method is invoked before console is initialized
	 */
	initLogging(&logger, "pin repos");

	msObjectInit(&portNameStream, portNameBuffer, sizeof(portNameBuffer), 0);

	for (int i = 0; i < PIN_REPO_SIZE; i++)
		PIN_USED[i] = 0;
	initialized = TRUE;
	addConsoleAction("pins", reportPins);
}

static inline void markUsed(int index, char *msg) {
	PIN_USED[index] = msg;
	totalPinsUsed++;
}

/**
 * This method would set an error condition if pin is already used
 */
void mySetPadMode(char *msg, ioportid_t port, ioportmask_t pin, iomode_t mode) {
	if (!initialized)
		fatal("repo not initialized");
	print("%s on %s:%d\r\n", msg, portname(port), pin);

	appendPrintf(&logger, "msg,%s", msg);
	appendPrintf(&logger, " on %s%d%s", portname(port), pin, DELIMETER);
	printLine(&logger);

	int portIndex = getPortIndex(port);
	int index = portIndex * 16 + pin;

	if (PIN_USED[index] != NULL) {
		firmwareError("Pin %s%d requested by %s but already used by %s", portname(port), pin, msg, PIN_USED[index]);
//		print("!!!!!!!!!!!!! Already used [%s] %d\r\n", msg, pin);
//		print("!!!!!!!!!!!!! Already used by [%s]\r\n", PIN_USED[index]);
//		fatal("pin already used");
		return;
	}
	markUsed(index, msg);

	palSetPadMode(port, pin, mode);
}

/**
 * This method would crash the program if pin is already in use
 */
void registedFundamentralIoPin(char *msg, ioportid_t port, ioportmask_t pin, iomode_t mode) {
	if (!initialized)
		fatal("repo not initialized");

	int portIndex = getPortIndex(port);
	int index = portIndex * 16 + pin;

	if (PIN_USED[index] != NULL) {
		print("!!!!!!!!!!!!! Already used [%s] %d\r\n", msg, pin);
		print("!!!!!!!!!!!!! Already used by [%s]\r\n", PIN_USED[index]);
		fatal("pin already used");
	}
	markUsed(index, msg);
	palSetPadMode(port, pin, mode);
}
