#include "\A3XAI\globaldefines.hpp"

private ["_unitGroup","_status"];

_unitGroup = _this select 0;
_status = _this select 1;

_unitGroup setVariable ["NoAggroStatus",_status];

//Synchronize aggro status between dedicated and HC.
if (isDedicated) then {
	if (A3XAI_HCIsConnected) then {
		A3XAI_setNoAggroStatus_PVC = [_unitGroup,_status];
		A3XAI_HCObjectOwnerID publicVariableClient "A3XAI_setNoAggroStatus_PVC";
	};
} else {
	A3XAI_setNoAggroStatus_PVS = [_unitGroup,_status];
	publicVariableServer "A3XAI_setNoAggroStatus_PVS";
};

_status
