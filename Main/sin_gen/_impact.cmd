setMode -bs
setMode -bs
setMode -bs
setCable -port auto
Identify -inferir 
identifyMPM 
assignFile -p 2 -file "C:/Xilinx/Project/sin_gen/sin_gen.bit"
setMode -pff
setMode -pff
addConfigDevice  -name "sin_gen_bpi" -path "C:\Xilinx\Project\sin_gen\"
setSubmode -pffbpi
setAttribute -configdevice -attr multibootBpiType -value "TYPE_BPI"
setAttribute -configdevice -attr multibootBpiDevice -value "SPARTAN6"
setAttribute -configdevice -attr multibootBpichainType -value "SERIAL"
addDesign -version 0 -name "0"
setMode -pff
addDeviceChain -index 0
setMode -pff
addDeviceChain -index 0
setAttribute -configdevice -attr compressed -value "FALSE"
setAttribute -configdevice -attr compressed -value "FALSE"
setAttribute -configdevice -attr autoSize -value "FALSE"
setAttribute -configdevice -attr fileFormat -value "mcs"
setAttribute -configdevice -attr fillValue -value "FF"
setAttribute -configdevice -attr swapBit -value "FALSE"
setAttribute -configdevice -attr dir -value "UP"
setAttribute -configdevice -attr multiboot -value "FALSE"
setAttribute -configdevice -attr multiboot -value "FALSE"
setAttribute -configdevice -attr spiSelected -value "FALSE"
setAttribute -configdevice -attr spiSelected -value "FALSE"
setAttribute -configdevice -attr RsPinMsb -value "1"
setAttribute -configdevice -attr flashDataWidth -value "16"
setCurrentDesign -version 0
setAttribute -design -attr RSPin -value ""
setCurrentDesign -version 0
addPromDevice -p 1 -size 16384 -name 16M
setMode -bs
setMode -bs
setMode -bs
setMode -pff
setMode -pff
setMode -pff
setMode -pff
addDeviceChain -index 0
setMode -pff
addDeviceChain -index 0
setMode -pff
setSubmode -pffbpi
setMode -pff
setAttribute -design -attr RSPin -value "00"
addDevice -p 1 -file "C:/Xilinx/Project/sin_gen/sin_gen.bit"
setAttribute -design -attr RSPinMsb -value "1"
setAttribute -design -attr name -value "0"
setAttribute -design -attr RSPin -value "00"
setAttribute -design -attr endAddress -value "16a673"
setAttribute -design -attr endAddress -value "16a673"
setMode -pff
setSubmode -pffbpi
generate
setCurrentDesign -version 0
setMode -bs
setMode -bs
setMode -bs
attachflash -position 2 -bpi "28F256P30"
assignfiletoattachedflash -position 2 -file "C:/Xilinx/Project/sin_gen/sin_gen_bpi.mcs"
Erase -p 2 
Program -p 2 -dataWidth 16 -rs1 NONE -rs0 NONE -bpionly -e -v -loadfpga 
assignFile -p 2 -file "C:/Xilinx/Project/sin_gen/sin_gen.bit"
setMode -pff
setMode -pff
setMode -pff
assignFile -p 1 -file "C:/Xilinx/Project/sin_gen/sin_gen.bit"
setAttribute -position 1 -attr devicePartName -value "xc6slx45t"
setMode -pff
setSubmode -pffbpi
generate
setCurrentDesign -version 0
setMode -bs
setMode -bs
setMode -bs
attachflash -position 2 -bpi "28F256P30"
assignfiletoattachedflash -position 2 -file "C:/Xilinx/Project/sin_gen/sin_gen_bpi.mcs"
setCable -port auto
setCable -port auto
Erase -p 2 -bpionly 
Program -p 2 -bpionly -e -v -loadfpga 
setMode -pff
setMode -pff
setMode -pff
assignFile -p 1 -file "C:/Xilinx/Project/sin_gen/sin_gen.bit"
setAttribute -position 1 -attr devicePartName -value "xc6slx45t"
setMode -pff
setSubmode -pffbpi
generate
setCurrentDesign -version 0
setMode -bs
setMode -bs
setMode -bs
attachflash -position 2 -bpi "28F256P30"
assignfiletoattachedflash -position 2 -file "C:/Xilinx/Project/sin_gen/sin_gen_bpi.mcs"
setCable -port auto
Program -p 2 -dataWidth 16 -rs1 NONE -rs0 NONE -bpionly -e -v -loadfpga 
setMode -pff
setMode -pff
setMode -pff
assignFile -p 1 -file "C:/Xilinx/Project/sin_gen/sin_gen.bit"
setAttribute -position 1 -attr devicePartName -value "xc6slx45t"
setMode -pff
setSubmode -pffbpi
generate
setCurrentDesign -version 0
setMode -bs
setMode -bs
setMode -bs
attachflash -position 2 -bpi "28F256P30"
assignfiletoattachedflash -position 2 -file "C:/Xilinx/Project/sin_gen/sin_gen_bpi.mcs"
setCable -port auto
Program -p 2 -dataWidth 16 -rs1 NONE -rs0 NONE -bpionly -e -v -loadfpga 
setMode -pff
setMode -pff
setMode -pff
assignFile -p 1 -file "C:/Xilinx/Project/sin_gen/sin_gen.bit"
setAttribute -position 1 -attr devicePartName -value "xc6slx45t"
setMode -pff
setSubmode -pffbpi
generate
setCurrentDesign -version 0
setMode -bs
setMode -bs
setMode -bs
attachflash -position 2 -bpi "28F256P30"
assignfiletoattachedflash -position 2 -file "C:/Xilinx/Project/sin_gen/sin_gen_bpi.mcs"
setCable -port auto
Program -p 2 -dataWidth 16 -rs1 NONE -rs0 NONE -bpionly -e -v -loadfpga 
setMode -pff
setMode -pff
setMode -pff
assignFile -p 1 -file "C:/Xilinx/Project/sin_gen/sin_gen.bit"
setAttribute -position 1 -attr devicePartName -value "xc6slx45t"
setMode -pff
setSubmode -pffbpi
generate
setCurrentDesign -version 0
setMode -bs
setMode -bs
setMode -bs
attachflash -position 2 -bpi "28F256P30"
assignfiletoattachedflash -position 2 -file "C:/Xilinx/Project/sin_gen/sin_gen_bpi.mcs"
setCable -port auto
Program -p 2 -dataWidth 16 -rs1 NONE -rs0 NONE -bpionly -e -v -loadfpga 
setMode -pff
setMode -pff
setMode -pff
deleteDevice -position 1
deleteDevice -position 1
