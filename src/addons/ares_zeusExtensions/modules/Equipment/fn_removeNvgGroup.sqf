_logic = _this select 0;
_units = _this select 1;
_activated = _this select 2;

if (_activated && local _logic) then
{
	_groupUnderCursor = [_logic] call Ares_fnc_GetGroupUnderCursor;

	if (isNil "Ares_RemoveNvgGroupCode") then
	{
		Ares_RemoveNvgGroupCode =
		{
			_group = _this select 0;
			{
				if (isServer) then
				{
					_x unlinkItem "NVGoggles";
				};
				_x addPrimaryWeaponItem "acc_flashlight";
			} forEach units _group;
		};
		publicVariable "Ares_RemoveNvgGroupCode";
	};

	[[_groupUnderCursor], "Ares_RemoveNvgGroupCode", true, true] call BIS_fnc_MP;

	[objnull, "Removed NVGoogles from Group."] call bis_fnc_showCuratorFeedbackMessage;
};

deleteVehicle _logic;
true