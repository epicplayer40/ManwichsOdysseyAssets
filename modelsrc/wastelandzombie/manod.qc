
$modelname Zombie.mdl

$eyeposition 0 0 73

$model studio "wastelandzombie_reference.smd"

$bodygroup "headcrab"
{
	studio "wastelandzombie_headcrab_reference.smd"
}

$cdmaterials Models\Zombie

$surfaceprop "zombieflesh"
$jointsurfaceprop "Bip01 Neck" alienflesh
$mostlyopaque

$attachment "headcrab" "Bip01 Head" -4.49 -1.32 -0.02 rotate 0 20.25 29.25
$attachment "eyes" "Bip01 Head" 0 0 0 rotate 0 0 -50
$attachment "head" "Bip01 Head" 0 0 0 rotate 0 0 -50
$attachment "chest" "Bip01 Spine3" -3 6 0 rotate 0 60 90
$attachment "maw" "Bip01 Spine2" 0 0 0 rotate 0 90 90
$attachment "Blood_Left" "Bip01 L Hand" 0 0 0 rotate 0 0 0
$attachment "Blood_Right" "Bip01 R Hand" 0 0 0 rotate 0 0 0

$sequence Idle01 idle ACT_IDLE 1 loop
$sequence Walk walk ACT_WALK 1 loop lx 	{ event 6004 2 "NPC_Citizen" } { event 6004 23 "NPC_Citizen" }
$sequence Claw1 attack1 ACT_MELEE_ATTACK1 1 { event 20 5 } { event 1 20 }
$sequence Claw2 attack2 ACT_MELEE_ATTACK1 1 { event 20 10 } { event 2 20 }
$sequence Break_Trough_Window breakthroughwindow

$include hitbox.qci
$include ragdoll.qci

$collisiontext
{
	break 
	{
		"ragdoll" "gibs/Zombie_head"
		"health" "10"
		"fadetime" "30"
		"burst" "100"
	}
	break 
	{
		"ragdoll" "gibs/Zombie_torso"
		"health" "30"
		"fadetime" "30"
		"burst" "200"
	}
	break 
	{
		"model" "gibs/Zombie_organ"
		"health" "10"
		"fadetime" "30"
		"burst" "10"
		"placementbone" "Bip01 Spine1"
		"offset" 3.8 5 1
	}
	break 
	{
		"ragdoll" "gibs/Zombie_lhand"
		"health" "20"
		"fadetime" "30"
		"burst" "50"
		"placementbone" "Bip01 L Forearm"
	}
	break 
	{
		"ragdoll" "gibs/Zombie_larm"
		"health" "20"
		"fadetime" "30"
		"burst" "1000"
	}
	break 
	{
		"ragdoll" "gibs/Zombie_rarm"
		"health" "20"
		"fadetime" "30"
		"burst" "100"
	}
	break 
	{
		"model" "gibs/Zombie_lleg_static"
		"health" "20"
		"fadetime" "30"
		"burst" "100"
		"placementbone" "Bip01 L Calf"
		"offset" 0 5 -20
	}
	break 
	{
		"model" "gibs/Zombie_rleg_static"
		"health" "20"
		"fadetime" "30"
		"burst" "100"
		"placementbone" "Bip01 R Calf"
//		"offset" 0 5 -20
	}
}