var scrTileX = argument0
var scrTileY = argument1

if scrTileX<0 or scrTileX>=objPlanter.w or scrTileY<0 or scrTileY>=objPlanter.h
or objPlanter.objectGrid[# scrTileX, scrTileY] != noone {
    return noone
}

with objVineBase {
    var xoCheck = scrTileX-tileX
    var yoCheck = scrTileY-tileY
    
    if (xoCheck==0 and abs(yoCheck)==1) or (yoCheck==0 and abs(xoCheck)==1) {
        return id
    }
}

return noone
