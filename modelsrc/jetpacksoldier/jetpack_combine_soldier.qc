$ModelName "Combine_Jetpack_Soldier.mdl"

$BodyGroup "Soldier"
{
	studio "combine_jetpack_soldier_reference.smd"
}

$bodygroup "thruster_fx"
{
	blank
	studio "combineJetpack_soldier_thrusterfx_reference.smd"
}

$SurfaceProp "flesh"

$Contents "solid"

$EyePosition 0 0 73

$MaxEyeDeflection 90

$Opaque

$cdmaterials "models\Combine_Soldier\"
$cdmaterials "models\props_combine\"
$cdmaterials "models\Combine_Dropship\"

$TextureGroup "skinfamilies"
{
	{ "combinesoldiersheet"         }
	{ "combinesoldiersheet_shotgun" }
}

$Attachment "lefthand" "ValveBiped.Bip01_L_Hand" 0 0 0 rotate 0 0 0
$Attachment "eyes" "ValveBiped.Bip01_Head1" 4.5 -5 0 rotate 0 -90 -90
$Attachment "beam_damage" "ValveBiped.Bip01_Spine2" 0 0 0 rotate 0 0 0
$Attachment "anim_attachment_RH" "ValveBiped.Anim_Attachment_RH" 0 0 0 rotate -90 -90 0
$Attachment "anim_attachment_LH" "ValveBiped.Anim_Attachment_LH" 0 0 0 rotate -90 -90 0

$BBox -13 -13 0 13 13 72

$weightlist flylegs "ValveBiped.Bip01_L_Thigh" 1.0 "ValveBiped.Bip01_R_Thigh" 1.0 "ValveBiped.Bip01_Pelvis" 0.0 "ValveBiped.Bip01_Spine" 0.0 "ValveBiped.Cod" 0.5
$weightlist takeofflegs "ValveBiped.Bip01_L_Thigh" 1.0 "ValveBiped.Bip01_R_Thigh" 1.0 "ValveBiped.Bip01_Pelvis" 1.0 "ValveBiped.Bip01_Spine" 0.0

$Sequence ragdoll ragdoll ACT_DIERAGDOLL 1

$Sequence takeoff takeoff_new activity ACT_JETPACK_TAKEOFF 1 LZ { event AE_JETPACK_TAKEOFF 10 }
$Sequence fly_jetpack_legs legslayer fps 20 activity ACT_GESTURE_JETPACK_LEGS 1 loop weightlist flylegs

$IncludeModel "combine_soldier_anims.mdl"

$IKChain "rhand" "ValveBiped.Bip01_R_Hand" knee 0.707 0.707 0
$IKChain "lhand" "ValveBiped.Bip01_L_Hand" knee 0.707 0.707 0
$IKChain "rfoot" "ValveBiped.Bip01_R_Foot" knee 0.707 -0.707 0
$IKChain "lfoot" "ValveBiped.Bip01_L_Foot" knee 0.707 -0.707 0

$IKAutoPlayLock "rfoot" 1 0.1
$IKAutoPlayLock "lfoot" 1 0.1

$include definebones.qci
$include jetpack_ragdoll.qci