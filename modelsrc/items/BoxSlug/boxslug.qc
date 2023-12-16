// Slug rounds
// Original model by Valve
// Texture edit by epicplayer

$modelname items\boxslug.mdl
$cdmaterials models\items

$body "body" "boxslug_reference" 
$staticprop
$surfaceprop "item"
$sequence "idle" "boxslug_reference" fps 5 loop 

$collisionmodel "boxslug_physbox.smd" {
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
/*
$lod 8 
{
	replacemodel "boxslug_reference" "boxslug_reference_LOd1" 
}
*/
$shadowlod
{
	replacemodel "boxslug_reference" "boxslug_reference_shadowLOD" 
}