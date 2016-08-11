/*---------------------------------------------------------------------------
FUNCTION:
	Add License

PARAMS:
	_this select 0 - License key which will be added to the license array.
	_this select 1 - Take money from user's cash and reject if not enough? <default: false>

DESCRIPTION:
	Adds a license, and is able to charge someone for purchasing the license.

AUTHOR:
	DEADdem
---------------------------------------------------------------------------*/
private["_license", "_charge"];
_license = _this select 0;
_charge = _this select 1;

if(isNIl "_charge")then{
	_charge = false;
};

_licenseCondition = [_license,"condition"] call DD_Inventory_LicenseInfo;
_licensePrice = [_license,"price"] call DD_Inventory_LicenseInfo;
_licenseName = [_license,"name"] call DD_Inventory_LicenseInfo;

if(_charge)then{
	if((["cash"] call DD_Inventory_GetAmount) < _licensePrice)exitWith{
		player groupChat format["You do not have $%1 to pay for a %2", _licensePrice, _licenseName];
	};

	["cash", -_licensePrice] call DD_Inventory_AddItem;
	player groupChat format["You paid $%1 for a %2 license.", _licensePrice, _licenseName];
	
};

if(_licenseCondition == "")then{
	_licenseCondition = "true";
};
if(!(call compile _licenseCondition))exitWith{};
if(_license in DD_MyLicenses)exitWith{};

DD_MyLicenses set[count(DD_MyLicenses), _license];

