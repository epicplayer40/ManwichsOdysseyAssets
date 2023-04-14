/*
----------------
Merkava QC

Credits go to:
Akis_02
cringe
Lychy
Xinus22
----------------
*/


$modelname "vehicles/merkava.mdl"
$cdmaterials models/vehicles/merkava
$origin 0 0 0 90
$scale 1.0
$body body "merkava_tank_body.001.smd"
$surfaceprop "metalvehicle"


//-----Body Groups-----
$bodygroup weapon
{
studio "merkava_tank_turret.smd"
blank
}


$attachment "muzzle" "merkava.muzzle" 0.00 0.00 0.00 rotate -0 90 -180
$attachment "muzzle_static" "merkava.muzzle_static" 0.00 300.00 0.00 rotate -0 90 -180
$attachment "vehicle_driver_eyes" "merkava.yaw" 0.00 40.00 -15.00 rotate -90 -90 0


$attachment "gun_ref" "merkava.pitch" 0.00 100.00 0.00 rotate -0 90 -180


//For vehicle stuff
$attachment "raytrace_fr" "merkava.body" -60.00 -30.00 80.00 rotate -0 -180 -0
$attachment "raytrace_fl" "merkava.body" 60.00 -30.00 80.00 rotate -0 -180 -0
$attachment "raytrace_rl" "merkava.body" 60.00 -30.00 -100.00 rotate -0 -180 -0
$attachment "raytrace_rr" "merkava.body" -60.00 -30.00 -100.00 rotate -0 -180 0

$attachment "wheel_fr" "merkava.body" -60.00 -30.00 80.00 rotate -0 -180 -0
$attachment "wheel_fl" "merkava.body" 60.00 -30.00 80.00 rotate -0 -180 -0
$attachment "wheel_rl" "merkava.body" 60.00 -30.00 -100.00 rotate -0 -180 -0
$attachment "wheel_rr" "merkava.body" -60.00 -30.00 -100.00 rotate -0 -180 0

//These MUST be next to each other
$attachment "smokepoint1" "merkava.body" 30.00 20.00 100.00 rotate 0 90 0
$attachment "smokepoint2" "merkava.body" -58.00 34.00 -50.00 rotate 0 90  0
$attachment "smokepoint3" "merkava.body" -30.00 26.00 -130.00 rotate 0 90 0 
$attachment "firepoint" "merkava.body" 30.00 10.00 -150.00 rotate 0 90 0
$attachment "maw" "merkava.body" 0.00 32.00 -10.00 rotate 0 90 0

//----- Pose Parameters -----

$poseparameter "vehicle_weapon_yaw" -180 180 wrap
$poseparameter "vehicle_weapon_pitch" 0 1


$sequence "idle" "merkava_tank_body" fps 30 loop
$animation neutral "merkava_tank_body" frames 0 0 

//Gun Aim
$weightlist weapon { "merkava.yaw" 1.0 }

$animation aim_neutral anims\Weapon_anims frame 0 0 weightlist weapon

$animation aim_up anims\Weapon_anims frame 1 1 subtract aim_neutral 0 weightlist weapon
$animation aim_down anims\Weapon_anims frame 2 2 subtract aim_neutral 0 weightlist weapon

$animation aim_right anims\Weapon_anims frame 3 3 subtract aim_neutral 0 weightlist weapon
$animation aim_left anims\Weapon_anims frame 4 4 subtract aim_neutral 0 weightlist weapon

$animation aim_back anims\Weapon_anims frame 5 5 subtract aim_neutral 0 weightlist weapon
$animation aim_front anims\Weapon_anims frame 0 0 subtract aim_neutral 0 weightlist weapon

$sequence weapon_pitch { aim_up aim_down blend "vehicle_weapon_pitch" 25 -5 } weightlist weapon delta autoplay hidden
$sequence weapon_yaw { aim_back aim_right aim_front aim_left aim_back blendwidth 5 blend "vehicle_weapon_yaw" 180 -180 } weightlist weapon delta autoplay hidden



//----- Physbox -----
$collisionmodel "merkava_tank_phys.smd" {
     $Mass 58967
 	 $concave
	 $drag 0.3
}
