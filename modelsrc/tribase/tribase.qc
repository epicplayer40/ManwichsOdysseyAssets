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
$sequence entrance tribase_encounter frame 3 200 rotate 180 fps 20 {
	{ event 5004 33 "Tribase.Mechanism" }
	{ event 5004 80 "Tribase.Mechanism" }
	{ event 5004 103 "Tribase.Mechanism" }
	{ event 5004 140 "Tribase.Mechanism" }
	{ event 5004 38 "Tribase.Footstep" }
	{ event 5004 57 "Tribase.Footstep" }
	{ event 5004 70 "Tribase.Footstep" }
	{ event 5004 85 "Tribase.Footstep" }
	{ event 5004 100 "Tribase.Footstep" }
	{ event 5004 116 "Tribase.Footstep" }
	{ event 5004 153 "Tribase.Footstep" }
	{ event 5004 157 "Tribase.Footstep" }
	{ event 5004 167 "Tribase.Footstep" }
	{ event 5004 172 "Tribase.Footstep" }
	{ event 5004 180 "Tribase.Footstep" }
	{ event 5004 190 "Tribase.Footstep" }
}

$sequence busyidle tribase_encounter frame 201 550 rotate 180 fps 10 {
	{ event 5004 0 "Tribase.Mechanism" }
	{ event 5004 35 "Tribase.Mechanism" }
	{ event 5004 63 "Tribase.Mechanism" }
	{ event 5004 100 "Tribase.Mechanism" }
	{ event 5004 120 "Tribase.Mechanism" }
	{ event 5004 145 "Tribase.Mechanism" }
	{ event 5004 200 "Tribase.Mechanism" }
	{ event 5004 220 "Tribase.Mechanism" }
	{ event 5004 248 "Tribase.Mechanism" }
	{ event 5004 286 "Tribase.Mechanism" }
	{ event 5004 303 "Tribase.Mechanism" }
	{ event 5004 317 "Tribase.Mechanism" }
	{ event 5004 20 "Tribase.Footstep" }
	{ event 5004 61 "Tribase.Footstep" }
	{ event 5004 83 "Tribase.Footstep" }
	{ event 5004 117 "Tribase.Footstep" }
	{ event 5004 134 "Tribase.Footstep" }
	{ event 5004 173 "Tribase.Footstep" }
	{ event 5004 217 "Tribase.Footstep" }
	{ event 5004 244 "Tribase.Footstep" }
	{ event 5004 272 "Tribase.Footstep" }
	{ event 5004 300 "Tribase.Footstep" }
	{ event 5004 315 "Tribase.Footstep" }
	{ event 5004 333 "Tribase.Footstep" }
}

$sequence pre_explode_idle tribase_encounter frame 551 579 rotate 180 fps 30
$sequence explode tribase_encounter frame 583 630 rotate 180 fps 12
$sequence explode_post tribase_encounter frame 630 630 rotate 180

$CollisionJoints "ragdoll.smd"