// Generic AR2 Ammo

$modelname Items\generic_rifle_cartridge01.mdl
$cdmaterials models\items

$body "body" "boxmrounds_reference.smd"
$staticprop
$surfaceprop "weapon"

$sequence "IDLE" "boxmrounds_reference" fps 5 loop 

$collisionmodel "boxmrounds_reference.smd" {
     // Mass in kilograms
     $Mass 5
     $concave
}

$keyvalues
{
	"prop_data"
	{
		"base" "Item.Small"
	}
}