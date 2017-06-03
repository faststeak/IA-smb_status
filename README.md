# IA-smb_status V1.0

This Input Add-on runs a PowerShell script to query the SMB configuration of Windows systems.

## Installation

Place the add-on into $SPLUNK_HOME\etc\apps on Windows systems.

## Usage

1. Create an inputs.conf in IA-smb_status\local.
2. Copy the input stanza(s) to be enabled
3. Add `disabled = 0` to each stanza

### Example

```
[powershell://GetSmbServerConfiguration]
disabled = 0
```
