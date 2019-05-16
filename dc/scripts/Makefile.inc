define SYN_RULE
work_$(DESIGN)/syn/_vmake: $(RTLSRCs)
        if [[ -e $$(@D) ]] ; then rm -rf $$(@D) ; fi
        mkdir -p $$(@D)
        cd $$(@D); source /opt/synopsys/snps.sh ; \
        if [[ ! -z "$(STARTGUI)" ]]; then \
                export STARTGUI=$(STARTGUI) ; \
        fi ; \
        export TCLLIBPATH=$(TCLLIBPATH) ; \
        dc_shell-xg-t -f $(BASEDIR)/scripts/syn/syn_$(DESIGN).tcl

all_syn_tasks += work_$(DESIGN)/syn/_vmake

endef

$(foreach DESIGN,$(DESIGNs), $(eval $(SYN_RULE)))
.PHONY: syn
syn: $(all_syn_tasks)

dc-shell:
        if [[ ! -e work/syn ]] ; then mkdir -p work/syn ; fi
        cd work/syn ; source /opt/synopsys/snps.sh ; \
        export STARTGUI=1 ; \
        export TCLLIBPATH=$(TCLLIBPATH) ; \
        dc_shell-xg-t -gui
