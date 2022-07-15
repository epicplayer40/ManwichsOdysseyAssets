// Vortigaunt 2001 Recreation
// 2001 edits by Xinus22, porting by The One Epicplayer

$modelname "islave.mdl"

$model Vortigaunt Vortigaunt_2001_reference_oldskeleton.smd {

	eyeball "eye_0" "ValveBiped.head" -0.112700 -16.044503 60.359601 "eyeball" 6.6 0 "pupil" 5

	eyelid upper "vortigaunt_slave_01.vta" lowerer 1 -1.15 neutral 0 1.35 raiser 2 2.07 split 0 eyeball "eye_0"
	eyelid lower "vortigaunt_slave_01.vta" lowerer 3 -1.77 neutral 0 -1.25 raiser 4 0.16 split 0 eyeball "eye_0"

	$include "vortigaunt_slave_flex.qci"
}

$cdmaterials models\vortigaunt\

$hboxset "default"
$hbox 0 "ValveBiped.Bip01" -5.5 -6.5 -6.98 7.03 6.5 4.28
$hbox 0 "ValveBiped.leg_bone1_L" -0.86 -2.5 -2.25 16.139999 4.5 4.25
$hbox 0 "ValveBiped.leg_bone2_L" 0.86 -2.5 -2.5 15.86 2.5 2.5
$hbox 0 "ValveBiped.leg_bone3_L" -1.25 -2.5 -2.5 15.75 2.5 2.5
$hbox 0 "ValveBiped.Bip01_L_Foot" -1.69 -4 -3 6.31 4 2
$hbox 0 "ValveBiped.Bip01_L_Toe0" 2.5 -3.5 -2.27 7.5 0.5 1.73
$hbox 0 "ValveBiped.leg_bone1_R" -0.78 -2.5 -4.25 16.219999 4.5 2.25
$hbox 0 "ValveBiped.leg_bone2_R" 0.89 -2.5 -2.5 15.89 2.5 2.5
$hbox 0 "ValveBiped.leg_bone3_R" -1.19 -2.5 -2.5 15.81 2.5 2.5
$hbox 0 "ValveBiped.Bip01_R_Foot" 0 -4 -2 8 4 3
$hbox 0 "ValveBiped.Bip01_R_Toe0" 2.5 -4.29 -1.63 7.5 -0.29 2.37
$hbox 0 "ValveBiped.spine1" 0 -5.96 -5.64 8 6.04 6.36
$hbox 0 "ValveBiped.spine3" -2.5 -7.75 -7.5 16.5 8.25 7.5
$hbox 0 "ValveBiped.neck1" -4 -4.25 -3.64 10 4.25 3.39
$hbox 0 "ValveBiped.head" -1.5 -3 -4.5 8.5 7 4.5
$hbox 0 "ValveBiped.arm1_L" -1 -2 -2 21 4 3.5
$hbox 0 "ValveBiped.arm2_L" -1 -2 -1.59 15 2 2.41
$hbox 0 "ValveBiped.hand1_L" -1.04 -3.82 -2.4 5.98 1.24 2.22
$hbox 0 "ValveBiped.index2_L" -0.29 -0.91 -0.96 3.51 0.87 1.05
$hbox 0 "ValveBiped.pinky2_L" -2.17 -0.35 -0.67 4.07 1.45 1.27
$hbox 0 "ValveBiped.arm1_R" -1 -2.76 -3 21 3.24 1.5
$hbox 0 "ValveBiped.arm2_R" -1 -2 -2.5 15 2 1.5
$hbox 0 "ValveBiped.hand1_R" -1.04 -3.82 -2.22 5.98 1.24 2.4
$hbox 0 "ValveBiped.index2_R" -0.29 -0.91 -1.05 3.51 0.87 0.96
$hbox 0 "ValveBiped.pinky2_R" -2.17 -0.35 -1.27 4.07 1.45 0.67
$hbox 0 "ValveBiped.bone1" -0.71 -1.18 -1.11 6.4 0.82 1.24

