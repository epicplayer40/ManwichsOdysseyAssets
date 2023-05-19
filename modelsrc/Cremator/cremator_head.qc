/*
----------------------------
cremator_head
----------------------------
*/

$modelname cremator_head.mdl

$body studio "cremator_head_manod.smd"

// --------- Animation sequences -------
$sequence "idle1" "cremator_head_idle" fps 30 ACT_IDLE 1

/*
----------------------------
Scripted Sequences
----------------------------
*/

$surfaceprop "metal"

$collisionmodel "cremator_head.smd" {
	// Mass in kilograms
	$mass 1.0
}
