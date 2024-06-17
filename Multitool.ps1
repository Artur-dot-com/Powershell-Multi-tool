Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing

# Peamine vorm
$Form = New-Object System.Windows.Forms.Form
$Form.Text = "Artur's MultiShitbox"
$Form.Size = New-Object System.Drawing.Size(500, 400)  # Kohanda vormi esialgset suurust
$Form.FormBorderStyle = [System.Windows.Forms.FormBorderStyle]::FixedSingle  # Keela suuruse muutmine
$Form.StartPosition = [System.Windows.Forms.FormStartPosition]::CenterScreen  # Keskendu ekraanile
$Form.BackColor = [System.Drawing.Color]::DarkCyan  # Määra taustavärv halliks

# Määra font
$Font = New-Object System.Drawing.Font("Helvetica", 12)
$Form.Font = $Font

# Määra vormi ikooniks vaikimisi PowerShelli ikoon
$iconPath = [System.IO.Path]::Combine([System.Environment]::SystemDirectory, "WindowsPowerShell\\v1.0\\powershell.exe")
$Form.Icon = [System.Drawing.Icon]::ExtractAssociatedIcon($iconPath)

# Nuppude parameetrid
$ButtonWidth = 150  # Kohanda nuppude laiust
$ButtonHeight = 40  # Kohanda nuppude kõrgust

# TabControl
$TabControl = New-Object System.Windows.Forms.TabControl
$TabControl.Dock = [System.Windows.Forms.DockStyle]::Fill
$TabControl.Font = $Font
$Form.Controls.Add($TabControl)

# "Information" leht
$InformationTabPage = New-Object System.Windows.Forms.TabPage
$InformationTabPage.Text = "Information"

# Information Tab
$InformationTabPage = New-Object System.Windows.Forms.TabPage
$InformationTabPage.Text = "Information"

# "Information" sektsioon GroupBox
$InformationGroupBox = New-Object System.Windows.Forms.GroupBox
$InformationGroupBox.Text = "Information" 
$InformationGroupBox.Location = New-Object System.Drawing.Point(20, 20)
$InformationGroupBox.Size = New-Object System.Drawing.Size(350, 240)
$InformationGroupBox.Font = $Font

# Lisa TextBox Information GroupBox jaoks
$InformationTextBox = New-Object System.Windows.Forms.TextBox
$InformationTextBox.Location = New-Object System.Drawing.Point(20, 40)
$InformationTextBox.Size = New-Object System.Drawing.Size(300, 200)
$InformationTextBox.Multiline = $true
$InformationTextBox.ReadOnly = $true
$InformationTextBox.Text = "Made by: Artur Landberg `nGroup: IT22`nProject name: Powershell Multitoolbox`nLast update: 0:20 18.06.2024 `nIs it gonna be ever used: No"
$InformationGroupBox.Controls.Add($InformationTextBox)

# Add the GroupBox to the Information Tab
$InformationTabPage.Controls.Add($InformationGroupBox)

# Add the Information Tab to the TabControl
$TabControl.TabPages.Add($InformationTabPage)

# Tools Tab
$ToolsTabPage = New-Object System.Windows.Forms.TabPage
$ToolsTabPage.Text = "Tools"

# "Tools" sektsiooni jaoks GroupBox
$ToolsGroupBox = New-Object System.Windows.Forms.GroupBox
$ToolsGroupBox.Text = "Tools"
$ToolsGroupBox.Location = New-Object System.Drawing.Point(20, 20)
$ToolsGroupBox.Size = New-Object System.Drawing.Size(350, 240)
$ToolsGroupBox.Font = $Font

# Control Panel Button
$ControlPanelButton = New-Object System.Windows.Forms.Button
$ControlPanelButton.Text = "Control Panel"
$ControlPanelButton.Location = New-Object System.Drawing.Point(30, 40)
$ControlPanelButton.Size = New-Object System.Drawing.Size($ButtonWidth, $ButtonHeight)
$ControlPanelButton.Font = $Font
$ControlPanelButton.Add_Click({
    control.exe
})
$ToolsGroupBox.Controls.Add($ControlPanelButton)

