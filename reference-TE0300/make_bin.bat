rem Configure environment
call C:\Xilinx\13.3\ISE_DS\settings64.bat

@rem Configure environment
set XILINX=C:\Xilinx\13.3\ISE_DS\ISE
set XILINX_DSP=%XILINX%
set PATH=%XILINX%\bin\nt;%XILINX%\lib\nt;%PATH%

@rem Generate FWU for 1200
@copy implementation\download.bit fpga.bit
@impact -batch etc\bit2bin.cmd

@rem Remove logs
@del fpga.sig fpga.prm fpga.cfi fpga.bit

@rem Remove files
@del _impactbatch.log
