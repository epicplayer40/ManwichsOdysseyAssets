//======================================
//   2002 Metropolice by The One Epicplayer
//======================================

$ModelName "Police_Leak.mdl"

$model police "2002_Police_reference.smd" {
$include "bodyrules_xsi.qci"
}

$Contents "solid"

$EyePosition 0 0 72

$MaxEyeDeflection 90

$cdmaterials models\police\ models\manhack\
$surfaceprop "flesh"
$jointsurfaceprop "ValveBiped.Bip01_Head1" "no_decal"

$attachment "eyes" "ValveBiped.Bip01_Head1" 0 -5 67 absolute
$attachment "Center" "ValveBiped.Bip01_Spine1" 0 0 40 absolute
$attachment "Chest" "ValveBiped.Bip01_Spine4" 0 0 55 absolute
$attachment "LHand" "ValveBiped.Bip01_L_Hand" 3 0 0
$attachment "RHand" "ValveBiped.Bip01_R_Hand" 3 0 0
$attachment "zipline" "ValveBiped.Bip01_Spine4" 2.00 -2.00 0.00 rotate 0 -17 0 rigid
$attachment "manhack" "ValveBiped.Bip01_Spine" 18.00 -6.00 3.00 rotate -25 50 0

// This is the list of bones on the model that are bone merged against
$bonemerge "ValveBiped.Bip01_R_Hand"
$bonemerge "ValveBiped.baton_parent"

$bodygroup manhack
{
Blank
studio "Manhack_reference.smd"
}

$bodygroup nightstick
{
Blank
studio "nightstick_holstered_reference.smd"
studio "nightstick_reference.smd"
}

$bbox -13 -13 0 13 13 72

$lod 42
{
	removemesh "models/manhack/manhack_sheet"
	replacebone "ValveBiped.circle" "ValveBiped.Bip01_L_upperarm"
}

$lod 55 
{
	$include "removehands.qci"	
	removemesh "models/manhack/manhack_sheet"
	replacebone "ValveBiped.circle" "ValveBiped.Bip01_L_upperarm"

}

$lod 80 
{
	$include "lowesthumanskeleton.qci"
	removemesh "models/manhack/manhack_sheet"
	replacebone "ValveBiped.circle" "ValveBiped.Bip01_L_upperarm"
}

$shadowlod
{
	$include "lowesthumanskeleton.qci"
	removemesh "models/manhack/manhack_sheet"
	replacebone "ValveBiped.circle" "ValveBiped.Bip01_L_upperarm"
}

$include "DefineBones.qci"
$definebone "ValveBiped.baton_parent" "ValveBiped.Bip01_R_Hand" 2.338453 -1.535742 -6.391511 -5.407576 -114.703346 87.103622 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000

$include "weaponmacros.qci"
$include "standardikchains.qci"
$include "standardhierarchy.qci"
$include "commonbones.qci"
$include "body_poses_lean.qci"

$include "hitbox.qci"
$include "ragdoll.qci"

$includemodel Police_animations.mdl
$includemodel Police_ss.mdl