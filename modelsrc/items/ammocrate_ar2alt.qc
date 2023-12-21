//
//ammoCrate_AR2 alternate model
//

$modelname Items\ammocrate_ar2alt.mdl
$cdmaterials models\items

$scale 1.0
$body "Body" "ammocrate_ar2alt_reference.smd"
$surfaceprop "metal"


//---------- Body Groups ---------

$bodygroup ammo
{
blank
studio "ammocrate_ar2alt_ammobg.smd"
}


// --------- Animation sequences -------
$sequence idle ammocrate_ar2alt_reference fps 30 loop
$sequence Open ammocrate_open fps 30 { event AE_AMMOCRATE_PICKUP_AMMO 30 }
$sequence Close ammocrate_close fps 30


$collisionmodel "ammocrate_physbox.smd" {
     // Mass in kilograms
     $Mass 600
	$concave
}

