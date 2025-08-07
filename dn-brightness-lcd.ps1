$current = (Get-CimInstance -Namespace root/WMI -ClassName WmiMonitorBrightness).CurrentBrightness
$target = [Math]::Max($current - 10, 0)
Get-CimInstance -Namespace root/WMI -ClassName WmiMonitorBrightnessMethods |
    Invoke-CimMethod -MethodName WmiSetBrightness -Arguments @{ Timeout = 0; Brightness = $target }
