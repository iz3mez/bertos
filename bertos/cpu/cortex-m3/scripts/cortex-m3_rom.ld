/**
 * \file
 * <!--
 * This file is part of BeRTOS.
 *
 * Bertos is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
 *
 * As a special exception, you may use this file as part of a free software
 * library without restriction.  Specifically, if other files instantiate
 * templates or use macros or inline functions from this file, or you compile
 * this file and link it with other files to produce an executable, this
 * file does not by itself cause the resulting executable to be covered by
 * the GNU General Public License.  This exception does not however
 * invalidate any other reasons why the executable file might be covered by
 * the GNU General Public License.
 *
 * Copyright 2010 Develer S.r.l. (http://www.develer.com/)
 *
 * -->
 *
 * \brief Script Cortex M3 family processors.
 *
 * \author Daniele Basile <asterix@develer.com>
 */

OUTPUT_FORMAT("elf32-littlearm", "elf32-bigarm", "elf32-littlearm")
OUTPUT_ARCH(arm)


/*
 * Allocate section memory
 */
SECTIONS
{
	.text :
	{
		KEEP(*(.vectors));
		. = ALIGN (4);
		KEEP(*(.init));
		. = ALIGN (4);
		*(.rodata .rodata.*);
		. = ALIGN (4);
		*(.text .text.*);
		. = ALIGN (4);
		*(.glue_7t);
		. = ALIGN(4);
		*(.glue_7);
		. = ALIGN(4);
	} > rom

	__text_end = .;
	PROVIDE (__text_end = .);

	.data : AT (__text_end)
	{
		. = ALIGN (0x400);
		PROVIDE (__data_start = .);
		*(vtable)
		. = ALIGN (4);
		*(.ramfunc)
		. = ALIGN (4);
		*(.data .data.*)
		. = ALIGN (4);
		_edata = .;
		PROVIDE (__data_end = .);
	} > ram

	.bss :
	{
		PROVIDE (__bss_start = .);
		*(.bss .bss.*)
		. = ALIGN(4);
		*(COMMON)
		. = ALIGN(4);
		PROVIDE (__bss_end = .);
	} > ram

	/*
	 * Allocated stack at the end of bss section.
	 * Data heap is allocate at end of stack.
	 * STACK_SIZE variable is defined in the CPU specific linker script file.
	 */
	PROVIDE (__msp_start = .);
	. = ALIGN(8);
	. += STACK_SIZE;
	PROVIDE (__msp_end = .);

	PROVIDE (__psp_start = .);
	. = ALIGN(8);
	. += STACK_SIZE;
	PROVIDE (__psp_end = .);

	PROVIDE (__heap_start = .);
	. = ALIGN(8);
}
