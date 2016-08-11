/*---------------------------------------------------------------------------
FUNCTION:
	License Actions

PARAMS:
	None

DESCRIPTION:
	Adds license actions to the NPCs.

AUTHOR:
	DEADdem
---------------------------------------------------------------------------*/
{
	_licenseClass = _x select 0;
	_licenseName = _x select 1;
	_licensePrice = _x select 2;
	_licenseCondition = _x select 3;

	{
		_x addAction [format["Purchase %1 ($%2)", _licenseName, _licensePrice], "scripts\fn_ActionToFunction.sqf", [DD_Inventory_AddLIcense, [_licenseClass, true]], 1, true, true, '', _licenseCondition + format[" and !('%1' in DD_MyLicenses)", _licenseClass]];
	}forEach (_x select 4);	
}forEach DD_licenses;

systemChat "Set Up License Actions";