var parentSprite = argument0;
var dx = argument1;
var dy = argument2;
with objPlayer instance_destroy();
hasLeaf = choose(0,1);

if hasLeaf = 1
{
if parentSprite != sprVineCross leafObject = instance_create(dx,dy,objLeaf);
if (parentSprite = sprVineH) || (parentSprite = sprVineStartU) || (parentSprite = sprVineStartD) leafObject.image_index = choose(sprLeafUp,sprLeafDown);
else if (parentSprite = sprVineV) || (parentSprite = sprVineStartL) || (parentSprite = sprVineStartR) leafObject.image_index = choose(sprLeafLeft,sprLeafRight);
else if (parentSprite = sprVineL2U) || (parentSprite = sprVineR2U) leafObject.image_index = choose(sprLeafLeft,sprLeafRight,sprLeafUp,sprLeafDown);
else if (parentSprite = sprVineL2D) || (parentSprite = sprVineR2D) leafObject.image_index = choose(sprLeafLeft,sprLeafRight);
else if (parentSprite = sprVineLoopL) leafObject.image_index = choose(sprLeafLeft,sprLeafUp,sprLeafDown);
else if (parentSprite = sprVineLoopR) leafObject.image_index = choose(sprLeafRight,sprLeafUp,sprLeafDown);
else if (parentSprite = sprVineLoopD) leafObject.image_index = choose(sprLeafRight,sprLeafUp,sprLeafLeft);
else if (parentSprite = sprVineLoopU) leafObject.image_index = choose(sprLeafRight,sprLeafLeft,sprLeafDown);
}
