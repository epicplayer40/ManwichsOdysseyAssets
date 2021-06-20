// Animal
// Model by Sgt Stacker, QC edits by The One Epicplayer

$ModelName "Conscript.mdl"

$Model "Conscript" "Conscript_NewHelmet_Ref_Working.smd" {

	eyeball "eye_0" "Bip01 Head" -1.280842 -5.228160 67.374806 "eyeball_r" 1 -1 "iris_unused" 0.68
	eyeball "eye_1" "Bip01 Head" 1.442168 -5.228171 67.344746 "eyeball_l" 1 1 "iris_unused" 0.68

	mouth 0 "mouth" "Bip01 Head" 0 -1 0
}

$CDMaterials "models\conscript\"
$CDMaterials "models\combine_elite\"

$attachment "mouth" "Bip01 Head" 0.8 -5.8 -0.15 rotate 0 -80 -90
$attachment "anim_attachment_RH" "ValveBiped.Bip01_R_Hand" 0 0 0 rotate -90 -90 0
$eyeposition 0 0 67

$controller 0 "Bip01 Head" XR -60 60

$poseparameter "XR" -50 50 loop 0

$IncludeModel "conscript_animations.mdl"

$include DefineBones.qci
$include conscript_ragdoll.qci