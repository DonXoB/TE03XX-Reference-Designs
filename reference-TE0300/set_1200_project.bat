@rem Configure environment
call C:\Xilinx\13.3\ISE_DS\settings64.bat

@rem Clean project
make -f system.make hwclean

@rem Prepare 1200 project
@copy /y system.xmp.1200 system.xmp
@copy /y system_incl.make.1200 system_incl.make
@copy /y data\system.ucf.1200 data\system.ucf
