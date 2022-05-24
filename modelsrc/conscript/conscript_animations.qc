// Conscript Scripted Sequences
// By Sgt Stacker, QC edits made by Akis_02 and The One Epicplayer

$ModelName Conscript_Animations.mdl
$include "DefineBones.qci"
$include "standardhierarchy.qci"

$animblocksize 32

$Attachment "anim_attachment_RH" "ValveBiped.Bip01_R_Hand" 0 0 0 rotate -90 -90 0

$Controller 0 "Bip01 Head" XR -60 60


$PoseParameter "XR" -50 50 loop 0

$includemodel "conscript_ss.mdl" //Per Epic's request

$weightlist chestonly Bip01 0.0 "Bip01 Spine1" 1.0 "Bip01 L Clavicle" 0.0 "Bip01 R Clavicle" 0.0

$pushd "conscript_animations"

//=======================  IDLE ANIMATIONS  =============================================

$Sequence Idle01 		Idle01 		ACT_IDLE 1 					loop
$Sequence Idle02 		Idle02 		ACT_IDLE 2 					loop fps 15
$Sequence IdleNoWeap 	IdleNoWeap 	ACT_IDLE_UNARMED 1 			loop
$Sequence Idle_Angry 	Idle_Angry 	ACT_IDLE_ANGRY 1 			loop fps 0.01

$Sequence Idle_Pistol 	Idle_Pistol ACT_IDLE_PISTOL 1 			loop
$Sequence Idle_Pistol2 	Idle_Pistol2 ACT_IDLE_PISTOL 2 			loop fps 20
$Sequence Idle1 		Idle1 		ACT_IDLE_AR2 1 				loop fps 15
$Sequence IdleAR1 		IdleAR1 	ACT_IDLE_AR1 1 				loop fps 15
$Sequence IdleSMG 		IdleSMG 	ACT_CONSCRIPT_IDLE_SMG1 1 	loop fps 24
$Sequence IdleSG 		IdleSG 		ACT_CONSCRIPT_IDLE_SHOTGUN 1 loop
$Sequence IdleRPG 		IdleRPG 	ACT_IDLE_RPG 1 				loop

$Sequence AngrySMG1 	AngrySMG1 	ACT_CONSCRIPT_IDLE_ANGRY_SMG1 1 loop fps 0.01
$Sequence AngrySG 		AngrySG 	ACT_IDLE_ANGRY_SHOTGUN 1 	loop fps 0.01

$Sequence Angry_AR1 	Angry_AR1 	ACT_IDLE_ANGRY_AR1 1 		loop fps 0.01
$Sequence Angry_pistol 	shootPistol ACT_IDLE_ANGRY_PISTOL 1 	loop fps 2 frame 7 9

//====================  WALKING ANIMATIONS  =============================================

$Sequence Walk 			Walk 		ACT_WALK 1 					loop {
	{ event 6004 5 "NPC_MetroPolice" }
	{ event 6005 20 "NPC_MetroPolice" }
	walkframe 35 LX
}
$Sequence Walk2 		Walk2 		ACT_WALK 2 					loop fps 36 {
	{ event 6004 5 "NPC_MetroPolice" }
	{ event 6005 20 "NPC_MetroPolice" }
	walkframe 35 LX
}
$Sequence WalkPistol 	WalkPistol 	ACT_WALK_PISTOL 1 			loop fps 32 {
	{ event 6004 5 "NPC_MetroPolice" }
	{ event 6005 20 "NPC_MetroPolice" }
	walkframe 30 LX
}
$Sequence WalkSG 		WalkSG 		ACT_CONSCRIPT_WALK_SHOTGUN 1 loop {
	{ event 6004 5 "NPC_MetroPolice" }
	{ event 6005 20 "NPC_MetroPolice" }
	walkframe 35 LX
}
$Sequence WalkSMG 		WalkSMG 	ACT_CONSCRIPT_WALK_SMG1 1 	loop fps 40 {
	{ event 6004 5 "NPC_MetroPolice" }
	{ event 6005 20 "NPC_MetroPolice" }
	walkframe 35 LX
}
$Sequence WalkAR1 		WalkAR1 	ACT_CONSCRIPT_WALK_AR1 1 	loop fps 24 {
	{ event 6004 8 "NPC_MetroPolice" }
	{ event 6005 24 "NPC_MetroPolice" }
	walkframe 30 LX
}
$Sequence WalkRPG 		WalkRPG 	ACT_WALK_RPG 1 				loop {
	{ event 6004 8 "NPC_MetroPolice" }
	{ event 6005 24 "NPC_MetroPolice" }
	walkframe 30 LX
}

