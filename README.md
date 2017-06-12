# IA-smb_status V1.0

This Input Add-on runs PowerShell inputs to query the SMB configuration of Windows systems.

## Installation

Place the add-on into $SPLUNK_HOME\etc\apps on Windows systems.

## Usage

1. Create a directory called local in IA-smb_status. 
2. Create an inputs.conf in IA-smb_status\local.
3. Copy the input stanza(s) to be enabled
4. Add `disabled = 0` to each stanza

### Example

```
[powershell://GetSmbServerConfigurationV1]
disabled = 0
```

## Search Examples

The script and commands return different key=value pairs depending on the OS version. Windows 8/Windows Server 2012 and newer return `EnableSMB1Protocol=True|False`. Earlier Windows versions will return `SMB1=null|0|1`. A null entry for SMB1 indicates a missing registry entry and that SMB1 is enabled.

Here is an example search for Windows 8/Server 2012 and newer:

```
index=windows sourcetype="powershell:get:smb_status" EnableSMB1Protocol=True | stats last(EnableSMB1Protocol) as "SMB v1 Enabled" by host
```
