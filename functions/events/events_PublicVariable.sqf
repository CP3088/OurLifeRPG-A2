"pv_MultiPlayer_Exec" addPublicVariableEventHandler{
	_execute = [_this select 1] call DD_MP_Execute;	
	if(!_execute)then{
		systemChat format["ERROR: mp_Execute: %1 Was given, code not executed.", (_this select 1)];
	};
};

systemChat "Executed Public Variable Handlers.";