//====================  RUNNING ANIMATIONS  =============================================

$Sequence Run 			Run 		ACT_RUN 1 					loop {
	{ event 6004 8 "NPC_MetroPolice" }
	{ event 6005 19 "NPC_MetroPolice" }
	walkframe 21 LX
}
$Sequence Run2 			Run2 		ACT_RUN 2 					loop fps 36 {
	{ event 6004 8 "NPC_MetroPolice" }
	{ event 6005 19 "NPC_MetroPolice" }
	walkframe 21 LX
}
$Sequence RunPistol 	RunPistol 	ACT_RUN_PISTOL 1 			loop {
	{ event 6004 7 "NPC_MetroPolice" }
	{ event 6005 16 "NPC_MetroPolice" }
	walkframe 21 LX
}
$Sequence RunSMG 		RunSMG 		ACT_CONSCRIPT_RUN_SMG1 1 	loop fps 36 {
	{ event 6004 8 "NPC_MetroPolice" }
	{ event 6005 19 "NPC_MetroPolice" }
	walkframe 21 LX
}
$Sequence RunAR1 		RunAR1 		ACT_RUN_AR1 1 				loop {
	{ event 6004 8 "NPC_MetroPolice" }
	{ event 6005 19 "NPC_MetroPolice" }
	walkframe 21 LX
}
$Sequence RunSG 		RunSG 		ACT_CONSCRIPT_RUN_SHOTGUN 1 loop fps 32 {
	{ event 6004 8 "NPC_MetroPolice" }
	{ event 6005 19 "NPC_MetroPolice" }
	walkframe 21 LX
}
$Sequence RunRPG 		RunRPG 		ACT_RUN_RPG 1 				loop {
	{ event 6004 8 "NPC_MetroPolice" }
	{ event 6005 19 "NPC_MetroPolice" }
	walkframe 21 LX
}

//======================  DEATH ANIMATIONS  =============================================

$Sequence Die_simple 	Die_simple 	ACT_DIESIMPLE 1 			fps 50 {
	{ event 2001 28 }
	{ event AE_NPC_RAGDOLL 37 }
	LX LY
}
$Sequence Die_simple2 	Die_simple2 ACT_DIESIMPLE 2 {
	{ event 2001 8 }
	{ event AE_NPC_RAGDOLL 14 }
	LX
}
$Sequence Die_simple3 	Die_simple3 ACT_DIESIMPLE 2 {
	{ event 2001 26 }
	{ event AE_NPC_RAGDOLL 55 }
	LX LY
}
$Sequence Die_simple4 	Die_simple4 ACT_DIESIMPLE 2 {
	{ event 2001 23 }
	{ event AE_NPC_RAGDOLL 20 }
}

$Sequence Die_fast 		Die_simple 	ACT_DIESIMPLE 1 			fps 50 {
//	frame 0 10
	{ event AE_NPC_RAGDOLL 15 }
}
$Sequence Die_fast2 	Die_simple3 ACT_DIESIMPLE 1 			fps 50 {
//	frame 0 34
	{ event AE_NPC_RAGDOLL 44 }
	LX LY
}
$Sequence Die_fast3 	Die_simple3 ACT_DIESIMPLE 1 {
//	frame 0 10
	{ event AE_NPC_RAGDOLL 15 }
}
$Sequence Die_fast4 	Die_simple4 ACT_DIESIMPLE 1 {
//	frame 0 10
	{ event AE_NPC_RAGDOLL 15 }
}

