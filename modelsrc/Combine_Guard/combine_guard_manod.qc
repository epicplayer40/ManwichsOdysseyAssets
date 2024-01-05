/*
==============================================================================

Combine Guard
QC edits by Epicplayer
Mesh fixes and enhancements by Epicplayer and Xinus22

==============================================================================
*/

$modelname Combine_guard.mdl

$eyeposition 0 0 72

$surfaceprop "metal"

$cdmaterials models\combine_guard //models\props_combine

//$bbox -15 -15 0 15 15 75

//Reference points
$attachment "muzzle" "muzzle" 8 0 0
//$attachment "muzzle" "muzzle" 0 0 0
$attachment 0 "gun" 0 -20 0 rotate -180 90 0
$attachment 1 "FX_b" 0 0 0
$attachment 2 "FX_c" 0 0 0
$attachment 3 "FX_d1" 0 0 0
$attachment 4 "FX_d2" 0 0 0
$attachment 5 "FX_e1" 0 0 0
$attachment 6 "FX_e2" 0 0 0
$attachment 7 "FX_f" 0 0 0
$attachment 8 "FX_g1" 0 0 0
$attachment 9 "FX_g2" 0 0 0
$attachment 10 "FX_h1" 0 0 0
$attachment 11 "FX_h2" 0 0 0
$attachment 12 "FX_i1" 0 0 0
$attachment 13 "FX_i2" 0 0 0
$attachment 14 "FX_j1" 0 0 0
$attachment 15 "FX_j2" 0 0 0
$attachment 16 "FX_k" 0 0 0
$attachment 17 "FX_a" 0 0 0

//Miscellaneous Body
$hbox 0 "Bip01 L UpperArm" 0.00 -5.43 -4.41  21.78 5.93 3.70
$hbox 0 "Bip01 R UpperArm" 0.00 -7.28 -3.46  21.19 6.15 9.98
$hbox 0 "Bip01 R Hand" -0.73 -2.26 -3.43  12.16 4.81 6.29
$hbox 0 "Bip01 L Hand" 0.00 -2.66 -4.89  12.99 4.44 3.40
$hbox 0 "Bip01 R Foot" 0.00 -8.0 -5.13  9.37 16.0 5.0
$hbox 0 "Bip01 L Foot" 0.00 -8.0 -5.78  9.37 16.0 5.0
$hbox 0 "Bip01 Spine1" 28.0 -10.37 -10.51  5.0 10.90 10.76
$hbox 0 "Bip01 Spine1" -14.0 -10.37 -10.51  5.0 2.0 10.76

//Gun
//$hbox 1 "gun" -8.0 -36.61 -4.0  8.0 43.93 4.0 //this hitbox is WAY too big
$hbox 1 "gun" -2.0 -26.61 -4.0  8.0 13.93 4.0

//Right Shoulder
$hbox 2 "Bip01 R Clavicle" 0.00 -12.02 -8.77  24.71 10.03 15.46

//Left Shoulder
$hbox 3 "Bip01 L Clavicle" 0.00 -12.06 -14.62  21.42 9.98 4.85

//Sensor head
$hbox 4 "Bip01 Head" -0.37 -2.69 -3.52  12.04 6.98 3.54

//Right Forearm
$hbox 5 "Bip01 R Forearm" -4.12 -4.79 -5.48  17.72 5.94 4.81

//Left Forearm
$hbox 6 "Bip01 L Forearm" -2.95 -5.35 -4.18  18.77 6.69 6.39

//Upper Torso
$hbox 7 "Bip01 Spine" 4.44 0.82 -9.31  14.93 9.19 9.26

//Lower Torso
$hbox 8 "Bip01 Spine" -8.44 0.82 -9.31  4.0 9.19 9.26

//Right Thigh
$hbox 9 "Bip01 R Thigh" -7.61 -8.62 -6.47  12.58 6.31 7.49

//Left Thigh
$hbox 10 "Bip01 L Thigh" -7.61 -8.63 -7.75  13.30 6.36 6.23

//Right Shin
$hbox 11 "Bip01 R Calf" -4.04 -9.40 -5.01  20.0 5.51 6.47

