$modelname Synth.mdl

// whole body
$body studio "synth_reference.smd"
$cdmaterials models/synth

$animblocksize 32

//$weightlist gunonly "Bip02" 0 "Bip02 Spine1" 1 "Bip02 L Clavicle" 0 "Bip02 R Clavicle" 0 "Box10" 0
$weightlist gunonly "Bip02" 0 "Bone06" 1 "Bone09" 1 "Bone01" 1 "Bone10" 1 "Bone04" 1 "Box02" 1
$weightlist notgun "Bip02" 1 "Bone06" 0 "Bone09" 0 "Bone01" 0 "Bone10" 0 "Bone04" 0 "Box02" 0

$sequence idle01 "idle01" fps 30 loop ACT_IDLE 5 node "idle"
$sequence idleshake01 "idleshake01" fps 30 ACT_IDLE 1 node "idle"

//$sequence idle01 "alert01" fps 30 ACT_IDLE 5 node "idle"

$sequence alert01 "alert01" fps 30 ACT_STAND 1
$sequence attack1 "attack01" fps 30 ACT_HUNTER_MELEE_ATTACK1_VS_PLAYER 1
$sequence attack2 "attack_ft01" fps 30 ACT_MELEE_ATTACK1 1
$sequence fire01 "fire01" fps 30 ACT_RANGE_ATTACK1 1
$sequence ltturn01 "ltturn01" fps 30 ACT_TURN_LEFT 1 lzr
$sequence rtturn01 "rtturn01" fps 30 ACT_TURN_RIGHT 1 lzr
$sequence run_headthrow "run_headthrow" fps 30 ACT_RUN 1 LX
//$sequence runtrot "trot01" fps 30 loop  ACT_RUN 1

$sequence runbash "runbash" fps 30  ACT_CHARGE_HITLEFT 1 LX
$sequence runthrow "run_headthrow" fps 30  ACT_CHARGE_HITRIGHT 1 LX
$sequence chargelswipe "chargeltswipe01" fps 30  ACT_CHARGE_HITLEFT 1 alignto "idle01" walkframe 19 LX walkframe 29 LX walkframe 56 LX
$sequence chargerswipe "chargeltswipe01" fps 30  frame 42 68 ACT_CHARGE_HITRIGHT 1 alignto "idle01" walkframe 26 LX

$sequence walk01 "walk01" fps 30 loop LX LY
$sequence walk01_gunup "walk01_gunup" fps 30 loop LX
$sequence walkback01 "walkback01" fps 30 loop  ACT_STEP_BACK 1 LX
//$sequence diesimple "alert01" fps 120 ACT_DIESIMPLE 1

$sequence shooting_start "fire01" frame 0 70 transition idle planted
$sequence shooting_loop "manod/fire_loop" loop ACT_RANGE_ATTACK2 1 node planted
$sequence shooting_stop "fire01" frame 80 141 transition planted idle
$sequence shooting_idle "manod/fire_idle" loop ACT_HUNTER_IDLE_PLANTED 1 node planted

$sequence gesture_shooting "manod/fire_loop" subtract shooting_loop 0 delta loop weightlist gunonly

/*
$sequence chargeready "charge01" {
	fps 30 frame 0 16 
	ACT_CHARGE_START 1 
	alignto "idle01" 
	transition "idle" "precharge"
	LX
}

$sequence chargestart "charge01" {
	fps 30 frame 16 30  
	ACT_CHARGE_START_MOVE 1 
	alignto "idle01" 
	transition "precharge" "charge"
	LX
	}
*/

$sequence chargestart "charge01" {
	fps 30 frame 0 30  
	ACT_HUNTER_CHARGE_START 1 node idle 
	alignto "idle01" 
//	transition "idle" "charge"
	walkframe 19 LX walkframe 30 LX
	}
	
