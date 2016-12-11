with objPlanter {
    var startX = pathListX[| 0]
    var startY = pathListY[| 0]
    var vineBase = objectGrid[# startX, startY]
    
    var path = path_add()
    path_set_kind(path, 1) // smoothed path
    path_add_point(path, vineBase.bulbObj.x, vineBase.bulbObj.y, 100)
    path_set_closed(path, false)
    
    var xOnPath = vineBase.bulbObj.x
    var yOnPath = vineBase.bulbObj.y
    
    for (var i=1; i<ds_list_size(pathListY); i+=1) {
        var x1 = pathListX[| i-1]
        var y1 = pathListY[| i-1]
        var x2 = pathListX[| i]
        var y2 = pathListY[| i]
        var dx = -(x2-x1)
        var dy = -(y2-y1)
        
        with vineBase.bulbObj {
            visible=1
            var seg = instance_create(xOnPath, yOnPath, objVineSegment);
            seg.visible = false
            xOnPath += dx*global.tileSize
            yOnPath += dy*global.tileSize
            path_add_point(path, xOnPath, yOnPath, 100)
            ds_list_add(growSegments, seg)
        }
        
        with vineBase {
            ds_list_add(segmentList, seg)
            seg.sprite_index = scrVineSpriteTwoEdges(lastDx, lastDy, dx, dy)
            
            hasLeaf = choose(0,1);

            if hasLeaf = 1
            {
            if seg.sprite_index != sprVineCross && seg.sprite_index != sprVineL2D && seg.sprite_index != sprVineL2U && seg.sprite_index != sprVineR2D && seg.sprite_index != sprVineR2U 
            {
            leafObject = instance_create(seg.x,seg.y,objLeaf);
            leafObject.parent = seg.id;
            if (seg.sprite_index = sprVineH) || (seg.sprite_index = sprVineStartU) || (seg.sprite_index = sprVineStartD) leafObject.sprite_index = choose(sprLeafUp,sprLeafDown);
            else if (seg.sprite_index = sprVineV) || (seg.sprite_index = sprVineStartL) || (seg.sprite_index = sprVineStartR) leafObject.sprite_index = choose(sprLeafLeft,sprLeafRight);
            else if (seg.sprite_index = sprVineLoopL) leafObject.sprite_index = choose(sprLeafLeft,sprLeafUp,sprLeafDown);
            else if (seg.sprite_index = sprVineLoopR) leafObject.sprite_index = choose(sprLeafRight,sprLeafUp,sprLeafDown);
            else if (seg.sprite_index = sprVineLoopD) leafObject.sprite_index = choose(sprLeafRight,sprLeafUp,sprLeafLeft);
            else if (seg.sprite_index = sprVineLoopU) leafObject.sprite_index = choose(sprLeafRight,sprLeafLeft,sprLeafDown);
            }
            }
            
            lastDx = dx
            lastDy = dy
        }
    }
    
    with vineBase.bulbObj {
        self.path = path
        path_start(path, 1, path_action_stop, false)
        growing = true
        growT = 0
    }
    
    with vineBase {
        if ds_list_size(segmentList) >= maxLength {
            doneGrowing = true
        }
    }
    
    scrClearPath()
}
