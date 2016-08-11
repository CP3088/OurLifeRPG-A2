/*---------------------------------------------------------------------------
FUNCTION:
	Get Amount

PARAMS:
	_this select 0 - Item key from master array to check in the inventory.

DESCRIPTION:
	Returns the amount of a certain item in the player's inventory.

AUTHOR:
	DEADdem
---------------------------------------------------------------------------*/
private["_item", "_return"];
_item = _this select 0;

_return = 0;


_findItem = 
{
	if(_x select 0 == _item)exitWith{
		(_x select 1);
	};
}forEach DD_inventory;
dd = _findItem;
if(!isNil "_findItem")then{
	_return = _findItem;
};

_return;