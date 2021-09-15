// Cigbine
// Model by JosephtheKP, QC edits by The One Epicplayer

$modelname "Cigbine.mdl"

$model studio "Ciggybine"

$surfaceprop "flesh"

$contents "solid"

$eyeposition 0 0 73

$opaque

$cdmaterials "models\Ciggybine\"

$include definebones.qci

$attachment "eyes" "ValveBiped.Bip01_Head1" 4.5 -5 0 rotate 0 -90 -90
$attachment "mouth" "ValveBiped.Bip01_Head1" 0.3 -5.7 0 rotate 0 -80 -90
$attachment "chest" "ValveBiped.Bip01_Spine2" 5 4 0 rotate 0 90 90
$attachment "forward" "ValveBiped.Bip01_Head1" 3 -3 0 rotate 0 -80 -90
$attachment "anim_attachment_RH" "ValveBiped.Bip01_R_Hand" 0 0 0 rotate -90 -90 0
$attachment "anim_attachment_LH" "ValveBiped.Bip01_L_Hand" 4 -0.855 -1 rotate 90 90 0
$attachment "anim_attachment_head" "ValveBiped.Bip01_Head1" 0 0 0 rotate -90 -90 0
$attachment "lefthand" "ValveBiped.Bip01_L_Hand" 0 0 0 rotate 0 0 0

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

$include ragdoll.qci

$ikchain "rhand" "ValveBiped.Bip01_R_Hand" knee 0.707 0.707 0
$ikchain "lhand" "ValveBiped.Bip01_L_Hand" knee 0.707 0.707 0
$ikchain "rfoot" "ValveBiped.Bip01_R_Foot" knee 0.707 -0.707 0
$ikchain "lfoot" "ValveBiped.Bip01_L_Foot" knee 0.707 -0.707 0

$ikautoplaylock "rfoot" 1 0.1
$ikautoplaylock "lfoot" 1 0.1

//==================== CIGBINE ANIMATIONS =============================================

$weightlist upperbody "Valvebiped.bip01_pelvis" 1.0 "ValveBiped.Bip01_R_Thigh" 0.0 "ValveBiped.Bip01_L_Thigh" 0.0 

$sequence pickup "Weapon_pickup" fps 30 activity ACT_PICKUP_GROUND 1 { event 2040 13 }

$animation "a_WalkEasy_S" combine_soldier_anims\a_WalkEasy_S.smd fps 28 loop walkframe 30 LX LY
$animation a_WalkEasy_SE combine_soldier_anims\a_WalkEasy_SE.smd fps 29 loop walkframe 27 LX LY
$animation "a_WalkEasy_E" combine_soldier_anims\a_WalkEasy_E.smd fps 29 loop walkframe 30 LX LY
$animation "a_WalkEasy_NE" combine_soldier_anims\a_WalkEasy_NE.smd fps 31 loop walkframe 30 LX LY
$animation "a_WalkEasy_N" combine_soldier_anims\a_WalkEasy_N.smd loop walkframe 30 LX LY
$animation "a_WalkEasy_NW" combine_soldier_anims\a_WalkEasy_NW.smd fps 29 loop walkframe 30 LX LY
$animation "a_WalkEasy_W" combine_soldier_anims\a_WalkEasy_W.smd fps 28 loop walkframe 30 LX LY
$animation "a_WalkEasy_SW" combine_soldier_anims\a_WalkEasy_SW.smd fps 29 loop walkframe 27 LX LY


$sequence "layer_walk_unarmed" combine_soldier_anims\layer_walk_unarmed {
	weightlist upperbody
	hidden
	worldspace
	loop
}


$sequence WalkNoWeapon_all {
	a_WalkEasy_S a_WalkEasy_SE a_WalkEasy_E a_WalkEasy_NE a_WalkEasy_N a_WalkEasy_NW a_WalkEasy_W a_WalkEasy_SW a_WalkEasy_S
	blendwidth 9 blend move_yaw -180 180 addlayer layer_walk_unarmed ACT_WALK 1
	fps 28 loop walkframe 30 LX LY
}

//$includemodel barney_animations.mdl
//$includemodel humans\male_shared.mdl
$includeModel combine_soldier_anims.mdl
$includemodel humans\male_ss.mdl
$includemodel Police_ss.mdl