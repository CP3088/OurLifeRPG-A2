// Modular Folder Configuration Format:
// "moduleFolder"

_showActiveJob = "";
_activeModules = [
	"core",
	"init"
];

DD_Modules = [];

{
	switch (_x) do {
		case ("init"): {
			call compile preprocessFile format["functions\%1\init.sqf", (_x)];
		};
		default {
			call compile preprocessFile format["functions\%1\module.sqf", (_x)];
			call compile preprocessFile format["functions\%1\vars.sqf", (_x)];
		};
	};
}forEach _activeModules;

{
	call compile format['
		if(%4)then{
			%1_%3_%2 = compile preProcessFile "functions\%3\%3_%2.sqf";
		}else{
			execVM "functions\%3\%3_%2.sqf";
		};
	', _x select 2, _x select 1, _x select 0, _x select 3];
}forEach DD_Modules;
