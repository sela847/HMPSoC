/*
 * system.h - SOPC Builder system and BSP software package information
 *
 * Machine generated for CPU 'cpu' in SOPC Builder design 'Nios_System_2A'
 * SOPC Builder design path: ../../Nios_System_2A.sopcinfo
 *
 * Generated: Tue Jun 04 11:22:47 NZST 2024
 */

/*
 * DO NOT MODIFY THIS FILE
 *
 * Changing this file will have subtle consequences
 * which will almost certainly lead to a nonfunctioning
 * system. If you do modify this file, be aware that your
 * changes will be overwritten and lost when this file
 * is generated again.
 *
 * DO NOT MODIFY THIS FILE
 */

/*
 * License Agreement
 *
 * Copyright (c) 2008
 * Altera Corporation, San Jose, California, USA.
 * All rights reserved.
 *
 * Permission is hereby granted, free of charge, to any person obtaining a
 * copy of this software and associated documentation files (the "Software"),
 * to deal in the Software without restriction, including without limitation
 * the rights to use, copy, modify, merge, publish, distribute, sublicense,
 * and/or sell copies of the Software, and to permit persons to whom the
 * Software is furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
 * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
 * DEALINGS IN THE SOFTWARE.
 *
 * This agreement shall be governed in all respects by the laws of the State
 * of California and by the laws of the United States of America.
 */

#ifndef __SYSTEM_H_
#define __SYSTEM_H_

/* Include definitions from linker script generator */
#include "linker.h"


/*
 * CPU configuration
 *
 */

#define ALT_CPU_ARCHITECTURE "altera_nios2_gen2"
#define ALT_CPU_BIG_ENDIAN 0
#define ALT_CPU_BREAK_ADDR 0x00080820
#define ALT_CPU_CPU_ARCH_NIOS2_R1
#define ALT_CPU_CPU_FREQ 50000000u
#define ALT_CPU_CPU_ID_SIZE 1
#define ALT_CPU_CPU_ID_VALUE 0x00000001
#define ALT_CPU_CPU_IMPLEMENTATION "fast"
#define ALT_CPU_DATA_ADDR_WIDTH 0x14
#define ALT_CPU_DCACHE_BYPASS_MASK 0x80000000
#define ALT_CPU_DCACHE_LINE_SIZE 32
#define ALT_CPU_DCACHE_LINE_SIZE_LOG2 5
#define ALT_CPU_DCACHE_SIZE 4096
#define ALT_CPU_EXCEPTION_ADDR 0x00040020
#define ALT_CPU_FLASH_ACCELERATOR_LINES 0
#define ALT_CPU_FLASH_ACCELERATOR_LINE_SIZE 0
#define ALT_CPU_FLUSHDA_SUPPORTED
#define ALT_CPU_FREQ 50000000
#define ALT_CPU_HARDWARE_DIVIDE_PRESENT 0
#define ALT_CPU_HARDWARE_MULTIPLY_PRESENT 1
#define ALT_CPU_HARDWARE_MULX_PRESENT 0
#define ALT_CPU_HAS_DEBUG_CORE 1
#define ALT_CPU_HAS_DEBUG_STUB
#define ALT_CPU_HAS_EXTRA_EXCEPTION_INFO
#define ALT_CPU_HAS_ILLEGAL_INSTRUCTION_EXCEPTION
#define ALT_CPU_HAS_JMPI_INSTRUCTION
#define ALT_CPU_ICACHE_LINE_SIZE 32
#define ALT_CPU_ICACHE_LINE_SIZE_LOG2 5
#define ALT_CPU_ICACHE_SIZE 8192
#define ALT_CPU_INITDA_SUPPORTED
#define ALT_CPU_INST_ADDR_WIDTH 0x14
#define ALT_CPU_NAME "cpu"
#define ALT_CPU_NUM_OF_SHADOW_REG_SETS 0
#define ALT_CPU_OCI_VERSION 1
#define ALT_CPU_RESET_ADDR 0x00040000


/*
 * CPU configuration (with legacy prefix - don't use these anymore)
 *
 */

