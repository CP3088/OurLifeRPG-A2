_selection = _this select 0;
if(isNil "_selection")then{
	_selection = 0;
};

if(_selection == -1)then{
	_selection = 0;
	systemChat "You didn't select anything.";
};
closeDialog 0;
if(!createDialog "DD_Inventory")exitWith{false};
DD_Transferpeople = [];

ctrlShow[1600, false];
ctrlShow[1601, false];
ctrlShow[1602, false];
ctrlShow[2100, false];
ctrlShow[1400, false];

{
	lbAdd[2101, _x];
}forEach DD_MenuViews;

_filter = DD_MenuViews select _selection;
switch(_filter)do{
	case "INVENTORY":
	{
		ctrlShow[1600, true];
		ctrlShow[1601, true];
		ctrlShow[1602, true];
		ctrlShow[2100, true];
		ctrlShow[1400, true];

		ctrlSetText[1400, "1"];

		buttonSetAction[1600, "[lbCurSel 1500, ctrlText 1400] call DD_Inventory_UseItem;"];
		buttonSetAction[1601, "[lbCurSel 1500, ctrlText 1400] spawn DD_Inventory_DropItem;"];
		buttonSetAction[1602, "[lbCurSel 1500, ctrlText 1400, lbCurSel 2100] spawn DD_Inventory_GiveItem;"];

		{
			// If you change this to pounds, say goodbye to your penis.
			lbAdd[1500, format["%1 (x%2 / %3kg)", [(_x select 0), "name"] call DD_Inventory_Info, [_x select 1, 1, 0, true] call CBA_fnc_formatNumber, ([_x select 0, "weight"] call DD_Inventory_Info)]];
		}forEach DD_Inventory;

		{	
			if (player distance _x < 15 && _x != player)then{
				lbAdd[2100, format["%1 (%2m)", name _x, round(_x distance player)]];
				DD_Transferpeople set[count(DD_Transferpeople), _x];
			};
		}forEach DD_CivilianArray + DD_CopArray + DD_EMSArray;
	};

	case "LICENSES":
	{

		ctrlShow[1600, false];
		ctrlShow[1601, false];
		ctrlShow[1602, false];
		ctrlShow[2100, false];
		ctrlShow[1400, false];

		lbAdd[1500, "-- My Licenses"];
		{
			lbAdd[1500, format["%1", [_x, "name"] call DD_Inventory_LicenseInfo]];
		}forEach DD_MyLicenses;
	};	
};