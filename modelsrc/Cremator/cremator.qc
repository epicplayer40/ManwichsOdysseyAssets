/*
----------------------------
Cremator
----------------------------
*/

$modelname cremator.mdl

$body studio "cremator_manod_reference.smd"
$opaque
$cdmaterials models/cremator
$include cremator_definebones.qci

//Rigging is changed so legs have better weights on the coat, removing helper bones - epicplayer
$alwayscollapse "LFront Flapa"
$alwayscollapse "RFront Flapa"
$alwayscollapse "LBack Flapa"
$alwayscollapse "RBack Flapa"
$alwayscollapse "LFront Flapb"
$alwayscollapse "RFront Flapb"
$alwayscollapse "LBack Flapb"
$alwayscollapse "RBack Flapb"

// head controller
$controller 0 "Bip01"  ZR 0 360

$eyeposition 0 0 95.5

//$attachment 0 "muzzle" 0 0 0
//$attachment 1 "Bip01 Head" 0 0 0
$Attachment "eyes" "Bip01 Head" -0.01 -7.09 88.25 absolute
$Attachment "mouth" "Bip01 Head" 3 5.80 -0.15 rotate 0 -80 -90
$Attachment "anim_attachment_RH" "ValveBiped.Bip01_R_Hand" 0.00 -0.00 0.00 rotate 0 0 -180
//$Attachment "anim_attachment_RH" "Bip01 R Hand" 0.00 0.00 0.00 rotate 0 0 0

//=====================================
//	Pose Parameters
//=====================================

$poseparameter "aim_pitch"
$poseparameter "aim_yaw"
$poseparameter "move_yaw" -180 180 wrap

//======================================
// IK Rules
//======================================
$ikchain lfoot "Bip01 L Foot" Z 0 knee 0 0.707 0  pad 5 center 4 0 0
$ikchain rfoot "Bip01 R Foot" Z 0 knee 0 0.707 0  pad 5 center 4 0 0
$ikchain lhand "Bip01 L Hand" Z 0 knee 0 0.707 0
$ikchain rhand "Bip01 R Hand" Z 0 knee 0 0.707 0


$cmdlist lockfeet {
	ikrule lfoot footstep
	ikrule rfoot footstep
}

$cmdlist lockfeetandlefthand {
	ikrule lfoot footstep
	ikrule rfoot footstep
	ikrule lhand touch "Bip01 R Hand"
}


//Animation Events:
//
// AE_CREMATOR_TURNONHOSE
// AE_CREMATOR_TURNOFFHOSE
// 2050 - NPC_EVENT_LEFTFOOT
// 2051 - NPC_EVENT_RIGHTFOOT
// 3105 - EVENT_WEAPON_REFILL

//$sequence Idle01 "idle01" loop FPS 30 
//$sequence walk1 "Fastwalk01" loop LX fps 30 ACT_WALK 1
/*
$sequence run1			 "Fastwalk01"			loop LX LY  fps 30 ACT_RUN 1 {
{ event 2051 17 }
{ event 2050 38 }
}
*/
$animation run_S	"fastwalkback01"	loop LX fps 30 startloop 20 ikrule rfoot footstep range 13 18 38 2 ikrule lfoot footstep range 35 1 18 25 ikrule lhand touch "Bip01 R Hand"
$animation run_SW	"fastwalkleftback01"	loop LX LY fps 30 startloop 20 rotate 6.27 ikrule rfoot footstep range 13 18 38 2 ikrule lfoot footstep range 35 1 18 25 ikrule lhand touch "Bip01 R Hand"
$animation run_W	"fastwalkleft01"	loop LY fps 30 ikrule rfoot footstep range 13 18 38 2 ikrule lfoot footstep range 35 1 18 25 ikrule lhand touch "Bip01 R Hand"
$animation run_NW	"fastwalkltfront01"	loop LX LY fps 30 rotate 3.82 ikrule rfoot footstep range 13 18 38 2 ikrule lfoot footstep range 35 1 18 25 ikrule lhand touch "Bip01 R Hand"
$animation run_N	"Fastwalk01"		loop LX fps 30 ikrule rfoot footstep range 13 18 38 2 ikrule lfoot footstep range 35 1 18 25 ikrule lhand touch "Bip01 R Hand"
$animation run_NE	"fastwalkrtfront01"	loop LX LY fps 30 rotate -11.5 ikrule rfoot footstep range 13 18 38 2 ikrule lfoot footstep range 35 1 18 25 ikrule lhand touch "Bip01 R Hand"
$animation run_E	"fastwalkrt01"		loop LY  fps 30 startloop 20 ikrule rfoot footstep range 13 18 38 2 ikrule lfoot footstep range 35 1 18 25 ikrule lhand touch "Bip01 R Hand"
$animation run_SE	"fastwalkrtback01"	loop LX LY fps 30 startloop 20 rotate -2.1 ikrule rfoot footstep range 13 18 38 2 ikrule lfoot footstep range 35 1 18 25 ikrule lhand touch "Bip01 R Hand"
$sequence run {
	run_S run_SE run_E run_NE run_N run_NW run_W run_SW run_S
	blendwidth 9 blend move_yaw -180 180 loop ACT_RUN 1
	{ event 2051 17 }
	{ event 2050 38 }
	{ event AE_CL_PLAYSOUND 3 "NPC_Cremator.CloakSwish" }
	{ event AE_CL_PLAYSOUND 26 "NPC_Cremator.CloakSwish" }
}


