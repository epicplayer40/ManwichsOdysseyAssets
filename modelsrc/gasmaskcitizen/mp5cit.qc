//Barney-like Gasmask Citizen
//Model by Xinus, Everything else by The One Epicplayer

$modelname "gascit_mp5.mdl"

$model citizen "gasmaskcitizen_xinus_reference.smd" {
	eyeball righteye "Bip01 Head" -1.30 -3.02 67.64 "eyeball_r" 1.00 4 "pupil_r" 0.63
	eyeball lefteye "Bip01 Head" 1.26 -3.00 67.64 "eyeball_l" 1.00 -4 "pupil_l" 0.63

	eyelid  upper_right "gasmaskcitizen_xinus_flex" lowerer 1 -0.21 neutral 0 0.20 raiser 2 0.30 split 0.1 eyeball righteye
	eyelid  lower_right "gasmaskcitizen_xinus_flex" lowerer 3 -0.22 neutral 0 -0.18 raiser 4 -0.05 split 0.1 eyeball righteye
	eyelid  upper_left "gasmaskcitizen_xinus_flex" lowerer 1 -0.21 neutral 0 0.20 raiser 2 0.30 split -0.1 eyeball lefteye
	eyelid  lower_left "gasmaskcitizen_xinus_flex" lowerer 3 -0.22 neutral 0 -0.18 raiser 4 -0.05 split -0.1 eyeball lefteye

	mouth 0 "mouth" "Bip01 Head" 0 1 0     // mouth illumination
	flexfile "gasmaskcitizen_xinus_flex" {
		$include "standardflex.qci"
	}
	$include "facerules_xsi.qci"
	//$include "bodyrules_xsi.qci"
}


$bodygroup gun
{
studio "gasmaskcitizen_mp5k_holstered_reference.smd" //holstered
studio "gasmaskcitizen_mp5k_reference.smd"
Blank
}

$mostlyopaque

$eyeposition 0 0 67

$attachment "muzzle" "Bip01 R Hand" 18.00 2.04 9.00 rotate -9 2 0
$attachment "1" "Bip01 R Hand" 14.00 1.00 9.00 rotate 0 -90 0

//head controllers
$attachment "eyes" "Bip01 Head" -0.02 -3.01 67.64 absolute
$attachment "mouth" "Bip01 Head" 0.80 -5.80 -0.15 rotate 0 -80 -90

//$attachment "0" "Bip01 R Hand" 0 0 0 rotate 90 0 0
//$attachment "1" "Bip01 R Hand" 2.4 0.57 -1.96 rotate 1.92 89.98 -80.98

$cdmaterials "models\citizen_17\"
$cdmaterials "models\weapons\v_jaytest"

$include mp5cit_shared.qci
$include cop_ragdoll.qci
$include hitbox.qci