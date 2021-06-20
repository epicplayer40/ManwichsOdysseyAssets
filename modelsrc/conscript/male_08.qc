// Conscript Male 08
// Model by Sgt Stacker, QC edits by Akis_02 and The One Epicplayer

$ModelName "Conscripts/Male_08.mdl"

$Model "Conscript" "Male_08.smd" {

	eyeball "eye_0" "Bip01 Head" 1.137190 -4.607420 68.274643 "eyeball_l" 1 -4 "iris_unused" 0.57
	eyeball "eye_1" "Bip01 Head" -1.137190 -4.607420 68.274643 "eyeball_r" 1 4 "iris_unused" 0.57

	mouth 0 "mouth" "Bip01 Head" 0 -1 0

}

$CDMaterials "models\conscript\"
$CDMaterials "models\humans\male\group03\"
$CDMaterials "models\humans\male\"

$include DefineBones.qci
$include conscript_shared.qci
$include conscript_hitbox.qci
$include conscript_ragdoll.qci