//$sequence limp1			"limp01" loop LX fps 30		ACT_RUN_HURT 1
$sequence gunjam		"gunjam01" fps 30			ACT_CREMATOR_GUN_JAM 1 cmdlist lockfeetandlefthand
$sequence flinch1		"flinch01" fps 30			ACT_BIG_FLINCH 1 ikrule rfoot footstep ikrule lfoot footstep range .. .. 0 7 ikrule lfoot footstep range 10 16 92 103 ikrule lfoot footstep range 108 112 .. ..
$sequence fireinout		"fireinout01" fps 30 ACT_SPECIAL_ATTACK1 1 node idle {
	blendlayer Aim_firing 18 36 200 227 spline
	ikrule rfoot footstep range .. .. 17 20
	ikrule rfoot footstep range 26 29 203 206
	ikrule rfoot footstep range 209 211 .. ..
	
	ikrule lfoot footstep range .. .. 4 7
	ikrule lfoot footstep range 14 17 214 219
	ikrule lfoot footstep range 224 226 .. ..
	
	ikrule lhand touch "Bip01 R Hand"
	
	{ event AE_CREMATOR_TURNOFFHOSE 0 }
	{ event 2050 15 }
	{ event AE_CL_PLAYSOUND 26 "NPC_Cremator.Immolator_Start" }	
	{ event 2051 28 }
	{ event AE_CREMATOR_TURNONHOSE 38 }
	{ event AE_CREMATOR_TURNOFFHOSE 200 }
	{ event 2050 226 }	
	{ event 2051 211 }
}
$sequence fireupleft	"fireupleft" fps 30
$sequence fireupright	"fireupright" fps 30
$sequence fireinoutsw	"fireinoutsweep" fps 30 ACT_SPECIAL_ATTACK2 1 node idle {
	ikrule rfoot footstep range .. .. 17 20
	ikrule rfoot footstep range 26 29 238 241
	ikrule rfoot footstep range 244 246 .. ..
	
	ikrule lfoot footstep range .. .. 4 7
	ikrule lfoot footstep range 14 17 249 253
	ikrule lfoot footstep range 259 261 .. ..

	{ event AE_CREMATOR_TURNOFFHOSE 0 }
	{ event 2050 15 }	
	{ event 2051 28 }
	{ event AE_CL_PLAYSOUND 26 "NPC_Cremator.Immolator_Start" }
	{ event AE_CREMATOR_TURNONHOSE 30 }
	{ event AE_CREMATOR_TURNOFFHOSE 240 }
	{ event 2050 260 }	
	{ event 2051 245 }
}
$sequence breathing		"breathing01" fps 30 ACT_IDLE 1 node idle cmdlist lockfeetandlefthand
//$sequence firebreathing1 "firebreathing01" fps 30	ACT_IDLE 1
$sequence firebreathing2 "firebreathing01" fps 30	ACT_IDLE_ANGRY 1 addlayer Aim_firing node flaming cmdlist lockfeetandlefthand

$sequence walk walk01 LX loop ACT_WALK 1 {
ikrule lfoot footstep range 54 60 29 46 
ikrule rfoot footstep range 24 28 0 14
	{ event 2051 26 }
	{ event 2050 58 }
	{ event AE_CL_PLAYSOUND 7 "NPC_Cremator.CloakSwish" }
	{ event AE_CL_PLAYSOUND 41 "NPC_Cremator.CloakSwish" }
}

