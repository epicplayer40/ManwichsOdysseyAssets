//Conscript Vest model
//By The One Epicplayer

$modelname "items\vest.mdl"
$model vest vest_reference
$cdmaterials models\conscript

$surfaceprop "default"
$sequence idle vest_reference

$collisionmodel "vest_reference.smd" 
{
     // Mass in kilograms
     $Mass 5.0
}
$keyvalues
{
	"prop_data"
	{
		"base" "Cloth.Medium"
	}
}