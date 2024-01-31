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
 ]▒▒▒▒╜`╓║▒▒▒▒▒▒▒▒▒▒║' ,H%▒]   ╢▒▒╢▒▒▒║╜,║▒▒▒▒▒▒▒╢	MAMSUS Controll
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

$global:loggs = @()
function Save-LoggsToFile {
    $filePath = Join-Path -Path $PSScriptRoot -ChildPath "MAMSUS.log"
    if (-not (Test-Path $filePath)) {
        New-Item -Path $filePath -ItemType File | Out-Null
    }
    $loggs | Out-File -Append -FilePath $filePath
}

function Save-Consolle {
    $filePath = Join-Path -Path $PSScriptRoot -ChildPath "MAMSUS_Console.txt"
    if (-not (Test-Path $filePath)) {
        New-Item -Path $filePath -ItemType File | Out-Null
    }
    $nowtime = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
    "---------------------------------------`n$nowtime`n`n" | Out-File -Append -FilePath $filePath
    $txtbx= $richTextBox.Text
    "$txtbx`n---------------------------------------`n`n" | Out-File -Append -FilePath $filePath

}


function WhoAreU {
    param (
        [int]$searchingTime,
        [string]$topic,
        [string]$Keyy
    )
$nowtime = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
$IDname = $textBox_name.Text
$global:loggs += "$nowtime {ID: $IDname}searched for Devices on {topic: $topic} using {Key: $Keyy}.`n"
Save-LoggsToFile
$pictureBox.Visible = $True
$pythonScript = @"
import paho.mqtt.client as mqtt
import time
Key = '$Keyy'

def xor_encrypt(input_string, secret_key):
    encrypted = []
    for i, char in enumerate(input_string):
        key_char = secret_key[i % len(secret_key)]
        encrypted_char = chr(ord(char) ^ ord(key_char))
        encrypted.append(encrypted_char)
    return ''.join(encrypted)

def xor_decrypt(encrypted_string, secret_key):
    return xor_encrypt(encrypted_string, secret_key)



def whoareu(searchingtime):
    message_list = []
    response_list = []
    def on_connect(client, userdata, flags, rc):
        restopic = '$topic' + '/response'
        client.subscribe(restopic)
    def on_message(client, userdata, message):
        message_list.append(xor_decrypt(message.payload.decode('utf-8'),Key))
    client = mqtt.Client()
    client.on_connect = on_connect
    client.on_message = on_message
    client.connect("broker.mqttdashboard.com", 1883, 60)
    client.loop_start()
    client.publish("$topic", xor_encrypt("!Whoareu",Key))
    time.sleep(searchingtime)
    client.loop_stop()
    for msg in message_list:
        response_list.append(msg)
    client.disconnect()
    return response_list

response_list = whoareu($searchingTime)

for msg in response_list:
    print(msg)
"@

    $pythonScriptPath = [System.IO.Path]::GetTempFileName() + ".py"
    $pythonScript | Set-Content -Path $pythonScriptPath
    $result = & python $pythonScriptPath
    $avai = (($result | Select-String -Pattern "\b\w*PS%\(\w*[-\w]*\b" -AllMatches).Matches.Value)  -replace "PS%\(", ""
    Write-Host $avai
    return $avai
    $pictureBox.Visible = $false
}




function GetScreenshot {
    param (
        
        [string]$topic,
        [string]$device,
        [string]$hide,
        [int]$optime,
        [int]$searchtime,
        [string]$Keyy
    )
    $nowtime = Get-Date -Format "yyyy-MM-dd HH:mm:ss"

    $IDname = $textBox_name.Text
    $global:loggs += "$nowtime {ID: $IDname} made a screenshot of {Device: $device} on {topic: $topic} using {Key: $Keyy}.`n"
    Save-LoggsToFile
    $pictureBox.Visible = $True

    $pythonScriptsm = @"
import paho.mqtt.client as mqtt
import time
from pyscreenshot import grab
from io import BytesIO
from PIL import Image
import tempfile
Key = '$Keyy'

def xor_encrypt(input_string, secret_key):
    encrypted = []
    for i, char in enumerate(input_string):
        key_char = secret_key[i % len(secret_key)]
        encrypted_char = chr(ord(char) ^ ord(key_char))
        encrypted.append(encrypted_char)
    return ''.join(encrypted)

def xor_decrypt(encrypted_string, secret_key):
    return xor_encrypt(encrypted_string, secret_key)


def whoareu(searchingtime, nachricht):
    message_list = []
    response_list = []
    def on_connect(client, userdata, flags, rc):
        restopic = '$topic' + '/response'
        client.subscribe(restopic)
    def on_message(client, userdata, message):
        message_list.append(message.payload.decode('utf-8'))
    client = mqtt.Client()
    client.on_connect = on_connect
    client.on_message = on_message
    client.connect("broker.mqttdashboard.com", 1883, 60)
    client.loop_start()
    client.publish("$topic",xor_encrypt(nachricht,Key))
    if "$hide" == "True":
        sleepy = $optime +  searchingtime + 3
    else:
        sleepy = searchingtime
    time.sleep(sleepy)
    client.loop_stop()
    for msg in message_list:
        response_list.append(msg)
    client.disconnect()
    return response_list
pubcommand = '$device' + "~" + "$hide" + "~" + "Screenshot!..." + "~" + "$optime" + "~" + "getscreen" + "~" + "py"
response_list = whoareu($searchtime, pubcommand)
concatenated = "".join(response_list)
modified_string1 = xor_decrypt(concatenated,Key)
modified_string = modified_string1.replace('%', '0').replace('&', 'f').replace(')', '2')
lines = modified_string.split('\n')
new_string = '\n'.join(lines[2:])
with open("pppp.txt", "w") as file:
    file.write(new_string)
byte_array = bytes.fromhex(new_string)
print(byte_array)


with tempfile.NamedTemporaryFile(suffix=".jpg", delete=False) as temp_file:
    temp_file.write(byte_array)

# Open the modified image and display it
image = Image.open(temp_file.name)
image.show()
"@

    Write-Host "GetScreenshot"
    $pythonScriptPath = [System.IO.Path]::GetTempFileName() + ".py"
    Write-Host $pythonScriptPath
    $pythonScriptsm | Set-Content -Path $pythonScriptPath
    & python $pythonScriptPath
    $pictureBox.Visible = $false
}