$surfaceprop AlienFlesh
$illumposition 1.859 -0.781 33.621
$eyeposition 0 0 43

$attachment "0" "ValveBiped.hand1_R" 0 0 0 rotate 0 0 0
$attachment "1" "ValveBiped.hand1_L" 0 0 0 rotate 0 0 0

$bbox -18.9 -18.45 -0.273 20.461 22.168 67.514

$sequence Idle01 Idle01 ACT_IDLE 1 node "node0" loop

$sequence ActionIdle ActionIdle ACT_IDLE 6 node "node1" loop

$sequence CrouchIdle CrouchIdle loop


$sequence ToAction ToAction ACT_TRANSITION 1 transition "node0" "node1" fps 60
$sequence FromAction FromAction ACT_TRANSITION 1 transition "node1" "node0"

$sequence Walk Walk ACT_WALK 1 fps 40 loop LX {
	event 5004 15 "NPC_Vortigaunt.FootstepLeft"
	event 5004 32 "NPC_Vortigaunt.FootstepRight"
}

$sequence Run Run ACT_RUN 1	fps 40 loop LX {
	event 5004 2 "NPC_Vortigaunt.FootstepLeft"
	event 5004 14 "NPC_Vortigaunt.FootstepRight"
}

$sequence Die_simple Idle01 ACT_DIESIMPLE 1

$sequence MeleeHigh1 MeleeHigh1 ACT_MELEE_ATTACK1 3 {
	{ event 11 15 }
	{ event 1 20 }
}

$sequence MeleeHigh2 MeleeHigh2 ACT_MELEE_ATTACK1 3 {
	{ event 11 16 }
	{ event 2 20 }
}

$sequence MeleeHigh3 MeleeHigh3 ACT_MELEE_ATTACK1 1 {
	{ event 11 14 }
	{ event 1 19 }
}

$sequence MeleeLow MeleeLow ACT_MELEE_ATTACK2 2 {
	{ event 11 16 }
	{ event 8 17 } 
}

$sequence zapattack1 zapattack1 ACT_RANGE_ATTACK1 1 node "node1" {
	{ event 3 1 }
	{ event 3 10 }
	{ event 3 20 }
	{ event 3 30 }
//	{ event 12 44 }
	{ event 4 47 }
	{ event 5 55 }
}

$sequence heal_start heal_start ACT_VORTIGAUNT_START_HEAL 1 {
	{ event 6 35 }
	{ event 10 70 }
}

$sequence heal_cycle heal_cycle ACT_VORTIGAUNT_HEAL_LOOP 1 {
	{ event 7 5 }
	node "node2"
}

$sequence heal_end heal_end ACT_VORTIGAUNT_END_HEAL 1 transition "node2" "node0"

$sequence turn turn ACT_TURN_LEFT 1

$sequence ToDefend ToDefend ACT_VORTIGAUNT_TO_DEFEND 1 transition "node1" "node3"
$sequence Defend Defend ACT_VORTIGAUNT_DEFEND 1 {
	{ event 13 1 }
	{ event 13 5 }
	node "node3"
	loop
}

$sequence FromDefend FromDefend ACT_VORTIGAUNT_FROM_DEFEND 1 {
	{ event 13 1 }
	transition "node3" "node1"
}

$sequence stomp stomp ACT_VORTIGAUNT_STOMP 1 {
	{ event 11 11 }
	{ event 9 29 }
}

$sequence barnaclehit barnaclehit ACT_BARNACLE_HIT 1
$sequence barnaclepull barnaclepull ACT_BARNACLE_PULL 1 loop
$sequence barnaclecrunch barnaclecrunch ACT_BARNACLE_CHOMP 1
$sequence barnaclechew barnaclechew ACT_BARNACLE_CHEW 1 loop

$include vortigaunt_ragdoll.qci