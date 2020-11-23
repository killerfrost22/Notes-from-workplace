REM activate Windows 7, 8, 8.1, 10
cscript c:\windows\system32\slmgr.vbs -skms kms.umd.edu
cscript c:\windows\system32\slmgr.vbs -ato
REM Activate Office 2016 with campus KMS
REM both 32-bit and 64-bit
cscript "C:\Program Files\Microsoft Office\Office16\OSPP.VBS" /osppsvcrestart
cscript "C:\Program Files (x86)\Microsoft Office\Office16\OSPP.VBS" /osppsvcrestart
cscript "C:\Program Files\Microsoft Office\Office16\OSPP.VBS" /sethst:kms.umd.edu
cscript "C:\Program Files (x86)\Microsoft Office\Office16\OSPP.VBS" /sethst:kms.umd.edu
cscript "C:\Program Files\Microsoft Office\Office16\OSPP.VBS" /act
cscript "C:\Program Files (x86)\Microsoft Office\Office16\OSPP.VBS" /act
REM Activate Office 2013 with campus KMS
REM both 32-bit and 64-bit
cscript "C:\Program Files\Microsoft Office\Office15\OSPP.VBS" /osppsvcrestart
cscript "C:\Program Files (x86)\Microsoft Office\Office15\OSPP.VBS" /osppsvcrestart
cscript "C:\Program Files\Microsoft Office\Office15\OSPP.VBS" /sethst:kms.umd.edu
cscript "C:\Program Files (x86)\Microsoft Office\Office15\OSPP.VBS" /sethst:kms.umd.edu
cscript "C:\Program Files\Microsoft Office\Office15\OSPP.VBS" /act
cscript "C:\Program Files (x86)\Microsoft Office\Office15\OSPP.VBS" /act