function SendMQTT {
    param (
        
        [string]$topic,
        [string]$device,
        [string]$hide,
        [string]$Notification,
        [int]$optime,
        [string]$Command,
        [string] $type,
        [int]$searchtime,
        [string]$Keyy
    )
    $nowtime = Get-Date -Format "yyyy-MM-dd HH:mm:ss"

    $IDname = $textBox_name.Text
    $global:loggs += "$nowtime {ID: $IDname} executed {Command: $Command} for {Device/s: $device} on {topic: $topic} using {Key: $Keyy}.`n"
    Save-LoggsToFile
    $pictureBox.Visible = $True

    $pythonScriptsm = @"
import paho.mqtt.client as mqtt
import time
Key = '$Keyy'

def xor_encrypt(input_string, secret_key):
    encrypted = []
    for i, char in enumerate(input_string):
        key_char = secret_key[i % len(secret_key)]
        encrypted_char = chr(ord(char) ^ ord(key_char))
        encrypted.append(encrypted_char)
    return ''.join(encrypted)

def xor_decrypt(encrypted_string, secret_key):
    return xor_encrypt(encrypted_string, secret_key)


def whoareu(searchingtime, nachricht):
    message_list = []
    response_list = []
    def on_connect(client, userdata, flags, rc):
        restopic = '$topic' + '/response'
        client.subscribe(restopic)
    def on_message(client, userdata, message):
        message_list.append(message.payload.decode('utf-8'))
    client = mqtt.Client()
    client.on_connect = on_connect
    client.on_message = on_message
    client.connect("broker.mqttdashboard.com", 1883, 60)
    client.loop_start()
    client.publish("$topic",xor_encrypt(nachricht,Key))
    if "$hide" == "True":
        sleepy = $optime + searchingtime + 3
    else:
        sleepy = searchingtime
    time.sleep(sleepy)
    client.loop_stop()
    for msg in message_list:
        response_list.append(msg)
    client.disconnect()
    return response_list
pubcommand = '$device' + "~" + "$hide" + "~" + "$Notification" + "~" + "$optime" + "~" + "$Command" + "~" + "$type"
response_list = whoareu($searchtime, pubcommand)
for msg in response_list:
    print(xor_decrypt(msg,Key))

"@

    Write-Host "SENDMQTT"
    $pythonScriptPath = [System.IO.Path]::GetTempFileName() + ".py"
    Write-Host $pythonScriptPath
    $pythonScriptsm | Set-Content -Path $pythonScriptPath
    & python $pythonScriptPath
    $pictureBox.Visible = $false
}



#####################GUI#####################

Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing
Add-Type -AssemblyName Microsoft.VisualBasic

[System.Windows.Forms.Application]::EnableVisualStyles() 

# Create a new Windows Forms window
$form = New-Object System.Windows.Forms.Form
$form.Text = 'Select a Computer'
$form.Size = New-Object System.Drawing.Size(600, 750)
$form.StartPosition = 'CenterScreen'
$form.Topmost = $false
$base64IconString ="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"
$iconimageBytes = [Convert]::FromBase64String($base64IconString)
$ims = New-Object IO.MemoryStream($iconimageBytes, 0, $iconimageBytes.Length)
$ims.Write($iconimageBytes, 0, $iconimageBytes.Length);
$form.Icon = [System.Drawing.Icon]::FromHandle((new-object System.Drawing.Bitmap -argument $ims).GetHIcon())
$imageBytes = [Convert]::FromBase64String($base64IconString)
$ms = New-Object IO.MemoryStream($imageBytes, 0, $imageBytes.Length)
$alkanelogo = [System.Drawing.Image]::FromStream($ms, $true)
$targetWidth = 60
$targetHeight = [math]::round($alkanelogo.Height * ($targetWidth / $alkanelogo.Width))
$pictureBox = New-Object Windows.Forms.PictureBox
$pictureBox.Width = $targetWidth
$pictureBox.Height = $targetHeight
$pictureBox.Location = New-Object System.Drawing.Point(120, 55)
$pictureBox.Image = $alkanelogo
$pictureBox.SizeMode = [System.Windows.Forms.PictureBoxSizeMode]::Zoom
$pictureBox.Visible = $false
$form.Controls.Add($pictureBox)



# Create a ListBox for computer selection
$listBox = New-Object System.Windows.Forms.ListBox
$listBox.Location = New-Object System.Drawing.Point(10, 190)
$listBox.Size = New-Object System.Drawing.Size(570, 200)
$listBoxFont = New-Object System.Drawing.Font("Arial", 10)
$listBox.SelectionMode = [System.Windows.Forms.SelectionMode]::MultiSimple
# Create a ContextMenuStrip with options

$contextMenu = New-Object Windows.Forms.ContextMenuStrip
$notifoptionMen = New-Object Windows.Forms.ToolStripMenuItem
$notifoptionMen.Text = "Send a Notification"
$notifoption1 = $notifoptionMen.DropDownItems.Add("Write One")
$notifoption2 = $notifoptionMen.DropDownItems.Add("Test")
$notifoption1.Add_Click({
    $selectedItem = $listBox.SelectedItems
    $notiftext = [Microsoft.VisualBasic.Interaction]::InputBox("Enter Your Notification:", "Notification", "Default value")

    Write-Host "$($option1.Text), Device: $selectedItem"
    $bol = SendMQTT -topic $DropDownBox.Text -device $selectedItem -hide false -Notification $notiftext -optime 5 -Command "" -type "ps" -searchtime 0 -Keyy $textBox_key.Text
    Write-Host $bol
    $richTextBox.SelectionColor = [System.Drawing.Color]::Black
    $richTextBox.AppendText("$($notifoption1.Text), Device: $selectedItem`n")
    $richTextBox.AppendText("$bol`n")
    $richTextBox.ScrollToCaret()
})

$notifoption2.Add_Click({
    $selectedItem = $listBox.SelectedItems
    Write-Host "$($option1.Text), Device: $selectedItem"
    $bol = SendMQTT -topic $DropDownBox.Text -device $selectedItem -hide false -Notification "This is a Notification" -optime 5 -Command "" -type "ps" -searchtime 0 -Keyy $textBox_key.Text
    Write-Host $bol
    $richTextBox.SelectionColor = [System.Drawing.Color]::Black
    $richTextBox.AppendText("$($notifoption2.Text), Device: $selectedItem`n")
    $richTextBox.AppendText("$bol`n")
    $richTextBox.ScrollToCaret()
})

$contextMenu.Items.Add($notifoptionMen)

