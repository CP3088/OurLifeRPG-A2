/*
Script made by : TheGamingChief for OurLifeRPG
Version 1.0 (Stable)
File: events_Civ_KeyPress.sqf
Description: Creates all the functions for fnc_Civ_KeyEvents.sqf
TeamSpeak: TS.OurLifeRPG.Net
Website: OurLifeRPG.Net
*/

fnc_KeyPress_1 = {
	[0]	call DD_Inventory_Menu; 
};

fnc_KeyPress_3 = {


};

fnc_KeyPress_6 = {

};

fnc_KeyPress_7 = {

};

fnc_KeyPress_Home = {

};

fnc_KeyPress_O = {

};

fnc_KeyPress_Y = {

};

fnc_KeyPress_W = {

	_vcl = vehicle player;
	_type = typeof vehicle player;
	_class = typeOf _vcl;
	if(_vcl == player)exitwith{};
	if(typeof _vcl == "Smallboat_1" or typeof _vcl == "Smallboat_2") then

		{

		_vel = velocity _vcl;
		_spd = speed _vcl;
		if(_spd <= 20)then{_vcl setVelocity [(_vel select 0) * 1.001, (_vel select 1) * 1.001, (_vel select 2) * 0.99]};
		if(_spd <= 30 and _spd > 20)then{_vcl setVelocity [(_vel select 0) * 1.002, (_vel select 1) * 1.002, (_vel select 2) * 0.99]};
		if(_spd <= 40 and _spd > 30)then{_vcl setVelocity [(_vel select 0) * 1.003, (_vel select 1) * 1.003, (_vel select 2) * 0.99]};

		};

	if(_class in cararray) then
	{
	_vel = velocity _vcl;
	_vcl setVelocity [(_vel select 0) * 1.005, (_vel select 1) * 1.005, (_vel select 2) * 0.99];

	};
	_lvl = _vcl getvariable "tuning";
	if(isEngineOn _vcl and !isnil "_lvl") then

		{

		_vel = velocity _vcl;
		_spd = speed _vcl;
		if(_lvl == 1)then{_vcl setVelocity [(_vel select 0) * 1.006, (_vel select 1) * 1.006, (_vel select 2) * 0.99]};
		if(_lvl == 2)then{_vcl setVelocity [(_vel select 0) * 1.008, (_vel select 1) * 1.008, (_vel select 2) * 0.99]};
		if(_lvl == 3)then{_vcl setVelocity [(_vel select 0) * 1.010, (_vel select 1) * 1.010, (_vel select 2) * 0.99]};
        if(_lvl == 4)then{_vcl setVelocity [(_vel select 0) * 1.012, (_vel select 1) * 1.012, (_vel select 2) * 0.99]};
        if(_lvl == 5)then{_vcl setVelocity [(_vel select 0) * 1.014, (_vel select 1) * 1.014, (_vel select 2) * 0.99]};
        if(_lvl == 6)then{_vcl setVelocity [(_vel select 0) * 1.018, (_vel select 1) * 1.018, (_vel select 2) * 0.99]};
		};
};

fnc_KeyPress_F5 = {

};

fnc_KeyPress_L = {

};

fnc_KeyPress_T = {

};

fnc_KeyPress_E = {

};


fnc_KeyPress_Shift_F = {

	
};

fnc_KeyPress_Space = {

};
