private["_selection", "_amount", "_itemClass"];

_selection = _this select 0;
_amount = parseNumber(_this select 1);
if(_amount == 0)exitWith{false;};

_itemClass = (DD_Inventory select _selection) select 0;
_itemCall = [_itemClass, "call"] call DD_Inventory_Info;
if(_itemCall select 0 == "")exitWith{player groupChat "This item has no use.";false};

if(_itemCall select 1)then{
	[_itemClass, (_amount)] call compile (_itemCall select 0);
	true;
}else{
	[_itemClass, (_amount)] execVM (_itemCall select 0);	
	true;
};

