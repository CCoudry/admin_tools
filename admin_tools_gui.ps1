Add-Type -AssemblyName System.Windows.Forms
[System.Windows.Forms.Application]::EnableVisualStyles()

$variables = Import-csv .\variables.csv -Delimiter ";"
$variables.combobox1
Import-Module .\admin_tools_functions.ps1
$CheckLockTool                   = New-Object system.Windows.Forms.Form
$CheckLockTool.ClientSize        = New-Object System.Drawing.Point(550,600)
$CheckLockTool.text              = "TIPSO Script by ccoudry"
$CheckLockTool.TopMost           = $false
$CheckLockTool.BackColor         = [System.Drawing.ColorTranslator]::FromHtml("#959698")

$CheckLocked                     = New-Object system.Windows.Forms.Button
$CheckLocked.text                = "Voir si le compte est bloqué"
$CheckLocked.width               = 100
$CheckLocked.height              = 50
$CheckLocked.location            = New-Object System.Drawing.Point(200,50)
$CheckLocked.Font                = New-Object System.Drawing.Font('century gothic',8,[System.Drawing.FontStyle]::Bold)
$CheckLocked.ForeColor           = [System.Drawing.ColorTranslator]::FromHtml("#FFFFFF")
$CheckLocked.BackColor           = [System.Drawing.ColorTranslator]::FromHtml("#DC002E")

$User                            = New-Object system.Windows.Forms.TextBox
$User.multiline                  = $false
$User.width                      = 174
$User.height                     = 25
$User.location                   = New-Object System.Drawing.Point(14,50)
$user.Font                       = New-Object System.Drawing.Font('century gothic',8,[System.Drawing.FontStyle]::Bold)

$Header                          = New-Object system.Windows.Forms.Label
$Header.text                     = "Entrez le Username"
$Header.AutoSize                 = $true
$Header.width                    = 25
$Header.height                   = 10
$Header.location                 = New-Object System.Drawing.Point(12,26)
$Header.Font                     = New-Object System.Drawing.Font('century gothic',10,[System.Drawing.FontStyle]::Bold)
$Header.ForeColor                = [System.Drawing.ColorTranslator]::FromHtml("#DC002E")

$UnlockAccount                   = New-Object system.Windows.Forms.Button
$UnlockAccount.text              = "Debloquer le compte"
$UnlockAccount.width             = 100
$UnlockAccount.height            = 40
$UnlockAccount.location          = New-Object System.Drawing.Point(310,50)
$UnlockAccount.Font              = New-Object System.Drawing.Font('century gothic',8,[System.Drawing.FontStyle]::Bold)
$UnlockAccount.ForeColor         = [System.Drawing.ColorTranslator]::FromHtml("#FFFFFF")
$UnlockAccount.BackColor         = [System.Drawing.ColorTranslator]::FromHtml("#DC002E")

$DIsableAccount                  = New-Object system.Windows.Forms.Button
$DIsableAccount.text             = "Desactiver le compte"
$DIsableAccount.width            = 100
$DIsableAccount.height           = 40
$DIsableAccount.location         = New-Object System.Drawing.Point(200,100)
$DIsableAccount.Font             = New-Object System.Drawing.Font('century gothic',8,[System.Drawing.FontStyle]::Bold)
$DIsableAccount.ForeColor        = [System.Drawing.ColorTranslator]::FromHtml("#FFFFFF")
$DIsableAccount.BackColor        = [System.Drawing.ColorTranslator]::FromHtml("#DC002E")

$EnableAccount                   = New-Object system.Windows.Forms.Button
$EnableAccount.text              = "Activer le compte"
$EnableAccount.width             = 100
$EnableAccount.height            = 40
$EnableAccount.location          = New-Object System.Drawing.Point(310,100)
$EnableAccount.Font              = New-Object System.Drawing.Font('century gothic',8,[System.Drawing.FontStyle]::Bold)
$EnableAccount.ForeColor         = [System.Drawing.ColorTranslator]::FromHtml("#FFFFFF")
$EnableAccount.BackColor         = [System.Drawing.ColorTranslator]::FromHtml("#DC002E")