//Left Shin
$hbox 12 "Bip01 L Calf" -4.02 -9.35 -5.89  20.0 5.40 4.76

$eyeposition 0 0 72

//Whole Body
$bodygroup studio 
{
studio "Guard_reference.smd"
studio "Guard_Dismantled_manod.smd"
}

//Gun
$bodygroup gun
{
blank
studio "Gun_reference_reuv.smd"
}

//Right Shoulder
$bodygroup right_shoulder
{
blank
studio "Guard_Dismantled_Gibs_a_manod.smd"
}

//Left Shoulder
$bodygroup left_shoulder
{
blank
studio "Guard_Dismantled_Gibs_b_manod.smd"
}

//Head
$bodygroup head
{
blank
studio "Guard_Dismantled_Gibs_c_manod.smd"
}

//Right Arm
$bodygroup right_arm
{
blank
studio "Guard_Dismantled_Gibs_d_manod.smd"
}

//Left Arm
$bodygroup left_arm
{
blank
studio "Guard_Dismantled_Gibs_e_manod.smd"
}

//Torso
$bodygroup torso
{
blank
studio "Guard_Dismantled_Gibs_f_manod.smd"
}

//Lower Torso
$bodygroup lower_torso
{
blank
studio "Guard_Dismantled_Gibs_k_manod.smd"
}

//Right Thigh
$bodygroup right_thigh
{
blank
studio "Guard_Dismantled_Gibs_g_manod.smd"
}

//Left Thigh
$bodygroup left_thigh
{
blank
studio "Guard_Dismantled_Gibs_h_manod.smd"
}

//Right Shin
$bodygroup right_shin
{
blank
studio "Guard_Dismantled_Gibs_i_manod.smd"
}

//Left Shin
$bodygroup left_shin
{
blank
studio "Guard_Dismantled_Gibs_j_manod.smd"
}

$lod 80 
{
	replacemodel "guard_reference" "guard_lod_1"
	
}

$lod 120 
{
	replacemodel "guard_reference" "guard_lod_2"
	
}

$lod 135 
{
	replacemodel "guard_reference" "guard_lod_3"

}

$lod 160 
{
	replacemodel "guard_reference" "guard_lod_4"
	//bonetreecollapse "Bip 01 R Hand"
	//bonetreecollapse "Bip 01 L Hand"
	nofacial
}
/* //These LODs cause crashes when reloading the model in certain circumstances, so disabling for now.
$lod 190 
{
	replacemodel "guard_reference" "guard_lod_5"
	//bonetreecollapse "Bip 01 R Hand"
	//bonetreecollapse "Bip 01 L Hand"
	nofacial
}

$lod 220 
{
	replacemodel "guard_reference" "guard_lod_6"
	//bonetreecollapse "Bip 01 R Hand"
	//bonetreecollapse "Bip 01 L Hand"
	nofacial
}
*/

//======================================
// IK Rules
//======================================
$ikchain lfoot "Bip01 L Foot" Z 0 knee 1 0 0  pad 8 center 4 0 0
$ikchain rfoot "Bip01 R Foot" Z 0 knee 1 0 0  pad 8 center 4 0 0
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

$sequence idle01 "Idle01" loop FPS 30 activity ACT_IDLE 1 node 1 cmdlist lockfeet

//
// Aim blending
//

$animation a_neutral "aim_9_directions" frame 4 4

$cmdlist fixup_dirs {	
	alignto a_neutral
	subtract a_neutral 0
}

$animation a_downL  "aim_9_directions" frame 0 0 cmdlist fixup_dirs
$animation a_down	"aim_9_directions" frame 1 1 cmdlist fixup_dirs
$animation a_downR  "aim_9_directions" frame 2 2 cmdlist fixup_dirs
$animation a_left	"aim_9_directions" frame 3 3 cmdlist fixup_dirs
$animation a_center "aim_9_directions" frame 4 4 cmdlist fixup_dirs
$animation a_right	"aim_9_directions" frame 5 5 cmdlist fixup_dirs
$animation a_upL	"aim_9_directions" frame 6 6 cmdlist fixup_dirs
$animation a_up		"aim_9_directions" frame 7 7 cmdlist fixup_dirs
$animation a_upR	"aim_9_directions" frame 8 8 cmdlist fixup_dirs

