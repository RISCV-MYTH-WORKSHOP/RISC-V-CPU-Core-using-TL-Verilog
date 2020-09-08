Creating the C code file
$leafpad 1to9_custom.c 

Creating the assembly language code file
$leadpad load.S   

To compile the c and assembly lang code suing riscv compiler:
$riscv64-unknown-elf-gcc -Ofast -mabi=lp64 -march=rv64i -o 1to9_custom.o 1to9_custom.c load.S  
$spike pk 1to9_custom.o

To compile and debug using spike:
$spike -d pk 1to9_custom.o

To check for the assembly outfule file:
$riscv64-unknown-elf-objdump -d 1to9_custom.c |less

To gitclone the RISC-V repository:
$git clone https://github.com/kunalg123/riscv_workshop_collaterals.git


$cd riscv_workshop_collaterals
$cd labs
$ls -ltr
$vim picorv32.v
$less picorv32.v
$vim testbench.v
$vim rv32im.sh
$chmod 777 rv32im.sh
$vim firmware.hex
$vim firmware32.hex

