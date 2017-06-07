@ECHO OFF

PowerShell -executionPolicy RemoteSigned -command ". '%SPLUNK_HOME%\etc\apps\IA-smb_status\bin\%1'"
