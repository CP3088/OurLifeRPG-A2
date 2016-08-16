private["_model", "_itemClass", "_amount", "_itemInfo"];
_model = _this select 0;

_itemInfo = _model getVariable "PickupInfo";
_itemClass = _itemInfo select 0;
_amount = _itemInfo select 1;


_itemHandler = [_itemClass, _amount, true] call DD_Inventory_additem;
if(_itemHandler)then{
	if(primaryWeapon player == "" and secondaryWeapon player == "")then{
		[[player, "AmovPercMstpSnonWnonDnon_AinvPknlMstpSnonWnonDnon", 1], "DD_Core_Animate", true] call DD_MP_Call;
	}else{
		[[player, "AinvPknlMstpSlayWrflDnon", 1], "DD_Core_Animate", true] call DD_MP_Call;
	};

	sleep 1.5;

	deleteVehicle _model;

	player groupChat "Item retreived!";
	systemChat format["You picked up %1 sets of %2", [_amount, 1, 0, true] call CBA_fnc_formatNumber, [_itemClass, "name"] call DD_Inventory_Info];

}else{
	systemChat "Make sure there's enough room in your inventory.";
};