$sequence chargeloop "charge01" {
	fps 30 loop frame 30 42  
	// ACT_CHARGE_LOOP 1 
//	ACT_RUN 1
	ACT_HUNTER_CHARGE_RUN 1 node idle
	alignto "idle01"
//	node "charge"
	LX
	}

$sequence run01 "run01" {
	fps 40 loop  //ACT_RUN 4
	alignto "idle01"
	node "charge"
	LX
	}
/*
$sequence chargestop "charge01" {
	fps 30 frame 54 67  
	ACT_CHARGE_MOVE_END 1 
	alignto "idle01"
	transition "charge" "postcharge"
	LX
	}
*/
$sequence chargeend "charge01" {
	fps 30 frame 67 93 
	ACT_HUNTER_CHARGE_CRASH 1 node idle
	alignto "idle01"
//	transition "postcharge" "idle"
	LX
	}


$sequence chargestop "charge01" {
	fps 30 frame 54 93  
	ACT_HUNTER_CHARGE_STOP 1 node idle
	alignto "idle01"
//	transition "charge" "postcharge"
	walkframe 12 LX walkframe 39 LX
	}
	
$sequence runtrot "trot01" fps 60 loop  ACT_CHARGE_LOOP 1 LX
$sequence chargefswipe "chargeltswipe01" fps 30  ACT_CHARGE_END 1 alignto "idle01" walkframe 20 LX walkframe 29 LX walkframe 56 LX

$sequence bodythrow "bodythrow01" fps 30 ACT_BODY_THROW 1 walkframe 13 LX walkframe 26 lx walkframe 115 lx

$animation walk_S	"walkbackcyc01" fps 30  startloop 19 alignto "idle01" LX loop
$animation walk_SE	"walkback45rt01" fps 30  LX LY startloop 20 rotate 6.1 alignto "idle01" loop
$animation walk_E	"walkleft01" fps 30 LY alignto "idle01" loop
$animation walk_NE	"walk45ftrt01" fps 30  LX LY rotate -2.09 alignto "idle01" loop
$animation walk_N	"walk01_gunup" fps 30  LX alignto "idle01" loop
$animation walk_NW	"walk45ftlt01" fps 30  LX LY rotate 3.05 alignto "idle01" loop
$animation walk_W	"walkright01" fps 30 LY startloop 26 alignto "idle01" loop
$animation walk_SW	"walkback45lt01" fps 30  LX LY startloop 19 rotate -7.82 alignto "idle01" loop


$sequence walkall {
	walk_s walk_se walk_e walk_ne walk_n walk_nw walk_w walk_sw walk_s
	blendwidth 9 blend ZR -180 180 loop ACT_WALK 1
}

$animation walk_N_gun	"walk01" fps 30  LX alignto "idle01" loop

$sequence walk_gunlayer walk01 weightlist gunonly

$sequence walkall_gun {
	walk_s walk_se walk_e walk_ne walk_N_gun walk_nw walk_w walk_sw walk_s
	blendwidth 9 blend ZR -180 180 loop addlayer walk_gunlayer ACT_WALK_AIMING 1 node planted
}

$animation run_S	"runback01" fps 30 alignto "idle01" LX loop
$animation run_SE	"runbackrt4501" fps 30  LX LY rotate 6.1 alignto "idle01" loop
$animation run_E	"runrt01" fps 30 LY alignto "idle01" loop
$animation run_NE	"runrtft4501" fps 30  LX LY rotate -2.09 alignto "idle01" loop
$animation run_N	"run01" fps 30  LX alignto "idle01" loop
$animation run_NW	"runltft4501" fps 30  LX LY rotate 3.05 alignto "idle01" loop
$animation run_W	"runlt01" fps 30 LY alignto "idle01" loop
$animation run_SW	"runbacklt4501" fps 30  LX LY rotate -7.82 alignto "idle01" loop

$sequence runall {
	run_s run_se run_e run_ne run_n run_nw run_w run_sw run_s
	blendwidth 9 blend ZR -180 180 loop ACT_RUN 1
}