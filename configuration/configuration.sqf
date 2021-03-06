/************************ Balca Debug ************************/

[] call compile preprocessFileLineNumbers "addons\proving_Ground\init.sqf";


/************************ Master Array ************************/
#include "MA_Items.sqf"
#include "MA_Vehicles.sqf"
#include "MA_Weapons.sqf"
#include "Config_Licenses.sqf"

DD_ActionLock = false;

DD_Inventory = [];
DD_maxWeight = 60;
DD_MyLicenses = [];

DD_CivilianArray = [civ1, civ2, civ3, civ4];
DD_CopArray = [];
DD_EMSArray = [];


DD_MasterArray = DD_MasterArray_Items+DD_MasterArray_Vehicles+DD_MasterArray_Weapons;

{
	missionNamespace setVariable[format["DD_MNS_%1", _x select 0], _x];
}forEach DD_MasterArray;
{
	missionNamespace setVariable[format["DD_LNS_%1", _x select 0], _x];
}forEach DD_Licenses;