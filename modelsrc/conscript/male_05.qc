// Conscript Male 05
// Model by Sgt Stacker, QC edits by Akis_02 and The One Epicplayer

$ModelName "Conscripts/Male_05.mdl"

$Model "Conscript" "Male_05.smd" {

	eyeball "eye_0" "Bip01 Head" 1.110680 -5.440770 67.554635 "eyeball_l" 1 -4 "iris_unused" 0.58
	eyeball "eye_1" "Bip01 Head" -1.237390 -5.440770 67.554635 "eyeball_r" 1 4 "iris_unused" 0.58

	mouth 0 "mouth" "Bip01 Head" 0 -1 0

}

$CDMaterials "models\conscript\"
$CDMaterials "models\humans\male\group03\"
$CDMaterials "models\humans\male\"
$CDMaterials "models\Samuel\"

$include DefineBones.qci
$include conscript_shared.qci
$include conscript_hitbox.qci
$include conscript_ragdoll.qci