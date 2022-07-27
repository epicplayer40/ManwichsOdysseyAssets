
$modelname gibs/Zombie_legs.mdl

$model studio "wastelandzombie_legs_reference.smd"

$cdmaterials Models\Zombie

$surfaceprop "flesh"
$attachment 1 "Bip01 Spine" -7 0 0

$sequence idle wastelandzombie_legs_reference ACT_IDLE 1
$sequence ragdoll "wastelandzombie_legs_physics" FPS 30 activity ACT_DIERAGDOLL 1

$keyvalues { "prop_data" { "base" "Flesh.Small" "health" "10"} }
$collisiontext
{
	break 
	{
		"ragdoll" "gibs/Zombie_lleg"
		"health" "10"
		"fadetime" "10"
		"placementbone" "Bip01 Pelvis"
	}
}

$collisionjoints "wastelandzombie_legs_physics.smd" {
	
	// Mass in kilograms
	$mass 30.0


	$inertia 5.0
	$rotdamping 1.5
	$damping 0.01

	$rootbone "Bip01 Pelvis"

	// Pelvis has no constraints because it is the root bone

	// Thigh (rotates around pelvis)
	$jointmassbias "Bip01 L Thigh" 2
	$jointmassbias "Bip01 R Thigh" 2
	$jointconstrain "Bip01 L Thigh" x limit -25 20
	$jointconstrain "Bip01 R Thigh" x limit -25 20

	$jointconstrain "Bip01 L Thigh" y limit -20 40
	$jointconstrain "Bip01 R Thigh" y limit -40 20

	$jointconstrain "Bip01 L Thigh" z limit -37 63
	$jointconstrain "Bip01 R Thigh" z limit -37 63

	// constraints for the knees
	$jointconstrain "Bip01 L Calf" z limit -95 4
	$jointconstrain "Bip01 R Calf" z limit -95 4

	// Ankles
	$jointconstrain "Bip01 L Foot" z limit -15 35
	$jointconstrain "Bip01 R Foot" z limit -15 35

	// Spine - no constraints because pelvis has no geometry, this Spine is root

}