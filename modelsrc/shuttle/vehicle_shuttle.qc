// Shuttle
// Brushwork by The One Epicplayer, model later made by Sgt Stacker, Additional animations by Xinus22

$modelname "vehicle_shuttle.mdl"
$model shuttle shuttle_ref.smd

$surfaceprop "metal"

$illumposition -0.321 3.681 -50.988

$eyeposition 0 0 77

$cdmaterials "models\apache\"
$cdmaterials "models\apache2\"

$bbox -249.557 -244.061 -114.886 242.194 243.418 12.909

$definebone "shuttle_prop" "" 0 0 0 0 0 89.999982 0 0 0 0 0 0
$definebone "shuttle_door" "shuttle_prop" -107.67794 -29.439892 -2.024731 60.000029 0 0 0 0 0 0 0 0

$attachment "C9Shuttle" "shuttle_prop" 0 -50 0 rotate -90 0 -90

$sequence idle vehicle_shuttle_anims\idle.smd fps 24 loop

$sequence idle_open vehicle_shuttle_anims\idle_open.smd fps 24

$sequence hover_closed vehicle_shuttle_anims\hover_closed.smd ACT_IDLE 1 fps 24 loop

$sequence hover_open vehicle_shuttle_anims\hover_open.smd fps 24 loop

$sequence ClosetoOpen vehicle_shuttle_anims\ClosetoOpen.smd fps 24

$sequence OpentoClose vehicle_shuttle_anims\OpentoClose.smd fps 24

$sequence Flying_violent vehicle_shuttle_anims\Flying_violent.smd fps 24 loop

$sequence Flying_turn vehicle_shuttle_anims\Flying_turn.smd fadein 1.0 fps 24