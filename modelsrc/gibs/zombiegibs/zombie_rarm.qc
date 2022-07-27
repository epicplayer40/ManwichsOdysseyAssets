
$modelname gibs/Zombie_rarm.mdl

$model studio "gib_rarm_reference.smd"

$cdmaterials Models\Zombie

$surfaceprop "flesh"

$sequence idle gib_rarm_reference ACT_IDLE 1
$sequence ragdoll "gib_rarm_physics" FPS 30 activity ACT_DIERAGDOLL 1

$attachment bloodpoint "Bip01 R UpperArm" 3.5 0 1 rotate -90 0 0

$keyvalues 
{ 
	"prop_data" 
	{
		"base" "Flesh.Small" "health" "20"
	} 
	
	particles
	{
		"effect"
		{
			"name" "blood_advisor_pierce_spray_b"
			"attachment_type" "follow_attachment"
			"attachment_point" "bloodpoint"
		}
	}
	
}

$collisionjoints "gib_rarm_physics.smd" {
	
	// Mass in kilograms
	$mass 20.0
	
	$rootbone "Bip01 R UpperArm"	
	$inertia 5.0
	$rotdamping 1.5
	$damping 0.01

	$jointmassbias "Bip01 R UpperArm" 2
	
	$jointmassbias "Bip01 R Forearm" 3
	$jointconstrain "Bip01 R Forearm" z limit -120 4
	
	$jointmassbias "Bip01 R Hand" 2
	$jointconstrain "Bip01 R Hand" z limit -35 60

}