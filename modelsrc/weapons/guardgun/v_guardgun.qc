// Combine Guard Gun
// Arms fix by Xinus, QC edits by The One Epicplayer

$modelname "Weapons/v_Guardgun.mdl"

$body studio "Guardgun_reference.smd"

$cdmaterials "Models\Combine_Guard\"
$cdmaterials "models\Weapons\V_hand\"

$attachment "0" "Muzzle" 0 0 0 rotate 0 0 0

$sequence idle1 idle1 ACT_VM_IDLE 1 loop
$sequence draw draw ACT_VM_DRAW 1
$sequence fire fire ACT_VM_PRIMARYATTACK 1
$sequence reload reload ACT_VM_RELOAD 1