$option2 = $contextMenu.Items.Add("Lock")
$option2.Add_Click({
    $selectedItem = $listBox.SelectedItems
    Write-Host "$($option2.Text), Device: $selectedItem"
    $bol = SendMQTT -topic $DropDownBox.Text -device $selectedItem -hide $hidecommandcheck.Checked -Notification "Locking Workstation..."  -optime 2 -Command "rundll32.exe user32.dll,LockWorkStation" -type "ps" -Keyy $textBox_key.Text 
    Write-Host $bol
    $richTextBox.SelectionColor = [System.Drawing.Color]::Black
    $richTextBox.AppendText("$($option2.Text), Device: $selectedItem`n")
    $richTextBox.ScrollToCaret()
})

$option3 = $contextMenu.Items.Add("Test Sound")
$option3.Add_Click({
    $selectedItem = $listBox.SelectedItems
    Write-Host "$($option3.Text), Device: $selectedItem"
    $bol = SendMQTT -topic $DropDownBox.Text -device $selectedItem -hide $hidecommandcheck.Checked -Notification "Testing Sound..."  -optime 1 -Command "TestSound" -type "ps" -Keyy $textBox_key.Text 
    Write-Host $bol
    $richTextBox.SelectionColor = [System.Drawing.Color]::Black
    $richTextBox.AppendText("$($option3.Text), Device: $selectedItem`n")
    $richTextBox.ScrollToCaret()
})

$browserSubMenu = New-Object Windows.Forms.ToolStripMenuItem
$browserSubMenu.Text = "Browser"
$browserOption1 = $browserSubMenu.DropDownItems.Add("Open Firefox")
$browserOption2 = $browserSubMenu.DropDownItems.Add("Open Firefox and Search")
$browserOption3 = $browserSubMenu.DropDownItems.Add("Close Firefox")

$browserOption1.Add_Click({
    $selectedItem = $listBox.SelectedItems
    Write-Host "$($browserOption1.Text), Device: $selectedItem"
    $bol = SendMQTT -topic $DropDownBox.Text -device $selectedItem -hide $hidecommandcheck.Checked -Notification "Starting Firefox..."  -optime 1 -Command "Start-Process 'firefox.exe'" -type "ps" -Keyy $textBox_key.Text 
    Write-Host $bol
    $richTextBox.SelectionColor = [System.Drawing.Color]::Black
    $richTextBox.AppendText("$($optiobrowserOption1n3.Text), Device: $selectedItem`n")
    $richTextBox.ScrollToCaret()
     })
$browserOption2.Add_Click({
    $selectedItem = $listBox.SelectedItems
    Write-Host "$($browserOption1.Text), Device: $selectedItem"
    $UrlToOpen = [Microsoft.VisualBasic.Interaction]::InputBox("Enter The URL of the Website:", "Browser", "Default value")
    $bol = SendMQTT -topic $DropDownBox.Text -device $selectedItem -hide $hidecommandcheck.Checked -Notification "Starting Firefox..."  -optime 1 -Command  "Start-Process 'firefox.exe' -ArgumentList '$UrlToOpen'"  -type "ps" -Keyy $textBox_key.Text 
    Write-Host $bol
    $richTextBox.SelectionColor = [System.Drawing.Color]::Black
    $richTextBox.AppendText("$($optiobrowserOption1n3.Text), Device: $selectedItem`n")
    $richTextBox.ScrollToCaret()
    })
$browserOption3.Add_Click({ 
    $selectedItem = $listBox.SelectedItems
    Write-Host "$($browserOption1.Text), Device: $selectedItem"
    $bol = SendMQTT -topic $DropDownBox.Text -device $selectedItem -hide $hidecommandcheck.Checked -Notification "Killing Firefox..."  -optime 1 -Command  "Stop-Process -Name 'firefox' -Force"  -type "ps" -Keyy $textBox_key.Text 
    Write-Host $bol
    $richTextBox.SelectionColor = [System.Drawing.Color]::Black
    $richTextBox.AppendText("$($optiobrowserOption1n3.Text), Device: $selectedItem`n")
    $richTextBox.ScrollToCaret()
     })

$contextMenu.Items.Add($browserSubMenu)

$option5 = $contextMenu.Items.Add("Change Background")
$option5.Add_Click({
    $UrlToOpen = [Microsoft.VisualBasic.Interaction]::InputBox("Enter The URL of the Image:", "Web Image", "Default value")
    $selectedItem = $listBox.SelectedItems
    Write-Host "$($browserOption1.Text), Device: $selectedItem"
    $bol = SendMQTT -topic $DropDownBox.Text -device $selectedItem -hide $hidecommandcheck.Checked -Notification "Changing Background..."  -optime 1 -Command  "Changepic $UrlToOpen"  -type "ps" -searchtime 1 -Keyy $textBox_key.Text
    $richTextBox.SelectionColor = [System.Drawing.Color]::Black
    $richTextBox.AppendText("$($optiobrowserOption1n3.Text), Device: $selectedItem`n")
    $richTextBox.ScrollToCaret()
    $richTextBox.SelectionFont = $specialFont
    $richTextBox.SelectionColor = [System.Drawing.Color]::Blue
    $richTextBox.AppendText("$bol`n")
    $richTextBox.ScrollToCaret()
 })


$deviceInfoSubMenu = New-Object Windows.Forms.ToolStripMenuItem
$deviceInfoSubMenu.Text = "Device Info"
$deviceInfoOption1 = $deviceInfoSubMenu.DropDownItems.Add("Basic System Information")
$deviceInfoOption2 = $deviceInfoSubMenu.DropDownItems.Add("ipconfig")
$deviceInfoOption3 = $deviceInfoSubMenu.DropDownItems.Add("Windows Prozess")