# Network Connections Button
$NetworkConnectionsButton = New-Object System.Windows.Forms.Button
$NetworkConnectionsButton.Text = "Network Connections"
$NetworkConnectionsButton.Location = New-Object System.Drawing.Point(30, 90)
$NetworkConnectionsButton.Size = New-Object System.Drawing.Size($ButtonWidth, $ButtonHeight)
$NetworkConnectionsButton.Font = $Font
$NetworkConnectionsButton.Add_Click({
    control.exe ncpa.cpl
})
$ToolsGroupBox.Controls.Add($NetworkConnectionsButton)

# Programs And Features Button
$ProgramsAndFeaturesButton = New-Object System.Windows.Forms.Button
$ProgramsAndFeaturesButton.Text = "Programs and Features"
$ProgramsAndFeaturesButton.Location = New-Object System.Drawing.Point(30, 140)
$ProgramsAndFeaturesButton.Size = New-Object System.Drawing.Size($ButtonWidth, $ButtonHeight)
$ProgramsAndFeaturesButton.Font = $Font
$ProgramsAndFeaturesButton.Add_Click({
    control.exe appwiz.cpl
})
$ToolsGroupBox.Controls.Add($ProgramsAndFeaturesButton)

# Computer Management Button
$ComputerManagementButton = New-Object System.Windows.Forms.Button
$ComputerManagementButton.Text = "Computer Management"
$ComputerManagementButton.Location = New-Object System.Drawing.Point(30, 190)
$ComputerManagementButton.Size = New-Object System.Drawing.Size($ButtonWidth, $ButtonHeight)
$ComputerManagementButton.Font = $Font
$ComputerManagementButton.Add_Click({
    compmgmt.msc
})
$ToolsGroupBox.Controls.Add($ComputerManagementButton)

# Registry Editor Button
$RegeditButton = New-Object System.Windows.Forms.Button
$RegeditButton.Text = "Registry Editor"
$RegeditButton.Location = New-Object System.Drawing.Point(190, 40)
$RegeditButton.Size = New-Object System.Drawing.Size($ButtonWidth, $ButtonHeight)
$RegeditButton.Font = $Font
$RegeditButton.Add_Click({
    regedit
})
$ToolsGroupBox.Controls.Add($RegeditButton)

# Power Options Button
$PowerOptionsButton = New-Object System.Windows.Forms.Button
$PowerOptionsButton.Text = "Power Options"
$PowerOptionsButton.Location = New-Object System.Drawing.Point(190, 90)
$PowerOptionsButton.Size = New-Object System.Drawing.Size($ButtonWidth, $ButtonHeight)
$PowerOptionsButton.Font = $Font
$PowerOptionsButton.Add_Click({
    powercfg.cpl
})
$ToolsGroupBox.Controls.Add($PowerOptionsButton)

# Debloater Button
$DebloaterButton = New-Object System.Windows.Forms.Button
$DebloaterButton.Text = "Windows 10/11 Debloater"
$DebloaterButton.Size = New-Object System.Drawing.Size($ButtonWidth, $ButtonHeight)
$DebloaterButton.Location = New-Object System.Drawing.Point(190, 140)
$DebloaterButton.Font = $Font
$ToolsGroupBox.Controls.Add($DebloaterButton)

# Debloateri aken
$DebloaterForm = New-Object System.Windows.Forms.Form
$DebloaterForm.Text = "Windows 10/11 Debloater"
$DebloaterForm.Size = New-Object System.Drawing.Size(400, 300)
$DebloaterForm.StartPosition = [System.Windows.Forms.FormStartPosition]::CenterScreen
$DebloaterForm.BackColor = [System.Drawing.Color]::White
$DebloaterForm.Font = $Font

# Debloateri nuppude parameetrid
$DebloaterButtonWidth = 350
$DebloaterButtonHeight = 40

