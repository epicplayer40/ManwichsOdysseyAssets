// Conscript Male 04
// Model by Sgt Stacker, QC edits by Akis_02 and The One Epicplayer

$ModelName "Conscripts/Male_04.mdl"

$Model "Conscript" "Male_04.smd" {

	eyeball "eye_0" "Bip01 Head" 1.299350 -5.452190 68.023392 "eyeball_l" 1 -4 "iris_unused" 0.58
	eyeball "eye_1" "Bip01 Head" -1.299350 -5.452190 68.023392 "eyeball_r" 1 4 "iris_unused" 0.58

	mouth 0 "mouth" "Bip01 Head" 0 -1 0

}

$CDMaterials "models\conscript\"
$CDMaterials "models\humans\male\group03\"
$CDMaterials "models\humans\male\"

$include DefineBones.qci
$include conscript_shared.qci
$include conscript_hitbox.qci
$include conscript_ragdoll.qci