// Created by Crowbar 0.74

$modelname "weapons\v_ar1.mdl"

$bodygroup "studio"
{
	studio "ar1_reference.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition 0.178 -14.201 -15.899

$cdmaterials "models\weapons\v_ar1\"
$cdmaterials "models\weapons\v_hand\"

$attachment "muzzle" "MuzzleFlash" 0 0 0 rotate -90 0 0
$attachment "1" "ShellEject" 0 0 0 rotate -10 20 0

$cbox 0 0 0 0 0 0

$bbox -12.674 -10.769 -29.433 41.076 11.125 -2.364

$definebone "ValveBiped.Bip01" "" -0.000005 -0.533615 38.566917 0 179.973094 41.714421 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Spine" "ValveBiped.Bip01" 0 0.000002 4.481252 0.055921 179.999978 36.749054 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Spine1" "ValveBiped.Bip01_Spine" 0 0 4.018463 0.09385 179.999978 1.633731 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Spine2" "ValveBiped.Bip01_Spine1" 0 0 3.518418 0.080443 179.999978 5.70792 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Spine4" "ValveBiped.Bip01_Spine2" 0 0 8.942692 0 0 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Clavicle" "ValveBiped.Bip01_Spine4" 1.938272 -1.372646 1.802635 73.740525 179.999978 -179.995661 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_UpperArm" "ValveBiped.Bip01_L_Clavicle" 0 0 6.02808 33.472425 0 -3.418954 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Forearm" "ValveBiped.Bip01_L_UpperArm" 0.000001 0 11.692531 0.024634 0 3.459004 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Hand" "ValveBiped.Bip01_L_Forearm" 0 0 11.481691 -0.000003 0 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger4" "ValveBiped.Bip01_L_Hand" -0.283954 1.358823 3.796231 44.547986 0.000001 -10.963203 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger41" "ValveBiped.Bip01_L_Finger4" -0.000002 0 1.312561 22.527844 -0.000001 11.586583 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger42" "ValveBiped.Bip01_L_Finger41" 0.000001 0 0.729366 -0.000001 -0.000001 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger3" "ValveBiped.Bip01_L_Hand" -0.472088 0.599565 3.892021 40.463601 0.000001 -6.561741 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger31" "ValveBiped.Bip01_L_Finger3" 0.000001 0 1.539094 13.99673 0 2.404533 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger32" "ValveBiped.Bip01_L_Finger31" 0 0 1.196322 0 0 0.000001 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger2" "ValveBiped.Bip01_L_Hand" -0.362877 -0.26343 3.882031 27.598001 0 -3.813779 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger21" "ValveBiped.Bip01_L_Finger2" 0.000001 0 1.719575 20.920695 0 -1.864691 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger22" "ValveBiped.Bip01_L_Finger21" -0.000001 0 1.20918 0.000001 0 0.000001 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger1" "ValveBiped.Bip01_L_Hand" -0.259296 -1.163067 3.908063 24.345608 0 -0.143125 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger11" "ValveBiped.Bip01_L_Finger1" -0.000001 0 1.71943 19.584043 0 -7.149941 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger12" "ValveBiped.Bip01_L_Finger11" 0.000001 0 1.099665 0.000003 0.000001 0.000001 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger0" "ValveBiped.Bip01_L_Hand" 0.27614 -1.279619 0.896416 38.253871 0.000001 36.515229 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger01" "ValveBiped.Bip01_L_Finger0" -0.000001 0.000001 1.789792 4.255014 179.999978 12.382539 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger02" "ValveBiped.Bip01_L_Finger01" 0 0 1.207201 0.000001 0 0.000005 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Clavicle" "ValveBiped.Bip01_Spine4" -1.93694 -1.377039 1.800675 73.660387 0.000001 179.849386 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_UpperArm" "ValveBiped.Bip01_R_Clavicle" 0 0 6.028114 33.449386 0 3.456941 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Forearm" "ValveBiped.Bip01_R_UpperArm" -0.000002 0 11.69252 0.028247 0 -3.458947 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Hand" "ValveBiped.Bip01_R_Forearm" 0.000002 0 11.481696 0 0 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger4" "ValveBiped.Bip01_R_Hand" -0.284546 -1.358744 3.7962 44.511824 0 10.987499 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger41" "ValveBiped.Bip01_R_Finger4" 0 0 1.312563 22.490819 0.000002 -11.654936 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger42" "ValveBiped.Bip01_R_Finger41" -0.000001 0 0.729364 -0.000008 0 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger3" "ValveBiped.Bip01_R_Hand" -0.472436 -0.599413 3.891984 40.439986 0 6.574863 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger31" "ValveBiped.Bip01_R_Finger3" 0 0 1.539093 13.986409 0.000001 -2.455984 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger32" "ValveBiped.Bip01_R_Finger31" 0.000001 0 1.196323 -0.000006 0.000001 -0.000001 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger2" "ValveBiped.Bip01_R_Hand" -0.362944 0.263552 3.881997 27.594331 0 3.822488 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger21" "ValveBiped.Bip01_R_Finger2" 0.000001 0 1.719577 20.920408 0 1.870592 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger22" "ValveBiped.Bip01_R_Finger21" 0 0 1.209182 -0.000003 0 -0.000001 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger1" "ValveBiped.Bip01_R_Hand" -0.259065 1.163159 3.908035 24.343139 0 0.150917 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger11" "ValveBiped.Bip01_R_Finger1" 0.000001 0 1.719427 19.581686 0 7.155841 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger12" "ValveBiped.Bip01_R_Finger11" 0.000001 0 1.099667 -0.000004 0.000001 -0.000001 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger0" "ValveBiped.Bip01_R_Hand" 0.276558 1.279539 0.896399 38.266818 0 -36.520502 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger01" "ValveBiped.Bip01_R_Finger0" 0.000001 0 1.789798 4.184372 179.999978 -12.444587 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger02" "ValveBiped.Bip01_R_Finger01" 0.000001 0.000001 1.20686 0.000005 -0.000002 -0.000002 0 0 0 0 0 0
$definebone "Gunbase" "" -4.878788 -12.156383 59.164177 0 0 89.999982 0 0 0 0 0 0
$definebone "Magazine" "Gunbase" 0 1.445588 9.910315 0 0 0 0 0 0 0 0 0
$definebone "ChargingHandle" "Gunbase" 0 4.830552 9.121947 0 0 0 0 0 0 0 0 0
$definebone "ShellEject" "Gunbase" 0 4.802742 11.030284 0 0 0 0 0 0 0 0 0
$definebone "MuzzleFlash" "Gunbase" 0 3.759722 28.905352 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"v_ar1_anims\idle.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 8
	loop
}

$sequence "fire1" {
	"v_ar1_anims\fire1.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event AE_MUZZLEFLASH 0 "SMG1 MUZZLE" }
	{ event 6001 0 "1" }
	fadein 0.2
	fadeout 0.2
	node "Fire"
	snap
	fps 80
}

$sequence "fire2" {
	"v_ar1_anims\fire2.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event AE_MUZZLEFLASH 0 "SMG1 MUZZLE" }
	{ event 6001 0 "1" }
	fadein 0.2
	fadeout 0.2
	node "Fire"
	snap
	fps 80
}

$sequence "reload" {
	"v_ar1_anims\reload.smd"
	activity "ACT_VM_RELOAD" 1
	{ event 5004 12 "Weapon_AR1.Magout" }
	{ event 5004 30 "Weapon_AR1.Magin" }
	{ event 5004 44 "Weapon_AR1.Maghit" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "draw" {
	"v_ar1_anims\draw.smd"
	activity "ACT_VM_DRAW" 1
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}