$Sequence Die_fall_left cs_anims/Fall_Left 	ACT_DIESIMPLE 1 	fps 30 {
	{ event 2001 43 }
	{ event AE_NPC_RAGDOLL 49 }
	walkframe 7 LX LY
	walkframe 25 X Y
	walkframe 40 LX LY
}

$Sequence Die_gut cs_anims/Gut 				ACT_DIESIMPLE 1 	fps 30 {
	{ event AE_NPC_RAGDOLL 32 }
}

//=====================  FIRING ANIMATIONS  =============================================

$Sequence shootgun2 {
	"shootblendSMG1_0_0"
	"shootgun2"
	activity "ACT_RANGE_ATTACK1" 2
	blend "XR" -50 50
	blendwidth 2
	{ event 5001 0 "21" }
	{ event 3 0 }
}
$Sequence shootblendSMG1 {
	"shootblendSMG1_0_0"
	"shootblendSMG1_1_0"
	activity "ACT_RANGE_ATTACK_SMG1" 1
	blend "XR" -50 50
	blendwidth 2
	{ event 3 0 }
}
$Sequence 	shootPistol shootPistol ACT_RANGE_ATTACK_PISTOL 1 	fps 20
$Sequence 	shootAR1 	shootAR1 	ACT_CONSCRIPT_SHOOT_AR1 1 	loop fps 240
$Sequence 	shootSMG1 	shootSMG1 	ACT_CONSCRIPT_SHOOT_SMG1 1 	loop fps 180
$Sequence 	shootSR 	shootSR 	ACT_CONSCRIPT_SHOOT_SNIPER_RIFLE 1 loop fps 24
$Sequence 	shootSG 	shootSG 	ACT_RANGE_ATTACK_SHOTGUN 1 	fps 22 {
	{ event 5001 0 "21" }
	{ event 3 0 }
	{ event AE_CL_PLAYSOUND 11 "Weapon_Shotgun.Special1" }
}
$Sequence 	shootSG2 	shootSG2 	ACT_RANGE_ATTACK_SHOTGUN 2 	fps 24 {
	{ event 5001 0 "21" }
	{ event 3 0 }
	{ event AE_CL_PLAYSOUND 11 "Weapon_Shotgun.Special1" }
}
$Sequence 	shootSG3 	shootSG3 	ACT_RANGE_ATTACK_SHOTGUN 3 	fps 27 {
	{ event 5001 0 "21" }
	{ event 3 0 }
	{ event AE_CL_PLAYSOUND 11 "Weapon_Shotgun.Special1" }
	fps 27
}
$Sequence shootblendAR2 {
	"shootblendAR2_0_0"
	"shootblendAR2_1_0"
	activity ACT_RANGE_ATTACK_AR2 1
	blend "XR" -50 50
	blendwidth 2
	{ event 3 0 }
	fps 45
}
$Sequence shootblendAR1 {
	"shootblendAR1_0_0"
	"shootblendAR1_1_0"
	activity ACT_RANGE_ATTACK_AR1 1
	blend "XR" -50 50
	blendwidth 2
	{ event 3 0 }
	fps 40
}
$Sequence shootblendHMG1 {
	"shootblendHMG1_0_0"
	"shootblendHMG1_1_0"
	activity ACT_RANGE_ATTACK_HMG1 1
	blend "XR" -50 50
	blendwidth 2
	{ event 3 0 }
	fps 50
}
$Sequence shootblendSR1 {
	"shootblendSR1_0_0"
	"shootblendSR1_1_0"
	activity ACT_RANGE_ATTACK_SNIPER_RIFLE 1
	blend "XR" -50 50
	blendwidth 2
	{ event 3 0 }
	fps 6
}
$Sequence shootblendRPG {
	"shootblendRPG"
	"shootblendRPG_2"
	activity ACT_RANGE_ATTACK_ML 1
	blend "XR" -50 50
	blendwidth 2
	{ event 3 0 }
}

//=====================  RELOAD ANIMATIONS  =============================================

