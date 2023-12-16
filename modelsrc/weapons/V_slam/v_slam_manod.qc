/*
==============================================================================

Slam
Original stuff by Valve, re-rigged hands by epicplayer

==============================================================================
*/

$modelname weapons/v_slam.mdl
$cdmaterials models\Weapons\V_hand models\Weapons\V_slam


// whole body
$body studio "V_slam_reference.smd" 

$origin 0 0 68

$sequence stickwall_idle			"stickwall_idle"				fps 30 activity			ACT_SLAM_STICKWALL_IDLE 1
$sequence stickwall_idle_ND			"stickwall_idle_ND"				fps 30 activity			ACT_SLAM_STICKWALL_ND_IDLE 1
$sequence stickwall_attach1			"stickwall_attach1"				fps 30 activity			ACT_SLAM_STICKWALL_ATTACH 1
$sequence stickwall_attach2			"stickwall_attach2"				fps 30 activity			ACT_SLAM_STICKWALL_ATTACH2 1
$sequence stickwall_attach_ND1		"stickwall_attach_ND1"			fps 30 activity			ACT_SLAM_STICKWALL_ND_ATTACH 1
$sequence stickwall_attach_ND2		"stickwall_attach_ND2"			fps 30 activity			ACT_SLAM_STICKWALL_ND_ATTACH2 1
$sequence stickwall_draw			"stickwall_draw"				fps 60 activity			ACT_SLAM_STICKWALL_DRAW 1
$sequence stickwall_draw_ND			"stickwall_draw_ND"				fps 60 activity			ACT_SLAM_STICKWALL_ND_DRAW 1
$sequence stickwall_to_throw		"stickwall_to_throw"			fps 60 activity			ACT_SLAM_STICKWALL_TO_THROW 1
$sequence stickwall_to_throw_ND		"stickwall_to_throw_ND"			fps 60 activity			ACT_SLAM_STICKWALL_TO_THROW_ND 1
$sequence stickwall_to_tripmine_ND	"stickwall_to_tripmine"			fps 40 activity			ACT_SLAM_STICKWALL_TO_TRIPMINE_ND 1 frame 8 50 { event 5004 15 "Weapon_SLAM.TripMineMode" }
$sequence stickwall_detonate		"stickwall_detonate"			fps 30 activity			ACT_SLAM_STICKWALL_DETONATE 1
$sequence stickwall_deton_holster	"stickwall_detonator_holster"	fps 30 activity			ACT_SLAM_STICKWALL_DETONATOR_HOLSTER 1

$sequence throw_idle				"throw_idle"				fps 30 activity				ACT_SLAM_THROW_IDLE 1
$sequence throw_idle_ND				"throw_idle_ND"				fps 30 activity				ACT_SLAM_THROW_ND_IDLE 1
$sequence throw_throw1				"throw_throw1"				fps 60 activity				ACT_SLAM_THROW_THROW 1 
$sequence throw_throw2				"throw_throw2"				fps 40 activity				ACT_SLAM_THROW_THROW2 1 
$sequence throw_throw_ND1			"throw_throw_ND1"			fps 60 activity				ACT_SLAM_THROW_THROW_ND 1 
$sequence throw_throw_ND2			"throw_throw_ND2"			fps 40 activity				ACT_SLAM_THROW_THROW_ND2 1 
$sequence throw_draw				"throw_draw"				fps 60 activity				ACT_SLAM_THROW_DRAW 1
$sequence throw_draw_ND				"throw_draw_ND"				fps 60 activity				ACT_SLAM_THROW_ND_DRAW 1
$sequence throw_to_stickwall		"throw_to_stickwall"		fps 60 activity				ACT_SLAM_THROW_TO_STICKWALL 1
$sequence throw_to_stickwall_ND		"throw_to_stickwall_ND"		fps 60 activity				ACT_SLAM_THROW_TO_STICKWALL_ND 1
$sequence throw_to_tripmine_ND		"throw_to_tripmine"			fps 40 activity				ACT_SLAM_THROW_TO_TRIPMINE_ND 1 frame 8 50 { event 5004 15 "Weapon_SLAM.TripMineMode" }
$sequence throw_detonate			"throw_detonate"			fps 30 activity				ACT_SLAM_THROW_DETONATE 1
$sequence throw_detonater_holster	"throw_detonator_holster"	fps 30 activity				ACT_SLAM_THROW_DETONATOR_HOLSTER 1

