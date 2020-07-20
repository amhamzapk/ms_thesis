cmd_boot.init.o :=     objdump -h boot.o | sed -n '/[0-9]/{s,00*,0,g;p;}' | while read idx name sz rest; do case "$$name" in .*.local) ;; .text|.text.*|.data|.data.*|.bss) test $$sz != 0 || continue; echo "Error: size of boot.o:$$name is 0x$$sz" >&2; exit $$(expr $$idx + 1);; esac; done; objcopy --rename-section .rodata=.init.rodata --rename-section .rodata.str1.1=.init.rodata.str1.1 --rename-section .rodata.str2.1=.init.rodata.str2.1 --rename-section .rodata.str4.1=.init.rodata.str4.1 --rename-section .rodata.cst1=.init.rodata.cst1 --rename-section .rodata.str1.2=.init.rodata.str1.2 --rename-section .rodata.str2.2=.init.rodata.str2.2 --rename-section .rodata.str4.2=.init.rodata.str4.2 --rename-section .rodata.cst2=.init.rodata.cst2 --rename-section .rodata.str1.4=.init.rodata.str1.4 --rename-section .rodata.str2.4=.init.rodata.str2.4 --rename-section .rodata.str4.4=.init.rodata.str4.4 --rename-section .rodata.cst4=.init.rodata.cst4 --rename-section .rodata.str1.8=.init.rodata.str1.8 --rename-section .rodata.str2.8=.init.rodata.str2.8 --rename-section .rodata.str4.8=.init.rodata.str4.8 --rename-section .rodata.cst8=.init.rodata.cst8 --rename-section .rodata.str1.16=.init.rodata.str1.16 --rename-section .rodata.str2.16=.init.rodata.str2.16 --rename-section .rodata.str4.16=.init.rodata.str4.16 --rename-section .rodata.cst16=.init.rodata.cst16 --rename-section .data.rel.local=.init.data.rel.local --rename-section .data.rel.ro.local=.init.data.rel.ro.local boot.o boot.init.o
