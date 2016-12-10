with objPlanter {
    var startX = pathListX[| 0]
    var startY = pathListY[| 0]
    var vineBase = objectGrid[# startX, startY]
    show_debug_message(string(startX)+', '+string(startY))
    
    for (var i=1; i<ds_list_size(pathListY); i+=1) {
        var x1 = pathListX[| i-1]
        var y1 = pathListY[| i-1]
        var x2 = pathListX[| i]
        var y2 = pathListY[| i]
        var dx = -(x2-x1)
        var dy = -(y2-y1)
        
        with vineBase.bulbObj {
            visible=1
            var seg = instance_create(x, y, objVineSegment);
            x += dx*global.tileSize
            y += dy*global.tileSize
            if dx == 1 image_angle = 0
            if dx == -1 image_angle = 180
            if dy == 1 image_angle = 270
            if dy == -1 image_angle = 90
        }
        
        with vineBase {
            ds_list_add(segmentList, seg)
            seg.sprite_index = scrVineSpriteTwoEdges(lastDx, lastDy, dx, dy)
            lastDx = dx
            lastDy = dy
        }
    }
    
    with vineBase {
        if ds_list_size(segmentList) >= maxLength {
            doneGrowing = true
        }
    }
    
    scrClearPath()
}
