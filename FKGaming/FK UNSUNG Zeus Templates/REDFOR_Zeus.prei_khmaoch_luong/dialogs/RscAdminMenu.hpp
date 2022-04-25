#define BACK { 0.2, 0.2, 0.2, 0.5 }
#define BUTTON { 0.2, 0.2, 0.2, 1 }
#define PINK { 1, 0.2, 0.8 ,1 }
#define WHITE { 1, 1, 1, 1 }

class RscAdminMenu {
	idd = 6900;
	enableSimulation = true;
    movingEnable = true;
    onLoad = "_this execVM 'dialogs\AdminMenu.sqf'";

    class ControlsBackground {
        class BACKGROUND: IGUIBack {
        	idc = 6999;
        	x = 0.376251 * safezoneW + safezoneX;
        	y = 0.247 * safezoneH + safezoneY;
        	w = 0.2475 * safezoneW;
        	h = 0.506 * safezoneH;
        	colorBackground[] = BACK;
        };
    };
    class Controls {
        class HEADER: RscText {
        	idc = 6998;
        	text = "FK Admin Menu";
            style = ST_CENTER;
            moving = 1;
        	x = 0.376251 * safezoneW + safezoneX;
        	y = 0.225 * safezoneH + safezoneY;
        	w = 0.2475 * safezoneW;
        	h = 0.022 * safezoneH;
        	colorText[] = WHITE;
        	colorBackground[] = PINK;
        	colorActive[] = PINK;
        };
        class CLOSE_BUTTON: RscButton {
        	idc = 6901;
        	text = "Close";
        	x = 0.376249 * safezoneW + safezoneX;
        	y = 0.753 * safezoneH + safezoneY;
        	w = 0.2475 * safezoneW;
        	h = 0.022 * safezoneH;
        	colorText[] = WHITE;
        	colorBackground[] = BUTTON;
            colorFocused[] = BUTTON;
            colorBackgroundActive[] = PINK;
            action = "closeDialog 6900";
        };
        class CURRENT_ADMIN_TEXT: RscText {
        	idc = 6980;
        	text = "Current Admin";
        	x = 0.505156 * safezoneW + safezoneX;
        	y = 0.247 * safezoneH + safezoneY;
        	w = 0.113437 * safezoneW;
        	h = 0.022 * safezoneH;
        	colorText[] = WHITE;
        };
        class CURRENT_ADMIN_BOX: RscText {
        	idc = 6910;
        	text = "NONE";
        	x = 0.505156 * safezoneW + safezoneX;
        	y = 0.269 * safezoneH + safezoneY;
        	w = 0.113437 * safezoneW;
        	h = 0.022 * safezoneH;
        	colorText[] = WHITE;
        	colorBackground[] = BACK;
        };
        class ONLINE_STAFF_TEXT: RscText {
        	idc = 6981;
        	text = "Online Staff";
        	x = 0.505156 * safezoneW + safezoneX;
        	y = 0.302 * safezoneH + safezoneY;
        	w = 0.113437 * safezoneW;
        	h = 0.022 * safezoneH;
        	colorText[] = WHITE;
        };
        class ONLINE_STAFF_BOX: RscListbox {
        	idc = 6911;
        	x = 0.505156 * safezoneW + safezoneX;
        	y = 0.324 * safezoneH + safezoneY;
        	w = 0.113437 * safezoneW;
        	h = 0.253 * safezoneH;
        	colorText[] = WHITE;
        	colorBackground[] = BACK;
        };
        class PLAYER_COUNT_TEXT: RscText {
        	idc = 6982;
        	text = "Player Count";
        	x = 0.505156 * safezoneW + safezoneX;
        	y = 0.588 * safezoneH + safezoneY;
        	w = 0.0515625 * safezoneW;
        	h = 0.022 * safezoneH;
        	colorText[] = WHITE;
        };
        class PLAYER_COUNT_BOX: RscText {
        	idc = 6912;
        	text = "0";
        	x = 0.505156 * safezoneW + safezoneX;
        	y = 0.61 * safezoneH + safezoneY;
        	w = 0.0515625 * safezoneW;
        	h = 0.022 * safezoneH;
        	colorText[] = WHITE;
        	colorBackground[] = BACK;
        };
        class MISSION_TIME_TEXT: RscText {
        	idc = 6983;
        	text = "Mission Time";
        	x = 0.567031 * safezoneW + safezoneX;
        	y = 0.588 * safezoneH + safezoneY;
        	w = 0.0515625 * safezoneW;
        	h = 0.022 * safezoneH;
        	colorText[] = WHITE;
        };
        class MISSION_TIME_BOX: RscText {
        	idc = 6913;
        	text = "0";
        	x = 0.567031 * safezoneW + safezoneX;
        	y = 0.61 * safezoneH + safezoneY;
        	w = 0.0515625 * safezoneW;
        	h = 0.022 * safezoneH;
        	colorText[] = WHITE;
        	colorBackground[] = BACK;
        };
        class SERVER_FPS_TEXT: RscText {
        	idc = 6984;
        	text = "Server FPS";
        	x = 0.505156 * safezoneW + safezoneX;
        	y = 0.643 * safezoneH + safezoneY;
        	w = 0.0515625 * safezoneW;
        	h = 0.022 * safezoneH;
        	colorText[] = WHITE;
        };
        class SERVER_FPS_BOX: RscText {
        	idc = 6914;
        	text = "0";
        	x = 0.505156 * safezoneW + safezoneX;
        	y = 0.665 * safezoneH + safezoneY;
        	w = 0.0515625 * safezoneW;
        	h = 0.022 * safezoneH;
        	colorText[] = WHITE;
        	colorBackground[] = BACK;
        };
        class AI_COUNT_TEXT: RscText {
        	idc = 6985;
        	text = "AI Count";
        	x = 0.505156 * safezoneW + safezoneX;
        	y = 0.698 * safezoneH + safezoneY;
        	w = 0.0515625 * safezoneW;
        	h = 0.022 * safezoneH;
        	colorText[] = WHITE;
        };
        class OBJECT_COUNT_TEXT: RscText {
        	idc = 6986;
        	text = "Object Count";
        	x = 0.567031 * safezoneW + safezoneX;
        	y = 0.698 * safezoneH + safezoneY;
        	w = 0.0515625 * safezoneW;
        	h = 0.022 * safezoneH;
        	colorText[] = WHITE;
        };
        class AI_COUNT_BOX: RscText {
        	idc = 6915;
        	text = "0";
        	x = 0.505156 * safezoneW + safezoneX;
        	y = 0.72 * safezoneH + safezoneY;
        	w = 0.0515625 * safezoneW;
        	h = 0.022 * safezoneH;
        	colorText[] = WHITE;
        	colorBackground[] = BACK;
        };
        class OBJECT_COUNT_BOX: RscText {
        	idc = 6916;
        	text = "0";
        	x = 0.567031 * safezoneW + safezoneX;
        	y = 0.72 * safezoneH + safezoneY;
        	w = 0.0515625 * safezoneW;
        	h = 0.022 * safezoneH;
        	colorText[] = WHITE;
        	colorBackground[] = BACK;
        };
        class SERVER_MIN_TEXT: RscText {
        	idc = 6987;
        	text = "Min FPS";
        	x = 0.567031 * safezoneW + safezoneX;
        	y = 0.643 * safezoneH + safezoneY;
        	w = 0.0515625 * safezoneW;
        	h = 0.022 * safezoneH;
        	colorText[] = WHITE;
        };
        class SERVER_MIN_BOX: RscText {
        	idc = 6917;
        	text = "0";
        	x = 0.567031 * safezoneW + safezoneX;
        	y = 0.665 * safezoneH + safezoneY;
        	w = 0.0515625 * safezoneW;
        	h = 0.022 * safezoneH;
        	colorText[] = WHITE;
        	colorBackground[] = BACK;
        };
        class PLAYER_LIST_TEXT: RscText {
        	idc = 6988;
        	text = "Online Players";
        	x = 0.381406 * safezoneW + safezoneX;
        	y = 0.302 * safezoneH + safezoneY;
        	w = 0.113437 * safezoneW;
        	h = 0.022 * safezoneH;
        	colorText[] = WHITE;
        };
        class PLAYER_LIST_BOX: RscListbox {
        	idc = 6918;
        	x = 0.381406 * safezoneW + safezoneX;
        	y = 0.324 * safezoneH + safezoneY;
        	w = 0.113437 * safezoneW;
        	h = 0.385 * safezoneH;
        	colorText[] = WHITE;
        	colorBackground[] = BACK;
        };
        class KICK_BUTTON: RscButton {
        	idc = 6969;
        	text = "Kick"; //--- ToDo: Localize;
        	x = 0.381406 * safezoneW + safezoneX;
        	y = 0.72 * safezoneH + safezoneY;
        	w = 0.113437 * safezoneW;
        	h = 0.022 * safezoneH;
        	colorText[] = BUTTON;
        	colorBackground[] = BUTTON;
            colorFocused[] = BUTTON;
            colorBackgroundActive[] = BUTTON;
            action = "systemChat 'Kick has not been implemented currently!'";
        };
        class LOGIN_BUTTON: RscButton {
        	idc = 6940;
        	text = "Login to Admin"; //--- ToDo: Localize;
        	x = 0.381406 * safezoneW + safezoneX;
        	y = 0.258 * safezoneH + safezoneY;
        	w = 0.061875 * safezoneW;
        	h = 0.033 * safezoneH;
        	colorText[] = BUTTON;
        	colorBackground[] = BUTTON;
            colorFocused[] = BUTTON;
            colorBackgroundActive[] = BUTTON;
            action = "systemChat 'Login has not been implemented currently!'";
        };
        class LOGOUT_BUTTON: RscButton {
        	idc = 6942;
        	text = "Logout"; //--- ToDo: Localize;
        	x = 0.448437 * safezoneW + safezoneX;
        	y = 0.258 * safezoneH + safezoneY;
        	w = 0.0464063 * safezoneW;
        	h = 0.033 * safezoneH;
        	colorText[] = BUTTON;
        	colorBackground[] = BUTTON;
            colorFocused[] = BUTTON;
            colorBackgroundActive[] = BUTTON;
            action = "systemChat 'Logout has not been implemented currently!'";
        };
    };
};
