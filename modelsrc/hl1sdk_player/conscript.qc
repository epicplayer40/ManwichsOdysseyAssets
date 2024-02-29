/*
==============================================================================

Barney

==============================================================================
*/

$modelname player.mdl
$cdmaterials models\Conscript

$scale 1.0
//$origin 0 0 36

/*
// whole body
$bodygroup body
{
studio "conscript_referencehl1"
studio "conscript_referencehl1" reverse
}
*/

$attachment "eyes" "Bip01 Head" 0.095 -3.7469 67.3507 absolute
$attachment "mouth" "Bip01 Head" 0.80 -5.80 -0.15 rotate 0 -80 -90

$model player "conscript_referencehl1" {
	eyeball righteye "Bip01 Head" -1.2301 -3.7469 67.3623 "eyeball_r" 1 4 "pupil_r" 0.63
	eyeball lefteye "Bip01 Head" 1.4201 -3.7469 67.3391 "eyeball_l" 1 -4 "pupil_l" 0.63

	mouth 0 "mouth" "Bip01 Head" 0 1 0     // mouth illumination

}

$surfaceprop "flesh"
$bonemerge "ValveBiped.Bip01_R_Hand"
$include "player_shared_fixed.qci"