$sequence tripmine_idle				"tripmine_idle"				fps 30 activity				ACT_SLAM_TRIPMINE_IDLE 1
$sequence tripmine_attach1			"tripmine_attach1"			fps 30 activity				ACT_SLAM_TRIPMINE_ATTACH 1
$sequence tripmine_attach2			"tripmine_attach2"			fps 30 activity				ACT_SLAM_TRIPMINE_ATTACH2 1
$sequence tripmine_draw				"tripmine_draw"				fps 60 activity				ACT_SLAM_TRIPMINE_DRAW 1
$sequence tripmine_to_throw			"tripmine_to_throw"			fps 50 activity				ACT_SLAM_TRIPMINE_TO_THROW_ND 1
$sequence tripmine_to_stickwall		"tripmine_to_stickwall"		fps 50 activity				ACT_SLAM_TRIPMINE_TO_STICKWALL_ND 1

$sequence detonator_idle	 		"detonator_idle"				fps 30 activity			ACT_SLAM_DETONATOR_IDLE 1
$sequence detonator_draw			"detonator_draw"				fps 60 activity			ACT_SLAM_DETONATOR_DRAW 1
$sequence detonator_detonate		"detonator_detonate"			fps 30 activity			ACT_SLAM_DETONATOR_DETONATE 1
$sequence detonator_holster			"detonator_holster"				fps 30 activity			ACT_SLAM_DETONATOR_HOLSTER 1
$sequence detonator_stickwall_draw	"detonator_stickwall_draw"		fps 60 activity			ACT_SLAM_DETONATOR_STICKWALL_DRAW 1
$sequence detonator_throw_draw		"detonator_throw_draw"			fps 60 activity			ACT_SLAM_DETONATOR_THROW_DRAW 1

/*===================================================================================
	ANIMATION DESCRPTIONS

When we are in satchel stick to wall mode:
	Stickwall_idle				Idle animation for satchel charge (detonator visible)
	Stickwall_idle_ND			Idle animation for satchel charge (detonator NOT visible)
	Stickwall_attach			attach to wall animation (detonator visible)
	Stickwall_attach_ND			attach to wall animation (detonator NOT visible)
	Stickwall_draw				draw animation for satchel charge (detonator visible)
	Stickwall_draw_ND			draw animation for satchel charge (detonator NOT visible)
	Stickwall_to_throw			change from attach to wall, to thrown (detonator visible)
	Stickwall_to_throw_ND		change from attach to wall, to thrown (detonator NOT visible)
	Stickwall_detonate			detonate wall attached satchel (satchel  visible)

When we are in satchel throw mode:
	Throw_idle			Idle animation for thrown charge (detonator visible)
	Throw_idle_ND			Idle animation for thrown charge (detonator NOT visible)
	Throw_throw			throw animation for satchel (detonator visible)
	Throw_throw_ND		throw animation for satchel (detonator NOT visible)
	Throw_draw			draw thrown satchel charge (detonator NOT visible)
	Throw_draw_ND			draw thrown satchel charge (detonator NOT visible)
	Throw_to_stickwall		change from thrown satchel to attach satchel (detonator visible)
	Throw_to_stickwall_ND		change from thrown satchel to attach satchel (detonator NOT visible)
	Throw_detonate			detonate thrown satchel (satchel  visible)

When we are in tripmine mode:
	Tripmine_idle			tripmine idle animation
	Tripmine_draw			draw animation for tripmine
	Tripmine_attach			attach to wall animation for tripmine

When out of ammo but have live SLAM in world:
	Detonator_idle			idle animation (can be used for both thrown and attach anims) 
	Detonator_detonate		detonate animation (can be used for both thrown and attach anims)
	Detonator_holster		holster detonator (can be used for both thrown and attach anims)
*/

