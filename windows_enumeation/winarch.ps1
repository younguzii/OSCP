# method 1 - Enviroment Variables
$env:PROCESSOR_ARCHITECTURE
[Environment]::Is64BitOperatingSystem

# method 2 - WMI and CIM classes
(Get-WmiObject Win32_OperatingSystem).OSArchitecture
(Get-CimInStance CIM_OperatingSystem).OSArchitecture
(Get-WmiObject Win32_Processor).AddressWidth

# method 3 - Native CMD commands
(wmic os get osarchitecture)[2]

# method 4 - System.IntPtr type
[System.IntPtr]::Size # an integer whose size is platform-specific.
if([System.IntPtr]::Size -eq 4){
    "32-bit"
}
else{
    "64-bit"
}
