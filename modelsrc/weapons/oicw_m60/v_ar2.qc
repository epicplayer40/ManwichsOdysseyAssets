/*
==============================================================================

Assault Rifle 2

==============================================================================
*/

$modelname weapons/v_AR2.mdl
$cdmaterials models\Weapons\V_hand models\Weapons\V_ar2


// whole body
$body studio "AR2_reference_newarms_updateduv.smd"

$origin 0 0 68

//Muzzle flash
//$attachment "0" "Bip01 R Hand" 24.00 2.00 5.20 rotate 2.5 0 0
$attachment "0" "Bip01 R Hand" 31.00 2.00 5.20 rotate 5 0 0
 
//Shell eject
$attachment 1 "Bip01 R Hand" 10.0 2 6.0 rotate -25 -90 0

$sequence AR2_idle "Idle01" loop fps 30 ACT_VM_IDLE 1 node 0

$sequence AR2_primary_fire "Fire01" fps 30 snap activity ACT_VM_PRIMARYATTACK 1 { event 5001 0 "0" } { event 6001 0 "1" }
$sequence AR2_primary_fire2 "Fire02" fps 30 snap activity ACT_VM_HITLEFT 1 { event 5001 0 "0" } { event 6001 0 "1" }
$sequence AR2_primary_fire3 "Fire03" fps 30 snap activity ACT_VM_HITLEFT2 1 { event 5001 0 "0" } { event 6001 0 "1" }
$sequence AR2_primary_fire4 "Fire04" fps 30 snap activity ACT_VM_HITRIGHT 1 { event 5001 0 "0" } { event 6001 0 "1" }

$sequence AR2_primary_dry "Fire01_dry" fps 30 snap activity ACT_VM_DRYFIRE 1 node 0
$sequence AR2_secondary_fire "alt_fire01" fps 30 snap activity ACT_VM_SECONDARYATTACK 1 { event 5001 0 "2" }
$sequence AR2_draw "Draw" fps 60 snap activity ACT_VM_DRAW 1 node 0
$sequence AR2_reload "Reload" fps 30 activity ACT_VM_RELOAD 1 node 0 // this needs to be 1.5 to 2 seconds long. Screw you random Valve employee idc
// $sequence AR2_reload "Reload" frames 0 55 fixuploop -5 0 fps 25 activity ACT_VM_RELOAD 1
$sequence nothreatidle "Non_threatning_idle01" loop fps 30 activity ACT_VM_IDLE_LOWERED 1 node 1
$sequence nothreattoidle "Non_threat_to_idle01" fps 30 activity ACT_VM_LOWERED_TO_IDLE 1 transition 1 0
$sequence idletonothreat "Idle01_to_non_threat" fps 30 activity ACT_VM_IDLE_TO_LOWERED 1 transition 0 1

// ================================
//  Dummy sequences for NPCs
// ================================

$sequence attack1	"Fire01" fps 30 LX rotate 180 frames 0 3 activity ACT_RANGE_ATTACK_AR2 1 { event 5001 0 "0" } { event 3007 0 } { event 6001 0 "0" }
$sequence attack2	"Fire02" fps 30 LX rotate 180 activity ACT_RANGE_ATTACK_AR2_GRENADE 1 { event 3012 0 }