$checkTSG                        = New-Object system.Windows.Forms.Button
$checkTSG.text                   = "Verifier l'acces TSG"
$checkTSG.width                  = 100
$checkTSG.height                 = 40
$checkTSG.location               = New-Object System.Drawing.Point(200,150)
$checkTSG.Font                   = New-Object System.Drawing.Font('century gothic',8,[System.Drawing.FontStyle]::Bold)
$checkTSG.ForeColor              = [System.Drawing.ColorTranslator]::FromHtml("#FFFFFF")
$checkTSG.BackColor              = [System.Drawing.ColorTranslator]::FromHtml("#DC002E")

$enableTSG                       = New-Object system.Windows.Forms.Button
$enableTSG.text                  = "Ajouter l'acces TSG"
$enableTSG.width                 = 100
$enableTSG.height                = 40
$enableTSG.location              = New-Object System.Drawing.Point(310,150)
$enableTSG.Font                  = New-Object System.Drawing.Font('century gothic',8,[System.Drawing.FontStyle]::Bold)
$enableTSG.ForeColor             = [System.Drawing.ColorTranslator]::FromHtml("#FFFFFF")
$enableTSG.BackColor             = [System.Drawing.ColorTranslator]::FromHtml("#DC002E")

$disableTSG                      = New-Object system.Windows.Forms.Button
$disableTSG.text                 = "Retirer l'acces TSG"
$disableTSG.width                = 100
$disableTSG.height               = 40
$disableTSG.location             = New-Object System.Drawing.Point(420,150)
$disableTSG.Font                 = New-Object System.Drawing.Font('century gothic',8,[System.Drawing.FontStyle]::Bold)
$disableTSG.ForeColor            = [System.Drawing.ColorTranslator]::FromHtml("#FFFFFF")
$disableTSG.BackColor            = [System.Drawing.ColorTranslator]::FromHtml("#DC002E")

$usersconnect                    = New-Object system.Windows.Forms.Button
$usersconnect.text               = "Voir les utilisateurs connectés"
$usersconnect.width              = 100
$usersconnect.height             = 45
$usersconnect.location           = New-Object System.Drawing.Point(200,200)
$usersconnect.Font               = New-Object System.Drawing.Font('century gothic',8,[System.Drawing.FontStyle]::Bold)
$usersconnect.ForeColor          = [System.Drawing.ColorTranslator]::FromHtml("#FFFFFF")
$usersconnect.BackColor          = [System.Drawing.ColorTranslator]::FromHtml("#DC002E")

$disconnectuser                  = New-Object system.Windows.Forms.Button
$disconnectuser.text             = "Deconnecter l'utilisateur"
$disconnectuser.width            = 100
$disconnectuser.height           = 40
$disconnectuser.location         = New-Object System.Drawing.Point(310,200)
$disconnectuser.Font             = New-Object System.Drawing.Font('century gothic',8,[System.Drawing.FontStyle]::Bold)
$disconnectuser.ForeColor        = [System.Drawing.ColorTranslator]::FromHtml("#FFFFFF")
$disconnectuser.BackColor        = [System.Drawing.ColorTranslator]::FromHtml("#DC002E")

$Header2                         = New-Object system.Windows.Forms.Label
$Header2.text                    = "Choisissez un dossier/fichier à ouvrir"
$Header2.AutoSize                = $true
$Header2.width                   = 25
$Header2.height                  = 10
$Header2.location                = New-Object System.Drawing.Point(12,255)
$Header2.Font                    = New-Object System.Drawing.Font('century gothic',10,[System.Drawing.FontStyle]::Bold)
$Header2.ForeColor               = [System.Drawing.ColorTranslator]::FromHtml("#DC002E")

