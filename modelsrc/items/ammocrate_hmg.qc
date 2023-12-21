//
//ammoCrate_HMG
//

$modelname Items\ammocrate_hmg.mdl
$cdmaterials models\items

$scale 1.0
$body "Body" "ammocrate_hmg_reference.smd"
$surfaceprop "metal"


//---------- Body Groups ---------

$bodygroup ammo
{
blank
studio "ammocrate_hmg_ammobg.smd"
}


// --------- Animation sequences -------
$sequence idle ammocrate_hmg_reference fps 30 loop
$sequence Open ammocrate_open fps 30 { event AE_AMMOCRATE_PICKUP_AMMO 30 }
$sequence Close ammocrate_close fps 30


$collisionmodel "ammocrate_physbox.smd" {
     // Mass in kilograms
     $Mass 600
	$concave
}

