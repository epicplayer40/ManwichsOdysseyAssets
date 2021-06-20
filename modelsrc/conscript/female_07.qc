// Conscript Female 07
// Model by Sgt Stacker, QC edits by Akis_02 and The One Epicplayer

$ModelName "Conscripts/female_07.mdl"

$Model "ConscriptF01" "Female_07_Test.smd" {

	eyeball "eye_0" "Bip01 Head" 1.363940 -6.016610 67.167481 "dark_eyeball_l" 1 -4 "iris_unused" 0.68
	eyeball "eye_1" "Bip01 Head" -1.363940 -6.016610 67.167481 "dark_eyeball_r" 1 4 "iris_unused" 0.68

	mouth 0 "mouth" "Bip01 Head" 0 -1 0

}

$CDMaterials "models\conscript\"
$CDMaterials "models\humans\female\group03\"

$include DefineBones.qci
$include conscript_shared.qci
$include conscript_hitbox.qci
$include conscript_ragdoll.qci