// Tri-base
// By The One Epicplayer

$modelname "combine_tribase.mdl"
$scale 50
$model tribase "Tribase"


$surfaceprop "metal"

$cdmaterials "models\tribase\"

$attachment "base_attachto" "base_attach" 0 0 0 rotate 0 180 0

$sequence idle tribase
$sequence entrance_pre tribase_encounter frame 3 3 rotate 180
$sequence entrance tribase_encounter frame 3 200 rotate 180 fps 20
$sequence busyidle tribase_encounter frame 201 550 rotate 180 fps 10
$sequence pre_explode_idle tribase_encounter frame 551 579 rotate 180 fps 30
$sequence explode tribase_encounter frame 583 630 rotate 180 fps 12
$sequence explode_post tribase_encounter frame 630 630 rotate 180

$CollisionJoints "ragdoll.smd"