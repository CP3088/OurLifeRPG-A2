private["_unit", "_animation", "_mode"];
_unit = _this select 0;
_animation = _this select 1;
_mode = _this select 2;
if(isNil "_mode")then{
	_mode = 0;
};

switch(_mode)do{
	case 0:
	{
		_unit switchMove _animation;
	};

	case 1:
	{
		_unit playMove _animation;
	};
};