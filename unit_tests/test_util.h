/**
 * @file	test_cyclic_buffer.h
 *
 * @date Dec 8, 2013
 * @author Andrey Belomutskiy, (c) 2012-2013
 */

#ifndef TEST_CYCLIC_BUFFER_H_
#define TEST_CYCLIC_BUFFER_H_

#ifdef __cplusplus
extern "C"
{
#endif /* __cplusplus */

void testCrc(void);
void testCyclicBuffer(void);
void testOverflow64Counter(void);
void testHistogram(void);
void testMalfunctionCentral(void);
void testConsoleLogic(void);
void testGpsParser(void);
void testFLStack(void);

#ifdef __cplusplus
}
#endif /* __cplusplus */


#endif /* TEST_CYCLIC_BUFFER_H_ */
