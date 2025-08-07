$current = (Get-CimInstance -Namespace root/WMI -ClassName WmiMonitorBrightness).CurrentBrightness
$target = [Math]::Min($current + 10, 100)
Get-CimInstance -Namespace root/WMI -ClassName WmiMonitorBrightnessMethods |
    Invoke-CimMethod -MethodName WmiSetBrightness -Arguments @{ Timeout = 0; Brightness = $target }
