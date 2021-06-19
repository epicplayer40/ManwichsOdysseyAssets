// Katana
// Arms fix by Xinus, QC edits by The One Epicplayer

$modelname "Weapons/V_Katana.mdl"

$body studio "Katana_reference.smd"

$cdmaterials "models\Weapons\V_hand\"
$cdmaterials "models\Weapons\"

$attachment "0" "tip" 0 0 0 rotate 0 0 0

$sequence idle01 idle01 ACT_VM_IDLE 1 loop
$sequence draw draw ACT_VM_DRAW 1
$sequence attackch attackch ACT_VM_HITCENTER 1 fps 50 snap
$sequence attackcm attackcm ACT_VM_MISSCENTER 1 fps 50 snap