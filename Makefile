help:
	@echo" Valid Commands"
	@echo"     make syn:              synthesize with DC "
	


DESIGNS:=risc8


BASEDIR:= $(shell pwd )
RTLSRCS:= $(shell find rtl -name '*.v' -or -name '*.vhdl')
TCLLIBPATH:=$(realpath $(BASEDIR)/ref/db/GF21LB004-FB-00000-r5p0-03rel0/arm/cp/cmos28lp/sc9_base_hvt/r5p0/db)
DUMFILL:=

iiVERSION:= $(shell data + %Y%m%d)
FTAR   := risc8_$(VERSION)
PASSWORD =


include  dc/scripts/Makefile.inc


.PHONY:clean

