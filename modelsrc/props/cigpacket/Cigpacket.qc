$modelname "props_ffl\cigarettepacket.mdl"
$cdmaterials models\Ciggybine

$body studio Cigpacket
$sequence idle Cigpacket activity ACT_IDLE 1

$surfaceprop "paper"

$collisionmodel "Cigpacket.smd" 
{
     // Mass in kilograms
     $Mass 2.0
}
$keyvalues
{
	"prop_data"
	{
		"base" "Plastic.Small"
	}
}
