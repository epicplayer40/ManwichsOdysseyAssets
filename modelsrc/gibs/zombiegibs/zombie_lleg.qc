
$modelname gibs/Zombie_lleg.mdl

$model studio "gib_lleg_reference.smd"

$cdmaterials Models\Zombie

$surfaceprop "flesh"

$sequence idle gib_lleg_reference ACT_IDLE 1
$sequence ragdoll "gib_lleg_physics" FPS 30 activity ACT_DIERAGDOLL 1

$keyvalues { "prop_data" { "base" "Flesh.Small" "health" "10"} }

$collisionjoints "gib_lleg_physics.smd" {
	
	// Mass in kilograms
	$mass 25.0


	$inertia 5.0
	$rotdamping 1.5
	$damping 0.01

	$rootbone "Bip01 Pelvis"

	// Pelvis has no constraints because it is the root bone

	// Thigh (rotates around pelvis)
	$jointmassbias "Bip01 L Thigh" 2
	$jointconstrain "Bip01 L Thigh" x limit -25 20
	$jointconstrain "Bip01 L Thigh" y limit -20 40
	$jointconstrain "Bip01 L Thigh" z limit -37 63

	// constraints for the knee
	$jointconstrain "Bip01 L Calf" z limit -95 4

	// Ankle
	$jointconstrain "Bip01 L Foot" z limit -15 35

	// Spine - no constraints because pelvis has no geometry, this Spine is root

}