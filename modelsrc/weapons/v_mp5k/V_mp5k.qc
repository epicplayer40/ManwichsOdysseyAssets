/*
==============================================================================
MP5K mesh model by Jasper Carmack
Silencer edit by Akis_02

==============================================================================
*/

$modelname weapons/v_mp5k.mdl
$cdmaterials "models\Weapons\V_hand"
$cdmaterials "models\Weapons\v_mp5k"
$cdmaterials "models\Weapons\v_silencer"


// whole body
$body studio "v_mp5k_silenced.smd" 

//$origin 0 0 0 -270

//Muzzle flash
$attachment "muzzle" "ValveBiped.muzzle" 6.10 -0.65 0.00 rotate 0 0 0
//Shell eject
$attachment "1" "ValveBiped.eject" 0.00 -1.00 -4.70 rotate 0 10 0

//----------
// body groups
//----------
$bodygroup firemode
{
	studio "strider_vsdog_shell.smd"
	blank
		
}

$sequence idle01 "Idle01" loop fps 30 activity ACT_VM_IDLE 1 node Ready

$sequence fire01 "Fire01" fps 30 snap activity ACT_VM_PRIMARYATTACK 1 node Fire {
//{ event AE_MUZZLEFLASH 0 "SMG1 MUZZLE" } 
{ event 6001 0 "0" }
}

$sequence fire02 "Fire02" fps 30 snap activity ACT_VM_RECOIL1 1 node Fire {
//{ event AE_MUZZLEFLASH 0 "SMG1 MUZZLE" } 
{ event 6001 0 "0" }
}

$sequence fire03 "Fire03" fps 30 snap activity ACT_VM_RECOIL2 1 node Fire {
//{ event AE_MUZZLEFLASH 0 "SMG1 MUZZLE" } 
{ event 6001 0 "0" }
}

$sequence fire04 "Fire04" fps 30 snap activity ACT_VM_RECOIL3 1 node Fire {
//{ event AE_MUZZLEFLASH 0 "SMG1 MUZZLE" } 
{ event 6001 0 "0" }
}

$sequence altfire "Draw" fps 27 activity ACT_VM_SECONDARYATTACK 1 node Fire frames 6 26

$sequence draw "Draw" fps 30 snap activity ACT_VM_DRAW 1 node Ready

$sequence reload "Reload" fps 30 activity ACT_VM_RELOAD 1 node Ready

$sequence dryfire "Dryfire" fps 30 snap activity ACT_VM_DRYFIRE 1 node Fire

$sequence idletolow "idletolow" fps 30 activity ACT_VM_LOWERED_TO_IDLE 1  transition Ready Low

$sequence lowtoidle "lowtoidle" fps 30 activity ACT_VM_IDLE_TO_LOWERED 1 transition Low Ready

$sequence lowidle "Lowidle" fps 30 loop activity ACT_VM_IDLE_LOWERED 1 node Low




