//Consul Statue Prop
//Model by Fonz

$modelname	"props_citadel\ConsulStatue.mdl"
$scale 5
$body Statue	"ConsulStatue.smd"
$staticprop
$surfaceprop	solidmetal
$cdmaterials	"models\props_citadel\consulstatue"

$sequence idle	"ConsulStatue.smd" 

$collisionmodel	"ConsulStatue_phys.smd" { $concave }