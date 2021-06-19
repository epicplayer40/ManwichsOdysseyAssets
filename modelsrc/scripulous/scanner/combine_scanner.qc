// Created by Crowbar 0.71

$modelname "Combine_Scanner.mdl"

$bodygroup "Body"
{
	studio "Combine_Scanner_reference.dmx"
}

$surfaceprop "metal"

$contents "solid"

$illumposition 0.009 7.687 0.661

$eyeposition 16 0 0

$cdmaterials "models\scripulous fingore\"


$attachment "eyes" "Scanner.Neck" 5.81 0.01 0.01 rotate 0 0 -90

// $include "combine_scanner_box.qci"

$controller 0 "Scanner.Body" ZR 0 360

$include "combine_scanner_bone.qci"

$include "combine_scanner_animation.qci"

$include "combine_scanner_collision.qci"
