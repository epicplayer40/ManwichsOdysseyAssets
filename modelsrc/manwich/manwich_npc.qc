//Manwich model for occasional use, probably for cutscenes.

$modelname "Manwich.mdl"

//start eye/face data
$eyeposition 0 0 70

// head controllers
$attachment "eyes" "ValveBiped.Bip01_Head1" 0.095 -3.7469 67.3507 absolute
$attachment "mouth" "ValveBiped.Bip01_Head1" 0.80 -5.80 -0.15 rotate 0 -80 -90
$attachment "chest" "ValveBiped.Bip01_Spine2" 5.00 4.00 0.00 rotate 0 90 90

$model manwich "manwich_reference.smd"{
	eyeball righteye "ValveBiped.Bip01_Head1" -1.2301 -3.7469 67.3623 "eyeball_r" 1 4 "pupil_r" 0.63
	eyeball lefteye "ValveBiped.Bip01_Head1" 1.4201 -3.7469 67.3391 "eyeball_l" 1 -4 "pupil_l" 0.63

	eyelid  upper_right "manwich_expressions" lowerer 1 -0.245 neutral 0 0.1689 raiser 2 0.2489 split 0.1 eyeball righteye
	eyelid  lower_right "manwich_expressions" lowerer 3 -0.2747 neutral 0 -0.216 raiser 4 -0.0309 split 0.1 eyeball righteye
	eyelid  upper_left "manwich_expressions" lowerer 1 -0.245 neutral 0 0.1689 raiser 2 0.2489 split -0.1 eyeball lefteye
	eyelid  lower_left "manwich_expressions" lowerer 3 -0.2747 neutral 0 -0.216 raiser 4 -0.0309 split -0.1 eyeball lefteye

	mouth 0 "mouth" "ValveBiped.Bip01_Head1" 0 1 0     // mouth illumination

	flexfile "manwich_expressions" {
		$include "standardflex_xsi.qci"
	}

	$include "facerules_xsi.qci"
	$include "bodyrules_xsi.qci"
}
//end eye/face data

$opaque

$cdmaterials models\Conscript

$ikchain rhand "valvebiped.Bip01_R_Hand" Z 0 knee 0.707 0.707 0
$ikchain lhand "valvebiped.Bip01_L_Hand" Z 0 knee 0.707 0.707 0
$ikchain rfoot "valvebiped.Bip01_R_Foot" Z 0 knee 0.707 -0.707 0 pad 5 center 4 0 0
$ikchain lfoot "valvebiped.Bip01_L_Foot" Z 0 knee 0.707 -0.707 0 pad 5 center 4 0 0

$ikautoplaylock rfoot 1.0 0.1
$ikautoplaylock lfoot 1.0 0.1

$includemodel humans/male_shared.mdl
$includemodel humans/male_ss.mdl
$includemodel humans/male_gestures.mdl
$includemodel humans/male_postures.mdl
$includemodel barney_animations.mdl
$includemodel Police_ss.mdl

$include "hitbox.qci"
$include "ragdoll.qci"
