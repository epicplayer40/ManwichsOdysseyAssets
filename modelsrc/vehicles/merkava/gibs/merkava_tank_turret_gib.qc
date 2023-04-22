/*
----------------
Merkava QC
----------------
*/


$modelname "vehicles/merkava_tank_turret_gib.mdl"
$cdmaterials models/vehicles/merkava
$origin 0 0 0 90
$scale 1.0
$body body "merkava_tank_turret_gib.smd"
$surfaceprop "metalvehicle"

$sequence idle "merkava_tank_turret_gib" fps 30

//----- Physbox -----
$collisionmodel "merkava_tank_turret_gib_phys.smd" {
     $Mass 58967
 	 $concave
	 $drag 0.3
}

$keyvalues
{
	prop_data
	{
		base			Metal.Large
	}
}