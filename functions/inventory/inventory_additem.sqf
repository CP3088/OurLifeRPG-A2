/*---------------------------------------------------------------------------
FUNCTION:
	Add Item

PARAMS:
	_this select 0 - Item Key from master array which will be added to inventory.
	_this select 1 - Amount to add.
	_this select 2 - Clean array before processing? <default: false>
	_this select 3 - Add item regardless of weight limit being breached? <default: false>

DESCRIPTION:
	Processes an item being added/removed from the inventory.

AUTHOR:
	DEADdem
---------------------------------------------------------------------------*/
private["_item", "_amount", "_itemWeight", "_clean", "_ignoreweightlimit"];
_item = _this select 0;
_amount = _this select 1;
_clean = _this select 2;
_ignoreweightlimit = _this select 3;


if(!isnil "_clean")then{
	{
		if(_x select 1 <= 0)then{
			DD_Inventory set[_forEachIndex, -1];
		};
		if(typeName _x != "ARRAY")then{
			DD_Inventory set[_forEachIndex, -1];
		};
	}Foreach DD_Inventory;

	DD_Inventory = DD_Inventory - [-1];
};

if(isNil "_ignoreweightlimit")then{
	_ignoreweightlimit = false;
};
if(_amount == 0)exitWith{false};

_hasItem = [_item] call DD_Inventory_GetAmount;
_myweight = [] call DD_Inventory_CalculateWeight;

if(!_ignoreweightlimit)then{
	_itemWeight = [_item, "weight"] call DD_Inventory_Info;
	_totalWeight = (_itemWeight * _amount)+_myweight;
	if(_totalWeight > DD_MaxWeight)exitWith{
		player groupChat "Cannot add item due to excessive weight.";
		false;
	};
};

if(_hasItem == 0)then{
	DD_Inventory set[(count DD_Inventory), [_item, _amount]];
	true;
}else{
	{	
		if(_x select 0 == _item)exitWith{
			_x set[1, (_x select 1)+_amount];
			true;
		};
	}forEach DD_Inventory;
};
