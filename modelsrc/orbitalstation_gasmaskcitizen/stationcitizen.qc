
$modelname "epicplayer_citizen.mdl"

$model "citizen" "gasmaskcitizen_reference.smd" {

	eyeball "righteye" "ValveBiped.Bip01_Head1" -1.24019 -3.51242 68.5347 "eyeball_r" 1 4 "pupil_r" 0.63
	eyeball "lefteye" "ValveBiped.Bip01_Head1" 1.34411 -3.52109 68.5347 "eyeball_l" 1 -4 "pupil_l" 0.63

	eyelid  upper_right "gasmaskcitizen_flex" lowerer 1 -0.29 neutral 0 0.23 raiser 2 0.32 split 0.1 eyeball righteye
	eyelid  lower_right "gasmaskcitizen_flex" lowerer 3 -0.28 neutral 0 -0.22 raiser 4 -0.12 split 0.1 eyeball righteye
	eyelid  upper_left "gasmaskcitizen_flex" lowerer 1 -0.29 neutral 0 0.23 raiser 2 0.32 split -0.1 eyeball lefteye
	eyelid  lower_left "gasmaskcitizen_flex" lowerer 3 -0.28 neutral 0 -0.22 raiser 4 -0.12 split -0.1 eyeball lefteye
		
		mouth 0 "mouth" "ValveBiped.Bip01_Head1" 0 1 0     // mouth illumination
		
	flexfile "gasmaskcitizen_flex" {
		$include "standardflex_xsi.qci"
	}
	
	$include "facerules_xsi.qci"
	$include "bodyrules_xsi.qci"
}

$surfaceprop "flesh"

$contents "solid"

$illumposition -0.045 -1.261 36.061

$eyeposition 0 0 70

$mostlyopaque

$cdmaterials "models\citizen_17\"

$attachment "eyes" "ValveBiped.Bip01_Head1" 4.7 -4 0.05 rotate 0 -80.1 -90
$attachment "mouth" "ValveBiped.Bip01_Head1" 0.3 -5.7 0 rotate 0 -80 -90
$attachment "chest" "ValveBiped.Bip01_Spine2" 5 4 0 rotate 0 90 90
$attachment "forward" "ValveBiped.Bip01_Head1" 3 -3 0 rotate 0 -80 -90
$attachment "anim_attachment_RH" "ValveBiped.Bip01_R_Hand" 0 0 0 rotate -90 -90 0
$attachment "anim_attachment_LH" "ValveBiped.Bip01_L_Hand" 0 0 0 rotate -90 -90 0
$attachment "anim_attachment_head" "ValveBiped.Bip01_Head1" 0 0 0 rotate -90 -90 0

$cbox 0 0 0 0 0 0

$bbox -13 -13 0 13 13 72

$hboxset "default"
$hbox 1 "ValveBiped.Bip01_Head1" -1.25 -6.5 -3.19 8.25 3.5 3.31 ""
$hbox 4 "ValveBiped.Bip01_L_UpperArm" 0 -2.75 -2.75 12.51 1.75 2.25 ""
$hbox 4 "ValveBiped.Bip01_L_Forearm" 0 -2.19 -2.38 13 1.81 1.62 ""
$hbox 4 "ValveBiped.Bip01_L_Hand" 0.06 -2 -1.5 4.06 1 2.5 ""
$hbox 5 "ValveBiped.Bip01_R_UpperArm" 0 -3 -2.25 12.39 2 2.75 ""
$hbox 5 "ValveBiped.Bip01_R_Forearm" -0.5 -2.2 -1.55 12.5 1.8 2.45 ""
$hbox 5 "ValveBiped.Bip01_R_Hand" 0.06 -2 -2.5 4.06 1 1.5 ""
$hbox 6 "ValveBiped.Bip01_L_Thigh" 0 -3.75 -3.25 17.85 3.75 3.25 ""
$hbox 6 "ValveBiped.Bip01_L_Calf" 0 -3.51 -3.28 15.64 3.49 2.72 ""
$hbox 6 "ValveBiped.Bip01_L_Foot" -1.07 -2 -2.84 5.04 5 2.16 ""
$hbox 6 "ValveBiped.Bip01_L_Toe0" -0.5 -3 -2.19 2.5 0 2.46 ""
$hbox 7 "ValveBiped.Bip01_R_Thigh" 0 -3.75 -3.25 17.85 3.75 3.25 ""
$hbox 7 "ValveBiped.Bip01_R_Calf" 0 -3.51 -2.82 15.64 3.49 3.18 ""
$hbox 7 "ValveBiped.Bip01_R_Foot" -1.06 -2.01 -2.28 5.05 4.99 2.72 ""
$hbox 7 "ValveBiped.Bip01_R_Toe0" -0.5 -3 -2.6 2.5 0 2.1 ""
$hbox 3 "ValveBiped.Bip01_Pelvis" -7.5 -5.5 -6 7.5 8.5 5 ""
$hbox 2 "ValveBiped.Bip01_Spine2" -2.5 -2.5 -7 14.5 7.5 7 ""
$skipboneinbbox

$bonemerge "ValveBiped.Bip01_Pelvis"
$bonemerge "ValveBiped.Bip01_Spine"
$bonemerge "ValveBiped.Bip01_Spine1"
$bonemerge "ValveBiped.Bip01_Spine2"
$bonemerge "ValveBiped.Bip01_Spine4"
$bonemerge "ValveBiped.Bip01_R_Clavicle"
$bonemerge "ValveBiped.Bip01_R_UpperArm"
$bonemerge "ValveBiped.Bip01_R_Forearm"
$bonemerge "ValveBiped.Bip01_R_Hand"
$bonemerge "ValveBiped.Anim_Attachment_RH"


$ikchain "rhand" "ValveBiped.Bip01_R_Hand" knee 0.707 0.707 0
$ikchain "lhand" "ValveBiped.Bip01_L_Hand" knee 0.707 0.707 0
$ikchain "rfoot" "ValveBiped.Bip01_R_Foot" knee 0.707 -0.707 0
$ikchain "lfoot" "ValveBiped.Bip01_L_Foot" knee 0.707 -0.707 0

$ikautoplaylock "rfoot" 1 0.1
$ikautoplaylock "lfoot" 1 0.1

$include ragdoll.qci

$includemodel barney_animations.mdl
$includemodel humans\male_shared.mdl
$includemodel humans\male_ss.mdl
$includemodel humans\male_gestures.mdl
$includemodel humans\male_postures.mdl
$includemodel Police_ss.mdl