#define NIOS2_BIG_ENDIAN 0
#define NIOS2_BREAK_ADDR 0x00080820
#define NIOS2_CPU_ARCH_NIOS2_R1
#define NIOS2_CPU_FREQ 50000000u
#define NIOS2_CPU_ID_SIZE 1
#define NIOS2_CPU_ID_VALUE 0x00000001
#define NIOS2_CPU_IMPLEMENTATION "fast"
#define NIOS2_DATA_ADDR_WIDTH 0x14
#define NIOS2_DCACHE_BYPASS_MASK 0x80000000
#define NIOS2_DCACHE_LINE_SIZE 32
#define NIOS2_DCACHE_LINE_SIZE_LOG2 5
#define NIOS2_DCACHE_SIZE 4096
#define NIOS2_EXCEPTION_ADDR 0x00040020
#define NIOS2_FLASH_ACCELERATOR_LINES 0
#define NIOS2_FLASH_ACCELERATOR_LINE_SIZE 0
#define NIOS2_FLUSHDA_SUPPORTED
#define NIOS2_HARDWARE_DIVIDE_PRESENT 0
#define NIOS2_HARDWARE_MULTIPLY_PRESENT 1
#define NIOS2_HARDWARE_MULX_PRESENT 0
#define NIOS2_HAS_DEBUG_CORE 1
#define NIOS2_HAS_DEBUG_STUB
#define NIOS2_HAS_EXTRA_EXCEPTION_INFO
#define NIOS2_HAS_ILLEGAL_INSTRUCTION_EXCEPTION
#define NIOS2_HAS_JMPI_INSTRUCTION
#define NIOS2_ICACHE_LINE_SIZE 32
#define NIOS2_ICACHE_LINE_SIZE_LOG2 5
#define NIOS2_ICACHE_SIZE 8192
#define NIOS2_INITDA_SUPPORTED
#define NIOS2_INST_ADDR_WIDTH 0x14
#define NIOS2_NUM_OF_SHADOW_REG_SETS 0
#define NIOS2_OCI_VERSION 1
#define NIOS2_RESET_ADDR 0x00040000


/*
 * Define for each module class mastered by the CPU
 *
 */

#define __ALTERA_AVALON_JTAG_UART
#define __ALTERA_AVALON_ONCHIP_MEMORY2
#define __ALTERA_AVALON_PIO
#define __ALTERA_NIOS2_GEN2


/*
 * System configuration
 *
 */

#define ALT_DEVICE_FAMILY "Cyclone V"
#define ALT_ENHANCED_INTERRUPT_API_PRESENT
#define ALT_IRQ_BASE NULL
#define ALT_LOG_PORT "/dev/null"
#define ALT_LOG_PORT_BASE 0x0
#define ALT_LOG_PORT_DEV null
#define ALT_LOG_PORT_TYPE ""
#define ALT_NUM_EXTERNAL_INTERRUPT_CONTROLLERS 0
#define ALT_NUM_INTERNAL_INTERRUPT_CONTROLLERS 1
#define ALT_NUM_INTERRUPT_CONTROLLERS 1
#define ALT_STDERR "/dev/jtag_uart"
#define ALT_STDERR_BASE 0x81090
#define ALT_STDERR_DEV jtag_uart
#define ALT_STDERR_IS_JTAG_UART
#define ALT_STDERR_PRESENT
#define ALT_STDERR_TYPE "altera_avalon_jtag_uart"
#define ALT_STDIN "/dev/jtag_uart"
#define ALT_STDIN_BASE 0x81090
#define ALT_STDIN_DEV jtag_uart
#define ALT_STDIN_IS_JTAG_UART
#define ALT_STDIN_PRESENT
#define ALT_STDIN_TYPE "altera_avalon_jtag_uart"
#define ALT_STDOUT "/dev/jtag_uart"
#define ALT_STDOUT_BASE 0x81090
#define ALT_STDOUT_DEV jtag_uart
#define ALT_STDOUT_IS_JTAG_UART
#define ALT_STDOUT_PRESENT
#define ALT_STDOUT_TYPE "altera_avalon_jtag_uart"
#define ALT_SYSTEM_NAME "Nios_System_2A"


/*
 * addr configuration
 *
 */

