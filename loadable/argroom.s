# argroom.s: this file is part of the Microgrid simulator.
#
# Copyright (C) 2011 the Microgrid project.
#
# This program is free software, you can redistribute it and/or
# modify it under the terms of the GNU General Public License
# as published by the Free Software Foundation, either version 2
# of the License, or (at your option) any later version.
#
# The complete GNU General Public Licence Notice can be found as the
# `COPYING' file in the root directory.

#

        .data
        .section .argroom,"a",@progbits
        .set volatile
        
        .equ SIZE_ARGV, 0x100000       

        .globl room_argv
        .type	room_argv, @object
        .size	room_argv, SIZE_ARGV


        #Alligned memory, to ease pointer storage
        .align 8
        room_argv:
       	.zero	SIZE_ARGV