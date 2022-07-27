
$modelname gibs/Zombie_rleg_static.mdl

$model studio "gib_rleg_static_reference.smd"

$cdmaterials Models\Zombie

$surfaceprop "flesh"
$staticprop
$sequence idle gib_rleg_static_reference ACT_IDLE 1
$autocenter
$keyvalues 
{ 
	"prop_data" 
	{ 
		"base" "Flesh.Tiny" "health" "10"
	} 
/*	
	particles
	{
		"effect"
		{
			"name" "blood_advisor_puncture"
			"attachment_type" "follow_origin"
		}
	}*/
}

$collisionjoints "gib_rleg_static_physics.smd" {
	
	// Mass in kilograms
	$mass 25.0
	$concave
}