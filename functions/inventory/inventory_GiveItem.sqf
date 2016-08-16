private["_selection", "_amount", "_person", "_itemInfo", "_itemClass", "_itemAmount", "_unit"];
_selection = _this select 0;
_amount = parseNumber(_this select 1);
_person = _this select 2;

if(isMultiplayer)then{
	_unit = DD_TransferPeople select _person;
}else{
	_unit = player;	
};

_itemInfo = DD_inventory select _selection;
_itemClass = _itemInfo select 0;
_itemAmount = _itemInfo select 1;
_itemName = [_itemClass, "name"] call DD_inventory_Info;


if(_amount > _itemAmount)then{
	_amount = _itemAmount;
};

[_itemClass, -_amount] call DD_inventory_additem;



if(primaryWeapon player == "" and secondaryWeapon player == "")then{
	[[player, "AmovPercMstpSnonWnonDnon_AinvPknlMstpSnonWnonDnon", 1], "DD_Core_Animate", true] call DD_MP_Call;
}else{
	[[player, "AinvPknlMstpSlayWrflDnon", 1], "DD_Core_Animate", true] call DD_MP_Call;
};

player groupChat "Item Sent!";
systemChat format["You sent %1 sets of %2 to %3", [_amount, 1, 0, true] call CBA_fnc_formatNumber, _itemName, name _unit];

sleep 1.5;

[[_itemClass, _amount, true], "DD_inventory_additem", _unit] call DD_MP_Call;

if(primaryWeapon _unit == "" and secondaryWeapon _unit == "")then{
	[[_unit, "AmovPercMstpSnonWnonDnon_AinvPknlMstpSnonWnonDnon", 1], "DD_Core_Animate", true] call DD_MP_Call;
}else{
	[[_unit, "AinvPknlMstpSlayWrflDnon", 1], "DD_Core_Animate", true] call DD_MP_Call;
};

[[format["You received %1 sets of %2 from %3", [_amount, 1, 0, true] call CBA_fnc_formatNumber, _itemName, name player]], "DD_MP_Say", _unit] call DD_MP_Call;