# Loo nupp "Remove Bloatware"
$RemoveBloatwareButton = New-Object System.Windows.Forms.Button
$RemoveBloatwareButton.Text = "Eemalda Bloatware"
$RemoveBloatwareButton.Size = New-Object System.Drawing.Size($DebloaterButtonWidth, $DebloaterButtonHeight)
$RemoveBloatwareButton.Location = New-Object System.Drawing.Point(25, 50)
$RemoveBloatwareButton.Font = $Font

# Lisa nupud Debloateri aknasse
$DebloaterForm.Controls.Add($RemoveBloatwareButton)

# Nuppude sündmuste käsitlejad
$DebloaterButton.Add_Click({
    $DebloaterForm.ShowDialog()
})

$RemoveBloatwareButton.Add_Click({
    [System.Windows.Forms.MessageBox]::Show("Bloatware eemaldamine...")
    # Siia saab lisada debloateri käsud
})

# Tools Tab Content
$ToolsTabPage.Controls.Add($ToolsGroupBox)
$TabControl.TabPages.Add($ToolsTabPage)

# Tweaks Tab
$TweaksTabPage = New-Object System.Windows.Forms.TabPage
$TweaksTabPage.Text = "Tweaks"

# "Tweaks" sektsiooni jaoks GroupBox
$TweaksGroupBox = New-Object System.Windows.Forms.GroupBox
$TweaksGroupBox.Text = "Tweaks"
$TweaksGroupBox.Location = New-Object System.Drawing.Point(20, 20)
$TweaksGroupBox.Size = New-Object System.Drawing.Size(350, 240)
$TweaksGroupBox.Font = $Font

# Tweak nuppude parameetrid
$TweakButtonWidth = 280
$TweakButtonHeight = 30