$deviceInfoOption1.Add_Click({
    $selectedItem = $listBox.SelectedItems
    Write-Host "$($browserOption1.Text), Device: $selectedItem"
    $bol = SendMQTT -topic $DropDownBox.Text -device $selectedItem -hide $hidecommandcheck.Checked -Notification "Basic System Information..."  -optime 1 -Command  "(Get-WmiObject -Class Win32_UserAccount | Select-Object Name, FullName, Disabled | Sort-Object Name) -replace ' ', ' '"  -type "ps" -searchtime 1 -Keyy $textBox_key.Text
    $richTextBox.SelectionColor = [System.Drawing.Color]::Black
    $richTextBox.AppendText("$($deviceInfoOption1.Text), Device: $selectedItem`n")
    $richTextBox.ScrollToCaret()
    Write-Host $bol

    $records = $bol -split '}'

    # Define an array to store the records as objects
    $table = @()
    
    # Process each record and create custom objects
    foreach ($record in $records) {
        # Remove unnecessary characters and split the record into key-value pairs
        $cleanedRecord = $record -replace '@{|}', '' -split '; '
    
        # Initialize variables for each record
        $name = $null
        $fullName = $null
        $disabled = $null
    
        foreach ($keyValue in $cleanedRecord) {
            $key, $value = $keyValue -split '='
            if ($key -eq "Name") {
                $name = $value
            } elseif ($key -eq "FullName") {
                $fullName = $value
            } elseif ($key -eq "Disabled") {
                $disabled = $value
            }
        }
    
        # Create a custom object with static property names
        $recordData = [PSCustomObject]@{
            'Name' = $name
            'FullName' = $fullName
            'Disabled' = $disabled
        }
    
        $table += $recordData
    }
    
    # Format the table and save it as a string
    $tableString = $table | Format-Table -AutoSize | Out-String
# Display the table string
$richTextBox.SelectionColor = [System.Drawing.Color]::Blue
$richTextBox.AppendText("$tableString`n")

})
$deviceInfoOption2.Add_Click({
    $selectedItem = $listBox.SelectedItems
    Write-Host "$($browserOption1.Text), Device: $selectedItem"
    $bol = SendMQTT -topic $DropDownBox.Text -device $selectedItem -hide $hidecommandcheck.Checked -Notification "Ipconfig..."  -optime 1 -Command  "µipInfo=Get-NetIPAddress|Select-Object InterfaceAlias,IPAddress,PrefixLength,AddressFamily;foreach(µinfo in µipInfo){Write-Output '|Interface: {0}' -f µinfo.InterfaceAlias;Write-Output '|IP Address: {0}' -f µinfo.IPAddress;Write-Output '|Prefix Length: {0}' -f µinfo.PrefixLength;Write-Output '|Address Family: {0}' -f µinfo.AddressFamily;Write-Output '|------------------------'}"  -type "ps" -searchtime 3 -Keyy $textBox_key.Text
    $richTextBox.SelectionColor = [System.Drawing.Color]::Black
    $richTextBox.AppendText("$($optiobrowserOption1n3.Text), Device: $selectedItem`n")
    $richTextBox.ScrollToCaret()
    Write-Host $bol.Replace("|", "`n") 
    $cleans = $bol.Replace("|", "`n") 
    $richTextBox.SelectionFont = $specialFont
    $richTextBox.SelectionColor = [System.Drawing.Color]::Blue
    $richTextBox.AppendText("$cleans `n")
    $richTextBox.ScrollToCaret()
 })
$deviceInfoOption3.Add_Click({ 

    $selectedItem = $listBox.SelectedItems
    Write-Host "$($browserOption1.Text), Device: $selectedItem"
    $bol = SendMQTT -topic $DropDownBox.Text -device $selectedItem -hide $hidecommandcheck.Checked -Notification "Windows Prozess..."  -optime 1 -Command  "whatprocess"  -type "ps" -searchtime 2 -Keyy $textBox_key.Text
    $richTextBox.SelectionColor = [System.Drawing.Color]::Black
    $richTextBox.AppendText("$($optiobrowserOption1n3.Text), Device: $selectedItem`n")
    $richTextBox.ScrollToCaret()
    $spstring = $bol -split ";"
    $string1 = $spstring[0..($spstring.Length / 2 - 1)]
    $string2 = $spstring[($spstring.Length / 2)..($spstring.Length - 1)]

    # Ensure both arrays have the same length
    $length = [Math]::Min($string1.Length, $string2.Length)

    # Create a formatted string that looks like a table
    $tableString = ""
    for ($i = 0; $i -lt $length; $i++) {
        $tableString += "{0,-60} {1,-60}" -f $string1[$i], $string2[$i] + "`r`n"
    }

    # Display the formatted string
    Write-Host $tableString

    Write-Host $cleans
    $richTextBox.SelectionFont = $specialFont
    $richTextBox.SelectionColor = [System.Drawing.Color]::Blue

    $richTextBox.AppendText("`n$tableString`n")
    $richTextBox.ScrollToCaret()
 })

$contextMenu.Items.Add($deviceInfoSubMenu)

$option7 = $contextMenu.Items.Add("Open by filename")
$option7.Add_Click({ 
    $selectedItem = $listBox.SelectedItems
    $notiftext = [Microsoft.VisualBasic.Interaction]::InputBox("Enter the name of the file you are searching for. Don't forget the file extension. Also, enter the time you want to search.", "Search for File", "filename.txt;10")
    Write-Host "$($option1.Text), Device: $selectedItem"
    $whatiwant = $notiftext -split ";"
    $filename = $whatiwant[0]
        Write-Host "it will open"
        Write-Host 
        $bol = SendMQTT -topic $DropDownBox.Text -device $selectedItem -hide $hidecommandcheck.Checked -Notification "Searching for file..." -optime 2 -Command "import os;path = ([os.path.normpath(os.path.join(root, filename)) for root, dirs, files in os.walk(r'C://Users') for filename in files if '$filename' == filename])[0];os.startfile(path)" -type "py" -searchtime $whatiwant[1] -Keyy $textBox_key.Text
      ############################################# ich mache es mit python weil ps nichtfunktioniert hat aufgrund der \ \\ /

    Write-Host $bol
    $richTextBox.SelectionColor = [System.Drawing.Color]::Black
    $richTextBox.AppendText("$($option1.Text), Device: $selectedItem`n")
    $richTextBox.AppendText("$bol`n")
    $richTextBox.ScrollToCaret()
})


$option8 = $contextMenu.Items.Add("Get Screenshot")

$option8.Add_Click({
    $selectedItem = $listBox.SelectedItems
    Write-Host "$($option8.Text), Device: $selectedItem"
    GetScreenshot -topic $DropDownBox.Text -device $selectedItem -hide $hidecommandcheck.Checked -type "py" -optime 2 -searchtime 45 -Keyy $textBox_key.Text
    $richTextBox.SelectionColor = [System.Drawing.Color]::Black
    $richTextBox.AppendText("$($option8.Text), Device: $selectedItem`n")
    $richTextBox.ScrollToCaret()
})


$volumeOptionsSubMenu = New-Object Windows.Forms.ToolStripMenuItem
$volumeOptionsSubMenu.Text = "Volume Options"
$volumeOption1 = $volumeOptionsSubMenu.DropDownItems.Add("Set Volume")
$volumeOption2 = $volumeOptionsSubMenu.DropDownItems.Add("MUTE")
$volumeOption3 = $volumeOptionsSubMenu.DropDownItems.Add("MAX ")

