// Combine Minigunner

$ModelName "hgang_minigun.mdl"

$model "assault" "combine_assault_new.smd" {

	eyeball "eye_0" "Bip01 Head" 1.4701 -6.05218 73.3931 "dark_eyeball_l" 1 -4 "iris_unused" 0.58
	eyeball "eye_1" "Bip01 Head" -1.59784 -5.97798 73.3931 "dark_eyeball_r" 1 4 "iris_unused" 0.58

	mouth 0 "mouth" "Bip01 Head" 0 -1 0

	flexcontroller eyes range -45 45 "eyes_updown"
	flexcontroller eyes range -45 45 "eyes_rightleft"
}


$SurfaceProp "flesh"

$Contents "solid"

$IllumPosition -4.064 -13.206 33.723

$EyePosition 0 0 70

$CDMaterials "models\Citizen_17\"
$CDMaterials "models\Conscript\"
$CDMaterials "models\hvyweapons\"
$CDMaterials "models\humans\male\group03\"
$CDMaterials "models\humans\male\"


$Attachment "muzzle" "muzzle" 0 0 0 rotate 0 -90 0

$Controller 0 "Bip01 Head" XR 0 360

$weightlist arms_only "bip01 pelvis" 0.0 "bip01 spine1" 1.0 "bip01 head" 0.3 "bip01 l arm" 1.0 "bip01 r arm" 1.0 

$Sequence idle hgang_minigun_anims\idle ACT_IDLE 1 loop
$Sequence idle2 hgang_minigun_anims\idle2 ACT_IDLE 2 loop
$Sequence creeping_walk hgang_minigun_anims\creeping_walk ACT_WALK 1 loop LX

$sequence gunfix hgang_minigun_anims\idle frame 110 110 weightlist arms_only hidden
$Sequence run hgang_minigun_anims\run ACT_RUN 1 loop addlayer gunfix LX

$Sequence turnleft hgang_minigun_anims\turnleft ACT_TURN_LEFT 1
$Sequence turnright hgang_minigun_anims\turnright ACT_TURN_RIGHT 1

$Sequence punch punch ACT_MELEE_ATTACK1 1 fps 40 event 11 30
$Sequence attack hgang_minigun_anims\attack ACT_RANGE_ATTACK1 1 {
	{ event 12 1 }
	{ event 12 2 }
	{ event 12 3 }
	{ event 12 4 }
	{ event 12 5 }
	{ event 12 6 }
	{ event 12 7 }
	{ event 12 8 }
	{ event 12 9 }
	{ event 12 10 }
	{ event 12 11 }
	{ event 12 12 }
	{ event 12 13 }
	{ event 12 14 }
	{ event 12 15 }
	{ event 12 16 }
	{ event 12 17 }
	{ event 12 18 }
	{ event 12 19 }
	{ event 12 20 }
	{ event 12 21 }
	{ event 12 22 }
	{ event 12 23 }
	{ event 12 24 }
	{ event 12 25 }
	{ event 12 26 }
	{ event 12 27 }
	{ event 12 28 }
	{ event 12 29 }
	{ event 12 30 }
	{ event 12 31 }
	{ event 12 32 }
	{ event 12 33 }
	{ event 12 34 }
	{ event 12 35 }
	{ event 12 36 }
	{ event 12 37 }
	{ event 12 38 }
	{ event 12 39 }
	{ event 12 40 }
	{ event 12 41 }
	{ event 12 42 }
	{ event 12 43 }
	{ event 12 44 }
	{ event 12 45 }
	{ event 12 46 }
	{ event 12 47 }
	{ event 12 48 }
	{ event 12 49 }
	{ event 12 50 }
	{ event 12 51 }
	{ event 12 52 }
	{ event 12 53 }
	{ event 12 54 }
	{ event 12 55 }
	{ event 12 56 }
	{ event 12 57 }
	{ event 12 58 }
	{ event 12 59 }
	{ event 12 60 }
	loop
}

