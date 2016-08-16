class DD_Inventory{
	idd=-1;
	class controls{
	class RscFrame_1800: RscBackground
	{
		idc = 1800;
		x = 0.338665 * safezoneW + safezoneX;
		y = 0.225067 * safezoneH + safezoneY;
		w = 0.29785 * safezoneW;
		h = 0.549866 * safezoneH;
	};
	class RscListbox_1500: RscListbox
	{
		idc = 1500;
		x = 0.338665 * safezoneW + safezoneX;
		y = 0.225067 * safezoneH + safezoneY;
		w = 0.186156 * safezoneW;
		h = 0.549866 * safezoneH;
	};
	class RscButton_1600: RscButton
	{
		idc = 1600;
		text = "Use Item";
		x = 0.531026 * safezoneW + safezoneX;
		y = 0.41752 * safezoneH + safezoneY;
		w = 0.0992832 * safezoneW;
		h = 0.0549866 * safezoneH;
	};
	class RscButton_1601: RscButton
	{
		idc = 1601;
		text = "Drop Item";
		x = 0.531026 * safezoneW + safezoneX;
		y = 0.486253 * safezoneH + safezoneY;
		w = 0.0992832 * safezoneW;
		h = 0.0549866 * safezoneH;
	};
	class RscEdit_1400: RscEdit
	{
		idc = 1400;
		x = 0.531026 * safezoneW + safezoneX;
		y = 0.362534 * safezoneH + safezoneY;
		w = 0.0992832 * safezoneW;
		h = 0.0412399 * safezoneH;
	};
	class RscButton_1602: RscButton
	{
		idc = 1602;
		text = "Give Item";
		x = 0.531026 * safezoneW + safezoneX;
		y = 0.62372 * safezoneH + safezoneY;
		w = 0.0992832 * safezoneW;
		h = 0.0549866 * safezoneH;
	};
	class RscCombo_2100: RscCombo
	{
		idc = 2100;
		x = 0.531026 * safezoneW + safezoneX;
		y = 0.58248 * safezoneH + safezoneY;
		w = 0.0992832 * safezoneW;
		h = 0.0274933 * safezoneH;
	};
	class RscCombo_2101: RscCombo
	{
		idc = 2101;
		x = 0.531026 * safezoneW + safezoneX;
		y = 0.280054 * safezoneH + safezoneY;
		w = 0.0992832 * safezoneW;
		h = 0.0274933 * safezoneH;
		onLBSelChanged = "[lbCursel 2101] call DD_Inventory_Menu;";
	};
	class RscText_1000: RscText
	{
		idc = 1000;
		text = "View";
		x = 0.531026 * safezoneW + safezoneX;
		y = 0.238814 * safezoneH + safezoneY;
		w = 0.0501602 * safezoneW;
		h = 0.0390859 * safezoneH;
	};
	class RscFrame_1801: RscFrame
	{
		idc = 1801;
		x = 0.524821 * safezoneW + safezoneX;
		y = 0.225067 * safezoneH + safezoneY;
		w = 0.111694 * safezoneW;
		h = 0.109973 * safezoneH;
	};
};

};