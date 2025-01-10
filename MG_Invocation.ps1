for($mg="mg en cours d'invocation....";$mg -eq "mg en cours d'invocation..." )

{

$mg="mg en cours d'invocation..."

[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::error
$notify.visible = $true
$notify.showballoontip(10,'Attention',$mg,[system.windows.forms.tooltipicon]::None)
}

return finito
