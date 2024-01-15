/*
----------------------------
cremator_body
----------------------------
Cremator head Unfix from Akis_02
----------------------------
*/

$modelname cremator_body.mdl

$body studio "cremator_body_fix.smd"
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
