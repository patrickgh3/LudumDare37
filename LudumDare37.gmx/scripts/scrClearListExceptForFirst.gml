var argList = argument0

if ds_list_size(argList) == 0 return 1

var scrFirstVal = argList[| 0]
ds_list_clear(argList)
ds_list_add(argList, scrFirstVal)
