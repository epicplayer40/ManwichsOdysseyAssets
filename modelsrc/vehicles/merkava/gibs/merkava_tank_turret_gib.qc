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
     $automass
 	 $concave
	 $drag 0.3
}

//Different Skins
$texturegroup "Merkava_Skins"
{
	{ "metaltank001f" "metaltank001g" }
	{ "metaltank001c" "metaltank001d" }
	{ "metaltank001a" "metaltank001b" }
	{ "metaltank001f_snow" "metaltank001g_snow" }
	{ "metaltank001c_desert" "metaltank001d_desert" }
}

$keyvalues
{
	prop_data
	{
		base			Metal.Large
	}
}