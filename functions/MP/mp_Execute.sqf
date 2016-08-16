private["_params", "_function", "_target", "_scheduled", "_packet"];

_packet = _this select 0;

_params = _packet select 0;
_function = _packet select 1;
_target = _packet select 2;

_function = call compile format["%1", _function];
// Optionals
_scheduled = _packet select 3;
if(isNil "_scheduled")then{
	_scheduled = false;
};

switch(typeName _target)do{
	case "SCALAR":
	{
		if(owner player == _target)then{
			if(_scheduled)then{
				_params spawn _function;
			}else{
				_params call _function;
			};
		};
		true;
	};
	case "ARRAY":
	{
		if(player in _target)then{
			if(_scheduled)then{
				_params spawn _function;
			}else{
				_params call _function;
			};
		};
		true;
	};	
	case "OBJECT":
	{
		if(player == _target)then{
			if(_scheduled)then{
				_params spawn _function;
			}else{
				_params call _function;
			};
		};
		true;
	};
	case "BOOL":
	{
		if(!_target and isServer)then{
			if(_scheduled)then{
				_params spawn _function;
			}else{
				_params call _function;
			};
		};
		if(_target)then{
			if(_scheduled)then{
				_params spawn _function;
			}else{
				_params call _function;
			};
		};
		true;
	};
	default{
		false;
	};		
};
