// Samuel, leader of the scraplanders.
// Model by Valve, rigging and QC editing by The One Epicplayer

$modelname "Samuel.mdl"

$model "Samuel" "Samuel_reference.smd" {

//	eyeball "eye_right" "ValveBiped.Bip01_Head1" -1.171885 -7.325116 66.898878 "eyeball_r" 1 4 "pupil_r" 0.68
	eyeball "eye_right" "ValveBiped.Bip01_Head1" -1.17189 -3.4553 68.4389 "eyeball_r" 1 4 "pupil_r" 0.68
//	eyeball "eye_left" "ValveBiped.Bip01_Head1" 1.136116 -7.325118 66.893673 "eyeball_l" 1 -4 "pupil_l" 0.68
	eyeball "eye_left" "ValveBiped.Bip01_Head1" 1.13612 -3.4553 68.4337 "eyeball_l" 1 -4 "pupil_l" 0.68

	eyelid upper_right "samuel_01.vta" lowerer 1 -0.06 neutral 0 0.06 raiser 2 0.15 split 1 eyeball "eye_right"
	eyelid lower_right "samuel_01.vta" lowerer 3 -0.19 neutral 0 -0.11 raiser 4 -0.05 split 1 eyeball "eye_right"
	eyelid upper_left "samuel_01.vta" lowerer 5 -0.06 neutral 0 0.06 raiser 6 0.15 split -1 eyeball "eye_left"
	eyelid lower_left "samuel_01.vta" lowerer 7 -0.19 neutral 0 -0.11 raiser 8 -0.05 split -1 eyeball "eye_left"

	mouth 0 "mouth" "ValveBiped.Bip01_Head1" 0 -1 0

	flexfile "samuel_01.vta" 
	{
		defaultflex frame 0
		// Already in eyelid lines: flex "upper_right" frame 1
		// Already in eyelid lines: flex "upper_right" frame 2
		// Already in eyelid lines: flex "lower_right" frame 3
		// Already in eyelid lines: flex "lower_right" frame 4
		// Already in eyelid lines: flex "upper_left" frame 5
		// Already in eyelid lines: flex "upper_left" frame 6
		// Already in eyelid lines: flex "lower_left" frame 7
		// Already in eyelid lines: flex "lower_left" frame 8
		flex "AU1R" frame 9
		flex "AU1L" frame 10
		flex "AU2R" frame 11
		flex "AU2L" frame 12
		flex "AU4R" frame 13
		flex "AU4L" frame 14
		flex "AU6R" frame 15
		flex "AU6L" frame 16
		flex "AU9R" frame 17
		flex "AU9L" frame 18
		flex "AU38" frame 19
		flex "AU10R" frame 20
		flex "AU10L" frame 21
		flex "AU12R" frame 22
		flex "AU12R" frame 23
		flex "AU12L" frame 24
		flex "AU12L" frame 25
		flex "AU25R" frame 26
		flex "AU25L" frame 27
		flex "AU18R" frame 28
		flex "AU18L" frame 29
		flex "AU22R" frame 30
		flex "AU22L" frame 31
		flex "AU20R" frame 32
		flex "AU20L" frame 33
		flex "AU32" frame 34
		flex "AU24" frame 35
		flex "AU31" frame 36
		flex "AU26R" frame 37
		flex "AU26L" frame 38
		flex "AU27R" frame 39
		flex "AU27L" frame 40
	}

	flexcontroller eyelid range 0 1 "right_lid_raiser"
	flexcontroller eyelid range 0 1 "left_lid_raiser"
	flexcontroller eyelid range 0 1 "right_lid_tightener"
	flexcontroller eyelid range 0 1 "left_lid_tightener"
	flexcontroller eyelid range 0 1 "right_lid_droop"
	flexcontroller eyelid range 0 1 "left_lid_droop"
	flexcontroller eyelid range 0 1 "blink"
	flexcontroller brow range 0 1 "right_inner_raiser"
	flexcontroller brow range 0 1 "left_inner_raiser"
	flexcontroller brow range 0 1 "right_outer_raiser"
	flexcontroller brow range 0 1 "left_outer_raiser"
	flexcontroller brow range 0 1 "right_lowerer"
	flexcontroller brow range 0 1 "left_lowerer"
	flexcontroller nose range 0 1 "right_cheek_raiser"
	flexcontroller nose range 0 1 "left_cheek_raiser"
	flexcontroller nose range 0 1 "wrinkler"
	flexcontroller nose range 0 1 "dilator"
	flexcontroller mouth range 0 1 "right_upper_raiser"
	flexcontroller mouth range 0 1 "left_upper_raiser"
	flexcontroller mouth range 0 1 "right_corner_puller"
	flexcontroller mouth range 0 1 "left_corner_puller"
	flexcontroller mouth range 0 1 "corner_depressor"
	flexcontroller mouth range 0 1 "chin_raiser"
	flexcontroller phoneme range 0 1 "right_part"
	flexcontroller phoneme range 0 1 "left_part"
	flexcontroller phoneme range 0 1 "right_puckerer"
	flexcontroller phoneme range 0 1 "left_puckerer"
	flexcontroller phoneme range 0 1 "right_funneler"
	flexcontroller phoneme range 0 1 "left_funneler"
	flexcontroller phoneme range 0 1 "right_stretcher"
	flexcontroller phoneme range 0 1 "left_stretcher"
	flexcontroller phoneme range 0 1 "bite"
	flexcontroller phoneme range 0 1 "presser"
	flexcontroller phoneme range 0 1 "tightener"
	flexcontroller phoneme range 0 1 "jaw_clencher"
	flexcontroller phoneme range 0 1 "jaw_drop"
	flexcontroller phoneme range 0 1 "right_mouth_drop"
	flexcontroller phoneme range 0 1 "left_mouth_drop"
	flexcontroller head range -30 30 "head_rightleft"
	flexcontroller head range -45 20 "head_updown"
	flexcontroller head range -30 30 "head_tilt"
	flexcontroller eyes range -30 30 "eyes_updown"
	flexcontroller eyes range -30 30 "eyes_rightleft"
	flexcontroller arms range 0 1 "arms_updown"
	flexcontroller arms range 0 1 "arms_inout"

	localvar AU15
	localvar AU17R
	localvar AU17L
	localvar right_lip_suppressor
	localvar left_lip_suppressor
	%upper_right_raiser = right_lid_raiser * (1 - right_lid_droop * 0.8) * (1 - blink)
	%upper_right_neutral = (1 - right_lid_droop * 0.8) * (1 - right_lid_raiser) * (1 - blink)
	%upper_right_lowerer = blink
	%upper_left_raiser = left_lid_raiser * (1 - left_lid_droop * 0.8) * (1 - blink)
	%upper_left_neutral = (1 - left_lid_droop * 0.8) * (1 - left_lid_raiser) * (1 - blink)
	%upper_left_lowerer = blink
	%lower_right_raiser = blink
	%lower_right_neutral = (1 - blink) * (1 - right_lid_tightener * 0.5) * (1 - right_cheek_raiser * 0.25)
	%lower_right_lowerer = 0
	%lower_left_raiser = blink
	%lower_left_neutral = (1 - blink) * (1 - left_lid_tightener * 0.5) * (1 - left_cheek_raiser * 0.25)
	%lower_left_lowerer = 0
	%AU1R = right_inner_raiser * (1 - right_lowerer)
	%AU1L = left_inner_raiser * (1 - left_lowerer)
	%AU2R = right_outer_raiser * (1 - right_lowerer)
	%AU2L = left_outer_raiser * (1 - left_lowerer)
	%AU4R = right_lowerer
	%AU4L = left_lowerer
	%AU6R = right_cheek_raiser
	%AU6L = left_cheek_raiser
	%AU9R = wrinkler
	%AU9L = wrinkler
	%AU38 = dilator
	%AU10R = right_upper_raiser
	%AU10L = left_upper_raiser
	%AU12R = right_corner_puller
	%AU12L = left_corner_puller
	%AU15 = corner_depressor
	%right_lip_suppressor = 1 / (right_part + right_puckerer + right_funneler) * (1 - presser) * (1 - bite)
	%left_lip_suppressor = 1 / (left_part + left_puckerer + left_funneler) * (1 - presser) * (1 - bite)
	%AU25R = right_part * right_part * %right_lip_suppressor
	%AU25L = left_part * left_part * %left_lip_suppressor
	%AU18R = right_puckerer * right_puckerer * %right_lip_suppressor
	%AU18L = left_puckerer * left_puckerer * %left_lip_suppressor
	%AU22R = right_funneler * right_funneler * %right_lip_suppressor
	%AU22L = left_funneler * left_funneler * %left_lip_suppressor
	%AU17R = chin_raiser * (1 - jaw_drop * 0.5) * (1 - bite) * (1 - 0.6 * (%AU25R + %AU18R + %AU22R))
	%AU17L = chin_raiser * (1 - jaw_drop * 0.5) * (1 - bite) * (1 - 0.6 * (%AU25L + %AU18L + %AU22L))
	%AU20R = right_stretcher * (1 - jaw_drop * 0.5)
	%AU20L = left_stretcher * (1 - jaw_drop * 0.5)
	%AU32 = bite
	%AU24 = presser + (1 - presser) * tightener
	%AU31 = jaw_clencher * jaw_clencher / (jaw_clencher + jaw_drop)
	%AU26R = jaw_drop * (1 - right_mouth_drop * (1 - bite)) * jaw_drop / (jaw_clencher + jaw_drop)
	%AU26L = jaw_drop * (1 - left_mouth_drop * (1 - bite)) * jaw_drop / (jaw_clencher + jaw_drop)
	%AU27R = jaw_drop * right_mouth_drop * (1 - bite) * jaw_drop / (jaw_clencher + jaw_drop)
	%AU27L = jaw_drop * left_mouth_drop * (1 - bite) * jaw_drop / (jaw_clencher + jaw_drop)
	%mouth = %AU27R * 0.5 + %AU27L * 0.5 + %AU22R * 0.35 + %AU22L * 0.35 + %AU18R * 0.25 + %AU18L * 0.25 + %AU25R * 0.35 + %AU25L * 0.35 + %AU32 * 0.5
}

