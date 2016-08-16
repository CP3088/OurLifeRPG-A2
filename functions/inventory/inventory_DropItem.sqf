private["_selection", "_amount"];

if(DD_ActionLock)exitWith{systemChat "You are already dropping an item.."};
DD_ActionLock = true;

_selection = _this select 0;
if(_selection == -1)exitWith{
	systemChat "You didn't select anything.";
};

_amount = parseNumber(_this select 1);
if(_amount == 0)exitWith{false};

_item = DD_inventory select _selection;
_itemClass = _item select 0;
_itemAmount = _item select 1;

if(_amount > _itemAmount)then{
	_amount = _itemAmount;
};

_itemModel = [_itemClass, "model"] call DD_Inventory_Info;
_itemName = [_itemClass, "name"] call DD_Inventory_Info;

if(primaryWeapon player == "" and secondaryWeapon player == "")then{
	[[player, "AmovPercMstpSnonWnonDnon_AinvPknlMstpSnonWnonDnon", 1], "DD_Core_Animate", true] call DD_MP_Call;
}else{
	[[player, "AinvPknlMstpSlayWrflDnon", 1], "DD_Core_Animate", true] call DD_MP_Call;
};

sleep 1.5;

_model = _itemModel createVehicle getpos player;
_model setposasl (getposasl player);
_model setVariable["PickupInfo", [_itemClass, _amount], true];
_model addAction[format["Pick up %1 (x%2)", [((_model getVariable "PickupInfo") select 0), "name"] call DD_Inventory_Info, [((_model getVariable "PickupInfo") select 1), 1, 0, true] call CBA_fnc_formatNumber], "scripts\fn_ActionToFunction.sqf", [DD_Inventory_PickupItem, [_model]]];

[_itemClass, -_amount] call DD_inventory_AddItem;


player groupChat format["Item Dropped!"];
systemChat format["You dropped %1 sets of %2.", [_amount, 1, 0, true] call CBA_fnc_formatNumber, _itemName];

DD_ActionLock = false;