cmd_asm-macros.i := gcc-7 -E -MMD -MP -MF ./.asm-macros.i.d -m64 -DBUILD_ID -fno-strict-aliasing -std=gnu99 -Wall -Wstrict-prototypes -Wdeclaration-after-statement -Wno-unused-but-set-variable -Wno-unused-local-typedefs -O1 -fno-omit-frame-pointer -nostdinc -fno-builtin -fno-common -Werror -Wredundant-decls -Wno-pointer-arith -Wvla -pipe -D__XEN__ -include /home/hamza/MS_Thesis/XenDevel/xen/xen/include/xen/config.h -g -mindirect-branch=thunk-extern -mindirect-branch-register -fno-jump-tables -I/home/hamza/MS_Thesis/XenDevel/xen/xen/include -I/home/hamza/MS_Thesis/XenDevel/xen/xen/include/asm-x86/mach-generic -I/home/hamza/MS_Thesis/XenDevel/xen/xen/include/asm-x86/mach-default -DXEN_IMG_OFFSET=0x200000 -msoft-float -fno-stack-protector -fno-exceptions -fno-asynchronous-unwind-tables -Wnested-externs -DHAVE_AS_VMX -DHAVE_AS_SSE4_2 -DHAVE_AS_EPT -DHAVE_AS_RDRAND -DHAVE_AS_FSGSBASE -DHAVE_AS_XSAVEOPT -DHAVE_AS_RDSEED -DHAVE_AS_CLWB -DHAVE_AS_QUOTED_SYM -DHAVE_AS_INVPCID -DHAVE_AS_MOVDIR -DHAVE_AS_ENQCMD -DHAVE_AS_NEGATIVE_TRUE -DHAVE_AS_NOPS_DIRECTIVE -mno-red-zone -fpic -mno-sse -mskip-rax-setup '-D__OBJECT_FILE__="asm-macros.i"' '-D__OBJECT_LABEL__=arch/x86/asm-macros.i' -mpreferred-stack-boundary=3 -DXEN_BUILD_EFI -DBUILD_ID_EFI -D__ASSEMBLY__ -P -MQ asm-macros.i -o asm-macros.i asm-macros.c