#define ADDR_BASE 0x81060
#define ADDR_BIT_CLEARING_EDGE_REGISTER 0
#define ADDR_BIT_MODIFYING_OUTPUT_REGISTER 0
#define ADDR_CAPTURE 0
#define ADDR_DATA_WIDTH 8
#define ADDR_DO_TEST_BENCH_WIRING 0
#define ADDR_DRIVEN_SIM_VALUE 0
#define ADDR_EDGE_TYPE "NONE"
#define ADDR_FREQ 50000000
#define ADDR_HAS_IN 0
#define ADDR_HAS_OUT 1
#define ADDR_HAS_TRI 0
#define ADDR_IRQ -1
#define ADDR_IRQ_INTERRUPT_CONTROLLER_ID -1
#define ADDR_IRQ_TYPE "NONE"
#define ADDR_NAME "/dev/addr"
#define ADDR_RESET_VALUE 0
#define ADDR_SPAN 16
#define ADDR_TYPE "altera_avalon_pio"
#define ALT_MODULE_CLASS_addr altera_avalon_pio


/*
 * hal configuration
 *
 */

#define ALT_INCLUDE_INSTRUCTION_RELATED_EXCEPTION_API
#define ALT_MAX_FD 32
#define ALT_SYS_CLK none
#define ALT_TIMESTAMP_CLK none


/*
 * jtag_uart configuration
 *
 */

#define ALT_MODULE_CLASS_jtag_uart altera_avalon_jtag_uart
#define JTAG_UART_BASE 0x81090
#define JTAG_UART_IRQ 1
#define JTAG_UART_IRQ_INTERRUPT_CONTROLLER_ID 0
#define JTAG_UART_NAME "/dev/jtag_uart"
#define JTAG_UART_READ_DEPTH 64
#define JTAG_UART_READ_THRESHOLD 8
#define JTAG_UART_SPAN 8
#define JTAG_UART_TYPE "altera_avalon_jtag_uart"
#define JTAG_UART_WRITE_DEPTH 64
#define JTAG_UART_WRITE_THRESHOLD 8


/*
 * onchip_memory configuration
 *
 */

#define ALT_MODULE_CLASS_onchip_memory altera_avalon_onchip_memory2
#define ONCHIP_MEMORY_ALLOW_IN_SYSTEM_MEMORY_CONTENT_EDITOR 0
#define ONCHIP_MEMORY_ALLOW_MRAM_SIM_CONTENTS_ONLY_FILE 0
#define ONCHIP_MEMORY_BASE 0x40000
#define ONCHIP_MEMORY_CONTENTS_INFO ""
#define ONCHIP_MEMORY_DUAL_PORT 0
#define ONCHIP_MEMORY_GUI_RAM_BLOCK_TYPE "AUTO"
#define ONCHIP_MEMORY_INIT_CONTENTS_FILE "Nios_System_2A_onchip_memory"
#define ONCHIP_MEMORY_INIT_MEM_CONTENT 1
#define ONCHIP_MEMORY_INSTANCE_ID "NONE"
#define ONCHIP_MEMORY_IRQ -1
#define ONCHIP_MEMORY_IRQ_INTERRUPT_CONTROLLER_ID -1
#define ONCHIP_MEMORY_NAME "/dev/onchip_memory"
#define ONCHIP_MEMORY_NON_DEFAULT_INIT_FILE_ENABLED 0
#define ONCHIP_MEMORY_RAM_BLOCK_TYPE "AUTO"
#define ONCHIP_MEMORY_READ_DURING_WRITE_MODE "DONT_CARE"
#define ONCHIP_MEMORY_SINGLE_CLOCK_OP 0
#define ONCHIP_MEMORY_SIZE_MULTIPLE 1
#define ONCHIP_MEMORY_SIZE_VALUE 160000
#define ONCHIP_MEMORY_SPAN 160000
#define ONCHIP_MEMORY_TYPE "altera_avalon_onchip_memory2"
#define ONCHIP_MEMORY_WRITABLE 1


/*
 * recv configuration
 *
 */

#define ALT_MODULE_CLASS_recv altera_avalon_pio
#define RECV_BASE 0x81070
#define RECV_BIT_CLEARING_EDGE_REGISTER 0
#define RECV_BIT_MODIFYING_OUTPUT_REGISTER 0
#define RECV_CAPTURE 0
#define RECV_DATA_WIDTH 32
#define RECV_DO_TEST_BENCH_WIRING 0
#define RECV_DRIVEN_SIM_VALUE 0
#define RECV_EDGE_TYPE "NONE"
#define RECV_FREQ 50000000
#define RECV_HAS_IN 1
#define RECV_HAS_OUT 0
#define RECV_HAS_TRI 0
#define RECV_IRQ -1
#define RECV_IRQ_INTERRUPT_CONTROLLER_ID -1
#define RECV_IRQ_TYPE "NONE"
#define RECV_NAME "/dev/recv"
#define RECV_RESET_VALUE 0
#define RECV_SPAN 16
#define RECV_TYPE "altera_avalon_pio"


