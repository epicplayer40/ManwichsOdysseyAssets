
$modelname gibs/Zombie_rleg.mdl

$model studio "gib_rleg_reference.smd"

$cdmaterials Models\Zombie

$surfaceprop "flesh"

$sequence idle gib_rleg_reference ACT_IDLE 1
$sequence ragdoll "gib_rleg_physics" FPS 30 activity ACT_DIERAGDOLL 1

$keyvalues { "prop_data" { "base" "Flesh.Small" "health" "10"} }

$collisionjoints "gib_rleg_physics.smd" {
	
	// Mass in kilograms
	$mass 25.0


	$inertia 5.0
	$rotdamping 1.5
	$damping 0.01

	$rootbone "Bip01 Pelvis"

	// Pelvis has no constraints because it is the root bone

	// Thigh (rotates around pelvis)
	$jointmassbias "Bip01 R Thigh" 2
	$jointconstrain "Bip01 R Thigh" x limit -25 20
	$jointconstrain "Bip01 R Thigh" y limit -40 20
	$jointconstrain "Bip01 R Thigh" z limit -37 63

	// constraints for the knee
	$jointconstrain "Bip01 R Calf" z limit -95 4

	// Ankle
	$jointconstrain "Bip01 R Foot" z limit -15 35

	// Spine - no constraints because pelvis has no geometry, this Spine is root

}