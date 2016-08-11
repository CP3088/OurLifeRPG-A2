/*---------------------------------------------------------------------------
FUNCTION:
	<function name>

PARAMS:
	_this select 3 - Params passed by coder.
	_params select 0 - Function Code.
	_parmas select 1 - Parameters for the function.

DESCRIPTION:
	<description>

AUTHOR:
	<author>
---------------------------------------------------------------------------*/
_params = _this select 3;

_function = _params select 0;
_args = _params select 1;


_args call _function;