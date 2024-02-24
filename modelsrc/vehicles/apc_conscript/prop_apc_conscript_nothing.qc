/*
----------------
Xinus22: Initial mesh and model fixes
Akis_02: Model process to a usable vehicle
----------------
*/

$modelname props_vehicles/apc_conscript_nothing.mdl

$cdmaterials models/vehicles/apc_conscript
$origin 0 0 0 90
$scale 1.0
$body "Body" "apc_body.smd"
$surfaceprop "metalvehicle"

//$bodygroup turret
//{
//studio "apc_dome.smd"
//studio "apc_turret.smd"
//}

// --------- Animation sequences -------
$sequence "idle" "apc_body" fps 30


$collisionmodel "phys/prop_apc_conscript_nothing_phy.smd" {
     // Mass in kilograms
     	$Mass 2000
	$concave
}