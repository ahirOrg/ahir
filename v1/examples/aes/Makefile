
SRC := aes.c
BC := $(SRC:.c=.bc)

vhdl:  opt.bc.linked_ahir.xml
	rm -f *.vhdl
	~/ProcIR24/VHDL/irsyn $<

link : opt.bc.linked_ahir.xml

opt.bc.linked_ahir.xml : opt.bc.ahir.xml
	rm -f opt.bc.linked_ahir.xml
	~/ProcIR24/Linker/irlink $<

ahir : opt.bc.ahir.xml

opt.bc.ahir.xml : opt.bc.cdfg.xml
	rm -f opt.bc.ahir.xml
	~/ProcIR24/AHIR/cdfg2ahir $<

cdfg : opt.bc.cdfg.xml

opt.bc.cdfg.xml : opt.bc
	rm -f opt.bc.cdfg.xml
	~/ProcIR24/LLVM/irgen $<

llvm : opt.bc

opt.bc : $(SRC)
	rm -f $(BC)
	llvmc -emit-llvm -c $(SRC) -o $(BC)
	rm -f opt.bc
	opt -std-compile-opts -disable-inlining $(BC) -o opt.bc
