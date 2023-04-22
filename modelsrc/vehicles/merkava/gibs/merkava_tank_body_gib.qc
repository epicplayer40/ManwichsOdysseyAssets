/*
----------------
Merkava QC
----------------
*/


$modelname "vehicles/merkava_tank_body_gib.mdl"
$cdmaterials models/vehicles/merkava
$origin 0 0 0 90
$scale 1.0
$body body "merkava_tank_body_gib.smd"
$surfaceprop "metalvehicle"

$sequence idle "merkava_tank_body_gib" fps 30

//----- Physbox -----
$collisionmodel "merkava_tank_body_gib_phys.smd" {
     $Mass 58967
 	 $concave
	 $drag 0.3
}
