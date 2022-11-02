//Door explosion for innercity sequence
//Model and animations by Xinus22

$modelname "xinus22/c9_doorexplode"

$cdmaterials "models/xinus22"

$surfaceprop "default"

$origin 0.000000 0.000000 0.000000 -90.000000

$scale 1.000000

$body "Reference" "Reference.SMD"

$sequence "idle" {
    "anims/idle.SMD"
    fps 24
    frames 0 1
    activity "ACT_VM_IDLE" 1
}

$sequence "Explode" {
    "anims/Explode.SMD"
    fps 60
    activity "ACT_VM_IDLE" 1
}