$Sequence reload_low 	reload_low_shit ACT_RELOAD_LOW 1 		{ event 1 0 }
$Sequence reload_med 	reload_med 		ACT_RELOAD_MED 1 		fps 40 { event 1 0 }
$Sequence reloaddef 	reloaddef 		ACT_RELOAD 1 {
	{ event 1 0 }
	{ event 3015 70 }
}
$Sequence reloadAR2 	reloadAR2 		ACT_CONSCRIPT_RELOAD_AR2 1 {
	{ event 1 0 }
	{ event 3015 70 }
}
$Sequence reloadSG 		reloadSG 		ACT_RELOAD_SHOTGUN 1 	fps 20 {
	{ event 1 0 }
	{ event 3015 5 }
	{ event AE_CL_PLAYSOUND 7 "Weapon_Shotgun.NPC_Reload" }
	{ event AE_CL_PLAYSOUND 14 "Weapon_Shotgun.NPC_Reload" }
	{ event AE_CL_PLAYSOUND 21 "Weapon_Shotgun.NPC_Reload" }
	{ event AE_CL_PLAYSOUND 28 "Weapon_Shotgun.NPC_Reload" }
	{ event AE_CL_PLAYSOUND 35 "Weapon_Shotgun.NPC_Reload" }
	{ event AE_CL_PLAYSOUND 46 "Weapon_Shotgun.NPC_Reload" }
	{ event AE_CL_PLAYSOUND 52 "Weapon_Shotgun.Special1" }
}
$Sequence reloadPistol reloadPistol ACT_RELOAD_PISTOL 1 		fps 24 {
	{ event 1 0 }
	{ event 3015 5 }
}
$Sequence reloadSMG 	reloadSMG 	ACT_CONSCRIPT_RELOAD_SMG1 1 fps 22 {
	{ event 1 0 }
	{ event 3015 5 }
}

//================  MISC COMBAT ANIMATIONS  =============================================

$Sequence Gesture_Move 	Gesture_Move 	ACT_CONSCRIPT_AIM 1 	fps 25

$Sequence RPGLoad 		RPGLoad 	ACT_CONSCRIPT_LOAD_RPG 1 	fps 24

$Sequence Signal3Shit 	Signal3Shit ACT_SIGNAL3 1 				fps 900

$Sequence draw23 		draw23 			ACT_ARM 1 				{ event 2 0 }
$Sequence draw 			draw 			ACT_ARM 1 				{ event 2 7 }
$Sequence disarm disarm ACT_DISARM 1 { event 4 0 }

$Sequence alyx_zombie_fight1 di_zombie_fight1 ACT_DI_ALYX_ZOMBIE_MELEE 1 {
	{ event AE_NPC_WEAPON_FIRE 63 "0" }
	{ event AE_NPC_WEAPON_SET_ACTIVITY 63 "ACT_RANGE_ATTACK1" }
	{ event AE_NPC_WEAPON_SET_ACTIVITY 65 "ACT_RANGE_ATTACK1" }
	{ event AE_NPC_WEAPON_SET_ACTIVITY 67 "ACT_RANGE_ATTACK1" }
}

$Sequence alyx_zombie_fight2 di_zombie_fight2 ACT_DI_ALYX_ZOMBIE_MELEE 1 {
	{ event AE_NPC_WEAPON_FIRE 74 "0" }
	{ event AE_NPC_WEAPON_SET_ACTIVITY 74 "ACT_RANGE_ATTACK1" }
	{ event AE_NPC_WEAPON_SET_ACTIVITY 76 "ACT_RANGE_ATTACK1" }	
	{ event AE_NPC_WEAPON_SET_ACTIVITY 77 "ACT_RANGE_ATTACK1" }

}

//=======================  MISC ANIMATIONS  =============================================

$Sequence turn_left 	turn_left 		ACT_TURN_LEFT 1
$Sequence turn_right 	turn_right 		ACT_TURN_RIGHT 1

