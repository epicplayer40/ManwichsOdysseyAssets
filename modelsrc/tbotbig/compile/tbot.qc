//Big Tbot
//Model and animations by Xinus22

$modelname "tbot.mdl"

$scale		140

$bodygroup "body"
{
	studio "tbot_reference.smd"
}

$surfaceprop metal

$eyeposition 0 0 77

$cdmaterials models\obsolete\TBot1

$sequence reference tbot_reference.smd fps 24 loop

$sequence punchwall anims\Punch_wall.smd fps 24
$sequence idle anims\idle.smd fps 24 loop
$sequence idlegesture anims\idlegesture.smd fps 24
$sequence jumpout anims\jumpout.smd fps 24