$surfaceprop "flesh"

$eyeposition 0 0 70
$opaque

$cdmaterials "models\Samuel\"

$attachment "eyes" "ValveBiped.Bip01_Head1" 3.39 -3.75 0.04 rotate 0 -80.1 -90
$attachment "mouth" "ValveBiped.Bip01_Head1" 0.7 -5.2 0 rotate 0 -80 -90
$attachment "chest" "ValveBiped.Bip01_Spine2" 5 4 0 rotate 0 90 90
$attachment "forward" "ValveBiped.Bip01_Head1" 3 -3 0 rotate 0 -80 -90
$attachment "anim_attachment_RH" "ValveBiped.Bip01_R_Hand" 0 0 0 rotate -90 -90 0
$attachment "anim_attachment_LH" "ValveBiped.Bip01_L_Hand" 0 0 0 rotate -90 -90 0
$attachment "anim_attachment_head" "ValveBiped.Bip01_Head1" 0 0 0 rotate -90 -90 0

$bbox -13 -13 0 13 13 72

$hboxset "default"
$hbox 1 "ValveBiped.Bip01_Head1" -1.25 -6.5 -3.19 8.25 3.5 3.31 ""
$hbox 4 "ValveBiped.Bip01_L_UpperArm" 0 -2.75 -2.75 12.51 1.75 2.25 ""
$hbox 4 "ValveBiped.Bip01_L_Forearm" 0 -2.19 -2.38 13 1.81 1.62 ""
$hbox 4 "ValveBiped.Bip01_L_Hand" 0.06 -2 -1.5 4.06 1 2.5 ""
$hbox 5 "ValveBiped.Bip01_R_UpperArm" 0 -3 -2.25 12.39 2 2.75 ""
$hbox 5 "ValveBiped.Bip01_R_Forearm" -0.5 -2.2 -1.55 12.5 1.8 2.45 ""
$hbox 5 "ValveBiped.Bip01_R_Hand" 0.06 -2 -2.5 4.06 1 1.5 ""
$hbox 6 "ValveBiped.Bip01_L_Thigh" 0 -3.75 -3.25 17.85 3.75 3.25 ""
$hbox 6 "ValveBiped.Bip01_L_Calf" 0 -3.51 -3.28 15.64 3.49 2.72 ""
$hbox 6 "ValveBiped.Bip01_L_Foot" -1.07 -2 -2.84 5.04 5 2.16 ""
$hbox 6 "ValveBiped.Bip01_L_Toe0" -0.5 -3 -2.19 2.5 0 2.46 ""
$hbox 7 "ValveBiped.Bip01_R_Thigh" 0 -3.75 -3.25 17.85 3.75 3.25 ""
$hbox 7 "ValveBiped.Bip01_R_Calf" 0 -3.51 -2.82 15.64 3.49 3.18 ""
$hbox 7 "ValveBiped.Bip01_R_Foot" -1.06 -2.01 -2.28 5.05 4.99 2.72 ""
$hbox 7 "ValveBiped.Bip01_R_Toe0" -0.5 -3 -2.6 2.5 0 2.1 ""
$hbox 3 "ValveBiped.Bip01_Pelvis" -7.5 -5.5 -6 7.5 8.5 5 ""
$hbox 2 "ValveBiped.Bip01_Spine2" -2.5 -2.5 -7 14.5 7.5 7 ""
$skipboneinbbox

$ikchain "rhand" "ValveBiped.Bip01_R_Hand" knee 0.707 0.707 0
$ikchain "lhand" "ValveBiped.Bip01_L_Hand" knee 0.707 0.707 0
$ikchain "rfoot" "ValveBiped.Bip01_R_Foot" knee 0.707 -0.707 0
$ikchain "lfoot" "ValveBiped.Bip01_L_Foot" knee 0.707 -0.707 0

$ikautoplaylock "rfoot" 1 0.1
$ikautoplaylock "lfoot" 1 0.1

$include ragdoll.qci

$includemodel humans\male_shared.mdl
$includemodel humans\male_ss.mdl
$includemodel Police_ss.mdl