private["_cloudVariable", "_cloudData", "_cloudKey", "_cloudItem"];
_cloudVariable = _this select 0;
_cloudData = _this select 1;
_cloudKey = _this select 2;

_cloudPiece = [_cloudVariable] call DD_Cloud_Retrieve;
if((_cloudPiece) == -1)then{
	DD_Cloud set[count(DD_Cloud), [_cloudVariable, _cloudData, _cloudKey]];
	true;
}else{
	_cloudItem = DD_Cloud select _cloudPiece;
	_cloudItem set[1, _clouddata];
	true;
};

publicVariable "DD_Cloud";