/*
----------------------------
Cremator
----------------------------
*/

$modelname cremator.mdl

$body studio "cremator_manod_reference.smd"
//temporary gun hack for testing
//$body studio "gun_reference.smd"
$cdmaterials models/cremator
$include cremator_definebones.qci

$alwayscollapse "LFront Flapa"
$alwayscollapse "RFront Flapa"
$alwayscollapse "LBack Flapa"
$alwayscollapse "RBack Flapa"
$alwayscollapse "LFront Flapb"
$alwayscollapse "RFront Flapb"
$alwayscollapse "LBack Flapb"
$alwayscollapse "RBack Flapb"

// head controller
$controller 0 "Bip01"  ZR 0 360

$eyeposition 0 0 95.5

$attachment 0 "muzzle" 0 0 0
$attachment 1 "Bip01 Head" 0 0 0

//$sequence Idle01 "idle01" loop FPS 30 
//$sequence walk1 "Fastwalk01" loop LX fps 30 ACT_WALK 1
/*
$sequence run1			 "Fastwalk01"			loop LX LY  fps 30 ACT_RUN 1 {
{ event 2051 17 }
{ event 2050 38 }
}
*/
$animation run_S	"fastwalkback01"	loop LX fps 30 startloop 20 
$animation run_SW	"fastwalkleftback01"	loop LX LY fps 30 startloop 20 rotate 6.27
$animation run_W	"fastwalkleft01"	loop LY fps 30 
$animation run_NW	"fastwalkltfront01"	loop LX LY fps 30 rotate 3.82
$animation run_N	"Fastwalk01"		loop LX fps 30
$animation run_NE	"fastwalkrtfront01"	loop LX LY fps 30 rotate -11.5
$animation run_E	"fastwalkrt01"		loop LY  fps 30 startloop 20
$animation run_SE	"fastwalkrtback01"	loop LX LY fps 30 startloop 20 rotate -2.1
$sequence run {
	run_S run_SE run_E run_NE run_N run_NW run_W run_SW run_S
	blendwidth 9 blend move_yaw -180 180 loop ACT_RUN 1
	{ event 2051 17 }
	{ event 2050 38 }
}


//$sequence limp1			"limp01" loop LX fps 30		ACT_RUN_HURT 1
$sequence gunjam		"gunjam01" fps 30			ACT_CREMATOR_GUN_JAM 1
$sequence flich1		"flinch01" fps 30			ACT_SMALL_FLINCH 1
$sequence fireinout		"fireinout01" fps 30
$sequence fireupleft	"fireupleft" fps 30
$sequence fireupright	"fireupright" fps 30
$sequence fireinoutsw	"fireinoutsweep" fps 30 
$sequence breathing		"breathing01" fps 30 ACT_IDLE 1
//$sequence firebreathing1 "firebreathing01" fps 30	ACT_IDLE 1
$sequence firebreathing2 "firebreathing01" fps 30	ACT_RANGE_ATTACK1 1

$sequence walk01 walk01 LX loop ACT_WALK 1

$animation limp_S	"limpback01"	loop LX fps 30 //startloop 20 
$animation limp_W	"limpleft01"	loop LY fps 30 
$animation limp_N	"limp01"		loop LX fps 30
$animation limp_E	"limprt01"		loop LY  fps 30 //startloop 20
$sequence limp {
	limp_S limp_E limp_N limp_W limp_S
	blendwidth 5 blend move_yaw -180 180 loop ACT_RUN_HURT 1
}

$include "ragdoll.qci"

/*
----------------------------
Scripted Sequences
----------------------------
*/



// =========================== cables ===============================

$attachment Cablea "Bip01 Pelvis" 1.80 15.00 0.80 rigid
$attachment Cableb "hoseattach2" 0 0 0 rigid

$keyvalues
{
	Cables
	{
		Cable
		{
			StartAttachment	Cablea
			EndAttachment Cableb
			Width 1.3
			Material "cable/cable_lit"
			NumSegments 12
			Length 150			
		}
	}
}

//===================================================================