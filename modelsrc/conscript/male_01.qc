// Conscript Male 01
// Model by Sgt Stacker, QC edits by Akis_02 and The One Epicplayer

$modelname "Conscripts/Male_01.mdl"

$model "Conscript" "Male_01.smd" {

	eyeball "eye_0" "Bip01 Head" 1.332440 -5.151060 67.226151 "dark_eyeball_l" 1 -4 "iris_unused" 0.58
	eyeball "eye_1" "Bip01 Head" -1.332440 -5.151060 67.226151 "dark_eyeball_r" 1 4 "iris_unused" 0.58


	mouth 0 "mouth" "Bip01 Head" 0 -1 0
}

$cdmaterials "models\conscript\"
$cdmaterials "models\humans\male\group03\"
$cdmaterials "models\humans\male\"

$include DefineBones.qci
$include conscript_shared.qci
$include conscript_hitbox.qci
$include conscript_ragdoll.qci