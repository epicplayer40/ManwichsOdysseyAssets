// Animal
// Model by Sgt Stacker, QC edits by The One Epicplayer

$ModelName "Conscript.mdl"

//start eye/face data
$eyeposition 0 0 70

// head controllers
$attachment "eyes" "Bip01 Head" 0.095 -5.1219 67.3507 absolute
$attachment "mouth" "Bip01 Head" 0.8 -5.8 -0.15 rotate 0 -80 -90
$attachment "chest" "Bip01 Head" 5.00 4.00 0.00 rotate 0 90 90

$Model "Animal" "Animal_Reference.smd" {

	eyeball righteye "Bip01 Head" -1.2301 -5.1219 67.3623 "eyeball_r" 1 4 "pupil_r" 0.63
	eyeball lefteye "Bip01 Head" 1.4201 -5.1219 67.3391 "eyeball_l" 1 -4 "pupil_l" 0.63

	eyelid  upper_right "Animal_expressions" lowerer 1 -0.245 neutral 0 0.1689 raiser 2 0.2489 split 0.1 eyeball righteye
	eyelid  lower_right "Animal_expressions" lowerer 3 -0.2747 neutral 0 -0.216 raiser 4 -0.0309 split 0.1 eyeball righteye
	eyelid  upper_left "Animal_expressions" lowerer 1 -0.245 neutral 0 0.1689 raiser 2 0.2489 split -0.1 eyeball lefteye
	eyelid  lower_left "Animal_expressions" lowerer 3 -0.2747 neutral 0 -0.216 raiser 4 -0.0309 split -0.1 eyeball lefteye
	
	mouth 0 "mouth" "Bip01 Head" 0 -1 0
	
	flexfile "Animal_expressions" {
		$include "standardflex_xsi.qci"
	}

	$include "facerules_xsi.qci"
	$include "bodyrules_xsi.qci"
}

$CDMaterials "models\conscript\"
$CDMaterials "models\combine_elite\"

$attachment "anim_attachment_RH" "ValveBiped.Bip01_R_Hand" 0 0 0 rotate -90 -90 0

$bbox -13 -13 0  13 13 72

$controller 0 "Bip01 Head" XR -60 60

$poseparameter "XR" -50 50 loop 0

$IncludeModel "conscript_animations.mdl"
//Including definebones massively screws up the flexes for some reason, so disabling - epicplayer
//$include DefineBones.qci
$include conscript_ragdoll.qci