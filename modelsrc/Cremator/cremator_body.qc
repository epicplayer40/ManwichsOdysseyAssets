/*
----------------------------
cremator_body
----------------------------
*/

$modelname cremator_body.mdl

$body studio "cremator_body.smd"
$opaque
$cdmaterials models/cremator

// --------- Animation sequences -------
$sequence "idle1" "cremator_body_idle" fps 30

/*
----------------------------
Scripted Sequences
----------------------------
*/

$include "ragdoll_body.qci"
