private["_finalWeight"];
_finalWeight = 0;


{
	_itemweight = [(_x select 0), "weight"] call DD_inventory_Info;
	_finalWeight = _finalWeight + (_itemweight * (_x select 1));
}forEach DD_inventory;

_finalWeight;
