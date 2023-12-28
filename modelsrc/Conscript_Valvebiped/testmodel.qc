//Temp Conscript model.

$modelname "Conscripts\Temp.mdl"

//start eye/face data
$eyeposition 0 0 70

$model conscript "../manwich/manwich_reference.smd"

$opaque

$cdmaterials models\Conscript

$include "../humans/standardhierarchy.qci"
$include "../humans/standardikchains.qci"
$include "../humans/male/commonbones.qci"
$include "../humans/male/hitbox.qci"

$pushd "../humans/male/"
$include "../humans/male/ragdoll.qci"
$popd

$includemodel Humans/Conscript_Animations.mdl
$includemodel Humans/Conscript_ss.mdl