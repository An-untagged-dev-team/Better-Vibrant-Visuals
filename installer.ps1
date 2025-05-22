Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing

# Create form
$form = New-Object System.Windows.Forms.Form
$form.Text = "Better Vibrant Visuals"
$form.Size = New-Object System.Drawing.Size(400,200)
$form.StartPosition = "CenterScreen"

# Label
$label = New-Object System.Windows.Forms.Label
$label.Text = "Download here the first vibrant visuals mod !"
$label.Size = New-Object System.Drawing.Size(350,20)
$label.Location = New-Object System.Drawing.Point(20,20)
$form.Controls.Add($label)

# Other label
$label = New-Object System.Windows.Forms.Label
$label.Text = "author : K3013"
$label.Size = New-Object System.Drawing.Size(350,20)
$label.Location = New-Object System.Drawing.Point(20,16)
$form.Controls.Add($label)

# Progress bar
$progressBar = New-Object System.Windows.Forms.ProgressBar
$progressBar.Size = New-Object System.Drawing.Size(350,20)
$progressBar.Location = New-Object System.Drawing.Point(20,60)
$progressBar.Minimum = 0
$progressBar.Maximum = 100
$form.Controls.Add($progressBar)

# Install button
$installButton = New-Object System.Windows.Forms.Button
$installButton.Text = "Install :)"
$installButton.Size = New-Object System.Drawing.Size(80,30)
$installButton.Location = New-Object System.Drawing.Point(200,110)
$form.Controls.Add($installButton)

# Cancel button
$cancelButton = New-Object System.Windows.Forms.Button
$cancelButton.Text = "Cancel :("
$cancelButton.Size = New-Object System.Drawing.Size(80,30)
$cancelButton.Location = New-Object System.Drawing.Point(290,110)
$form.Controls.Add($cancelButton)

# Install event
$installButton.Add_Click({
    $installButton.Enabled = $false
    for ($i = 0; $i -le 100; $i += 10) {
        $progressBar.Value = $i
        Start-Sleep -Milliseconds 300
        $form.Refresh()
    }
    [System.Windows.Forms.MessageBox]::Show("Installation Complete ! Now, enjoy the enhanced vibrant visuals","Finished",[System.Windows.Forms.MessageBoxButtons]::OK,[System.Windows.Forms.MessageBoxIcon]::Information)
    $form.Close()
})

# Cancel event
$cancelButton.Add_Click({
    $form.Close()
})

# Show form
[void]$form.ShowDialog()
