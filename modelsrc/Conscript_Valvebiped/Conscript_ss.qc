// Conscript Scripted Sequences
// By The One Epicplayer

$modelname Humans/Conscript_ss.mdl

$include "../humans/standardhierarchy.qci"
$include "../humans/standardikchains.qci"
$include "../humans/male/commonbones.qci"

$animblocksize 32

$pushd "conscript_animations"

/*
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
*/

$origin 0 0 6
$animation a_jump_holding_hit "jump_down" frames 25 25

$sequence Jump_Down {
	"jump_down"
	align a_jump_holding_hit X Y Z 0 0
	walkframe 13 LX LY LZ
	walkframe 24 LX LY LZ
	walkframe 56 LX LY LZ
}
$origin 0 0 0

$sequence Jump_Down_45 {
	"jumpdown_45" fps 40
	LX LZ
}

$sequence Jump_Up_45 {
	"jumpup_45"
	walkframe 17 LX
	walkframe 30 LX LZ
	walkframe 65 LX LZ
}

$sequence Run_Jump_Down_32 {
	"Run_jumpdown_32"
	LX LZ
}

$sequence Run_Jump_Up_32 {
	"Run_jumpup_32"
	LX LZ
}

$sequence StepN "StepN" LX
$sequence StepS "StepS" LX
$sequence StepW "StepW" LY
$sequence StepE "StepE" LY LX

$sequence Jump_Down_Hammerref "jump_down" align a_jump_holding_hit X Y Z 0 0
$sequence Jump_Down_45_Hammerref "jumpdown_45" fps 40
$sequence Jump_Up_45_Hammerref "jumpup_45"
$sequence Run_Jump_Down_32_Hammerref "Run_jumpdown_32"
$sequence Run_Jump_Up_32_Hammerref "Run_jumpup_32"

$popd

$pushd "scripted_sequences"

/*
$sequence wounded_idle1 wounded_idle1
$sequence wounded_idle2 wounded_idle2
$sequence talk_with_gun introtalk
*/

$popd