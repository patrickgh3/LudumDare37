with objPlanter {
    ds_list_clear(pathListX)
    ds_list_clear(pathListY)
    for (var i=0; i<w; i+=1) {
        for (var j=0; j<h; j+=1) {
            var obj = objectGrid[# i, j]
            if instance_exists(obj) and
            (obj.object_index == objSeed or obj.object_index == objCancelDraw) {
                with obj instance_destroy()
                objectGrid[# i, j] = noone
            }
        }
    }
}

with objPlayer numSeeds = numSeedsPerRound
objPlanter.state = PlantState_Choose
