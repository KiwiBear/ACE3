/*
 * Author: Nelson Duarte, SilentSpike
 * Function used to handle list tab change
 *
 * Public: No
 */

#include "script_component.hpp"

params ["_ctrl", "_index"];

// Track current list type
GVAR(uiListType) = [LIST_ENTITIES, LIST_LOCATIONS] select _index;

// Clear list
tvClear CTRL_LIST;

// Force initial update
if (_index == 0) then {
    [] call FUNC(ui_updateListEntities);
} else {
    [] call FUNC(ui_updateListLocations);
};