/*
----------------
Xinus22: Initial mesh and model fixes
Akis_02: Model process to a usable vehicle
----------------
*/

$modelname vehicles/apc_conscript.mdl

$cdmaterials models/vehicles/apc_conscript
$origin 0 0 0 90
$scale 1.0
$body "Body" "apc_body.smd"
$surfaceprop "metalvehicle"
$noforcedfade

$include "apc_shared.qci"

$bodygroup turret
{
studio "apc_dome.smd"
studio "apc_turret.smd"
}