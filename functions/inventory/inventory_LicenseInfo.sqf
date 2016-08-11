private["_license", "_info", "_licenseInfo"];
_license = _this select 0;
_info = _this select 1;

_licenseInfo = missionNamespace getVariable [format["DD_LNS_%1", _license], []];
switch(_info)do{
	case "name":
	{
		(_licenseInfo select 1);
	};

	case "price":
	{
		(_licenseInfo select 2);
	};

	case "condition":
	{
		(_licenseInfo select 3);
	};

	case "npc":
	{
		(_licenseInfo select 4);
	};
};	
