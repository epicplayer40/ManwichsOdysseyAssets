// HL2 Houndeye Remake using modified HL1 anims
// Model by JosephtheKP
// QC edits, mesh edits, rigging and anim edits by The One Epicplayer

$modelname "houndeye.mdl"
$cdmaterials models\houndeye

// whole body
$body studio "Houndeye_Reference"

$surfaceprop "alienflesh"

$eyeposition 0 0 27

$mostlyopaque

$sequence idle1 "idle1" ACT_IDLE 1 
$sequence idle2 "idle2" LOOP ACT_IDLE 20 
$sequence idle3 "idle3" ACT_IDLE 1 

$sequence run "run" LX loop FPS 30 ACT_RUN 4
$sequence run2 "run2" LX loop FPS 30 ACT_RUN 2
$sequence run3 "run3" LX loop FPS 30 ACT_RUN 1

$sequence die "die_simple" fps 20 ACT_DIESIMPLE 1 { event 2001 5 }
$sequence die1 "die_forward" fps 20 ACT_DIEFORWARD 1  { event 2001 10 }
$sequence die2 "die_backward" fps 20 ACT_DIEBACKWARD 2 { event 2001 8 }
$sequence die3 "die_backward2" fps 20 ACT_DIEBACKWARD 1  { event 2001 7 }

//$sequence attack2 "attack2" fps 25 ACT_RANGE_ATTACK1 1 { event 3 22 }

$sequence attack "sonicattack" fps 25 ACT_RANGE_ATTACK1 1  { event 2 5 } { event 3 59 }


$sequence flinch_small "flinch" fps 30 ACT_SMALL_FLINCH 1
$sequence flinch_small2 "flinch2" fps 30 ACT_SMALL_FLINCH 1
$sequence die_crumple "die2" fps 30 ACT_DIESIMPLE 1
$sequence running_junp "jump" LX fps 30 ACT_LEAP 1 
$sequence walk_limp "walk" LX LOOP fps 30 
$sequence walk2 "walk2" LX LOOP FPS 30 ACT_WALK 1
$sequence leaderlook "leaderlook" ACT_HOUND_GUARD 1 { event 1 10 } { event 1 20 }

$sequence sleep "sleepidle" LOOP ACT_CROUCHIDLE 1
$sequence gotosleep "laydown" ACT_CROUCH 1 
$sequence sleeptostand "sleeptostand" ACT_STAND 1

$sequence madidle "madidle" LOOP ACT_IDLE_ANGRY 2
$sequence madidle2 "madidle2" LOOP FPS 37 ACT_IDLE_ANGRY 3 { event 4 7 } { event 7 7 } { event 4 17 } { event 7 17 } { event 5 34 } { event 7 34 }
$sequence madidle3 "madidle3" LOOP ACT_IDLE_ANGRY 1

$sequence inspect "inspect" FPS 10 ACT_INSPECT_WALL 1
$sequence eat "eat" ACT_EAT 1

$sequence 180l "180l" ACT_TURN_LEFT 1 FPS 30 LOOP
$sequence 180r "180r" ACT_TURN_RIGHT 1 FPS 30 LOOP 

$sequence jumpback "jumpback" ACT_LEAP 1 LX LY LZ { event 6 10 }

$sequence wakefast "jump_up" ACT_HOP 1
$sequence whimper "submisidle" loop fps 35
$sequence jumpwindow "jump_through_window" fps 28 origin 0 0 20 LX LY LZ LZR

$sequence ragdoll 		"ragdoll_pose" 		FPS 30 		activity ACT_DIERAGDOLL 1

$collisionjoints ragdoll {

	$mass 45.0
	$inertia 10.00
	$damping 0.01
	$rotdamping 1.00
	$rootbone "Bip01 L Thigh"

//	$jointmerge "bip01 pelvis" "bip01 spine1"

	$jointconstrain "bip01 spine2" x limit -30.00 30.00 1.00
	$jointconstrain "bip01 spine2" y limit -30.00 30.00 1.00
	$jointconstrain "bip01 spine2" z limit -30.00 30.00 1.00
	$jointinertia "bip01 spine2" 10.00
	$jointdamping "bip01 spine2" 0.01
	$jointrotdamping "bip01 spine2" 1.00

	$jointmassbias "Bip01 L HorseLink" 2.00
	$jointmassbias "Bip01 L Toe0" 4.00
	$jointmassbias "Bip01 L Forearm" 1.50
	$jointmassbias "Bip01 L Hand" 4.00
	$jointmassbias "Bip01 R Forearm" 1.50
	$jointmassbias "Bip01 R Hand" 4.00

	$jointconstrain "bip01 spine4" x limit -30.00 30.00 1.00
	$jointconstrain "bip01 spine4" y limit -30.00 30.00 1.00
	$jointconstrain "bip01 spine4" z limit -30.00 30.00 1.00
	
	$jointconstrain "Bip01 L UpperArm" x limit -30.00 30.00 1.00
	$jointconstrain "Bip01 L UpperArm" y limit -40.00 30.00 1.00
	$jointconstrain "Bip01 L UpperArm" z limit -40.00 40.00 1.00

	$jointconstrain "Bip01 L Forearm" x limit -30.00 30.00 1.00
	$jointconstrain "Bip01 L Forearm" y limit -60.00 60.00 1.00
	$jointconstrain "Bip01 L Forearm" z limit -60.00 40.00 1.00

	$jointconstrain "Bip01 R UpperArm" x limit -30.00 30.00 1.00
	$jointconstrain "Bip01 R UpperArm" y limit -30.00 40.00 1.00
	$jointconstrain "Bip01 R UpperArm" z limit -40.00 40.00 1.00

//	$jointconstrain "bip01 l leg" x limit -30.00 30.00 1.00
//	$jointconstrain "bip01 l leg" y limit -45.00 45.00 1.00
//	$jointconstrain "bip01 l leg" z limit -50.00 30.00 1.00

	$jointconstrain "Bip01 R Forearm" x limit -30.00 30.00 1.00
	$jointconstrain "Bip01 R Forearm" y limit -60.00 60.00 1.00
	$jointconstrain "Bip01 R Forearm" z limit -60.00 40.00 1.00
	
	$jointconstrain "Bip01 R Hand" z limit -75.00 125.00 1.00
	$jointconstrain "Bip01 L Hand" z limit -75.00 125.00 1.00
	
	$jointconstrain "Bip01 Head" x limit -20.00 20.00 1.00
	$jointconstrain "Bip01 Head" y limit -8.00 8.00 1.00
	$jointconstrain "Bip01 Head" z limit -12.00 12.00 1.00
	
	$jointconstrain "Bip01 L Calf" x limit -80.00 50.00 1.00
	$jointconstrain "Bip01 L HorseLink" x limit -10.00 90.00 1.00
	$jointconstrain "Bip01 L Toe0" x limit -60.00 25.00 1.00
	
}