$Sequence Jump_Start 	Jump_Start 	ACT_JUMP 1 					fps 50 {
	{ event 5004 0 "NPC_Conscript.Cloth_Jump" }
}
$Sequence Jump_Hold 	Jump_Hold	ACT_GLIDE 1 				loop fps 24
$Sequence Jump_Land 	Jump_Land 	ACT_LAND 1 					fadein 0.15 {
	{ event 6006 0 "" }
	{ event 5004 0 "NPC_Conscript.Cloth_Land" }
}

$Sequence ClimbUp 		ClimbUp 	ACT_CLIMB_UP 1 				loop fps 34 {
	{ event 5004 0 "MetalGrate.StepRight" }
	{ event 5004 10 "MetalGrate.StepLeft" }
	walkframe 20 LX
}

$Sequence ClimbDown 	ClimbDown 	ACT_CLIMB_DOWN 1 			loop fps 34 {
	{ event 5004 0 "MetalGrate.StepRight" }
	{ event 5004 10 "MetalGrate.StepLeft" }
	walkframe 20 LX
}

$Sequence barnaclehit 	barnaclehit 		ACT_BARNACLE_HIT 1 	fps 15
$Sequence barnaclepull 	barnaclepull 		ACT_BARNACLE_PULL 1 loop fps 45
$Sequence barnaclecrunch barnaclecrunch 	ACT_BARNACLE_CHOMP 1 fps 5
$Sequence barnaclechew  barnaclechew 		ACT_BARNACLE_CHEW 1 loop fps 5

$Sequence Sm_flinch 	Sm_flinch 	ACT_SMALL_FLINCH 1

$Sequence flinch_head 	flinch_head 		ACT_FLINCH_HEAD 1 fps 12
$Sequence flinch_chest 	flinch_chest 		ACT_FLINCH_CHEST 1
$Sequence flinch_gut 	flinch_gut 			ACT_FLINCH_STOMACH 1
$Sequence flinch_leftarm flinch_lefthand 	ACT_FLINCH_LEFTARM 1
$Sequence flinch_rightarm flinch_righthand 	ACT_FLINCH_RIGHTARM 1
$Sequence flinch_leftleg flinch_leftleg 	ACT_FLINCH_LEFTLEG 1
$Sequence flinch_leftleg2 flinch_leftleg 	ACT_FLINCH_LEFTLEG 1 fps 23
$Sequence flinch_rightleg flinch_rightleg 	ACT_FLINCH_RIGHTLEG 1
$Sequence flinch_rightleg2 flinch_rightleg 	ACT_FLINCH_RIGHTLEG 1 fps 23

$Sequence flinch_gesture_head 	flinch_head					ACT_GESTURE_FLINCH_HEAD 1 subtract flinch_gesture_head 1 fps 20 weightlist chestonly delta
$Sequence flinch_gesture_chest 	flinch_chest				ACT_GESTURE_FLINCH_CHEST 1 subtract flinch_gesture_chest 1 weightlist chestonly delta
$Sequence flinch_gesture_gut 	flinch_gesture_gut			ACT_GESTURE_FLINCH_STOMACH 1 subtract flinch_gesture_gut 1 delta
$Sequence flinch_gesture_leftarm flinch_gesture_lefthand 	ACT_GESTURE_FLINCH_LEFTARM 1 subtract flinch_gesture_leftarm 1 delta
$Sequence flinch_gesture_rightarm flinch_gesture_righthand 	ACT_GESTURE_FLINCH_RIGHTARM 1 subtract flinch_gesture_rightarm 1 delta
$Sequence flinch_gesture_leftleg flinch_gesture_leftleg 	ACT_GESTURE_FLINCH_LEFTLEG 1 subtract flinch_gesture_leftleg 1 delta
$Sequence flinch_gesture_rightleg flinch_gesture_rightleg 	ACT_GESTURE_FLINCH_RIGHTLEG 1 subtract flinch_gesture_rightleg 1 delta

$Sequence Cower			Jump_Land	ACT_COWER 1					fps 10
$Sequence ragdoll ragdoll ACT_DIERAGDOLL 1

//==================  CROUCHING ANIMATIONS  =============================================

