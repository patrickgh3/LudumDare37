var scrX = argument0
var scrY = argument1

with objPlanter {
    
    return (scrX==0 or scrX==w-1 or scrY==0 or scrY==h-1)
    and not ((scrX==0 or scrX==w-1) and (scrY==0 or scrY==h-1))
    and objectGrid[# scrX, scrY] == noone
    and not collision_point(objHouse.x+scrX*global.tileSize,
                            objHouse.y+scrY*global.tileSize,
                            objUnfertileGround, false, false)
}
