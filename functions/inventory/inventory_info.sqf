private["_item", "_info", "_return"];

_item = _this select 0;
_info = _this select 1;

_itemInfo = missionNameSpace getVariable [format["DD_MNS_%1", _item], []];
if(count(_itemInfo) == 0)exitWith{"ERROR: ITEM NOT FOUND"};
switch(_info)do{
	case "name":
	{
		(_itemInfo select 1);
	};

	case "license":
	{
		(_itemInfo select 2);
	};		

	case "weight":
	{
		(_itemInfo select 3);
	};

	case "model":
	{
		(_itemInfo select 4);
	};

	case "call":
	{
		(_itemInfo select 5);
	};

	case "price":
	{
		(_itemInfo select 6);
	};

	case "filter":
	{
		(_itemInfo select 7);
	};

	default{
		"ERROR: INFO NOT FOUND";
	};
};