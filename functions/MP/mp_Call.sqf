private["_params", "_function", "_target", "_scheduled"];
_params = _this select 0;
_function = _this select 1;
_target = _this select 2;
_scheduled = _this select 3;

if(isNil "_scheduled")then{
	_scheduled = false;
};

if(!isMultiplayer)then{
	[[_params, _function, _target, _scheduled]] call DD_MP_Execute;
}else{
	pv_Multiplayer_Exec = [[_params, _function, _target, _scheduled]];
	publicVariable "pv_Multiplayer_Exec";
};						