$sequence gunaim a_upL a_up a_upR a_left a_center a_right a_downL a_down a_downR blend "aim_yaw" 45 -45 blend "aim_pitch" -27 56 loop FPS 30 delta

//

$sequence actidle01 "Action_Idle01" loop FPS 30 activity ACT_IDLE_ANGRY 1 node 2 cmdlist lockfeetandlefthand //addlayer gunaim

$sequence walk "Walk" loop fps 30 LX activity ACT_WALK 1 { event 20 3 } { event 21 20 } node 1 {
	ikrule lfoot footstep range 17 20 30 5
	ikrule rfoot footstep range 0 4 12 19
}
$sequence run "Run" loop fps 30 LX activity ACT_RUN 1 { event 20 8 } { event 21 19 } node 1 {
	ikrule lfoot footstep range 6 8 9 14
	ikrule rfoot footstep range 17 19 1 4
}

$sequence punch01 "punch01" fps 30 activity ACT_MELEE_ATTACK1 2 {
	{ event 11 10 }
//	{ event 13 10 }
	ikrule lfoot footstep
	ikrule rfoot footstep range .. .. 5 8
	ikrule rfoot footstep range 29 35 .. ..
	ikrule lhand touch "Bip01 R Hand"
}

$sequence punch02 "punch02" fps 45 activity ACT_MELEE_ATTACK1 1 {
	{ event 11 24 }
	cmdlist lockfeet
}

$sequence physrecover "Phys_hit_recover" activity ACT_COMBINEGUARD_CLOBBERED 1  { 
	{ event 20 15 } 
	{ event 21 30 } 
	{ event 20 77 } 
	walkframe 8 lx 
	walkframe 15 lx 
	walkframe 25 lx 
	walkframe 31 lx 
	walkframe 38 lx 
	walkframe 64 lx 
	walkframe 71 lx 
	walkframe 85 lx
	ikrule lfoot footstep range .. .. 0 2
	ikrule lfoot footstep range 12 15 69 74
	ikrule lfoot footstep range 76 78 .. ..
	ikrule rfoot footstep range .. .. 25 27
	ikrule rfoot footstep range 29 31 .. ..
}
$sequence physgetup "Phys_hit_getup" activity ACT_COMBINEGUARD_GETUP 1 alignto idle01 { 
	{ event 23 9 } 
	{ event 20 53 } 
	walkframe 30 lx 
	walkframe 38 lx 
	walkframe 45 lx 
	walkframe 60 lx
	ikrule rfoot footstep range 0 11 .. ..
	ikrule lfoot footstep range 51 54 .. ..
}
$sequence physfall "Phys_hit_fall" fps 30 LX activity ACT_COMBINEGUARD_TOPPLE 1 { event 22 22 } {
	ikrule rfoot footstep range 0 0 10 14
	ikrule lfoot footstep range 0 0 16 19
}
$sequence physdeath "Phys_hit_death" fps 30 LX activity ACT_COMBINEGUARD_HELPLESS 1 alignto idle01 { event 24 0 } ikrule rfoot footstep range 0 11 51 55 frame 0 58

$sequence idleact "Idle_to_action" FPS 30 ACT_CGUARD_IDLE_TO_ANGRY 1 transition 1 2  {
//	addlayer gunaim 
	blendlayer gunaim  10 25 35 35 spline
	{ event 21 6 } 
	{ event 20 17 }
	ikrule rfoot footstep range .. .. 0 3
	ikrule rfoot footstep range 4 7 .. ..
	ikrule lfoot footstep range .. .. 7 10
	ikrule lfoot footstep range 14 17 .. ..
	ikrule lhand touch "Bip01 R Hand"
}
$sequence fire "Fire" fps 15 activity ACT_RANGE_ATTACK1 1 node 2 addlayer gunaim {
	{ event 13 0 }
	{ event 12 30 }
	cmdlist lockfeetandlefthand
}

$sequence aim9 "aim_9_directions" fps 30

$include "ragdoll.qci"

$pushd scripted_sequences
$include scripted_sequences/ss.qci
$popd