/*
 * seg_0 configuration
 *
 */

#define ALT_MODULE_CLASS_seg_0 altera_avalon_pio
#define SEG_0_BASE 0x81050
#define SEG_0_BIT_CLEARING_EDGE_REGISTER 0
#define SEG_0_BIT_MODIFYING_OUTPUT_REGISTER 0
#define SEG_0_CAPTURE 0
#define SEG_0_DATA_WIDTH 8
#define SEG_0_DO_TEST_BENCH_WIRING 0
#define SEG_0_DRIVEN_SIM_VALUE 0
#define SEG_0_EDGE_TYPE "NONE"
#define SEG_0_FREQ 50000000
#define SEG_0_HAS_IN 0
#define SEG_0_HAS_OUT 1
#define SEG_0_HAS_TRI 0
#define SEG_0_IRQ -1
#define SEG_0_IRQ_INTERRUPT_CONTROLLER_ID -1
#define SEG_0_IRQ_TYPE "NONE"
#define SEG_0_NAME "/dev/seg_0"
#define SEG_0_RESET_VALUE 0
#define SEG_0_SPAN 16
#define SEG_0_TYPE "altera_avalon_pio"


/*
 * seg_1 configuration
 *
 */

#define ALT_MODULE_CLASS_seg_1 altera_avalon_pio
#define SEG_1_BASE 0x81040
#define SEG_1_BIT_CLEARING_EDGE_REGISTER 0
#define SEG_1_BIT_MODIFYING_OUTPUT_REGISTER 0
#define SEG_1_CAPTURE 0
#define SEG_1_DATA_WIDTH 8
#define SEG_1_DO_TEST_BENCH_WIRING 0
#define SEG_1_DRIVEN_SIM_VALUE 0
#define SEG_1_EDGE_TYPE "NONE"
#define SEG_1_FREQ 50000000
#define SEG_1_HAS_IN 0
#define SEG_1_HAS_OUT 1
#define SEG_1_HAS_TRI 0
#define SEG_1_IRQ -1
#define SEG_1_IRQ_INTERRUPT_CONTROLLER_ID -1
#define SEG_1_IRQ_TYPE "NONE"
#define SEG_1_NAME "/dev/seg_1"
#define SEG_1_RESET_VALUE 0
#define SEG_1_SPAN 16
#define SEG_1_TYPE "altera_avalon_pio"


/*
 * seg_2 configuration
 *
 */

#define ALT_MODULE_CLASS_seg_2 altera_avalon_pio
#define SEG_2_BASE 0x81030
#define SEG_2_BIT_CLEARING_EDGE_REGISTER 0
#define SEG_2_BIT_MODIFYING_OUTPUT_REGISTER 0
#define SEG_2_CAPTURE 0
#define SEG_2_DATA_WIDTH 8
#define SEG_2_DO_TEST_BENCH_WIRING 0
#define SEG_2_DRIVEN_SIM_VALUE 0
#define SEG_2_EDGE_TYPE "NONE"
#define SEG_2_FREQ 50000000
#define SEG_2_HAS_IN 0
#define SEG_2_HAS_OUT 1
#define SEG_2_HAS_TRI 0
#define SEG_2_IRQ -1
#define SEG_2_IRQ_INTERRUPT_CONTROLLER_ID -1
#define SEG_2_IRQ_TYPE "NONE"
#define SEG_2_NAME "/dev/seg_2"
#define SEG_2_RESET_VALUE 0
#define SEG_2_SPAN 16
#define SEG_2_TYPE "altera_avalon_pio"


/*
 * seg_3 configuration
 *
 */