$volumeOption1.Add_Click({
    $selectedItem = $listBox.SelectedItems
    Write-Host "$($option8.Text), Device: $selectedItem"
    $notiftext = [Microsoft.VisualBasic.Interaction]::InputBox("Enter the Volume you want to set", "Set Volume", "25")
    SendMQTT -topic $DropDownBox.Text -device $selectedItem -hide $hidecommandcheck.Checked -type "ps" -optime 2 -searchtime 1 -Command "VOLU&ME $notiftext" -Notification "Seting Volume on $notiftext" -Keyy $textBox_key.Text
    $richTextBox.SelectionColor = [System.Drawing.Color]::Black
    $richTextBox.AppendText("$($volumeOption1.Text), Device: $selectedItem Process Done`n")
    $richTextBox.ScrollToCaret()
})
$volumeOption2.Add_Click({
    $selectedItem = $listBox.SelectedItems
    Write-Host "$($volumeOption2.Text), Device: $selectedItem"
    SendMQTT -topic $DropDownBox.Text -device $selectedItem -hide $hidecommandcheck.Checked -type "ps" -optime 2 -searchtime 1 -Command "VOLU&ME 0" -Notification "Muting" -Keyy $textBox_key.Text 
    $richTextBox.SelectionColor = [System.Drawing.Color]::Black
    $richTextBox.AppendText("$($volumeOption2.Text), Device: $selectedItem Process Done`n")
    $richTextBox.ScrollToCaret()

})
$volumeOption3.Add_Click({ 
    $selectedItem = $listBox.SelectedItems
    Write-Host "$($volumeOption3.Text), Device: $selectedItem"
    SendMQTT -topic $DropDownBox.Text -device $selectedItem -hide $hidecommandcheck.Checked -type "ps" -optime 2 -searchtime 1 -Command "VOLU&ME 100" -Notification "Seting Volume on 100" -Keyy $textBox_key.Text
    $richTextBox.SelectionColor = [System.Drawing.Color]::Black
    $richTextBox.AppendText("$($volumeOption3.Text), Device: $selectedItem Process Done`n")
    $richTextBox.ScrollToCaret()
 })

$contextMenu.Items.Add($volumeOptionsSubMenu)


















$option10 = $contextMenu.Items.Add("Send Keyboard Key")

$option10.Add_Click({ 

$listt = @()
$mform = New-Object System.Windows.Forms.Form
$mform.Text = "Mini GUI"
$mform.Size = New-Object System.Drawing.Size(300, 200)
$mform.StartPosition = "CenterScreen"
$okButtonClick = {
    $mform.DialogResult = [System.Windows.Forms.DialogResult]::OK
    $mform.Close()
}

# Create tab control
$tabControl = New-Object System.Windows.Forms.TabControl
$tabControl.Size = New-Object System.Drawing.Size(280, 150)
$tabControl.Dock = [System.Windows.Forms.DockStyle]::Fill

# Create tabs
$tabHotkeys = New-Object System.Windows.Forms.TabPage
$tabHotkeys.Text = "Hotkeys"
$tabPress = New-Object System.Windows.Forms.TabPage
$tabPress.Text = "Press"
$tabWrite = New-Object System.Windows.Forms.TabPage
$tabWrite.Text = "Write"
$tabInfo = New-Object System.Windows.Forms.TabPage
$tabInfo.Text = "Info"

# Add controls to each tab
$oneLineTextBox1 = New-Object Windows.Forms.TextBox
$oneLineTextBox1.Location = New-Object Drawing.Point(30, 50)
$oneLineTextBox1.Size = New-Object Drawing.Size(30, 20)
$tabHotkeys.Controls.Add($oneLineTextBox1)

$oneLineTextBox2 = New-Object Windows.Forms.TextBox
$oneLineTextBox2.Location = New-Object Drawing.Point(70, 50)
$oneLineTextBox2.Size = New-Object Drawing.Size(30, 20)
$tabHotkeys.Controls.Add($oneLineTextBox2)

$oneLineTextBox3 = New-Object Windows.Forms.TextBox
$oneLineTextBox3.Location = New-Object Drawing.Point(110, 50)
$oneLineTextBox3.Size = New-Object Drawing.Size(30, 20)
$tabHotkeys.Controls.Add($oneLineTextBox3)

$oneLineTextBox4 = New-Object Windows.Forms.TextBox
$oneLineTextBox4.Location = New-Object Drawing.Point(110, 50)
$oneLineTextBox4.Size = New-Object Drawing.Size(50, 20)
$tabPress.Controls.Add($oneLineTextBox4)


$oneLineTextBox5 = New-Object Windows.Forms.TextBox
$oneLineTextBox5.Location = New-Object Drawing.Point(20, 50)
$oneLineTextBox5.Size = New-Object Drawing.Size(150, 20)
$tabWrite.Controls.Add($oneLineTextBox5)

# Create RichTextBox control
$richText = New-Object System.Windows.Forms.RichTextBox
$richText.Multiline = $true
$richText.ScrollBars = "Vertical"
$richText.ReadOnly = $true
$richText.Dock = [System.Windows.Forms.DockStyle]::Fill

# Set the text content
$textContent = @"
Alt Key: Alt
Control Key: Ctrl
Shift Key: Shift
Windows Key: Win
Function Keys (F1-F12): F1, F2, ..., F12
Arrow Keys: Up, Down, Left, Right
Space Bar: Space
Enter Key: Enter
Tab Key: Tab
Backspace Key: Backspace
Delete Key: Del
Escape Key: Esc
Print Screen Key: PrtSc or PrintScreen
Insert Key: Insert
Home Key: Home
End Key: End
Page Up Key: PgUp
Page Down Key: PgDown
Caps Lock Key: CapsLock
Num Lock Key: NumLock
Scroll Lock Key: ScrollLock
"@

$richText.Text = $textContent


$tabHotkeys.Controls.Add((
New-Object System.Windows.Forms.Button -Property @{
    Text = "OK"
    Location = New-Object System.Drawing.Point(120, 90)
    Add_Click = {
        $selectedItem = $listBox.SelectedItems

        $value1 = $oneLineTextBox1.Text
        $value2 = $oneLineTextBox2.Text
        $value3 = $oneLineTextBox3.Text
        SendMQTT -topic $DropDownBox.Text -device $selectedItem -hide $true -type "py" -optime 0 -searchtime 0.1 -Command "import pyautogui;pyautogui.hotkey('$value1','$value2','$value3');print('made')" -Notification "" -Keyy $textBox_key.Text
        Write-Host "Value 1: $value1, Value 2: $value2, Value 3: $value3"
        $listt += "f"
        $listt += $value1
        $listt += $value2
        $listt += $value3
        $okButtonClick.Invoke()
    }

}))

$tabPress.Controls.Add((
New-Object System.Windows.Forms.Button -Property @{
    Text = "OK"
    Location = New-Object System.Drawing.Point(120, 90)
    Add_Click = {
        $selectedItem = $listBox.SelectedItems

        $value4 = $oneLineTextBox4.Text
        SendMQTT -topic $DropDownBox.Text -device $selectedItem -hide $true -type "py" -optime 2 -searchtime 1 -Command "import pyautogui;pyautogui.press('$value4');print('made')" -Notification "" -Keyy $textBox_key.Text
        Write-Host "Press: $value4"
        $listt += "s"
        $listt += $value4
        $okButtonClick.Invoke()
    }

}))

$tabWrite.Controls.Add((
New-Object System.Windows.Forms.Button -Property @{
    Text = "OK"
    Location = New-Object System.Drawing.Point(120, 90)
    Add_Click = {
        $selectedItem = $listBox.SelectedItems
        $value5 = $oneLineTextBox5.Text
        SendMQTT -topic $DropDownBox.Text -device $selectedItem -hide $true -type "py" -optime 0 -searchtime 0.1 -Command "import pyautogui;pyautogui.write('$value5');print('made')" -Notification "" -Keyy $textBox_key.Text


        Write-Host "Write: $value5"
        $listt += "t"
        $listt += $value5
        $okButtonClick.Invoke()
    }

}))


$tabPress.Controls.Add((New-Object System.Windows.Forms.Label -Property @{
    Text = "Specify the press settings."
    Location = New-Object System.Drawing.Point(10, 10)
}))
$tabControl.TabPages.Add($tabHotkeys)
$tabControl.TabPages.Add($tabPress)
$tabControl.TabPages.Add($tabWrite)
$tabControl.TabPages.Add($tabInfo)
$tabInfo.Controls.Add($richText)
$mform.Controls.Add($tabControl)
$result = $mform.ShowDialog()


Write-Host "This is it: $result"
Write-Host "$listt"


 })

