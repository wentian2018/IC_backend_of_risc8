set ::use_mcmm 1
set ::do_signoff_opt 1


#get path of this file

#assume dc/icc started in ../work/syn or ../work/pnr relative to the config,tcl

set baseDir [file dirname [file dirname [ pwd ] ] ]
set designDir [file dirname $baseDir]
#alternative method,only work on tcl>=8.5
#     set thisFile [dict get [info frame 0] file ]
#     set baseDir [file dirname [file dirname [ file dirname $thisFile ] ] ]
 
#####paths####


set cfg_dir         "${baseDir}/config"
set rtl_dir         "${baseDir}/rtl"
set tech_dir        "${baseDir}/stdlib/tech"
set std_lib_dir     "${baseDir}/stdlib/Core"
set io_lib_dir      "${baseDir}/stdlib/IO"
set src_dir         "${baseDir}/dc/scripts"

####DC settings####

set ref_lib ""
#                       max lib                            min lib
set cgd::libFiles "cgd_t025_g5_ss_2p97_125c.db    cgd_t025_g5_ff_5p5v_m55c.db "

#                    max cond                 min cond
set cgd::opConds    "ss_2p97_125c           ff_5p5v_m55c"

set stdlibName ss_2p97_125c


#timing analysis

set cgd::sdc_file      "${cfg_dir}/${design_name}.sdc"
set cgd::sdc_file_max  "${cfg_dir}/${design_name}.max.sdc"
set cgd::sdc_file_min  "${cfg_dir}/${design_name}.min.sdc"

set cgd::tech_lyr_map  "$tech_dir/starrc/cell.map"
set cgd::tluplus_worst "$tech_dir/starrc/tluplus/rcmax.tluplus"
set cgd::tluplus_best  "$tech_dir/starrc/tluplus/rcmin.tluplus"
set cgd::nxtgrd_worst  "$tech_dir/starrc/nxtgrd/rcmax.nxtgrd"
set cgd::nxtgrd_best   "$tech_dir/starrc/nxtgrd/rcmin.nxtgrd"

