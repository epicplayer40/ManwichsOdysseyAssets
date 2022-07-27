
$modelname gibs/Zombie_lhand.mdl

$model studio "gib_lhand_reference.smd"

$cdmaterials Models\Zombie

$surfaceprop "flesh"

$sequence idle gib_lhand_reference ACT_IDLE 1
$sequence ragdoll "gib_lhand_physics" FPS 30 activity ACT_DIERAGDOLL 1

$attachment bloodpoint "Bip01 L UpperArm" 10 0 0 rotate -90 0 0

$keyvalues { 

	prop_data
	{ 
		"base" "Flesh.Small" "health" "10"
	} 
	
	particles
	{
		"effect"
		{
			"name" "blood_advisor_pierce_spray_c"
			"attachment_type" "follow_attachment"
			"attachment_point" "bloodpoint"
		}
		
		"effect"
		{
			"name" "blood_advisor_puncture"
			"attachment_type" "follow_attachment"
			"attachment_point" "bloodpoint"
		}
	}
	
//	world_interactions
	physgun_interactions
	{
		"onfirstimpact" "bloodsplat"
	}

}

$collisionjoints "gib_lhand_physics.smd" {
	
	// Mass in kilograms
	$mass 15.0


	$inertia 5.0
	$rotdamping 1.5
	$damping 0.01


	//constraints for the wrists, hinge on x
	$jointmassbias "Bip01 L Hand" 2
	$jointconstrain "Bip01 L Hand" z limit -35 60

	// Forearm
	$jointmassbias "Bip01 L Forearm" 3
	$jointconstrain "Bip01 L Forearm" z limit -120 4
	// Upper arm
	$jointmassbias "Bip01 L UpperArm" 2

}