$Sequence small_pain1 hgang_minigun_anims\small_pain1 ACT_SMALL_FLINCH 1
$Sequence small_pain2 hgang_minigun_anims\small_pain2 ACT_SMALL_FLINCH 2
$Sequence die_backwards hgang_minigun_anims\die_backwards
$Sequence die_crumple hgang_minigun_anims\die_crumple ACT_DIESIMPLE 1
$Sequence die_violent hgang_minigun_anims\die_violent ACT_DIEVIOLENT 1

$Sequence ragdoll ragdoll ACT_DIERAGDOLL 1


$CollisionJoints "hgang_minigun_physics.smd"
{
	$mass 115
	$inertia 10
	$damping 0.01
	$rotdamping 1.5
	$rootbone "bip01"


	$jointconstrain "Bip01 Spine1" x limit -60 60 0.04
	$jointconstrain "Bip01 Spine1" y limit -25 25 0.04
	$jointconstrain "Bip01 Spine1" z limit -25 30 0.04

	$jointconstrain "Bip01 R Arm1" x limit 0 0 0
	$jointconstrain "Bip01 R Arm1" y limit -45 64 0.04
	$jointconstrain "Bip01 R Arm1" z limit -73 12 0.04

	$jointconstrain "Bip01 R Arm2" x limit 0 0 0
	$jointconstrain "Bip01 R Arm2" y limit 0 0 0
	$jointconstrain "Bip01 R Arm2" z limit -120 4 0.04

	$jointconstrain "Bip01 L Arm1" x limit 0 0 0
	$jointconstrain "Bip01 L Arm1" y limit -67 30 0.04
	$jointconstrain "Bip01 L Arm1" z limit -73 12 0.04

	$jointconstrain "Bip01 L Arm2" x limit 0 0 0
	$jointconstrain "Bip01 L Arm2" y limit 0 0 0
	$jointconstrain "Bip01 L Arm2" z limit -120 4 0.04

	$jointconstrain "Bip01 L Hand" x limit -60 60 0.04
	$jointconstrain "Bip01 L Hand" y limit 0 0 0
	$jointconstrain "Bip01 L Hand" z limit -57 70 0.04

	$jointconstrain "Bip01 R Hand" x limit -60 60 0.04
	$jointconstrain "Bip01 R Hand" y limit 0 0 0
	$jointconstrain "Bip01 R Hand" z limit -57 70 0.04

	$jointconstrain "Bip01 R Leg" x limit -25 20 0.04
	$jointconstrain "Bip01 R Leg" y limit -40 20 0.04
	$jointconstrain "Bip01 R Leg" z limit -37 63 0.04

	$jointconstrain "Bip01 R Leg1" x limit 0 0 0
	$jointconstrain "Bip01 R Leg1" y limit 0 0 0
	$jointconstrain "Bip01 R Leg1" z limit -95 4 0.04

	$jointrotdamping "Bip01 Head" 5
	$jointconstrain "Bip01 Head" x limit -20 20 0.04
	$jointconstrain "Bip01 Head" y limit -25 25 0.04
	$jointconstrain "Bip01 Head" z limit -13 30 0.04

	$jointconstrain "Bip01 L Leg" x limit -25 20 0.04
	$jointconstrain "Bip01 L Leg" y limit -20 40 0.04
	$jointconstrain "Bip01 L Leg" z limit -37 63 0.04

	$jointconstrain "Bip01 L Leg1" x limit 0 0 0
	$jointconstrain "Bip01 L Leg1" y limit 0 0 0
	$jointconstrain "Bip01 L Leg1" z limit -95 4 0.04

	$jointconstrain "Bip01 L Foot" x limit 0 0 0
	$jointconstrain "Bip01 L Foot" y limit 0 0 0
	$jointconstrain "Bip01 L Foot" z limit -15 35 0.04

	$jointconstrain "Bip01 R Foot" x limit 0 0 0
	$jointconstrain "Bip01 R Foot" y limit 0 0 0
	$jointconstrain "Bip01 R Foot" z limit -15 35 0.04
}
