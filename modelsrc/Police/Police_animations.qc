$modelname Police_animations.mdl

$include "weaponmacros.qci"
$include "standardhierarchy.qci"
$include "standardikchains.qci"
$include "commonbones.qci"
$include "DefineBones.qci"

$attachment "eyes" "ValveBiped.Bip01_Head1" 0 -7 66 absolute
$attachment baton "ValveBiped.baton_parent" 0 0 0

$include "body_poses_lean.qci"

$animblocksize 32

$include "Police_shared.qci"