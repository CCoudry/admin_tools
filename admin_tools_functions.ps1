function SetPassword { 
    Set-ADAccountPassword -Identity $User.text -NewPassword (ConvertTo-SecureString -AsPlainText $Password.text -Force)
    [System.Windows.MessageBox]::Show('Password Changed')
}

function CheckLocked {

$Result = Get-ADUser -Identity $User.text -Properties Name, LastLogonDate, LockedOut, AccountLockOutTime, Enabled | select Name, LastLogonDate, LockedOut, AccountLockOutTime, Enabled 
$Result | Out-GridView -Title 'Locked Accounts' 
}

function UnlockAccount { 
    Unlock-ADAccount -Identity $User.text
    [System.Reflection.Assembly]::LoadWithPartialName('System.Windows.Forms')
    [System.Windows.Forms.MessageBox]::Show('le compte de l''utilisateur '+ $user.Text+' a bien été débloqué','WARNING')
}


function EnableAccount {
    Enable-ADAccount -Identity $User.text
    [System.Reflection.Assembly]::LoadWithPartialName('System.Windows.Forms')
    [System.Windows.Forms.MessageBox]::Show('le compte de l''utilisateur '+ $user.Text+' a bien été activé','WARNING')
}


function DisableAccount { 
    Disable-ADAccount -Identity $User.text
    [System.Reflection.Assembly]::LoadWithPartialName('System.Windows.Forms')
    [System.Windows.Forms.MessageBox]::Show('le compte de l''utilisateur '+ $user.Text+' a bien été désactivé','WARNING')
}

function checkTSG { 
    $Result = Get-ADPrincipalGroupMembership $user.Text | select name #| Where-object {$_.name -like 'Groupe TSG_FACT Acom'}
    $Result | Out-GridView -Title 'Acces TSG'
}

function enableTSG { 
    Add-ADGroupMember -Identity 'Groupe TSG_FACT Acom' -Members $user.Text
    [System.Reflection.Assembly]::LoadWithPartialName('System.Windows.Forms')
    [System.Windows.Forms.MessageBox]::Show('l''accès TSG de l''utilisateur '+ $user.Text+' a bien été ajouté','WARNING')
}

function disableTSG { 
    Remove-ADGroupMember -Identity 'Groupe TSG_FACT Acom' -Members $user.Text
    [System.Reflection.Assembly]::LoadWithPartialName('System.Windows.Forms')
    [System.Windows.Forms.MessageBox]::Show('l''accès TSG de l''utilisateur '+ $user.Text+' a bien été retiré','WARNING')
}

function usersconnect{
    $Result = Get-RDUserSession -ConnectionBroker 'vdivacom6.acom.adds'
    $Result | Out-GridView -Title 'Utilisateurs connectés'
}

function disconnectuser{
    $username = $User.Text
    $session = Get-RDUserSession -ConnectionBroker 'vdivacom6.acom.adds' | Where-Object -Filter {$_.UserName -eq $username}
    $id = $session.UnifiedSessionId
    $server = $session.HostServer
    Invoke-RDUserLogoff -HostServer $server -UnifiedSessionID $id -Force
    [System.Reflection.Assembly]::LoadWithPartialName('System.Windows.Forms')
    [System.Windows.Forms.MessageBox]::Show('l''utilisateur '+ $user.Text+' a bien été déconnecté','WARNING')
}

function dia{
    Start-Process C:\AWAzur\AWClientSQL\AwClient.exe
}

function keepass{
    Start-Process \\acom.adds\racom$\Acomsupport\Software\KeePassPassword\KeePass.exe \\acom.adds\racom$\Acomsupport\Software\KeePassPassword\Database_TIPSO.kdbx
}

function teamviewer{
    Start-Process "C:\Program Files\TeamViewer\TeamViewer.exe"
}


function ipscan{
    Start-Process "C:\Program Files\Angry IP Scanner\ipscan.exe"
}

function adminmsg{
    Start-Process I:\TipsoTools\AdminMessage\AdminMessage.exe
}

function vnc{
    Start-Process "C:\Program Files\uvnc bvba\UltraVNC\vncviewer.exe"
}

function silae{
    Start-Process "C:\Program Files\SILAE\SilaeBoot.exe" "https://www.silaexpert26.fr/silae"
}

function msgtouser{
    $username = $User.Text
    $session = Get-RDUserSession -ConnectionBroker 'vdivacom6.acom.adds' | Where-Object -Filter {$_.UserName -eq $username}
    $id = $session.UnifiedSessionId
    Send-RDUserMessage -HostServer "vtseacom11.acom.adds" -UnifiedSessionID 57 -MessageTitle "message de ccoudry" -MessageBody "test"
    [System.Reflection.Assembly]::LoadWithPartialName('System.Windows.Forms')
    [System.Windows.Forms.MessageBox]::Show('le message a bien été envoyé à '+ $user.Text,'WARNING')
}

function selectfilefolder{
    switch ($this.SelectedItem) {
        "NAS 10.3.1.3" {explorer \\10.3.1.3}
        "Utilitaires TIPSO" {explorer \\vfsacom2\acom$\Gestion\_Administrateurs\_Utilitaires}
        "UPDDC1" {explorer \\acom.adds\racom$\UPDDC1\Users}
        "UPDDC2" {explorer \\acom.adds\racom$\UPDDC2\Users}
        "Assistance" {explorer I:\Assistance}
        "FTP_numerisations" {explorer \\vdivacom8\e$\FTP_Numerisations}
        "Mes documents" { explorer P:\}
        "Planning-projet" { Invoke-Item I:\_Administrateurs\Documents\Planning-projet.xlsm}
}}

function mymstsc{
mstsc /v:($combobox2.Text)
}

function mymstscadmin{
mstsc /admin /v:($combobox3.Text)
}