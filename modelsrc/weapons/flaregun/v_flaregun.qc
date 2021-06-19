// Flare Gun
// Arms fix by Xinus, QC edits by The One Epicplayer

$modelname "weapons/v_flaregun.mdl"
$body studio "Flaregun_reference.smd"

$cdmaterials "models\weapons\v_hand\"
$cdmaterials "models\weapons\v_flaregun\"

$sequence idle1 idle1 ACT_VM_IDLE 1 loop
$sequence draw draw ACT_VM_DRAW 1
$sequence fire fire ACT_VM_PRIMARYATTACK 1
$sequence reload reload ACT_VM_RELOAD 1
$sequence dryfire dryfire ACT_VM_DRYFIRE 1