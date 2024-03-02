// Sniper Rifle
// Arms fix by Xinus, QC edits by The One Epicplayer

$modelname "weapons/v_sniper.mdl"

$body studio "Sniper_reference.smd"

$cdmaterials "models\weapons\v_hand\"
$cdmaterials "models\weapons\v_sniper\"

$attachment "0" "Bip01 R Hand" 49.42 2.18 6.12 rotate 1.06 0.88 -0.68

$sequence sniper_idle01 sniper_idle01 ACT_VM_IDLE 1 loop
$sequence sniper_fire sniper_fire ACT_VM_PRIMARYATTACK 1 {
	{ event 5001 1 "51" }
	{ event 6001 1 "1" }
	snap
	fps 40
}
$sequence sniper_fire_dry sniper_fire_dry ACT_VM_DRYFIRE 1 snap
$sequence sniper_draw sniper_draw_new ACT_VM_DRAW 1 { event AE_CL_PLAYSOUND 0 "NPC_Combine.Zipline_MidClothing" }
$sequence sniper_reload sniper_reload ACT_VM_RELOAD 1 fps 35