$powerSubMenu = New-Object Windows.Forms.ToolStripMenuItem
$powerSubMenu.Text = "Power"
$powerOption1 = $powerSubMenu.DropDownItems.Add("Shutdown")
$powerOption2 = $powerSubMenu.DropDownItems.Add("New Start")
$powerOption1.Add_Click({
    $selectedItem = $listBox.SelectedItems
    Write-Host "$($browserOption1.Text), Device: $selectedItem"
    $bol = SendMQTT -topic $DropDownBox.Text -device $selectedItem -hide $hidecommandcheck.Checked -Notification "shutdown"  -optime 1 -Command  "Stop-Computer -Force"  -type "ps" -searchtime 1 -Keyy $textBox_key.Text
    $richTextBox.SelectionColor = [System.Drawing.Color]::Black
    $richTextBox.AppendText("$($optiobrowserOption1n3.Text), Device: $selectedItem`n")
    $richTextBox.ScrollToCaret()
    $richTextBox.SelectionFont = $specialFont
    $richTextBox.SelectionColor = [System.Drawing.Color]::Blue
    $richTextBox.AppendText("$bol`n")
    $richTextBox.ScrollToCaret()

})
$powerOption2.Add_Click({
    $selectedItem = $listBox.SelectedItems
    Write-Host "$($browserOption1.Text), Device: $selectedItem"
    $bol = SendMQTT -topic $DropDownBox.Text -Keyy $textBox_key.Text -device $selectedItem -hide $hidecommandcheck.Checked -Notification "shutdown"  -optime 1 -Command  " Restart-Computer -Force"  -type "ps" -searchtime 1
    $richTextBox.SelectionColor = [System.Drawing.Color]::Black
    $richTextBox.AppendText("$($optiobrowserOption1n3.Text), Device: $selectedItem`n")
    $richTextBox.ScrollToCaret()
    $richTextBox.SelectionFont = $specialFont
    $richTextBox.SelectionColor = [System.Drawing.Color]::Blue
    $richTextBox.AppendText("$bol`n")
    $richTextBox.ScrollToCaret()
     })
$option11 = $contextMenu.Items.Add("Send Powershell Code")
$option11.Add_Click({
    $selectedItem = $listBox.SelectedItems
    Write-Host "$($option11.Text), Device: $selectedItem"
    $codeform = New-Object Windows.Forms.Form
    $codeform.Text = "Mauell Powershell Code input"
    $codeform.Size = New-Object Drawing.Size(400, 200)
    $codeform.FormBorderStyle = [System.Windows.Forms.FormBorderStyle]::FixedDialog
    $codeform.MaximizeBox = $false

    # Create a multiline text box
    $multiLineTextBox = New-Object Windows.Forms.TextBox
    $multiLineTextBox.Multiline = $true
    $multiLineTextBox.ScrollBars = [System.Windows.Forms.ScrollBars]::Both
    $multiLineTextBox.Location = New-Object Drawing.Point(10, 50)
    $multiLineTextBox.Size = New-Object Drawing.Size(360, 100)
    $codeform.Controls.Add($multiLineTextBox)

    $oneLineLabel = New-Object Windows.Forms.Label
    $oneLineLabel.Text = "Process time: "
    $oneLineLabel.Location = New-Object Drawing.Point(160, 12)
    $oneLineLabel.Size = New-Object Drawing.Size(80, 20)
    $codeform.Controls.Add($oneLineLabel)

    $lala = New-Object Windows.Forms.Label
    $lala.Text = ".)Avoid using '~'`n.)Replace '$' with 'µ'"
    $lala.Location = New-Object Drawing.Point(10, 10)
    $lala.Size = New-Object Drawing.Size(195, 40)
    $codeform.Controls.Add($lala)

    # Create a one-line text box
    $oneLineTextBox = New-Object Windows.Forms.TextBox
    $oneLineTextBox.Location = New-Object Drawing.Point(240, 12)
    $oneLineTextBox.Size = New-Object Drawing.Size(30, 20)
    $codeform.Controls.Add($oneLineTextBox)

    # Create an OK button
    $okButton = New-Object Windows.Forms.Button
    $okButton.Text = "OK"
    $okButton.Location = New-Object Drawing.Point(290, 10)
    $okButton.Size = New-Object Drawing.Size(80, 30)
    $okButton.DialogResult = [System.Windows.Forms.DialogResult]::OK
    $codeform.Controls.Add($okButton)
    $result = $codeform.ShowDialog()
    $codeform.CancelButton = $okButton

    # Display the values entered by the user
    if ($result -eq [System.Windows.Forms.DialogResult]::OK) {
        $multiLineText = $multiLineTextBox.Text -replace "`r?`n", "; "
        $oneLineText = $oneLineTextBox.Text
        Write-Host $multiLineText
        Write-Host $oneLineText
    }
    $codeform.Dispose()
    $bol = SendMQTT -topic $DropDownBox.Text -device $selectedItem -hide $hidecommandcheck.Checked -Notification "ps..." -optime 5 -Command $multiLineText -type "ps" -searchtime $oneLineText -Keyy $textBox_key.Text
    Write-Host $bol
    $richTextBox.SelectionColor = [System.Drawing.Color]::Black
    $richTextBox.AppendText("$($option11.Text), Device: $selectedItem`n")
    $richTextBox.ScrollToCaret()
    $richTextBox.AppendText("$bol`n")
    $richTextBox.ScrollToCaret()
})
$contextMenu.Items.Add($powerSubMenu)

