with objPlayer {
    if objPlanter.state == PlantState_Destroy {
        placeable = false
    }
    if objPlanter.state == PlantState_Plant {
        placeable = scrTileIsValidPlant(tileX, tileY)
    }
    if objPlanter.state == PlantState_Choose {
        vineChoice = scrTileIsValidChoose(tileX, tileY)
        placeable = instance_exists(vineChoice)
    }
    if objPlanter.state == PlantState_Draw {
        placeable = scrTileIsValidPath(tileX, tileY) and numSeeds > 0
    }
}