#define ALT_MODULE_CLASS_seg_3 altera_avalon_pio
#define SEG_3_BASE 0x81020
#define SEG_3_BIT_CLEARING_EDGE_REGISTER 0
#define SEG_3_BIT_MODIFYING_OUTPUT_REGISTER 0
#define SEG_3_CAPTURE 0
#define SEG_3_DATA_WIDTH 8
#define SEG_3_DO_TEST_BENCH_WIRING 0
#define SEG_3_DRIVEN_SIM_VALUE 0
#define SEG_3_EDGE_TYPE "NONE"
#define SEG_3_FREQ 50000000
#define SEG_3_HAS_IN 0
#define SEG_3_HAS_OUT 1
#define SEG_3_HAS_TRI 0
#define SEG_3_IRQ -1
#define SEG_3_IRQ_INTERRUPT_CONTROLLER_ID -1
#define SEG_3_IRQ_TYPE "NONE"
#define SEG_3_NAME "/dev/seg_3"
#define SEG_3_RESET_VALUE 0
#define SEG_3_SPAN 16
#define SEG_3_TYPE "altera_avalon_pio"


/*
 * seg_4 configuration
 *
 */

#define ALT_MODULE_CLASS_seg_4 altera_avalon_pio
#define SEG_4_BASE 0x81010
#define SEG_4_BIT_CLEARING_EDGE_REGISTER 0
#define SEG_4_BIT_MODIFYING_OUTPUT_REGISTER 0
#define SEG_4_CAPTURE 0
#define SEG_4_DATA_WIDTH 8
#define SEG_4_DO_TEST_BENCH_WIRING 0
#define SEG_4_DRIVEN_SIM_VALUE 0
#define SEG_4_EDGE_TYPE "NONE"
#define SEG_4_FREQ 50000000
#define SEG_4_HAS_IN 0
#define SEG_4_HAS_OUT 1
#define SEG_4_HAS_TRI 0
#define SEG_4_IRQ -1
#define SEG_4_IRQ_INTERRUPT_CONTROLLER_ID -1
#define SEG_4_IRQ_TYPE "NONE"
#define SEG_4_NAME "/dev/seg_4"
#define SEG_4_RESET_VALUE 0
#define SEG_4_SPAN 16
#define SEG_4_TYPE "altera_avalon_pio"


/*
 * seg_5 configuration
 *
 */

#define ALT_MODULE_CLASS_seg_5 altera_avalon_pio
#define SEG_5_BASE 0x81000
#define SEG_5_BIT_CLEARING_EDGE_REGISTER 0
#define SEG_5_BIT_MODIFYING_OUTPUT_REGISTER 0
#define SEG_5_CAPTURE 0
#define SEG_5_DATA_WIDTH 8
#define SEG_5_DO_TEST_BENCH_WIRING 0
#define SEG_5_DRIVEN_SIM_VALUE 0
#define SEG_5_EDGE_TYPE "NONE"
#define SEG_5_FREQ 50000000
#define SEG_5_HAS_IN 0
#define SEG_5_HAS_OUT 1
#define SEG_5_HAS_TRI 0
#define SEG_5_IRQ -1
#define SEG_5_IRQ_INTERRUPT_CONTROLLER_ID -1
#define SEG_5_IRQ_TYPE "NONE"
#define SEG_5_NAME "/dev/seg_5"
#define SEG_5_RESET_VALUE 0
#define SEG_5_SPAN 16
#define SEG_5_TYPE "altera_avalon_pio"


/*
 * send configuration
 *
 */

#define ALT_MODULE_CLASS_send altera_avalon_pio
#define SEND_BASE 0x81080
#define SEND_BIT_CLEARING_EDGE_REGISTER 0
#define SEND_BIT_MODIFYING_OUTPUT_REGISTER 0
#define SEND_CAPTURE 0
#define SEND_DATA_WIDTH 32
#define SEND_DO_TEST_BENCH_WIRING 0
#define SEND_DRIVEN_SIM_VALUE 0
#define SEND_EDGE_TYPE "NONE"
#define SEND_FREQ 50000000
#define SEND_HAS_IN 0
#define SEND_HAS_OUT 1
#define SEND_HAS_TRI 0
#define SEND_IRQ -1
#define SEND_IRQ_INTERRUPT_CONTROLLER_ID -1
#define SEND_IRQ_TYPE "NONE"
#define SEND_NAME "/dev/send"
#define SEND_RESET_VALUE 0
#define SEND_SPAN 16
#define SEND_TYPE "altera_avalon_pio"

#endif /* __SYSTEM_H_ */
