// Conscript Male 02
// Model by Sgt Stacker, QC edits by Akis_02 and The One Epicplayer

$ModelName "Conscripts/EvilMale_02.mdl"

$Model "Conscript" "EvilConscript_New_Male02.smd" {

	eyeball "eye_right" "Bip01 Head" -1.280842 -5.228160 67.374794 "eyeball_r" 1 4 "iris_unused" 0.68
	eyeball "eye_left" "Bip01 Head" 1.442168 -5.228171 67.344734 "eyeball_l" 1 -4 "iris_unused" 0.68

	mouth 0 "mouth" "Bip01 Head" 0 -1 0

}

$CDMaterials "models\conscript\"

$include DefineBones.qci
$include conscript_shared.qci
$include conscript_hitbox.qci
$include conscript_ragdoll.qci