$listBox.ContextMenuStrip = $contextMenu
$listBox.Font = $listBoxFont
$form.Controls.Add($listBox)



# Create a RichTextBox acting as a console
$richTextBox = New-Object System.Windows.Forms.RichTextBox
$richTextBox.Location = New-Object System.Drawing.Point(10, 400)
$richTextBox.Size = New-Object System.Drawing.Size(570, 300)
$richTextBox.ReadOnly = $true
$richTextBox.WordWrap = $false
$richTextBox.Multiline = $true
$richTextBox.ScrollBars = "Both"

$standardFont = New-Object System.Drawing.Font("Courier New", 10)
$richTextBox.Font = $standardFont
$specialFont = New-Object System.Drawing.Font("Terminal", 10)

$form.Controls.Add($richTextBox)




$groupBox = New-Object System.Windows.Forms.GroupBox
$groupBox.Location = New-Object System.Drawing.Size(195,20) 
$groupBox.size = New-Object System.Drawing.Size(130,120) 
$groupBox.text = "Processor Info:" 
$Form.Controls.Add($groupBox) 

############################################## end group boxes

############################################## Start check boxes
$hidecommandcheck = New-Object System.Windows.Forms.CheckBox
$hidecommandcheck.Location = New-Object System.Drawing.Point(10, 20)
$hidecommandcheck.Size = New-Object System.Drawing.Size(100, 20)
$hidecommandcheck.Text = "Hide Notif"
$hidecommandcheck.Checked = $true

$groupBox.Controls.Add($hidecommandcheck)

# Add a CheckedChanged event handler
$hidecommandcheck.add_CheckedChanged({
    $was = $hidecommandcheck.Checked
    Write-Host $was  # Write the value of the checkbox to the console
})



$procLoad = New-Object System.Windows.Forms.checkbox
$procLoad.Location = New-Object System.Drawing.Size(10,45)
$procLoad.Size = New-Object System.Drawing.Size(100,20)
$procLoad.Text = "Coming Soon"
$groupBox.Controls.Add($procLoad)

$procSpeed = New-Object System.Windows.Forms.checkbox
$procSpeed.Location = New-Object System.Drawing.Size(10,70)
$procSpeed.Size = New-Object System.Drawing.Size(100,20)
$procSpeed.Checked = $true
$procSpeed.Text = "Coming Soon"
$groupBox.Controls.Add($procSpeed)






############################################## Start drop down boxes


$groupBoxreg = New-Object System.Windows.Forms.GroupBox
$groupBoxreg.Location = New-Object System.Drawing.Size(325,20) 
$groupBoxreg.size = New-Object System.Drawing.Size(225,120) 
$groupBoxreg.text = "Register" 
$Form.Controls.Add($groupBoxreg) 

# Create a label
$label_nam = New-Object System.Windows.Forms.Label
$label_nam.Text = 'ID: '
$label_nam.Location = New-Object System.Drawing.Point(10, 22)
$label_nam.Size = New-Object System.Drawing.Size(45, 30)
$groupBoxreg.Controls.Add($label_nam)

# Create a label
$label_pas = New-Object System.Windows.Forms.Label
$label_pas.Text = 'KEY: '
$label_pas.Location = New-Object System.Drawing.Point(10, 52)
$label_pas.Size = New-Object System.Drawing.Size(45, 30)
$groupBoxreg.Controls.Add($label_pas)

# Create a label
$label_top = New-Object System.Windows.Forms.Label
$label_top.Text = 'TOPIC: '
$label_top.Location = New-Object System.Drawing.Point(10, 82)
$label_top.Size = New-Object System.Drawing.Size(45, 30)
$groupBoxreg.Controls.Add($label_top)


$textBox_name = New-Object Windows.Forms.TextBox
$textBox_name.Location = New-Object Drawing.Point(60, 22)
$textBox_name.Size = New-Object Drawing.Size(150, 20)
$groupBoxreg.Controls.Add($textBox_name)

$textBox_key = New-Object Windows.Forms.TextBox
$textBox_key.Location = New-Object Drawing.Point(60, 52)
$textBox_key.Size = New-Object Drawing.Size(150, 20)


$groupBoxreg.Controls.Add($textBox_key)
$DropDownBox = New-Object System.Windows.Forms.ComboBox
$DropDownBox.Location = New-Object System.Drawing.Size(60,80) 
$DropDownBox.Size = New-Object System.Drawing.Size(150,20) 
$DropDownBox.DropDownHeight = 200 
$groupBoxreg.Controls.Add($DropDownBox) 

$wksList = Get-Content -Path ".\topics.txt"

foreach ($wks in $wksList) {
    $DropDownBox.Items.Add($wks)
}

############################################## end drop down boxes




$label_src = New-Object System.Windows.Forms.Label
$label_src.Text = 'Search '
$label_src.Location = New-Object System.Drawing.Point(20, 160)
$label_src.Size = New-Object System.Drawing.Size(42, 30)
$form.Controls.Add($label_src)

$searchbox = New-Object Windows.Forms.TextBox
$searchbox.Location = New-Object Drawing.Point(65, 155)
$searchbox.Size = New-Object Drawing.Size(150, 20)
$form.Controls.Add($searchbox)