$combobox1                       = New-Object system.Windows.Forms.combobox
$combobox1.width                 = 175
$combobox1.height                = 50
$combobox1.location              = New-Object System.Drawing.Point(12,275)
$combobox1.Font                  = New-Object System.Drawing.Font('century gothic',8)
foreach($_ in $variables.files_folders){
$combobox1.Items.Add($_)}
$combobox1.AutoCompleteSource = 'ListItems'
$combobox1.AutoCompleteMode = 'Append'
$combobox1.DropDownStyle = 'DropDownList'


$dia                  = New-Object system.Windows.Forms.Button
$dia.text             = "DIA"
$dia.width            = 100
$dia.height           = 40
$dia.location         = New-Object System.Drawing.Point(200,275)
$dia.Font              = New-Object System.Drawing.Font('century gothic',8,[System.Drawing.FontStyle]::Bold)
$dia.BackColor         = [System.Drawing.ColorTranslator]::FromHtml("#80FF33")

$silae                  = New-Object system.Windows.Forms.Button
$silae.text             = "Silae"
$silae.width            = 100
$silae.height           = 40
$silae.location         = New-Object System.Drawing.Point(310,275)
$silae.Font              = New-Object System.Drawing.Font('century gothic',8,[System.Drawing.FontStyle]::Bold)
$silae.BackColor         = [System.Drawing.ColorTranslator]::FromHtml("#FF9C33")

$keepass                  = New-Object system.Windows.Forms.Button
$keepass.text             = "KeePass"
$keepass.width            = 100
$keepass.height           = 40
$keepass.location         = New-Object System.Drawing.Point(420,275)
$keepass.Font              = New-Object System.Drawing.Font('century gothic',8,[System.Drawing.FontStyle]::Bold)
$keepass.BackColor         = [System.Drawing.ColorTranslator]::FromHtml("#334CFF")

$teamviewer                  = New-Object system.Windows.Forms.Button
$teamviewer.text             = "Teamviewer"
$teamviewer.width            = 100
$teamviewer.height           = 40
$teamviewer.location         = New-Object System.Drawing.Point(200,325)
$teamviewer.Font              = New-Object System.Drawing.Font('century gothic',8,[System.Drawing.FontStyle]::Bold)
$teamviewer.BackColor         = [System.Drawing.ColorTranslator]::FromHtml("#0970d2")

$ipscan                  = New-Object system.Windows.Forms.Button
$ipscan.text             = "Angry IP scanner"
$ipscan.width            = 100
$ipscan.height           = 40
$ipscan.location         = New-Object System.Drawing.Point(310,325)
$ipscan.Font              = New-Object System.Drawing.Font('century gothic',8,[System.Drawing.FontStyle]::Bold)
$ipscan.BackColor         = [System.Drawing.ColorTranslator]::FromHtml("#74DC2C")

$vnc                  = New-Object system.Windows.Forms.Button
$vnc.text             = "VNC"
$vnc.width            = 100
$vnc.height           = 40
$vnc.location         = New-Object System.Drawing.Point(420,325)
$vnc.Font              = New-Object System.Drawing.Font('century gothic',8,[System.Drawing.FontStyle]::Bold)
$vnc.BackColor         = [System.Drawing.ColorTranslator]::FromHtml("#66DB15")


$Header3                          = New-Object system.Windows.Forms.Label
$Header3.text                     = "mstsc user"
$Header3.AutoSize                 = $true
$Header3.width                    = 25
$Header3.height                   = 10
$Header3.location                 = New-Object System.Drawing.Point(12,375)
$Header3.Font                     = New-Object System.Drawing.Font('century gothic',10,[System.Drawing.FontStyle]::Bold)
$Header3.ForeColor                = [System.Drawing.ColorTranslator]::FromHtml("#DC002E")

