//
//ammoCrate_Slam
//

$modelname Items\ammocrate_slam.mdl
$cdmaterials models\items models\Weapons\V_slam

$scale 1.0
$body "Body" "ammocrate_slam_reference.smd"
$surfaceprop "metal"


//---------- Body Groups ---------

$bodygroup ammo
{
blank
studio "ammocrate_slam_ammobg.smd"
}


// --------- Animation sequences -------
$sequence idle ammocrate_slam_reference fps 30 loop
$sequence Open ammocrate_open fps 30 { event AE_AMMOCRATE_PICKUP_AMMO 30 }
$sequence Close ammocrate_close fps 30


$collisionmodel "ammocrate_physbox.smd" {
     // Mass in kilograms
     $Mass 600
	$concave
}