# Create a button to view the selected item
$btn_vw = New-Object System.Windows.Forms.Button
$btn_vw.Location = New-Object System.Drawing.Point(10, 25)
$btn_vw.Size = New-Object System.Drawing.Size(100, 30)
$btn_vw.Text = 'View Selected'
$btn_vw.Add_Click({
    $selectedItems = $listBox.SelectedItems

    if ($selectedItems.Count -eq 0) {
        $richTextBox.SelectionColor = [System.Drawing.Color]::Red
        $richTextBox.AppendText("No Devices selected`n")
        $richTextBox.ScrollToCaret()
    } else {
        $richTextBox.SelectionColor = [System.Drawing.Color]::Black
        $richTextBox.AppendText("Selected Devices:`n")
        $richTextBox.ScrollToCaret()
        foreach ($item in $selectedItems) {
            Write-Host $item
            $richTextBox.SelectionColor = [System.Drawing.Color]::Green
            $richTextBox.AppendText("$item`n")
            $richTextBox.ScrollToCaret()
        }
    }
})
$form.Controls.Add($btn_vw)
# Create a button to view the selected item
$btn_sa = New-Object System.Windows.Forms.Button
$btn_sa.Location = New-Object System.Drawing.Point(250, 150)
$btn_sa.Size = New-Object System.Drawing.Size(100, 30)
$btn_sa.Text = 'Select All'
$btn_sa.Add_Click({
$listBox.SelectedItems.Clear() # Clear any previous selections

for ($i = 0; $i -lt $listBox.Items.Count; $i++) {
    $listBox.SetSelected($i, $true)
}
})
$form.Controls.Add($btn_sa)
# Create a button to view the selected item
$btn_ref = New-Object System.Windows.Forms.Button
$btn_ref.Location = New-Object System.Drawing.Point(350, 150)
$btn_ref.Size = New-Object System.Drawing.Size(100, 30)
$btn_ref.Text = 'Refresh'
$form.Controls.Add($btn_ref)
# Create a button to view the selected item
$btn_prc = New-Object System.Windows.Forms.Button
$btn_prc.Location = New-Object System.Drawing.Point(475, 150)
$btn_prc.Size = New-Object System.Drawing.Size(100, 30)
$btn_prc.Text = 'Process'
$form.Controls.Add($btn_prc)

# Create a button to view the selected item
$btn_vl = New-Object System.Windows.Forms.Button
$btn_vl.Location = New-Object System.Drawing.Point(10, 70)
$btn_vl.Size = New-Object System.Drawing.Size(100, 30)
$btn_vl.Text = 'View Logs'
$btn_vl.Add_Click({
    $richTextBox.SelectionColor = [System.Drawing.Color]::BlueViolet
    $richTextBox.AppendText("Loggs:`n $($global:loggs -join ', ')`n")
    $richTextBox.ScrollToCaret()
    $richTextBox.ScrollToCaret()})
$form.Controls.Add($btn_vl)

$btn_sav = New-Object System.Windows.Forms.Button
$btn_sav.Location = New-Object System.Drawing.Point(10, 110)
$btn_sav.Size = New-Object System.Drawing.Size(100, 30)
$btn_sav.Text = 'Save Console'
$btn_sav.Add_Click({
    Save-Consolle
    $richTextBox.SelectionColor = [System.Drawing.Color]::Green
    $richTextBox.AppendText("Console Saved in MAMSUS_Console.txt`n")})
    $richTextBox.ScrollToCaret()


$form.Controls.Add($btn_sav)

$richTextBox.SelectionColor = [System.Drawing.Color]::FromArgb(0xE1, 0x38, 0x55)
$richTextBox.AppendText(" _____ _____ _____ _____ _____ _____`n")
$richTextBox.SelectionColor = [System.Drawing.Color]::FromArgb(0xE1, 0x38, 0x55)
$richTextBox.AppendText("|     |  _  |     |   __|  |  |   __|`n")
$richTextBox.SelectionColor = [System.Drawing.Color]::FromArgb(0xE1, 0x38, 0x55)
$richTextBox.AppendText("| | | |     | | | |__   |  |  |__   |`n")
$richTextBox.SelectionColor = [System.Drawing.Color]::FromArgb(0xE1, 0x38, 0x55)
$richTextBox.AppendText("|_|_|_|__|__|_|_|_|_____|_____|_____|`n")
$richTextBox.SelectionColor = [System.Drawing.Color]::FromArgb(0xE1, 0x38, 0x55)
$richTextBox.SelectionColor = [System.Drawing.Color]:: Black


$btn_ref.Add_Click({
    $listBox.Items.Clear()  # Remove all existing items from the ListBox
    $enteredValue = $DropDownBox.Text
    if ($enteredValue -ne "") {
        if ($enteredValue -notin $DropDownBox.Items) {
            [void]$DropDownBox.Items.Add($enteredValue)
            Add-Content -Path ".\topics.txt" -Value "`n$enteredValue"
            Write-Host "Value '$enteredValue' added to the list."
            $richTextBox.SelectionColor = [System.Drawing.Color]::Black
            $richTextBox.AppendText("Value '$enteredValue' added to the list.`n")
            $richTextBox.ScrollToCaret()
        } else {
            Write-Host "Value '$enteredValue' is already in the list."
            $richTextBox.SelectionColor = [System.Drawing.Color]::Black
            $richTextBox.AppendText("Value '$enteredValue' is already in the list.`n")
            $richTextBox.ScrollToCaret()
        }
        $richTextBox.SelectionColor = [System.Drawing.Color]::Blue
        $richTextBox.AppendText("Searching for Devices in '$enteredValue'...`n")
        $richTextBox.ScrollToCaret()

        $newItems = WhoAreU -searchingTime 3 -topic $DropDownBox.Text -bef "!Whoareu" -Keyy $textBox_key.Text
        $newItems
        if ($newItems -eq ""){
            $richTextBox.SelectionColor = [System.Drawing.Color]::Red  # Set the text color
            $richTextBox.AppendText("NO DEVICES FOUND`n")
            $richTextBox.ScrollToCaret()
        }else{
        $richTextBox.SelectionColor = [System.Drawing.Color]::Green  # Set the text color
        $richTextBox.AppendText("Devices Found`n")
        $richTextBox.ScrollToCaret()
        foreach ($item in $newItems) {
            [void]$listBox.Items.Add($item)  # Add new items to the ListBox
        }}
    } else {
        $newItems = WhoAreU -searchingTime 2 -topic $DropDownBox.Item -Keyy $textBox_key.Text
        $newItems
        if ($newItems -eq ""){
            $richTextBox.SelectionColor = [System.Drawing.Color]::Red  # Set the text color
            $richTextBox.AppendText("NO DEVICES FOUND`n")
            $richTextBox.ScrollToCaret()
        }else{
        $richTextBox.SelectionColor = [System.Drawing.Color]::Green  # Set the text color
        $richTextBox.AppendText("Devices Found`n")
        $richTextBox.ScrollToCaret()
        foreach ($item in $newItems) {
            [void]$listBox.Items.Add($item)  # Add new items to the ListBox
        }}

        Write-Host "Entered value is null."

    }
})


$result = $form.ShowDialog()

