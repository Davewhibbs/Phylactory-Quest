/// @description On death, remove from list, cycle to next minion
var i = ds_list_find_index(manager.playerlist, self);
ds_list_delete(manager.playerlist, i);

