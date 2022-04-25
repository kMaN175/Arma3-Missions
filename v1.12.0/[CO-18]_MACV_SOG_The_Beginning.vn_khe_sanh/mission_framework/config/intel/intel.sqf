/*
    Intel Creator tool can be found here:
    https://malbryn.github.io/MalFramework/intel_creator.html

    Arguments:
        0: OBJECT - Intel object
        1: SCALAR - ID of the intel

    Examples:
        // In the init field of the object
        [this, 1] call MF_intel_fnc_initIntel

        // In an external script
        [objName, 2] call MF_intel_fnc_initIntel
 */

EGVAR(intel,intelList) = [
// ID: 0
    ["Read Notepad", "Kang village appears to have been abandoned for quite some time and there doesn't appear to be any trail, tracks or signs of NVA or VC in the area.", 10, true, true],

// ID: 1
    ["Read Notepad", "Xi So village is boo coo bad. It's one of the resupply and storage areas used by the 1st NVA Division. We have recovered some documents and they show that the NVA have a way station just north of this village.", 10, true, true]

    ];