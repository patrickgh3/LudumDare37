with objPlanter {
    if ds_list_size(pathList) == 0 return false
    var xCheck = argument0
    var yCheck = argument1
    var lastCoords = pathList[| ds_list_size(pathList)-1]
    var lastX = lastCoords div 1000
    var lastY = lastCoords mod 1000
    var xoCheck = xCheck-lastX
    var yoCheck = yCheck-lastY
    
    return xCheck>=0 and yCheck>=0 and xCheck<w and yCheck<h
    and objectGrid[# xCheck, yCheck] == noone
    and ((xoCheck==0 and abs(yoCheck)==1) or (yoCheck==0 and abs(xoCheck)==1))
}