$Sequence shoot_low 	shoot_low 		ACT_RANGE_ATTACK1_LOW 1 loop fps 45 { event 1 0 }
$Sequence cover_crouch_low cover_crouch_low ACT_COVER_LOW 1 	loop node "crouching"
$Sequence cover_crouch_med cover_crouch_med ACT_COVER_MED 1 	loop node "crouching"
$Sequence cover_crouch 	cover_crouch ACT_COVER 1 				loop

$Sequence ToCover ToCover ACT_TRANSITION 1 fps 20 transition "standing" "crouching"

//===================  SCRIPTED ANIMATIONS  =============================================

$Sequence wall1 wall1 loop fps 15
$Sequence wall2 wall2 loop fps 15
$Sequence wall3 wall3 loop fps 15

$Sequence injured injured loop fps 15 

$Sequence anshoot anshoot ACT_BLINDFIRE 1 {
	{ event AE_NPC_WEAPON_FIRE 36 }
	{ event AE_NPC_WEAPON_FIRE 37 }
	{ event AE_NPC_WEAPON_FIRE 38 }
	{ event AE_NPC_WEAPON_FIRE 39 }
	{ event AE_NPC_WEAPON_FIRE 40 }
	{ event AE_NPC_WEAPON_FIRE 41 }
	{ event AE_NPC_WEAPON_FIRE 42 }
	{ event AE_NPC_WEAPON_FIRE 43 }
	{ event AE_NPC_WEAPON_FIRE 44 }
	{ event AE_NPC_WEAPON_FIRE 45 }
	{ event AE_NPC_WEAPON_FIRE 46 }
	{ event AE_NPC_WEAPON_FIRE 47 }
	{ event AE_NPC_WEAPON_FIRE 48 }
	{ event AE_NPC_WEAPON_FIRE 49 }
	{ event AE_NPC_WEAPON_FIRE 50 }
	{ event AE_NPC_WEAPON_FIRE 51 }
	{ event AE_NPC_WEAPON_FIRE 52 }
	{ event AE_NPC_WEAPON_FIRE 53 }
	{ event AE_NPC_WEAPON_FIRE 54 }
	{ event AE_NPC_WEAPON_FIRE 55 }
	{ event AE_NPC_WEAPON_FIRE 56 }
	{ event AE_NPC_WEAPON_FIRE 57 }
	{ event AE_NPC_WEAPON_FIRE 58 }
	{ event AE_NPC_WEAPON_FIRE 59 }
	{ event AE_NPC_WEAPON_FIRE 60 }
	{ event AE_NPC_WEAPON_FIRE 61 }
	{ event AE_NPC_WEAPON_FIRE 62 }
	{ event AE_NPC_WEAPON_FIRE 63 }
	{ event AE_NPC_WEAPON_FIRE 64 }
	{ event AE_NPC_WEAPON_FIRE 65 }
	{ event AE_NPC_WEAPON_FIRE 66 }
	{ event AE_NPC_WEAPON_FIRE 67 }
	{ event AE_NPC_WEAPON_FIRE 68 }
	{ event AE_NPC_WEAPON_FIRE 69 }
	{ event AE_NPC_WEAPON_FIRE 70 }
	{ event AE_NPC_WEAPON_FIRE 71 }
	{ event AE_NPC_WEAPON_FIRE 72 }
	{ event AE_NPC_WEAPON_FIRE 73 }
	//{ event AE_ACTBUSY_WEAPON_FIRE_OFF 74 }
	//loop
}

$Sequence anidle anidle
$Sequence anshout anshout

$popd

$keyvalues
{
	dynamic_interactions 
	{
		"conscript_v_zombie_180deg_64"		 
		{
			"trigger"			"auto_in_combat"
			"origin_relative"			"64 0 0"
			"angles_relative"			"0 180 0"
			"activity"			"ACT_DI_ALYX_ZOMBIE_MELEE"
			"delay"			"10.0"
			"needs_weapon"			"ME"
			"weapon_mine"			"weapon_oicw"
		}
	}
}