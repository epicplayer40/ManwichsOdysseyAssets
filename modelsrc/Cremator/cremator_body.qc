/*
----------------------------
cremator_body
----------------------------
*/

$modelname cremator_body.mdl

$body studio "cremator_body.smd"
$opaque
$cdmaterials models/cremator

$include Cremator_body_hitboxes.qci

// --------- Animation sequences -------
$sequence "idle1" "cremator_body_idle" fps 30

/*
----------------------------
Scripted Sequences
----------------------------
*/

$include "ragdoll_body.qci"
