// Evil Barney
// Model by Xinus22, edits and animations by The One Epicplayer

$modelname "barney_boss.mdl"

$model barney barney_boss_reference.smd {
	eyeball righteye "Bip01 Head" -1.43 -10.88 91.02 "eyeball_r" 1.00 4 "pupil_r" 0.63
	eyeball lefteye "Bip01 Head" 1.31 -10.88 91.02 "eyeball_l" 1.00 -4 "pupil_l" 0.63
	
	flexfile "barney_boss_reference.vta" {
		defaultflex frame 0		// relaxed position
		flex "Headpulse" frame 1 decay 2
		flex "CannonPulseUpper" frame 2 decay 2
		flex "CannonPulse" frame 3 decay 4
		flex "CannonPulseLower" frame 4 decay 2
		flex "HeartPulse" frame 5 decay 2
	}
	flexcontroller my_group "Headpulser"
	flexcontroller arm_group1 "ArmpulserUpper"
	flexcontroller arm_group2 "Armpulser"
	flexcontroller arm_group3 "ArmpulserLower"
	flexcontroller heart_group "Heartpulser"
	%Headpulse = Headpulser
	%CannonPulseUpper = ArmpulserUpper
	%CannonPulse = Armpulser
	%CannonPulseLower = ArmpulserLower
	%HeartPulse = Heartpulser

}

$surfaceprop zombieflesh
$eyeposition 0 0 70
$opaque
$cdmaterials "models\barney_boss\"

$include DefineBones.qci

//head controllers
$attachment "eyes" "Bip01 Head" -0.06 -10.88 91.02 absolute
$attachment "mouth" "Bip01 Head" 0.80 -5.80 -0.15 rotate 0 -80 -90
$attachment "0" "Bip01 R Hand" 0 0 0 rotate 0 0 0

$boneflexdriver "Bip01 Head_tube1" ty Headpulser 0 1

$boneflexdriver "Bip01 R UpperArm_tube1" tx ArmpulserUpper 0 1
$boneflexdriver "Bip01 R UpperArm_tube1" ty Armpulser 0 1
$boneflexdriver "Bip01 R UpperArm_tube1" tz ArmpulserLower 0 1

$boneflexdriver "Bip01 Spine3_Heart" ty Heartpulser 0 1

$hboxset "default"
$hbox 3 "Bip01 Pelvis" -10.91 -10.54 -11 5.98 11.87 11.02
$hbox 6 "Bip01 L Thigh" 0 -6.96 -5.65 27.08 8.73 4.6
$hbox 6 "Bip01 L Calf" -0.04 -5.56 -4.51 25.309999 4.5 4.79
$hbox 6 "Bip01 L Foot" 0 -2.94 -2.67 2.62 6.42 3.59
$hbox 7 "Bip01 R Thigh" 0 -7.29 -3.65 27.32 6.96 6.94
$hbox 7 "Bip01 R Calf" -0.18 -5.53 -4.3 25.07 4.52 4.73
$hbox 7 "Bip01 R Foot" 0 -2.78 -3.9 2.66 6.42 2.06
$hbox 2 "Bip01 Spine" 0 -12.52 -8.79 5.87 11.62 9.74
$hbox 2 "Bip01 Spine1" -1.66 -18.73 -3.06 11.06 15.74 3.53
$hbox 2 "Bip01 Spine2" -6.14 -19.16 -13.91 10.62 8.8 14.95
$hbox 2 "Bip01 Neck" -1.88 -16.48 -12.99 2.67 3.1 11.31
$hbox 1 "Bip01 Head" -0.26 -11.31 -7.55 9.7 7.5 6.44
$hbox 4 "Bip01 L Clavicle" 0 -6.27 -0.94 6.9 10.62 5.97
$hbox 4 "Bip01 L UpperArm" -3.05 -3.46 -4.37 23.49 4.41 3.86
$hbox 4 "Bip01 L Forearm" -0.66 -2.06 -3.39 17.83 3.56 3.55
$hbox 4 "Bip01 L Hand" -0.16 -1.86 -3.03 5.4 0.09 1.39
$hbox 5 "Bip01 R Clavicle" 0 -6.43 -6.18 7.13 10.45 2.89
$hbox 5 "Bip01 R UpperArm" -2.5 -3.71 -4.44 24.51 4.09 3.75
$hbox 5 "Bip01 R Forearm" -1.04 -2.37 -4.02 17.98 3.18 2.91
$hbox 5 "Bip01 R Hand" 0 -2 -2.01 4.89 0.82 2.81

$sequence tubetest tubetest 
$sequence sohappy sohappy rotate -90

$sequence ragdoll ragdoll ACT_DIERAGDOLL 1
$collisionjoints "zombie_assassin_physics.smd"
{
	$mass 200
	$inertia 5
	$damping 0.01
	$rotdamping 1.5
	$rootbone "Bip01 Pelvis"

	$jointmassbias "Bip01 L UpperArm" 2
	$jointconstrain "Bip01 L UpperArm" y limit -76 30 1
	$jointconstrain "Bip01 L UpperArm" z limit -73 40 1

	$jointmassbias "Bip01 L Forearm" 3
	$jointconstrain "Bip01 L Forearm" z limit -35 60 1

	$jointmassbias "Bip01 R UpperArm" 2
	$jointconstrain "Bip01 R UpperArm" y limit -45 76 1
	$jointconstrain "Bip01 R UpperArm" z limit -73 40 1

	$jointmassbias "Bip01 R Thigh" 2
	$jointconstrain "Bip01 R Thigh" x limit -25 20 1
	$jointconstrain "Bip01 R Thigh" y limit -40 20 1
	$jointconstrain "Bip01 R Thigh" z limit -37 63 1

	$jointconstrain "Bip01 R Calf" z limit -95 4 1

	$jointmassbias "Bip01 L Thigh" 2
	$jointconstrain "Bip01 L Thigh" x limit -25 20 1
	$jointconstrain "Bip01 L Thigh" y limit -20 40 1
	$jointconstrain "Bip01 L Thigh" z limit -37 63 1

	$jointconstrain "Bip01 L Calf" z limit -95 4 1

	$jointmassbias "Bip01 R Forearm" 3
	$jointconstrain "Bip01 R Forearm" z limit -35 60 1
}
