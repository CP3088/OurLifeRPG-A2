// Module Configuration Format
// ["module", "functionFile", "functionPrefix", execute]

/*switch (playerSide) do {
  	case (Civ): {*/
			DD_Modules = DD_Modules + [
				["events", "Civ_KeyEvents", "OL", false],
				["events", "Civ_KeyPress",  "OL", false],
				["events", "PublicVariable",  "OL", false]
			];/*
  	};
		case (West): {
			DD_Modules = DD_Modules + [
				["events", "Cop_KeyEvents", "OL", false],
				["events", "Cop_KeyPress",  "OL", false]
			];
		};
		case (Guer): {
			DD_Modules = DD_Modules + [
				["events", "Ems_KeyEvents", "OL", false],
				["events", "Ems_KeyPress",  "OL", false]
			];
		};
};
