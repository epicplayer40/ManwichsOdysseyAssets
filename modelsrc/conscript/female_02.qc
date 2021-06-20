// Conscript Female 02
// Model by Sgt Stacker, QC edits by Akis_02 and The One Epicplayer

$ModelName "Conscripts/female_02.mdl"

$Model "ConscriptF01" "Female_02_Test.smd" {

	eyeball "eye_right" "Bip01 Head" -1.320250 -5.801370 67.421212 "eyeball_r" 1 4 "iris_unused" 0.68
	eyeball "eye_left" "Bip01 Head" 1.320250 -5.801370 67.421212 "eyeball_l" 1 -4 "iris_unused" 0.68

	mouth 0 "mouth" "Bip01 Head" 0 -1 0

}

$CDMaterials "models\conscript\"
$CDMaterials "models\humans\female\group03\"

$include DefineBones.qci
$include conscript_shared.qci
$include conscript_hitbox.qci
$include conscript_ragdoll.qci