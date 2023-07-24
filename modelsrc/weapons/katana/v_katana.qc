// Created by Crowbar 0.74

$modelname "Weapons/V_Katana.mdl"

$bodygroup "studio"
{
	studio "Katana_reference.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition -10.136 -18.774 3.024

$cdmaterials "models\Weapons\V_hand\"
$cdmaterials "models\Weapons\v_katana\"

$attachment "0" "tip" 0 0 0 rotate 0 0 0

$cbox 0 0 0 0 0 0

$origin 17 17 0 10

$bbox -7.33 -20.407 -24.817 44.879 0.135 30.865

$definebone "Bip01" "" 0.134137 21.745049 43.181469 0 -89.999982 0 0 0 0 0 0 0
$definebone "Bip01 Pelvis" "Bip01" -0.000002 0 0.000004 -89.980215 -89.990242 0 0 0 0 0 0 0
$definebone "Bip01 Spine" "Bip01 Pelvis" 4.443615 -0.009642 0.000006 -0.003438 0.045378 -0.000229 0 0 0 0 0 0
$definebone "Bip01 Neck" "Bip01 Spine" 12.111408 -0.011408 -0.000714 0 0 0 0 0 0 0 0 0
$definebone "Bip01 R Clavicle" "Bip01 Neck" -0.000069 0.011452 -1.352404 78.537442 179.953778 -0.000802 0 0 0 0 0 0
$definebone "Bip01 R UpperArm" "Bip01 R Clavicle" 6.078088 -0.000002 0.000004 -2.569945 -88.156377 72.744137 0 0 0 0 0 0
$definebone "Bip01 R Forearm" "Bip01 R UpperArm" 13.44675 -0.000095 0.000014 -0.000229 -3.958966 -0.000342 0 0 0 0 0 0
$definebone "Bip01 R Hand" "Bip01 R Forearm" 15.997005 -0.000156 -0.000046 -0.000229 -0.000286 96.454019 0 0 0 0 0 0
$definebone "Bip01 R Finger0" "Bip01 R Hand" 1.885344 0.833253 2.177898 -39.999965 -0.038677 91.559799 0 0 0 0 0 0
$definebone "Bip01 R Finger01" "Bip01 R Finger0" 1.506973 0.000004 0.000005 -0.000059 -7.999865 0.000117 0 0 0 0 0 0
$definebone "Bip01 R Finger02" "Bip01 R Finger01" 0.798351 -0.000008 0.000003 -0.000001 -6.500382 -0.000055 0 0 0 0 0 0
$definebone "Bip01 R Finger1" "Bip01 R Hand" 3.950317 -0.539913 2.108894 -9.000192 -0.007391 0.045949 0 0 0 0 0 0
$definebone "Bip01 R Finger11" "Bip01 R Finger1" 1.545801 -0.000005 0.000004 0.000058 27.000061 0.000227 0 0 0 0 0 0
$definebone "Bip01 R Finger12" "Bip01 R Finger11" 1.667395 -0.00001 0.000004 -0.000055 24.999688 -0.000116 0 0 0 0 0 0
$definebone "Bip01 R Finger2" "Bip01 R Hand" 3.899467 -0.475407 1.170918 -0.000172 -0.000172 0.045376 0 0 0 0 0 0
$definebone "Bip01 R Finger21" "Bip01 R Finger2" 1.528214 -0.000004 0.000004 0.000001 18.999968 -0.000002 0 0 0 0 0 0
$definebone "Bip01 R Finger22" "Bip01 R Finger21" 1.528216 -0.000001 0.000004 0.000116 27.499851 0.000571 0 0 0 0 0 0
$definebone "Bip01 R Finger3" "Bip01 R Hand" 3.899462 -0.431828 -0.16819 -0.000172 -0.000172 0.045433 0 0 0 0 0 0
$definebone "Bip01 R Finger31" "Bip01 R Finger3" 1.506963 -0.000003 0.000004 0.000517 24.499964 0.0008 0 0 0 0 0 0
$definebone "Bip01 R Finger32" "Bip01 R Finger31" 1.506961 -0.000002 0.000027 -0.000227 19.500043 -0.000689 0 0 0 0 0 0
$definebone "Bip01 R Finger4" "Bip01 R Hand" 3.915626 -0.278036 -1.402576 -0.000172 -0.000172 0.045433 0 0 0 0 0 0
$definebone "Bip01 R Finger41" "Bip01 R Finger4" 1.333084 -0.000005 0.000008 0.000288 36.49993 0.000628 0 0 0 0 0 0
$definebone "Bip01 R Finger42" "Bip01 R Finger41" 1.159202 -0.000001 0.000008 -0.000113 12.49993 -0.000288 0 0 0 0 0 0
$definebone "Dummy14" "Bip01 R Hand" 4.305017 0.932566 1.269009 0.655409 90.896431 1.064556 0 0 0 0 0 0
$definebone "tip" "Dummy14" -0.009325 -0.020679 19.838085 0.000003 0 0 0 0 0 0 0 0


$sequence "idle01" {
	"v_katana_anims\idle01.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "draw" {
	"v_katana_anims\draw.smd"
	activity "ACT_VM_DRAW" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "attackch" {
	"v_katana_anims\attackch.smd"
	activity "ACT_VM_HITCENTER" 1
	fadein 0.2
	fadeout 0.2
	snap
	fps 50
}

$sequence "attackcm" {
	"v_katana_anims\attackcm.smd"
	activity "ACT_VM_MISSCENTER" 1
	fadein 0.2
	fadeout 0.2
	snap
	fps 50
}
