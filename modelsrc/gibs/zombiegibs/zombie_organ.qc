
$modelname gibs/Zombie_organ.mdl
$scale 2
$model studio "gib_organ_reference.smd"

$cdmaterials Models\Zombie

$surfaceprop "flesh"
$staticprop
$sequence idle gib_organ_reference ACT_IDLE 1
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

$collisionjoints "gib_organ_reference.smd" {
	
	// Mass in kilograms
	$mass 5.0
	$concave
}