# Show File Extensions
$ShowFileExtensionsButton = New-Object System.Windows.Forms.CheckBox
$ShowFileExtensionsButton.Text = "Show File Extensions"
$ShowFileExtensionsButton.Location = New-Object System.Drawing.Point(20, 40)
$ShowFileExtensionsButton.Size = New-Object System.Drawing.Size($TweakButtonWidth, $TweakButtonHeight)
$ShowFileExtensionsButton.Font = $Font
$TweaksGroupBox.Controls.Add($ShowFileExtensionsButton)
function ShowFileExtensions {
    if((Test-Path -LiteralPath "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced") -ne $true) {  New-Item "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -force -ea SilentlyContinue };
    New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'HideFileExt' -Value 0 -PropertyType DWord -Force -ea SilentlyContinue;
    # taskkill.exe /F /IM "explorer.exe"
    # cmd.exe /c 'start "" "%windir%\explorer.exe"'
    Start-Sleep 2
}
function UndoShowFileExtensions {
    if((Test-Path -LiteralPath "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced") -ne $true) {  New-Item "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -force -ea SilentlyContinue };
    New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'HideFileExt' -Value 1 -PropertyType DWord -Force -ea SilentlyContinue;
    # taskkill.exe /F /IM "explorer.exe"
    # cmd.exe /c 'start "" "%windir%\explorer.exe"'
    Start-Sleep 2
}

# Must teema
$DarkModeCheckbox = New-Object System.Windows.Forms.CheckBox
$DarkModeCheckbox.Text = "Enable Dark Mode"
$DarkModeCheckbox.Location = New-Object System.Drawing.Point(20, 80)
$DarkModeCheckbox.Size = New-Object System.Drawing.Size($TweakButtonWidth, $TweakButtonHeight)
$DarkModeCheckbox.Font = $Font
$TweaksGroupBox.Controls.Add($DarkModeCheckbox)
function DarkMode {
    if ((Test-Path -LiteralPath "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize") -ne $true) { New-Item "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize" -force -ea SilentlyContinue };
    New-ItemProperty -LiteralPath 'HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize' -Name 'AppsUseLightTheme' -Value 0 -PropertyType DWord -Force -ea SilentlyContinue;
    New-ItemProperty -LiteralPath 'HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize' -Name 'SystemUsesLightTheme' -Value 0 -PropertyType DWord -Force -ea SilentlyContinue;
}
function UndoDarkMode {
    if ((Test-Path -LiteralPath "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize") -ne $true) { New-Item "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize" -force -ea SilentlyContinue };
    New-ItemProperty -LiteralPath 'HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize' -Name 'AppsUseLightTheme' -Value 1 -PropertyType DWord -Force -ea SilentlyContinue;
    New-ItemProperty -LiteralPath 'HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize' -Name 'SystemUsesLightTheme' -Value 1 -PropertyType DWord -Force -ea SilentlyContinue;
}

# Arvutist info
$ComputerInfoButton = New-Object System.Windows.Forms.CheckBox
$ComputerInfoButton.Text = "Computer Info(.txt \Desktop)"
$ComputerInfoButton.Location = New-Object System.Drawing.Point(20, 120)
$ComputerInfoButton.Size = New-Object System.Drawing.Size($TweakButtonWidth, $TweakButtonHeight)
$ComputerInfoButton.Font = $Font
$TweaksGroupBox.Controls.Add($ComputerInfoButton)
function Get-ComputerInfoToFile {
    $outputPath = [System.Environment]::GetFolderPath("Desktop") + "\Computer Info.txt"
    $computerInfo = Get-ComputerInfo -Property "CsManufacturer", "CsModel", "OsName", "CsProcessors", "OSDisplayVersion", "CsName", "CsUserName", "CsDomain", "CsSystemType"

    # Check if the file already exists, and if so, remove it
    if (Test-Path -Path $outputPath) {
        Remove-Item -Path $outputPath -Force
    }

    # Save the Get-ComputerInfo output to a text file
    $computerInfo | Out-File -FilePath $outputPath

    Write-Output "Computer information saved to $outputPath."
}

# Disk Clean Up
$DiskCleanUpButton = New-Object System.Windows.Forms.CheckBox
$DiskCleanUpButton.Text = "Disk Clean Up"
$DiskCleanUpButton.Location = New-Object System.Drawing.Point(20, 160)
$DiskCleanUpButton.Size = New-Object System.Drawing.Size($TweakButtonWidth, $TweakButtonHeight)
$DiskCleanUpButton.Font = $Font
$TweaksGroupBox.Controls.Add($DiskCleanUpButton)
function DiskCleanUp {
    cleanmgr.exe /d C: /VERYLOWDISK
    Dism.exe /online /Cleanup-Image /StartComponentCleanup /ResetBase
}

# Create the "Run Tweaks" button
$RunTweaksButton = New-Object System.Windows.Forms.Button
$RunTweaksButton.Text = "Run Tweaks"
$RunTweaksButton.Location = New-Object System.Drawing.Point(20, 200)
$RunTweaksButton.Size = New-Object System.Drawing.Size(130, 30)
$RunTweaksButton.Font = $Font
$TweaksGroupBox.Controls.Add($RunTweaksButton)
$RunTweaksButton.Add_Click({
    if ($DarkModeCheckbox.Checked) {
        DarkMode
    }
    if ($ShowFileExtensionsButton.Checked) {
        ShowFileExtensions
    }
    if ($DiskCleanUpButton.Checked) {
        DiskCleanUp
    }
    if ($ComputerInfoButton.Checked) {
        Get-ComputerInfoToFile
    }
})

# Create the "Undo Selected Tweaks" button
$UndoSelectedTweaksButton = New-Object System.Windows.Forms.Button
$UndoSelectedTweaksButton.Text = "Undo Selected Tweaks"
$UndoSelectedTweaksButton.Location = New-Object System.Drawing.Point(160, 200)
$UndoSelectedTweaksButton.Size = New-Object System.Drawing.Size(130, 30)
$UndoSelectedTweaksButton.Font = $Font
$TweaksGroupBox.Controls.Add($UndoSelectedTweaksButton)
$UndoSelectedTweaksButton.Add_Click({
    if ($DarkModeCheckbox.Checked) {
        UndoDarkMode
    }
    if ($ShowFileExtensionsButton.Checked) {
        UndoShowFileExtensions
    }
})

# Tweaks Tab Sisu
$TweaksTabPage.Controls.Add($TweaksGroupBox)
$TabControl.TabPages.Add($TweaksTabPage)

# PackageManager Tab
$PackageManagerTabPage = New-Object System.Windows.Forms.TabPage
$PackageManagerTabPage.Text = "PackageManager"

$PackageManagerGroupBox = New-Object System.Windows.Forms.GroupBox
$PackageManagerGroupBox.Text = "PackageManager"
$PackageManagerGroupBox.Location = New-Object System.Drawing.Point(20, 20)
$PackageManagerGroupBox.Size = New-Object System.Drawing.Size(730, 500)
$PackageManagerGroupBox.Font = $Font

# PackageManager nuppude parameetrid
$PackageManagerButtonWidth = 100
$PackageManagerButtonHeight = 30

# Create the "Install" button
$InstallButton = New-Object System.Windows.Forms.Button
$InstallButton.Text = "Install Selection"
$InstallButton.Location = New-Object System.Drawing.Point(20, 30)
$InstallButton.Size = New-Object System.Drawing.Size(150,40)
$InstallButton.Font = $Font
$PackageManagerGroupBox.Controls.Add($InstallButton)
$InstallButton.Add_Click({
    if ($BrowsersButton1.Checked) {
        ChromeInstall
    }
    if ($BrowsersButton2.Checked) {
        FirefoxInstall
    }
    if ($BrowsersButton3.Checked) {
        BraveInstall
    }
    if ($BrowsersButton4.Checked) {
        ChromiumInstall
    }
    if ($BrowsersButton5.Checked) {
        ThoriumInstall
    }
    if ($BrowsersButton6.Checked) {
        WaterFoxInstall
    }
    if ($BrowsersButton7.Checked) {
        LibreWolfInstall
    }
    if ($BrowsersButton8.Checked) {
        VivaldiInstall
    }
    if ($DevelopmentButton1.Checked) {
        DockerInstall
    }
    if ($DevelopmentButton2.Checked) {
        GitHubInstall
    }
    if ($DevelopmentButton3.Checked) {
        GitInstall
    }
    if ($DevelopmentButton4.Checked) {
        VSCodeInstall
    }
    if ($DevelopmentButton5.Checked) {
        Python3Install
    }
    if ($DevelopmentButton6.Checked) {
        NodeJSInstall
    }
    if ($DevelopmentButton7.Checked) {
        Java8Install
    }
    if ($UtilitiesButton1.Checked) {
        7zipInstall
    }
    if ($UtilitiesButton2.Checked) {
        BitwardenInstall
    }
    if ($UtilitiesButton3.Checked) {
        KeePassInstall
    }
    if ($UtilitiesButton4.Checked) {
        PowerToysInstall
    }
    if ($UtilitiesButton5.Checked) {
        DDUInstall
    }
    if ($UtilitiesButton6.Checked) {
        NVCleanstallInstall
    }
})

# Create the "Upgrade" button
$UpgradeButton = New-Object System.Windows.Forms.Button
$UpgradeButton.Text = "Upgrade All"
$UpgradeButton.Location = New-Object System.Drawing.Point(160, 30)
$UpgradeButton.Size = New-Object System.Drawing.Size(150,40)
$UpgradeButton.Font = $Font
$PackageManagerGroupBox.Controls.Add($UpgradeButton)
$UpgradeButton.Add_Click({
    UpgradeAll
})
function UpgradeAll {
    Start-Process "winget" -ArgumentList "upgrade --all" -Wait
}

# Create the "Browsers" inner GroupBox
$BrowsersGroupBox = New-Object System.Windows.Forms.GroupBox
$BrowsersGroupBox.Text = "Browsers"
$BrowsersGroupBox.Location = New-Object System.Drawing.Point(20, 80)
$BrowsersGroupBox.Size = New-Object System.Drawing.Size(150, 300)
$BrowsersGroupBox.Font = $Font
$PackageManagerGroupBox.Controls.Add($BrowsersGroupBox)

# Create buttons for the "Browsers" inner GroupBox
$BrowsersButton1 = New-Object System.Windows.Forms.CheckBox
$BrowsersButton1.Text = "Chrome"
$BrowsersButton1.Location = New-Object System.Drawing.Point(20, 30)
$BrowsersGroupBox.Controls.Add($BrowsersButton1)
function ChromeInstall {
    Start-Process "winget" -ArgumentList "install Google.Chrome" -Wait
}

$BrowsersButton2 = New-Object System.Windows.Forms.CheckBox
$BrowsersButton2.Text = "Firefox"
$BrowsersButton2.Location = New-Object System.Drawing.Point(20, 60)
$BrowsersGroupBox.Controls.Add($BrowsersButton2)
function FirefoxInstall {
    Start-Process "winget" -ArgumentList "install Mozilla.Firefox" -Wait
}

$BrowsersButton3 = New-Object System.Windows.Forms.CheckBox
$BrowsersButton3.Text = "Brave"
$BrowsersButton3.Location = New-Object System.Drawing.Point(20, 90)
$BrowsersGroupBox.Controls.Add($BrowsersButton3)
function BraveInstall {
    Start-Process "winget" -ArgumentList "install Brave.Brave" -Wait
}

$BrowsersButton4 = New-Object System.Windows.Forms.CheckBox
$BrowsersButton4.Text = "Chromium"
$BrowsersButton4.Location = New-Object System.Drawing.Point(20, 120)
$BrowsersGroupBox.Controls.Add($BrowsersButton4)
function ChromiumInstall {
    Start-Process "winget" -ArgumentList "install Hibbiki.Chromium" -Wait
}

$BrowsersButton5 = New-Object System.Windows.Forms.CheckBox
$BrowsersButton5.Text = "Thorium"
$BrowsersButton5.Location = New-Object System.Drawing.Point(20, 150)
$BrowsersGroupBox.Controls.Add($BrowsersButton5)
function ThoriumInstall {
    Start-Process "winget" -ArgumentList "install EDRLab.Thorium" -Wait
}

$BrowsersButton6 = New-Object System.Windows.Forms.CheckBox
$BrowsersButton6.Text = "Waterfox"
$BrowsersButton6.Location = New-Object System.Drawing.Point(20, 180)
$BrowsersGroupBox.Controls.Add($BrowsersButton6)
function WaterFoxInstall {
    Start-Process "winget" -ArgumentList "install Waterfox.Waterfox" -Wait
}

$BrowsersButton7 = New-Object System.Windows.Forms.CheckBox
$BrowsersButton7.Text = "LibreWolf"
$BrowsersButton7.Location = New-Object System.Drawing.Point(20, 210)
$BrowsersGroupBox.Controls.Add($BrowsersButton7)
function LibreWolfInstall {
    Start-Process "winget" -ArgumentList "install LibreWolf.LibreWolf" -Wait
}

$BrowsersButton8 = New-Object System.Windows.Forms.CheckBox
$BrowsersButton8.Text = "Vivaldi"
$BrowsersButton8.Location = New-Object System.Drawing.Point(20, 240)
$BrowsersGroupBox.Controls.Add($BrowsersButton8)
function VivaldiInstall {
    Start-Process "winget" -ArgumentList "install VivaldiTechnologies.Vivaldi" -Wait
}

# Create the "Development" inner GroupBox
$DevelopmentGroupBox = New-Object System.Windows.Forms.GroupBox
$DevelopmentGroupBox.Text = "Development"
$DevelopmentGroupBox.Location = New-Object System.Drawing.Point(190, 80)
$DevelopmentGroupBox.Size = New-Object System.Drawing.Size(150, 200)
$DevelopmentGroupBox.Font = $Font
$WingetGroupBox.Controls.Add($DevelopmentGroupBox)

# Create buttons for the "Development" inner GroupBox
$DevelopmentButton1 = New-Object System.Windows.Forms.CheckBox
$DevelopmentButton1.Text = "Docker Desktop"
$DevelopmentButton1.Size = New-Object System.Drawing.Size($PackageManagerButtonWidth, $PackageManagerButtonHeight)
$DevelopmentButton1.Location = New-Object System.Drawing.Point(20, 30)
$DevelopmentGroupBox.Controls.Add($DevelopmentButton1)
function DockerInstall {
    Start-Process "winget" -ArgumentList "install Docker.DockerDesktop" -Wait
}

$DevelopmentButton2 = New-Object System.Windows.Forms.CheckBox
$DevelopmentButton2.Text = "GitHub Desktop"
$DevelopmentButton2.Size = New-Object System.Drawing.Size($PackageManagerButtonWidth, $PackageManagerButtonHeight)
$DevelopmentButton2.Location = New-Object System.Drawing.Point(20, 60)
$DevelopmentGroupBox.Controls.Add($DevelopmentButton2)
function GitHubInstall {
    Start-Process "winget" -ArgumentList "install GitHub.GitHubDesktop" -Wait
}

$DevelopmentButton3 = New-Object System.Windows.Forms.CheckBox
$DevelopmentButton3.Text = "Git"
$DevelopmentButton3.Location = New-Object System.Drawing.Point(20, 90)
$DevelopmentGroupBox.Controls.Add($DevelopmentButton3)
function GitInstall {
    Start-Process "winget" -ArgumentList "install Git.Git" -Wait
}

$DevelopmentButton4 = New-Object System.Windows.Forms.CheckBox
$DevelopmentButton4.Text = "VS Code"
$DevelopmentButton4.Size = New-Object System.Drawing.Size($PackageManagerButtonWidth, $PackageManagerButtonHeight)
$DevelopmentButton4.Location = New-Object System.Drawing.Point(20, 120)
$DevelopmentGroupBox.Controls.Add($DevelopmentButton4)
function VSCodeInstall {
    Start-Process "winget" -ArgumentList "install Microsoft.VisualStudioCode" -Wait
}

$DevelopmentButton5 = New-Object System.Windows.Forms.CheckBox
$DevelopmentButton5.Text = "Python3"
$DevelopmentButton5.Location = New-Object System.Drawing.Point(20, 150)
$DevelopmentGroupBox.Controls.Add($DevelopmentButton5)
function Python3Install {
    Start-Process "winget" -ArgumentList "install Python.Python.3.11" -Wait
}

$DevelopmentButton6 = New-Object System.Windows.Forms.CheckBox
$DevelopmentButton6.Text = "NodeJS"
$DevelopmentButton6.Size = New-Object System.Drawing.Size($PackageManagerButtonWidth, $PackageManagerButtonHeight)
$DevelopmentButton6.Location = New-Object System.Drawing.Point(20, 180)
$DevelopmentGroupBox.Controls.Add($DevelopmentButton6)
function NodeJSInstall {
    Start-Process "winget" -ArgumentList "install OpenJS.NodeJS" -Wait
}

$DevelopmentButton7 = New-Object System.Windows.Forms.CheckBox
$DevelopmentButton7.Text = "Java 8"
$DevelopmentButton7.Size = New-Object System.Drawing.Size($PackageManagerButtonWidth, $PackageManagerButtonHeight)
$DevelopmentButton7.Location = New-Object System.Drawing.Point(20, 210)
$DevelopmentGroupBox.Controls.Add($DevelopmentButton7)
function Java8Install {
    Start-Process "winget" -ArgumentList "install Oracle.JavaRuntimeEnvironment" -Wait
}

# Create the "Utilities" inner GroupBox
$UtilitiesGroupBox = New-Object System.Windows.Forms.GroupBox
$UtilitiesGroupBox.Text = "Utilities"
$UtilitiesGroupBox.Location = New-Object System.Drawing.Point(170, 80)
$UtilitiesGroupBox.Size = New-Object System.Drawing.Size(170, 250)
$UtilitiesGroupBox.Font = $Font
$PackageManagerGroupBox.Controls.Add($UtilitiesGroupBox)

# Create buttons for the "Utilities" inner GroupBox
$UtilitiesButton1 = New-Object System.Windows.Forms.CheckBox
$UtilitiesButton1.Text = "7-Zip"
$UtilitiesButton1.Location = New-Object System.Drawing.Point(20, 30)
$UtilitiesGroupBox.Controls.Add($UtilitiesButton1)
function 7zipInstall {
    Start-Process "winget" -ArgumentList "install 7zip.7zip" -Wait
}

$UtilitiesButton2 = New-Object System.Windows.Forms.CheckBox
$UtilitiesButton2.Text = "Bitwarden"
$UtilitiesButton2.Location = New-Object System.Drawing.Point(20, 60)
$UtilitiesGroupBox.Controls.Add($UtilitiesButton2)
function BitwardenInstall {
    Start-Process "winget" -ArgumentList "install Bitwarden.Bitwarden" -Wait
}

$UtilitiesButton3 = New-Object System.Windows.Forms.CheckBox
$UtilitiesButton3.Text = "KeePassXC"
$UtilitiesButton3.Location = New-Object System.Drawing.Point(20, 90)
$UtilitiesGroupBox.Controls.Add($UtilitiesButton3)
function KeePassInstall {
    Start-Process "winget" -ArgumentList "install KeePassXCTeam.KeePassXC" -Wait
}

$UtilitiesButton4 = New-Object System.Windows.Forms.CheckBox
$UtilitiesButton4.Text = "PowerToys"
$UtilitiesButton4.Size = New-Object System.Drawing.Size(130,20)
$UtilitiesButton4.Location = New-Object System.Drawing.Point(20, 120)
$UtilitiesGroupBox.Controls.Add($UtilitiesButton4)
function PowerToysInstall {
    Start-Process "winget" -ArgumentList "install Microsoft.PowerToys" -Wait
}

$UtilitiesButton5 = New-Object System.Windows.Forms.CheckBox
$UtilitiesButton5.Text = "DDU"
$UtilitiesButton5.Location = New-Object System.Drawing.Point(20, 150)
$UtilitiesGroupBox.Controls.Add($UtilitiesButton5)
function DDUInstall {
    Start-Process "winget" -ArgumentList "install ddu" -Wait
}

$UtilitiesButton6 = New-Object System.Windows.Forms.CheckBox
$UtilitiesButton6.Text = "NVCleanstall"
$UtilitiesButton6.Size = New-Object System.Drawing.Size(130,20)
$UtilitiesButton6.Location = New-Object System.Drawing.Point(20, 180)
$UtilitiesGroupBox.Controls.Add($UtilitiesButton6)
function NVCleanstallInstall {
    Start-Process "winget" -ArgumentList "install TechPowerUp.NVCleanstall" -Wait
}

# PackageManager Tab Content
$PackageManagerTabPage.Controls.Add($PackageManagerGroupBox)
$TabControl.TabPages.Add($PackageManagerTabPage)

# Create a new TabPage for scripting
$ScriptingTabPage = New-Object System.Windows.Forms.TabPage
$ScriptingTabPage.Text = "Skripta"

# Create a new TextBox for scripting
$ScriptingTextBox = New-Object System.Windows.Forms.TextBox
$ScriptingTextBox.Location = New-Object System.Drawing.Point(20, 40)
$ScriptingTextBox.Size = New-Object System.Drawing.Size(400, 30)
$ScriptingTextBox.Multiline = $true
$ScriptingTextBox.Font = $Font

# Add a button to open the script in a new PowerShell window
$OpenButton = New-Object System.Windows.Forms.Button
$OpenButton.Text = "Open in new PowerShell window"
$OpenButton.Location = New-Object System.Drawing.Point(20,70)
$OpenButton.Size = New-Object System.Drawing.Size(200, 30)
$OpenButton.Add_Click({
    Start-Process -FilePath "powershell.exe" -ArgumentList "-NoExit -File `"$($ScriptingTextBox.Text)`""
})

# Add the TextBox and the OpenButton to the Scripting TabPage
$ScriptingTabPage.Controls.Add($ScriptingTextBox)
$ScriptingTabPage.Controls.Add($OpenButton)

# Add the Scripting TabPage to the TabControl
$TabControl.TabPages.Add($ScriptingTabPage)

# Määra vorm nähtavaks
$Form.Add_Shown({$Form.Activate()})
$Form.ShowDialog()
