
$modelname gibs/Zombie_torso.mdl

$model studio "gib_torso_reference.smd"

$cdmaterials Models\Zombie

$surfaceprop "flesh"

$sequence idle gib_torso_reference ACT_IDLE 1
$sequence ragdoll "gib_torso_physics" FPS 30 activity ACT_DIERAGDOLL 1

$attachment bloodpoint "Bip01 Spine" 2 0 0 rotate 90 0 0
$attachment bloodpoint_anus "Bip01 Pelvis" -7 0 0 rotate -90 0 0

$keyvalues 
{ 
	"prop_data" 
	{
		"base" "Flesh.Small" "health" "30"
	} 
	
	particles
	{
		"effect"
		{
			"name" "blood_advisor_pierce_spray"
			"attachment_type" "follow_attachment"
			"attachment_point" "bloodpoint_anus"
		}
		
		"effect"
		{
			"name" "blood_advisor_puncture_withdraw"
			"attachment_type" "follow_attachment"
			"attachment_point" "bloodpoint"
		}
	}
	
}

$collisionjoints "gib_torso_physics.smd" {
	
	// Mass in kilograms
	$mass 30.0
	
	$rootbone "Bip01 Pelvis"
	$inertia "5.000000"
	$damping "0.010000"
	$rotdamping "1.500000"

//	$jointconstrain "Bip01 Pelvis" x limit -60.000000 60.000000 1.000000
//	$jointconstrain "Bip01 Pelvis" y limit -25.000000 25.000000 1.000000
//	$jointconstrain "Bip01 Pelvis" z limit -25.000000 15.000000 1.000000
	
	$jointconstrain "Bip01 Spine" x limit -60 60
	$jointconstrain "Bip01 Spine" y limit -25 25
	$jointconstrain "Bip01 Spine" z limit -25 15

}