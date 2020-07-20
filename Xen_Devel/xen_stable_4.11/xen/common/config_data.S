#include <asm/asm_defns.h>

        .section .rodata, "a", %progbits

        .p2align 0
        .global xen_config_data
xen_config_data:
        .incbin "config.gz"
.Lend:

        .type xen_config_data, %object
        .size xen_config_data, .Lend - xen_config_data

        .global xen_config_data_size
        ASM_INT(xen_config_data_size, .Lend - xen_config_data)
