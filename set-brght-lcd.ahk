^Up::
RunSilent("C:\Users\coolb\bin\up-brightness-lcd.ps1")
return

^Down::
RunSilent("C:\Users\coolb\bin\dn-brightness-lcd.ps1")
return

RunSilent(scriptPath) {
    shell := ComObjCreate("WScript.Shell")
    shell.Run("pwsh.exe -ExecutionPolicy Bypass -File """ scriptPath """", 0, false)
}
