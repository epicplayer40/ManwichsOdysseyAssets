
$modelname gibs/Zombie_head.mdl

$model studio "gib_head_reference.smd"

$cdmaterials Models\Zombie

$surfaceprop "flesh"

$sequence idle gib_head_reference ACT_IDLE 1
$sequence ragdoll "gib_head_physics" FPS 30 activity ACT_DIERAGDOLL 1

$attachment bloodpoint "Bip01 Head" -2 0 0 rotate -90 0 0

$keyvalues 
{ 
	"prop_data" 
	{
		"base" "Flesh.Small" "health" "10"
	} 
	
	particles
	{
		"effect"
		{
			"name" "blood_advisor_pierce_spray"
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
	
}

$collisionjoints "gib_head_physics.smd" {
	
	// Mass in kilograms
	$mass 10.0
	
	$rootbone "Bip01 Head"	
	$inertia 5.0
	$rotdamping 1.5
	$damping 0.01

/*	
	$jointmassbias "Bip01 Head" 5
	$jointrotdamping "Bip01 Head" 2
	$jointconstrain "Bip01 Head" x limit -20 20
	$jointconstrain "Bip01 Head" y limit -25 25
	$jointconstrain "Bip01 Head" z limit -70 20
	
	$jointconstrain "Bip01 Neck" z limit -46 50
	$jointconstrain "Bip01 Neck" y limit -30 30
*/

	$jointrotdamping "Bip01 Neck" 2
	$jointconstrain "Bip01 Neck" x limit -20 20
	$jointconstrain "Bip01 Neck" y limit -25 25
	$jointconstrain "Bip01 Neck" z limit -70 20
	
	$jointconstrain "Bip01 Spine3" z limit -46 50
	$jointconstrain "Bip01 Spine3" y limit -30 30
}