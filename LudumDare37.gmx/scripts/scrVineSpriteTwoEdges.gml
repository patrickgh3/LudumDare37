var scrDx1 = argument0
var scrDy1 = argument1
var scrDx2 = argument2
var scrDy2 = argument3

var left = 0
var right = 1
var top = 2
var bottom = 3

var enterD;
if scrDx1==1 enterD=left
if scrDx1==-1 enterD=right
if scrDy1==1 enterD=top
if scrDy1==-1 enterD=bottom

var leave;
if scrDx2==-1 exitD=left
if scrDx2==1 exitD=right
if scrDy2==-1 exitD=top
if scrDy2==1 exitD=bottom

if scrDx1==0 and scrDy1==0 {
    if exitD==left return sprVineStartL
    if exitD==right return sprVineStartR
    if exitD==top return sprVineStartU
    if exitD==bottom return sprVineStartD
}

if (enterD==left and exitD==right) or (enterD==right and exitD==left) return sprVineH
if (enterD==top and exitD==bottom) or (enterD==bottom and exitD==top) return sprVineV

if (enterD==left and exitD==top) or (enterD==top and exitD==left) return sprVineL2U
if (enterD==left and exitD==bottom) or (enterD==bottom and exitD==left) return sprVineL2D

if (enterD==right and exitD==top) or (enterD==top and exitD==right) return sprVineR2U
if (enterD==right and exitD==bottom) or (enterD==bottom and exitD==right) return sprVineR2D

return sprVineCross
