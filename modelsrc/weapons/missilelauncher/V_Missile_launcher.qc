/*
==============================================================================

Missile launcher
Fully modelled ML Mesh by ???? (Used in Metapatch/build)
QC edits by The One Epicplayer
==============================================================================
*/

$modelname Weapons/v_ML.mdl

$cdmaterials Models/Weapons/v_ML models\Weapons\V_hand

// whole body
$body studio "v_ml_reference.smd"

$origin 1 8 67

// attachment points
$attachment 0 "v_ml.muzzle" 0 0 0

$sequence idle1 "Idle01" frame 70 99 loop fps 10 activity ACT_VM_IDLE 1 node Idle
$sequence draw "Idle01" frame 0 50 fps 30 snap activity ACT_VM_DRAW 1 node Idle
$sequence fire "Idle01" frame 51 70 fps 30 snap activity ACT_VM_PRIMARYATTACK 1 { event 5001 "0" } Node Fire
//$sequence reload "Reload" fps 30 activity ACT_VM_RELOAD 1 node Idle
//$sequence up_to_down "up_to_down" fps 30 ACT_VM_IDLE_TO_LOWERED 1 transition Idle Low
//$sequence down_to_up "down_to_up" fps 30 ACT_VM_LOWERED_TO_IDLE 1 transition Low Idle
//$sequence down_idle "down_idle" loop fps 30 ACT_VM_IDLE_LOWERED 1 node Low

$sequence holster "Idle01" frame 100 150 fps 30 activity ACT_VM_DROP_WEAPON 1 node Idle {event 3104 40} {event 3900 50}