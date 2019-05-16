# This file needs to be sourced from within the .synopsys_dc.setup file
# 
puts "\n### Executing common setup file 'ref/icc_settings.tcl' ..."

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Other setup
#   - This could go into the .synopsys_dc.setup file in your home 
#     directory, so it is available no matter where the tool is launched
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

# Load useful functions
source ../ref/tools/procs.tcl

# Uncomment to disable tracking and reporting of when new variables are created
# set sh_new_variable_message false
# Command-line editing is on by default starting with ICC 2005.06-SP1
# set sh_enable_line_editing true
# emacs is the default line-editing mode. The other mode is "vi"
# set sh_line_editing_mode emacs
# Disable more-like page mode
set enable_page_mode false

# Don't want to see CMD-041 when creating new variables
set sh_new_variable_message false

# Some aliases to make use of view nicer (defined in tools/procs.tcl)
alias v view
alias rt  "report_timing -nosplit"
alias rtm "report_timing -nosplit -delay min"
alias rc  "report_constraint -all_violators -nosplit"
alias rq report_qor


# Increase history buffer
history keep 100
alias h history

# Ease of use...
alias _ measure_time

# Enable logging of commands and everything by date/shell
set timestamp [clock format [clock scan now] -format "%Y-%m-%d_%H-%M"]
set sh_output_log_file "${synopsys_program_name}.log.[pid].$timestamp"
set sh_command_log_file "${synopsys_program_name}.cmd.[pid].$timestamp"
