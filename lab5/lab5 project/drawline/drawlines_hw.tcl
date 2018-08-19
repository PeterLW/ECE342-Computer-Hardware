# TCL File Generated by Component Editor 11.1
# Sun Mar 09 04:10:10 EDT 2014
# DO NOT MODIFY


# +-----------------------------------
# | 
# | drawlines "drawlines_slave" v1.0
# | null 2014.03.09.04:10:10
# | 
# | 
# | C:/Users/Jeff/Desktop/lab5/drawline/drawlines.v
# | 
# |    ./ASC.v syn, sim
# |    ./ASC_path.v syn, sim
# |    ./drawlines.v syn, sim
# |    ./error_mux.v syn, sim
# |    ./LDA.v syn, sim
# |    ./LDA_path.v syn, sim
# |    ./plot_mux.v syn, sim
# |    ./read_mux.v syn, sim
# |    ./xy_mux.v syn, sim
# |    ./y_mux.v syn, sim
# |    ./vga_adapter/vga_adapter.v syn, sim
# |    ./vga_adapter/vga_address_translator.v syn, sim
# |    ./vga_adapter/vga_controller.v syn, sim
# |    ./vga_adapter/vga_pll.v syn, sim
# | 
# +-----------------------------------

# +-----------------------------------
# | request TCL package from ACDS 11.0
# | 
package require -exact sopc 11.0
# | 
# +-----------------------------------

# +-----------------------------------
# | module drawlines
# | 
set_module_property NAME drawlines
set_module_property VERSION 1.0
set_module_property INTERNAL false
set_module_property OPAQUE_ADDRESS_MAP true
set_module_property DISPLAY_NAME drawlines_slave
set_module_property TOP_LEVEL_HDL_FILE drawlines.v
set_module_property TOP_LEVEL_HDL_MODULE drawlines
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_property ANALYZE_HDL TRUE
set_module_property STATIC_TOP_LEVEL_MODULE_NAME drawlines
set_module_property FIX_110_VIP_PATH false
# | 
# +-----------------------------------

# +-----------------------------------
# | files
# | 
add_file ASC.v {SYNTHESIS SIMULATION}
add_file ASC_path.v {SYNTHESIS SIMULATION}
add_file drawlines.v {SYNTHESIS SIMULATION}
add_file error_mux.v {SYNTHESIS SIMULATION}
add_file LDA.v {SYNTHESIS SIMULATION}
add_file LDA_path.v {SYNTHESIS SIMULATION}
add_file plot_mux.v {SYNTHESIS SIMULATION}
add_file read_mux.v {SYNTHESIS SIMULATION}
add_file xy_mux.v {SYNTHESIS SIMULATION}
add_file y_mux.v {SYNTHESIS SIMULATION}
add_file vga_adapter/vga_adapter.v {SYNTHESIS SIMULATION}
add_file vga_adapter/vga_address_translator.v {SYNTHESIS SIMULATION}
add_file vga_adapter/vga_controller.v {SYNTHESIS SIMULATION}
add_file vga_adapter/vga_pll.v {SYNTHESIS SIMULATION}
# | 
# +-----------------------------------

# +-----------------------------------
# | parameters
# | 
# | 
# +-----------------------------------

# +-----------------------------------
# | display items
# | 
# | 
# +-----------------------------------

# +-----------------------------------
# | connection point s1
# | 
add_interface s1 avalon end
set_interface_property s1 addressAlignment DYNAMIC
set_interface_property s1 addressUnits WORDS
set_interface_property s1 associatedClock clock
set_interface_property s1 associatedReset reset
set_interface_property s1 burstOnBurstBoundariesOnly false
set_interface_property s1 explicitAddressSpan 0
set_interface_property s1 holdTime 0
set_interface_property s1 isMemoryDevice false
set_interface_property s1 isNonVolatileStorage false
set_interface_property s1 linewrapBursts false
set_interface_property s1 maximumPendingReadTransactions 0
set_interface_property s1 printableDevice false
set_interface_property s1 readLatency 0
set_interface_property s1 readWaitTime 1
set_interface_property s1 setupTime 0
set_interface_property s1 timingUnits Cycles
set_interface_property s1 writeWaitTime 0

set_interface_property s1 ENABLED true

add_interface_port s1 chipselect chipselect Input 1
add_interface_port s1 address address Input 3
add_interface_port s1 read read Input 1
add_interface_port s1 write write Input 1
add_interface_port s1 writedata writedata Input 32
add_interface_port s1 readdata readdata Output 32
add_interface_port s1 waitrequest waitrequest Output 1
# | 
# +-----------------------------------

# +-----------------------------------
# | connection point conduit_end_0
# | 
add_interface conduit_end_0 conduit end

set_interface_property conduit_end_0 ENABLED true

add_interface_port conduit_end_0 VGA_R export Output 10
add_interface_port conduit_end_0 VGA_B export Output 10
add_interface_port conduit_end_0 VGA_HS export Output 1
add_interface_port conduit_end_0 VGA_G export Output 10
add_interface_port conduit_end_0 VGA_VS export Output 1
add_interface_port conduit_end_0 VGA_BLANK export Output 1
add_interface_port conduit_end_0 VGA_SYNC export Output 1
add_interface_port conduit_end_0 VGA_CLK export Output 1
add_interface_port conduit_end_0 LEDG export Output 9
# | 
# +-----------------------------------

# +-----------------------------------
# | connection point clock
# | 
add_interface clock clock end
set_interface_property clock clockRate 0

set_interface_property clock ENABLED true

add_interface_port clock clk clk Input 1
# | 
# +-----------------------------------

# +-----------------------------------
# | connection point reset
# | 
add_interface reset reset end
set_interface_property reset associatedClock clock
set_interface_property reset synchronousEdges DEASSERT

set_interface_property reset ENABLED true

add_interface_port reset reset reset Input 1
# | 
# +-----------------------------------
