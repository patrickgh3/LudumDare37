var scrX = argument0
var scrY = argument1

with objPlanter {
    
    if not (scrX==0 or scrX==w-1 or scrY==0 or scrY==h-1) return false
    
    if ((scrX==0 or scrX==w-1) and (scrY==0 or scrY==h-1)) return false
    
    if objectGrid[# scrX, scrY] != noone return false
    
    /*if objectGrid[# clamp(scrX, 0,w-1), clamp(scrY+1, 0,h-1)] != noone return false
    if objectGrid[# clamp(scrX, 0,w-1), clamp(scrY+2, 0,h-1)] != noone return false
    if objectGrid[# clamp(scrX, 0,w-1), clamp(scrY-1, 0,h-1)] != noone return false
    if objectGrid[# clamp(scrX, 0,w-1), clamp(scrY-2, 0,h-1)] != noone return false
    
    if objectGrid[# clamp(scrX+1, 0,w-1), clamp(scrY, 0,h-1)] != noone return false
    if objectGrid[# clamp(scrX+2, 0,w-1), clamp(scrY, 0,h-1)] != noone return false
    if objectGrid[# clamp(scrX-1, 0,w-1), clamp(scrY, 0,h-1)] != noone return false
    if objectGrid[# clamp(scrX-2, 0,w-1), clamp(scrY, 0,h-1)] != noone return false
    
    if objectGrid[# clamp(scrX+1, 0,w-1), clamp(scrY-1, 0,h-1)] != noone return false
    if objectGrid[# clamp(scrX+1, 0,w-1), clamp(scrY+1, 0,h-1)] != noone return false
    if objectGrid[# clamp(scrX-1, 0,w-1), clamp(scrY-1, 0,h-1)] != noone return false
    if objectGrid[# clamp(scrX-1, 0,w-1), clamp(scrY+1, 0,h-1)] != noone return false*/
    
    if collision_point(objHouse.x+scrX*global.tileSize,
            objHouse.y+scrY*global.tileSize,
            objUnfertileGround, false, false)
        return false
    
    return true
}
