# functions in prog.c to be mapped to vhdl
# generate llvm-byte-code
clang -std=gnu89 -I../../../iolib/ -emit-llvm -c prog.c
# disassemble byte-code for human readibility.
llvm-dis prog.o
# llvm-bytecode to Aa
llvm2aa prog.o | vcFormat >  prog.o.aa
# map external memory references from system to
# internal object mempool (of size 1 byte).
AaLinkExtMem -I 1 -E mempool prog.o.aa | vcFormat > prog.o.linked.aa
# take linked Aa and convert to virtual circuit.
Aa2VC -O -I mempool -C prog.o.linked.aa | vcFormat > prog.o.linked.aa.vc
#
# take virtual circuit and convert to VHDL
# NOTE: the -T option tells vc2vhdl that io_module is to be an ever-running
# top-level module, which will not need to be started from the outside, but
# will be free-running in the system (such modules cannot have input/output
# arguments, but can only listen/send on pipes).
#
# uncomment next line if you are using modelsim
# vc2vhdl -C -s ghdl -e ahir_system -w -T input_module -T output_module -T foo -T free_queue_manager -f prog.o.linked.aa.vc 
# comment next line if you are using modelsim
 vc2vhdl -C -s ghdl -e ahir_system -w -T input_module -T output_module -T foo -T free_queue_manager -f prog.o.linked.aa.vc 
vhdlFormat < ahir_system.unformatted_vhdl > ahir_system.vhdl
vhdlFormat < ahir_system_test_bench.unformatted_vhdl > ahir_system_test_bench.vhdl
