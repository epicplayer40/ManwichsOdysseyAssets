
$modelname "cutscene/cutscene_firstperson.mdl"

$bodygroup "Body"
{
	studio "cutscene_reference.smd"
}


$surfaceprop "default"

$contents "solid"

$cdmaterials models/Weapons/V_hand 

$attachment "vehicle_driver_eyes" "Blackout.view" 0 0 0 rotate 0 0 0
$attachment "enter1" "Blackout.base" 0 64 0 rotate -90 -90 0
$attachment "exit1" "Blackout.base" 0 64 0 rotate -90 -90 0
$attachment "head" "ValveBiped.Bip01_Head1" 0 0 0 rotate 0 -81 -90

$cbox 0 0 0 0 0 0

$sequence getup getup

$sequence onground getup frame 0 0