$animation limp_S	"limpback01"	loop LX fps 30 startloop 19 ikrule rfoot footstep range 19 23 0 3 ikrule lfoot footstep range 30 33 22 25 ikrule lhand touch "Bip01 R Hand"
$animation limp_W	"limpleft01"	loop LY fps 30 startloop 5 ikrule rfoot footstep range 19 23 0 3 ikrule lfoot footstep range 30 33 22 25 ikrule lhand touch "Bip01 R Hand"
$animation limp_N	"limp01"		loop LX fps 30 ikrule rfoot footstep range 19 23 0 3 ikrule lfoot footstep range 30 33 22 25 ikrule lhand touch "Bip01 R Hand"
$animation limp_E	"limprt01"		loop LY  fps 30 startloop 18 ikrule rfoot footstep range 19 23 0 3 ikrule lfoot footstep range 30 33 22 25 ikrule lhand touch "Bip01 R Hand"
$sequence limp {
	limp_S limp_E limp_N limp_W limp_S
	blendwidth 5 blend move_yaw -180 180 loop ACT_RUN_HURT 1 
	{ event 2051 21 }
	{ event 2050 32 }
	{ event AE_CL_PLAYSOUND 22 "NPC_Cremator.CloakSwish" }
}

//New Manod Sequences
$sequence firein		"fireinout01" { 
	frame 0 40 
	transition idle flaming ACT_TRANSITION 1
	blendlayer Aim_firing 18 36 39 39 spline
	ikrule rfoot footstep range .. .. 17 20
	ikrule rfoot footstep range 26 29 .. ..
	ikrule lfoot footstep range .. .. 4 7
	ikrule lfoot footstep range 14 17 .. ..
	ikrule lhand touch "Bip01 R Hand"
	{ event 2050 15 }	
	{ event 2051 28 }
	{ event AE_CL_PLAYSOUND 31 "NPC_Cremator.Immolator_Start" }

} 
$sequence fireout		"fireinout01" {
	frame 200 240 
	transition flaming idle ACT_TRANSITION 1 
	blendlayer Aim_firing 0 0 0 30 spline
	ikrule rfoot footstep range .. .. 4 7
	ikrule rfoot footstep range 10 12 .. ..
	ikrule lfoot footstep range .. .. 15 21
	ikrule lfoot footstep range 25 27 .. ..
	ikrule lhand touch "Bip01 R Hand"
	{ event AE_CREMATOR_TURNOFFHOSE 0 }
	{ event 2050 27 }	
	{ event 2051 12 }
}

$animation aim_ref firebreathing01 frame 45 45
/*
$animation aim_straight firebreathing01 frame 45 45 subtract firebreathing2 0
$animation aim_left fireinoutsweep frame 180 180 subtract firebreathing2 0
$animation aim_right fireinoutsweep frame 140 140 subtract firebreathing2 0
$animation aim_up_straight fireinoutsweep frame 36 36 subtract firebreathing2 0
$animation aim_up_left fireupleft frame 86 86 subtract firebreathing2 0
$animation aim_up_right fireupright frame 134 134 subtract firebreathing2 0

$sequence Aim_firing  {
		    aim_up_left aim_up_straight aim_up_right 
		    aim_left aim_straight aim_right 
		    aim_left aim_straight aim_right 
			blendref aim_ref 
			blendcenter aim_straight
			blendwidth 3
			blend "aim_yaw" -45 45   
			blend "aim_Pitch" -45 45 
			//blendwidth 3 calcblend aim_yaw "anim_attachment_RH" ZR calcblend aim_pitch "anim_attachment_RH" YR
			delta }
			
*/

$sequence aim_straightfixer Aim_9_directions frame 4 4 subtract aim_ref 0 hidden delta

