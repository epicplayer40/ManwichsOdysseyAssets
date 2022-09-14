//Animated Hyper Physics Gun
//Model by Valve. Fixing and animations by The One Epicplayer

$modelname weapons/v_physics.mdl
$cdmaterials models/weapons/v_physgun models\weapons\v_hand

//$origin 12.5 48 13
$origin 0 14 54

$attachment 0 "Point02" 0 0 10
$attachment 1 "claw1" 0 5 1
$attachment 2 "claw2" 0 5 1
$attachment 3 "claw4" 0 5 1
$attachment muzzle "Point02" 0 0 10

$body studio "physgun_reference"

$sequence idle "physgun_idle1" fps 3 loop ACT_VM_IDLE 1 node 0

$sequence "holdidle" {
	"physgun_holdidle"
//	{ event 5004 0 "weapons\ggun_hold.wav" }
	frame 0 9
	fps 15
	loop
	snap
	ACT_VM_PRIMARYATTACK 1
	node 1
 }

$sequence draw "physgun_draw" fps 13 ACT_VM_DRAW 1 node 0

$sequence punt "physgun_punt" fps 20 ACT_VM_SECONDARYATTACK 1 snap

$sequence "drop" {
	"physgun_drop"
	fps 15
	transition 1 0 ACT_TRANSITION 1
}

$sequence "pickup" {
	"physgun_pickup"
	fps 15
	transition 0 1 ACT_TRANSITION 1
}