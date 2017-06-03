[double]$osVersion = ((Get-CimInstance Win32_OperatingSystem).version).substring(0,3)


If ($osVersion -ge "6.2") {
$SMBStatus = (Get-SmbServerConfiguration | Select-Object EnableSMB1Protocol| FL)
}
ElseIf ($osVersion -lt "6.2") {
$SMBStatus = (Get-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters" | Select-Object SMB1| FL)
}

Return $SMBStatus
