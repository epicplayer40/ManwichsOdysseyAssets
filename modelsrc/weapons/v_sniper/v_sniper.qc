/*
==============================================================================
Sniper rifle model from Half-Life 2: Survivor
Mesh edit by CarterG4
Final model edits by Akis_02
==============================================================================
*/

$modelname weapons/v_sniper.mdl
$cdmaterials models\Weapons\V_hand models\Weapons\V_sniper


// whole body
$body studio "fixed_mesh/v_sniper_reference_new.smd" 


$bodygroup hands
{
studio "fixed_mesh/Hands_reference.smd"
}

//Muzzle flash
//$Attachment 0 "ValveBiped.Bip01_R_Hand" -6.4 -57 65.2 absolute
$attachment "0" "ValveBiped.sniper_rifle_base" 49.10 -2.30 -6.23 rotate -1 -1 179
$attachment "1" "ValveBiped.Bullet" 0.00 0.00 0.00 rotate 0 -90 0

$sequence sniper_idle "sniper_idle01" loop fps 35 activity ACT_VM_IDLE 1 //original valve repo fps value was 30 but the 2003 leak one is 35

$sequence sniper_fire "new_anims/sniper_Fire" fps 35 snap activity ACT_VM_PRIMARYATTACK 1 {//original valve repo fps value was 40 but the 2003 leak one is 35
{ event 5001 1 "51" }
}

$sequence sniper_fire_dry "sniper_fire_dry" fps 35 snap activity ACT_VM_DRYFIRE 1 //original valve repo fps value was 30 but the 2003 leak one is 35

$sequence sniper_draw "sniper_Draw" fps 35 activity ACT_VM_DRAW 1 //original valve repo fps value was 30 but the 2003 leak one is 35

$sequence sniper_reload "sniper_reload" fps 30 activity ACT_VM_RELOAD 1 {//original valve repo fps value was 35 but the 2003 leak one is 30
{ event 6001 50 "1" }
{