//
//ammoCrate_Bullets
//

$modelname Items\ammocrate_pistol.mdl //This model is referenced in source code but no model for it exists.
$cdmaterials models\items

$scale 1.0
$body "Body" "ammocrate_bullets_reference.smd"
$surfaceprop "metal"

//---------- Body Groups ---------

$bodygroup ammo
{
blank
studio "ammocrate_bullets_ammobg.smd"
}


// --------- Animation sequences -------
$sequence idle ammocrate_bullets_reference fps 30 loop
$sequence Open ammocrate_open fps 30 { event AE_AMMOCRATE_PICKUP_AMMO 30 }
$sequence Close ammocrate_close fps 30


$collisionmodel "ammocrate_physbox.smd" {
     // Mass in kilograms
     $Mass 600
	$concave
}
 