//**standard aimblend elements
$animation a_aim_stand_neutral Aim_9_directions frame 4 4
$animation a_aim_stand_down_left Aim_9_directions frame 0 0 subtract a_aim_stand_neutral 0
$animation a_aim_stand_down_center Aim_9_directions frame 1 1 subtract a_aim_stand_neutral 0
$animation a_aim_stand_down_right Aim_9_directions frame 2 2 subtract a_aim_stand_neutral 0
$animation a_aim_stand_mid_left Aim_9_directions frame 3 3 subtract a_aim_stand_neutral 0
$animation a_aim_stand_mid_center Aim_9_directions frame 4 4 subtract a_aim_stand_neutral 0
$animation a_aim_stand_mid_right Aim_9_directions frame 5 5 subtract a_aim_stand_neutral 0
$animation a_aim_stand_up_left Aim_9_directions frame 6 6 subtract a_aim_stand_neutral 0
$animation a_aim_stand_up_center Aim_9_directions frame 7 7 subtract a_aim_stand_neutral 0
$animation a_aim_stand_up_right Aim_9_directions frame 8 8 subtract a_aim_stand_neutral 0
$animation a_aim_stand_straightup Aim_9_directions frame 9 9 subtract a_aim_stand_neutral 0

$sequence Aim_firing  {
			a_aim_stand_straightup a_aim_stand_straightup a_aim_stand_straightup
			a_aim_stand_up_right a_aim_stand_up_center a_aim_stand_up_left 
		    a_aim_stand_mid_right a_aim_stand_mid_center a_aim_stand_mid_left 
			a_aim_stand_down_right a_aim_stand_down_center a_aim_stand_down_left 
//			weightlist nolowerbody 
			blendref a_aim_stand_neutral 
			blendcenter a_aim_stand_mid_center
			blendwidth 3 calcblend aim_yaw "anim_attachment_RH" ZR calcblend aim_pitch "anim_attachment_RH" YR
			iklock lfoot 1 0 iklock rfoot 1 0
			hidden
			delta 
			addlayer aim_straightfixer }


$sequence fire "fireinout01" frame 78 90 fps 30	ACT_RANGE_ATTACK1 1 addlayer Aim_firing node flaming cmdlist lockfeetandlefthand 	{ event AE_CREMATOR_TURNONHOSE 1 }
$animation fire_gesture "fireinout01" frame 78 90 subtract fireinout 90 fixuploop -3 0 fps 50
$sequence gesture_fire fire_gesture ACT_GESTURE_RANGE_ATTACK1 1 delta ikrule lhand touch "Bip01 R Hand"

$sequence reload		"gunjam01" fps 30 ACT_RELOAD 1 { 
	{ event AE_CREMATOR_TURNOFFHOSE 0 }
	{ event 3105 50 }
	{ event AE_CL_PLAYSOUND 15 "NPC_Cremator.Confused" }
	{ event AE_CL_PLAYSOUND 22 "NPC_Cremator.Unjam" }
	cmdlist lockfeetandlefthand
}

$weightlist nobones "Bip01" 0.0

$sequence turnleft "idle01" FPS 30 frames 0 50 ACT_GESTURE_TURN_LEFT 1 {
	// foot release only rules
	ikrule lfoot unlatch range 1 9 16 26 usesource
	ikrule rfoot unlatch range 26 33 39 45 usesource
	weightlist nobones
}

$sequence turnright "idle01" FPS 30 frames 0 50 ACT_GESTURE_TURN_RIGHT 1 {
	// foot release only rules
	ikrule lfoot unlatch range 20 25 33 39 usesource
	ikrule rfoot unlatch range 0 4 15 20 usesource
	weightlist nobones
}

$maketurngesture  gesture_turn_left_45 "turn_left_45" -45 22 38 50 lfoot rfoot fps 60 ACT_GESTURE_TURN_LEFT45 1 
$maketurngesture  gesture_turn_left_90 "turn_left" -90 22 38 50 lfoot rfoot fps 50 ACT_GESTURE_TURN_LEFT90 1
$maketurngesture  gesture_turn_right_45 "turn_right_45" 45 22 35 50 rfoot lfoot fps 60 ACT_GESTURE_TURN_RIGHT45 1
$maketurngesture  gesture_turn_right_90 "turn_right" 90 22 35 50 rfoot lfoot fps 50 ACT_GESTURE_TURN_RIGHT90 1


$include "ragdoll.qci"

/*
----------------------------
Scripted Sequences
----------------------------
*/



// =========================== cables ===============================

$attachment Cablea "Bip01 Pelvis" 1.80 15.00 0.80 rigid
$attachment Cableb "hoseattach2" 0 0 0 rigid

$keyvalues
{
	Cables
	{
		Cable
		{
			StartAttachment	Cablea
			EndAttachment Cableb
			Width 1.3
			Material "cable/cable_lit"
			NumSegments 12
			Length 150			
		}
	}
}

//===================================================================