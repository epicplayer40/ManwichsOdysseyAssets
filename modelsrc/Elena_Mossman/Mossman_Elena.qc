/*
==============================================================================

Elena Mossman
Mesh remake by Xinus22. Rigging, flexes, and compiling by The One Epicplayer.

==============================================================================
*/

$modelname Mossman.mdl
$cdmaterials models\Mossman

//start eye/face data
$eyeposition 0 0 65
$attachment "physgun_attachment" "valvebiped.physgun_attachment" 0 0 0 rotate -90 0 -90

// head controllers
$attachment "eyes" "ValveBiped.Bip01_Head1" -0.08 -3.32 64.98 absolute
$attachment "mouth" "ValveBiped.Bip01_Head1" 0.80 -5.80 -0.15 rotate 0 -80 -90
$attachment "chest" "ValveBiped.Bip01_Spine2" 5.00 4.00 0.00 rotate 0 90 90

$model Mossman "Elena_Mossman_Reference.smd" {
	eyeball righteye "ValveBiped.Bip01_Head1" -1.20 -3.32 64.96 "eyeball_r" 1.00 4 "pupil_r" 0.63
	eyeball lefteye "ValveBiped.Bip01_Head1" 1.05 -3.33 64.99 "eyeball_l" 1.00 -4 "pupil_l" 0.63

	eyelid  upper_right "Elena_Mossman_Expressions" lowerer 1 -0.25 neutral 0 0.16 raiser 2 0.29 split 0.1 eyeball righteye
	eyelid  lower_right "Elena_Mossman_Expressions" lowerer 3 -0.31 neutral 0 -0.25 raiser 4 -0.09 split 0.1 eyeball righteye
	eyelid  upper_left "Elena_Mossman_Expressions" lowerer 1 -0.28 neutral 0 0.14 raiser 2 0.26 split -0.1 eyeball lefteye
	eyelid  lower_left "Elena_Mossman_Expressions" lowerer 3 -0.34 neutral 0 -0.28 raiser 4 -0.12 split -0.1 eyeball lefteye

	mouth 0 "mouth" "ValveBiped.Bip01_Head1" 0 1 0     // mouth illumination
	flexfile "Elena_Mossman_Expressions" {
		$include "../Humans/standardflex_xsi.qci"
	}

	$include "../Humans/facerules_xsi.qci"
	$include "../Humans/Bodyrules_xsi.qci"
}
//end eye/face data

$surfaceprop "flesh"
$bbox -13 -13 0  13 13 72
$mostlyopaque

$proceduralbones "../Humans/Female.vrd"
//$proceduralbones "mossman.vrd"

$include "../Humans/standardhierarchy.qci"
$include "../humans/standardikchains.qci"
$include "../humans/female/commonbones.qci"

$definebone "ValveBiped.physgun_attachment" "ValveBiped.Bip01_R_Hand" 2.330670 -1.877760 0.104131 11.912251 -76.110909 -106.644638 0.000001 -0.000000 0.000000 -0.000005 -0.000002 -0.000003

$includemodel "mossman_anims.mdl"
$includemodel "mossman_postures.mdl"
$includemodel "mossman_gestures.mdl"

$includemodel "humans/female_shared.mdl"

$pushd "../Humans/female"
$include "../Humans/female/ragdoll.qci"
$include "../Humans/female/hitbox.qci"
$popd

/*
$lod 10
{
	replacemodel "mossman_reference.smd" "mossman_lod_1.smd"

}
$lod 20
{
	replacemodel "mossman_reference.smd" "mossman_lod_2.smd"

}
$lod 30
{
	replacemodel "mossman_reference.smd" "mossman_lod_3.smd"
	$include "../Humans/removehands.qci"
	replacematerial "eyeball_r" "mossman_face"
	replacematerial "eyeball_l" "mossman_face"
	replacematerial "fmouth" "mossman_face"
	nofacial
}
$lod 45
{
	replacemodel "mossman_reference.smd" "mossman_lod_4.smd"
	$include "../Humans/lowesthumanskeleton.qci"
	replacematerial "eyeball_r" "mossman_face"
	replacematerial "eyeball_l" "mossman_face"
	replacematerial "fmouth" "mossman_face"
	nofacial
}
$lod 70
{
	replacemodel "mossman_reference.smd" "mossman_lod_5.smd"
	$include "../Humans/lowesthumanskeleton.qci"
	replacematerial "eyeball_r" "mossman_face"
	replacematerial "eyeball_l" "mossman_face"
	replacematerial "fmouth" "mossman_face"
	nofacial
}
$shadowlod
{
	replacemodel "mossman_reference.smd" "mossman_lod_4.smd"
	$include "../Humans/lowesthumanskeleton.qci"
	replacematerial "eyeball_r" "mossman_face"
	replacematerial "eyeball_l" "mossman_face"
	replacematerial "fmouth" "mossman_face"
	removemesh "models/mossman/mossman_hair"
	removemesh "models/mossman/eyeball_r"
	removemesh "models/mossman/eyeball_l"
	removemesh "models/mossman/fmouth"
	nofacial
}
*/