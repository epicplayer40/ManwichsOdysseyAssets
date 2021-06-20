//French Foreign Legion Soldier
//Model by Sgt Stacker, QC edits by The One Epicplayer

$modelname "ffl_soldier.mdl"

$model ffl "FFL_Reference"

$eyeposition 0 0 67

$cdmaterials "models\FFL\"
$cdmaterials "models\humans\male\group01\"

$Attachment "mouth" "Bip01 Head" 0.8 -5.8 -0.15 rotate 0 -80 -90
$Attachment "anim_attachment_RH" "ValveBiped.Bip01_R_Hand" 0 0 0 rotate -90 -90 0

$controller 0 "Bip01 Head" XR -60 60

$include DefineBones.qci
$include conscript_hitbox.qci
$include conscript_ragdoll_fixed.qci
$includemodel Conscript_Animations.mdl

$PoseParameter "XR" -50 50 loop 0

$Sequence RollLeft RollLeft ACT_RELOAD 1 {
	{ event 1 5 }
	{ event 3015 5 }
/*
	{ event AE_NPC_WEAPON_FIRE 5 }
	{ event AE_NPC_WEAPON_FIRE 7 }
	{ event AE_NPC_WEAPON_FIRE 10 }
	{ event AE_NPC_WEAPON_FIRE 12 }
	{ event AE_NPC_WEAPON_FIRE 15 }
	{ event AE_NPC_WEAPON_FIRE 20 }
*/
	fps 45
	walkframe 48 LY
}

$Sequence RollRight RollRight ACT_RELOAD 1 {
	{ event 1 5 }
	{ event 3015 5 }
/*
	{ event AE_NPC_WEAPON_FIRE 5 }
	{ event AE_NPC_WEAPON_FIRE 7 }
	{ event AE_NPC_WEAPON_FIRE 10 }
	{ event AE_NPC_WEAPON_FIRE 12 }
	{ event AE_NPC_WEAPON_FIRE 15 }
	{ event AE_NPC_WEAPON_FIRE 20 }
*/
	fps 45
	walkframe 48 LY
}

$Sequence DiveRight FFL_DiveRight ACT_RELOAD 1 {
	{ event 1 20 }
	{ event 3015 20 }
	{ event AE_NPC_WEAPON_FIRE 5 }
	{ event AE_NPC_WEAPON_FIRE 7 }
	{ event AE_NPC_WEAPON_FIRE 10 }
	{ event AE_NPC_WEAPON_FIRE 12 }
	{ event AE_NPC_WEAPON_FIRE 15 }
	{ event AE_NPC_WEAPON_FIRE 20 }
	{ event AE_CL_PLAYSOUND 1 "NPC_Combine.Zipline_MidClothing" }
	fps 24
	walkframe 3 LY
	walkframe 16 LY
}

$Sequence DiveLeft FFL_DiveLeft ACT_RELOAD 1 {
	{ event AE_NPC_WEAPON_FIRE 5 }
	{ event AE_NPC_WEAPON_FIRE 7 }
	{ event AE_NPC_WEAPON_FIRE 10 }
	{ event AE_NPC_WEAPON_FIRE 12 }
	{ event AE_NPC_WEAPON_FIRE 15 }
	{ event AE_NPC_WEAPON_FIRE 20 }
	{ event 1 20 }
	{ event 3015 20 }
	{ event AE_CL_PLAYSOUND 1 "NPC_Combine.Zipline_MidClothing" }
	fps 24
	walkframe 3 LY
	walkframe 19 LY
}