$combobox2                          = New-Object system.Windows.Forms.combobox
$combobox2.text                     = "Sélectionnez la ferme"
$combobox2.width                    = 175
$combobox2.height                   = 50
$combobox2.location                 = New-Object System.Drawing.Point(12,400)
$combobox2.Font                     = New-Object System.Drawing.Font('century gothic',8)
foreach($_ in $variables.ferme){
$combobox2.Items.Add($_)}
$combobox2.AutoCompleteSource = 'ListItems'
$combobox2.AutoCompleteMode = 'Append'

$Header4                          = New-Object system.Windows.Forms.Label
$Header4.text                     = "mstsc admin"
$Header4.AutoSize                 = $true
$Header4.width                    = 25
$Header4.height                   = 10
$Header4.location                 = New-Object System.Drawing.Point(200,375)
$Header4.Font                     = New-Object System.Drawing.Font('century gothic',10,[System.Drawing.FontStyle]::Bold)
$Header4.ForeColor                = [System.Drawing.ColorTranslator]::FromHtml("#DC002E")



$combobox3                          = New-Object system.Windows.Forms.combobox
$combobox3.text                     = "Sélectionnez le serveur"
$combobox3.width                    = 175
$combobox3.height                   = 50
$combobox3.location                 = New-Object System.Drawing.Point(200,400)
$combobox3.Font                     = New-Object System.Drawing.Font('century gothic',8)
foreach($_ in $variables.servers){
$combobox3.Items.Add($_)}
$combobox3.AutoCompleteSource = 'ListItems'
$combobox3.AutoCompleteMode = 'Append'

$Header5                          = New-Object system.Windows.Forms.Label
$Header5.text                     = "Envoyez un message à un seul utilisateur"
$Header5.AutoSize                 = $true
$Header5.width                    = 25
$Header5.height                   = 10
$Header5.location                 = New-Object System.Drawing.Point(12,435)
$Header5.Font                     = New-Object System.Drawing.Font('century gothic',10,[System.Drawing.FontStyle]::Bold)
$Header5.ForeColor                = [System.Drawing.ColorTranslator]::FromHtml("#DC002E")

$msgtouser                            = New-Object system.Windows.Forms.TextBox
$msgtouser.multiline                  = $false
$msgtouser.width                      = 400
$msgtouser.location                   = New-Object System.Drawing.Point(14,455)
$msgtouser.Font                       = New-Object System.Drawing.Font('century gothic',8,[System.Drawing.FontStyle]::Bold)


$CheckLockTool.controls.AddRange(@($CheckLocked,$User,$Header,$UnlockAccount,$DIsableAccount,$EnableAccount,$checkTSG,$enableTSG,$disableTSG,$usersconnect,$disconnectuser,$combobox1,$Header2,$dia,$silae,$keepass,$teamviewer,$Header3,$combobox2,$ipscan,$combobox3,$vnc,$header4,$msgtouser,$header5))

$CheckLocked.Add_Click({ CheckLocked })
$UnlockAccount.Add_Click({ UnlockAccount })
$DIsableAccount.Add_Click({ DisableAccount })
$EnableAccount.Add_Click({ EnableAccount })
$checkTSG.Add_Click({ checkTSG })
$enableTSG.Add_Click({ enableTSG })
$disableTSG.Add_Click({ disableTSG })
$usersconnect.Add_Click({ usersconnect })
$disconnectuser.Add_Click({ disconnectuser })
$dia.Add_Click({ dia })
$silae.Add_Click({ silae })
$keepass.Add_Click({ keepass })
$teamviewer.Add_Click({ teamviewer })
$ipscan.Add_Click{ ipscan }
$vnc.Add_Click({vnc})
$combobox1.Add_SelectedIndexChanged({ selectfilefolder })
$combobox2.Add_KeyDown{if ($_.Keycode -eq "Enter") {mymstsc}}
$combobox3.Add_KeyDown{if ($_.Keycode -eq "Enter") {mymstscadmin}}
$msgtouser.Add_KeyDown{if ($_.Keycode -eq "Enter") { msgtouser }}


[void]$CheckLockTool.ShowDialog()