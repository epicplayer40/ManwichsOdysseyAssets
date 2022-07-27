
$modelname gibs/Zombie_larm.mdl

$model studio "gib_larm_reference.smd"

$cdmaterials Models\Zombie

$surfaceprop "flesh"

$sequence idle gib_larm_reference ACT_IDLE 1
$sequence ragdoll "gib_larm_physics" FPS 30 activity ACT_DIERAGDOLL 1

$attachment bloodpoint "Bip01 Spine" 2 0 0 rotate -90 0 0
$attachment bloodpoint_head "Bip01 Spine3" 5.5 0 0 rotate -90 -130 0
$attachment bloodpoint_arm "Bip01 L UpperArm" 12 0 0 rotate 90 0 0

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
			"attachment_point" "bloodpoint_head"
		}
		
		"effect"
		{
			"name" "blood_advisor_puncture_withdraw"
			"attachment_type" "follow_attachment"
			"attachment_point" "bloodpoint"
		}
		
		"effect"
		{
			"name" "blood_advisor_pierce_spray_b"
			"attachment_type" "follow_attachment"
			"attachment_point" "bloodpoint_arm"
		}
	}
	
}

$collisionjoints "gib_larm_physics.smd" {
	
	// Mass in kilograms
	$mass 20.0
	
	$rootbone "Bip01 Spine"	
	$inertia 5.0
	$rotdamping 1.5
	$damping 0.01

	$jointmassbias "Bip01 Spine1" 3
	$jointconstrain "Bip01 Spine1" z limit -13 22
	
	$jointconstrain "Bip01 Spine2" x limit -14 14
	$jointconstrain "Bip01 Spine2" y limit -7 30
	$jointconstrain "Bip01 Spine2" z limit -11 11
	
	$jointconstrain "Bip01 Spine3" x limit -10 10
	$jointconstrain "Bip01 Spine3" z limit -25 5
	
	$jointmassbias "Bip01 L UpperArm" 2
	$jointconstrain "Bip01 L UpperArm" y limit -76 30
	$jointconstrain "Bip01 L UpperArm" z limit -73.00 40.00

}