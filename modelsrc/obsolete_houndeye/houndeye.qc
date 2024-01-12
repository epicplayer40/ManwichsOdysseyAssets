// HL2 Houndeye Remake rigged to HL1 skeleton and anims
// Model by JosephtheKP, QC edits, mesh edits and rigging by The One Epicplayer

$modelname "houndeye.mdl"

$bodygroup "studio"
{
	studio "houndeye_new.smd"
}


$surfaceprop "alienflesh"

$contents "solid"

$eyeposition 0 0 27

$cdmaterials "models\houndeye\"

$lockbonelengths

$sequence idle1 houndeye_anims\idle1 ACT_IDLE 1
$sequence idle2 houndeye_anims\idle2 ACT_IDLE 20 loop
$sequence idle3 houndeye_anims\idle3 ACT_IDLE 1

$sequence run houndeye_anims\run ACT_RUN 4 loop LX
$sequence run2 houndeye_anims\run2 ACT_RUN 2 loop LX
$sequence run3 houndeye_anims\run3 ACT_RUN 1 loop LX

$sequence die houndeye_anims\die ACT_DIESIMPLE 1 { event 2001 5 } fps 20
$sequence die1 houndeye_anims\die1 ACT_DIEFORWARD 1 { event 2001 10 } fps 20
$sequence die2 houndeye_anims\die2 ACT_DIEBACKWARD 2 { event 2001 8 } fps 20
$sequence die3 houndeye_anims\die3 ACT_DIEBACKWARD 1 { event 2001 7 } fps 20

$sequence attack houndeye_anims\attack ACT_RANGE_ATTACK1 1 {
	{ event 2 5 }
	{ event 3 59 }
	fps 25
}

$sequence flinch_small houndeye_anims\flinch_small ACT_SMALL_FLINCH 1
$sequence flinch_small2 houndeye_anims\flinch_small2 ACT_SMALL_FLINCH 1

$sequence die_crumple houndeye_anims\die_crumple ACT_DIESIMPLE 1

$sequence running_junp houndeye_anims\running_junp ACT_LEAP 1 walkframe 30 LX
$sequence walk_limp houndeye_anims\walk_limp ACT_WALK 1 loop LX
$sequence walk2 houndeye_anims\walk2 ACT_WALK 5 loop LX

$sequence leaderlook houndeye_anims\leaderlook ACT_GUARD 1 { event 1 10 } { event 1 20 }
$sequence sleep houndeye_anims\sleep ACT_CROUCHIDLE 1 loop
$sequence gotosleep houndeye_anims\gotosleep ACT_CROUCH 1
$sequence sleeptostand houndeye_anims\sleeptostand ACT_STAND 1

$sequence madidle houndeye_anims\madidle ACT_IDLE_ANGRY 2 loop
$sequence madidle2 houndeye_anims\madidle2 ACT_IDLE_ANGRY 3 {
	{ event 4 7 }
	{ event 7 7 }
	{ event 4 17 }
	{ event 7 17 }
	{ event 5 34 }
	{ event 7 34 }
	fps 37
	loop
}
$sequence madidle3 houndeye_anims\madidle3 ACT_IDLE_ANGRY 1 loop

$sequence inspect houndeye_anims\inspect ACT_INSPECT_WALL 1 fps 10
$sequence eat houndeye_anims\eat ACT_EAT 1

$sequence 180l houndeye_anims\180l ACT_TURN_LEFT 1 loop
$sequence 180r houndeye_anims\180r ACT_TURN_RIGHT 1 loop
$sequence jumpback houndeye_anims\jumpback ACT_LEAP 1 { event 6 10 } walkframe 28 LX LY LZ
$sequence wakefast houndeye_anims\wakefast ACT_HOP 1
$sequence whimper houndeye_anims\whimper fps 35 loop

$sequence jumpwindow houndeye_anims\jumpwindow fps 28 LX LY LZ LZR

$sequence ragdoll houndeye_anims\ragdoll ACT_DIERAGDOLL 1

$collisionjoints "houndeye_physics.smd"
{
	$mass 45
	$inertia 10
	$damping 0.01
	$rotdamping 1.5
	$rootbone "bip01"


	$jointconstrain "Bip01 Spine1" x limit -30 30 0.2
	$jointconstrain "Bip01 Spine1" y limit -30 30 0.2
	$jointconstrain "Bip01 Spine1" z limit -30 30 0.2

	$jointconstrain "Bip01 L Arm1" x limit -30 30 0.2
	$jointconstrain "Bip01 L Arm1" y limit -40 30 0.2
	$jointconstrain "Bip01 L Arm1" z limit -40 40 0.2

	$jointconstrain "Bip01 L Arm2" x limit -30 30 0.2
	$jointconstrain "Bip01 L Arm2" y limit -60 60 0.2
	$jointconstrain "Bip01 L Arm2" z limit -60 40 0.2

	$jointconstrain "Bip01 R Arm1" x limit -30 30 0.2
	$jointconstrain "Bip01 R Arm1" y limit -30 40 0.2
	$jointconstrain "Bip01 R Arm1" z limit -40 40 0.2

	$jointconstrain "Bip01 L Leg" x limit -30 30 0.2
	$jointconstrain "Bip01 L Leg" y limit -45 45 0.2
	$jointconstrain "Bip01 L Leg" z limit -50 30 0.2

	$jointconstrain "Bip01 R Arm2" x limit -30 30 0.2
	$jointconstrain "Bip01 R Arm2" y limit -60 60 0.2
	$jointconstrain "Bip01 R Arm2" z limit -60 40 0.2
}

