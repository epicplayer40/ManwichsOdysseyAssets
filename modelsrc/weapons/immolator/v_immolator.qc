/*
==============================================================================

Immolator

==============================================================================
*/

$modelname weapons/v_immolator.mdl

$body studio v_immolator_reference
$cdmaterials models\Weapons\V_hand models\cremator\

$attachment "0" "muzzle" 0 0 0 rotate 0 0 0

$sequence Idle Idle ACT_VM_IDLE 1 loop node idle
$sequence Draw Draw ACT_VM_DRAW 1 node idle
$sequence Fire_start Fire transition idle firing ACT_TRANSITION 1 frame 0 6
$sequence Fire_loop Fire ACT_VM_PRIMARYATTACK 1 frame 6 32 loop node firing fixuploop -5 0
$sequence Fire_end Fire ACT_TRANSITION 1 transition firing idle frame 32 40