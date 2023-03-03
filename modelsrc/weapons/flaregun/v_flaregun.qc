// Flare Gun
// Arms fix by Xinus, QC edits by The One Epicplayer and Akis_02

$modelname "weapons/v_flaregun.mdl"
$body studio "Flaregun_reference.smd"

$Attachment "muzzle" "Dummy14" -9.3 3.15 0 rotate 0 -180 -180
$cdmaterials "models\weapons\v_hand\"
$cdmaterials "models\weapons\v_flaregun\"

$sequence idle1 idle1 ACT_VM_IDLE 1 loop
$sequence draw draw ACT_VM_DRAW 1
$sequence fire fire ACT_VM_PRIMARYATTACK 1 { event AE_MUZZLEFLASH 0 "SHOTGUN muzzle" }
$sequence reload reload ACT_VM_RELOAD 1
$sequence dryfire dryfire ACT_VM_DRYFIRE 1