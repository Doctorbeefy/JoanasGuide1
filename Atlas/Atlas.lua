--[[

   Joana's Guide Atlas Suite, an instance map browser with a built in leveling guide
   Compiled by Bennylava
   Bennylavaed@gmail.com
   Last Update: 07/30/2014

--]]




ATLAS_VERSION = "Version 1.8.5";


local Atlas_Vars_Loaded = nil;
ATLAS_DROPDOWN_LIST_EK = {};
ATLAS_DROPDOWN_LIST_KA = {};
ATLAS_DROPDOWN_LIST_BG = {};
ATLAS_DROPDOWN_LIST_FP = {};
ATLAS_DROPDOWN_LIST_DL = {};
ATLAS_DROPDOWN_LIST_RE = {};
ATLAS_DROPDOWN_LIST_INTRO = {};
ATLAS_DROPDOWN_LIST_TLVL = {};
ATLAS_DROPDOWN_LIST_ULVL = {};
ATLAS_DROPDOWN_LIST_LVL = {};
ATLAS_DROPDOWN_LIST_LV = {};
ATLAS_DROPDOWN_LIST_LVE = {};
ATLAS_DROPDOWN_LIST_LVV = {};
ATLAS_DROPDOWN_LIST_LVX = {};
ATLAS_DROPDOWN_LIST_LVY = {};
ATLAS_DROPDOWN_LIST_LVZ = {};
ATLAS_DROPDOWN_LIST_LWA = {};
ATLAS_DROPDOWN_LIST_LWB = {};
ATLAS_DROPDOWN_LIST_LWC = {};
ATLAS_DROPDOWN_LIST_LWD = {};

local DefaultAtlasOptions = {
	["AtlasVersion"] = ATLAS_VERSION;
	["AtlasZone"] = 1;
	["AtlasAlpha"] = 1.0;
	["AtlasLocked"] = false;
	["AtlasMapName"] = true;
	["AtlasAutoSelect"] = false;
	["AtlasButtonPosition"] = 15;
	["AtlasButtonRadius"] = 78;
	["AtlasButtonShown"] = true;
	["AtlasReplaceWorldMap"] = false;
	["AtlasRightClick"] = false;
	["AtlasType"] = 1;
	["AtlasAcronyms"] = true;
	["AtlasScale"] = .6;
	["AtlasClamped"] = true;
};

function Atlas_FreshOptions()
	AtlasOptions = CloneTable(DefaultAtlasOptions);
end

--Code by Grayhoof (SCT)
function CloneTable(t)				-- return a copy of the table t
	local new = {};					-- create a new table
	local i, v = next(t, nil);		-- i is an index of t, v = t[i]
	while i do
		if type(v)=="table" then 
			v=CloneTable(v);
		end 
		new[i] = v;
		i, v = next(t, i);			-- get next index
	end
	return new;
end

--Called when the Atlas frame is first loaded
--We CANNOT assume that data in other files is available yet!
function Atlas_OnLoad()

	--Register the Atlas frame for the following events
	this:RegisterEvent("ADDON_LOADED");
	this:RegisterEvent("VARIABLES_LOADED");

	--Allows Atlas to be closed with the Escape key
	tinsert(UISpecialFrames, "AtlasFrame");
	
	--Dragging involves some special registration
	AtlasFrame:RegisterForDrag("LeftButton");
	
	--Setting up slash commands involves referencing some strage auto-generated variables
	SLASH_ATLAS1 = ATLAS_SLASH;
	SlashCmdList["ATLAS"] = Atlas_SlashCommand;
end

--Removal of articles in map names (for proper alphabetic sorting)
--For example: "The Deadmines" will become "Deadmines"
--Thus it will be sorted under D and not under T
local function Atlas_SanitizeName(text)
   text = string.lower(text);
   if (AtlasSortIgnore) then
	   for _,v in pairs(AtlasSortIgnore) do
		   local match; 
           if ( string.gmatch ) then 
                match = string.gmatch(text, v)();
           else 
                match = string.gfind(text, v)(); 
           end
		   if (match) and ((string.len(text) - string.len(match)) <= 4) then
			   return match;
		   end
	   end
   end
   return text;
end

--Comparator function for alphabetic sorting of EK maps
local function Atlas_SortZonesAlphaEK(a, b)
	local aa = Atlas_SanitizeName(AtlasEK[a].ZoneName);
	local bb = Atlas_SanitizeName(AtlasEK[b].ZoneName);
	return aa < bb;
end

--Comparator function for alphabetic sorting of KA maps
local function Atlas_SortZonesAlphaKA(a, b)
	local aa = Atlas_SanitizeName(AtlasKalimdor[a].ZoneName);
	local bb = Atlas_SanitizeName(AtlasKalimdor[b].ZoneName);
	return aa < bb;
end


--Comparator function for alphabetic sorting of BG maps
local function Atlas_SortZonesAlphaBG(a, b)
	local aa = Atlas_SanitizeName(AtlasBG[a].ZoneName);
	local bb = Atlas_SanitizeName(AtlasBG[b].ZoneName);
	return aa < bb;
end

--Comparator function for alphabetic sorting of FP maps
local function Atlas_SortZonesAlphaFP(a, b)
	local aa = Atlas_SanitizeName(AtlasFP[a].ZoneName);
	local bb = Atlas_SanitizeName(AtlasFP[b].ZoneName);
	return aa < bb;
end

--Comparator function for alphabetic sorting of DL maps
local function Atlas_SortZonesAlphaDL(a, b)
	local aa = Atlas_SanitizeName(AtlasDL[a].ZoneName);
	local bb = Atlas_SanitizeName(AtlasDL[b].ZoneName);
	return aa < bb;
end

--Comparator function for alphabetic sorting of RE maps
local function Atlas_SortZonesAlphaRE(a, b)
	local aa = Atlas_SanitizeName(AtlasRE[a].ZoneName);
	local bb = Atlas_SanitizeName(AtlasRE[b].ZoneName);
	return aa < bb;
end





--These are the REAL level range values!
--Overrides the values that may be found in the localization files
function Atlas_UpdateLevelRanges()
	AtlasKalimdor.BlackfathomDeeps.LevelRange =		"24-32";
	AtlasKalimdor.WailingCaverns.LevelRange =		"17-24";
	AtlasKalimdor.DireMaulNorth.LevelRange =		"56-60";
	AtlasKalimdor.DireMaulEast.LevelRange =			"56-60";
	AtlasKalimdor.DireMaulWest.LevelRange =			"56-60";
	AtlasKalimdor.RazorfenDowns.LevelRange =		"37-46";
	AtlasKalimdor.RazorfenKraul.LevelRange =		"29-38";
	AtlasKalimdor.Maraudon.LevelRange =				"46-55";
	AtlasKalimdor.OnyxiasLair.LevelRange =			"60+";
	AtlasKalimdor.RagefireChasm.LevelRange =		"13-18";
	AtlasKalimdor.ZulFarrak.LevelRange =			"44-54";
	AtlasKalimdor.TheTempleofAhnQiraj.LevelRange =	"60+";
	AtlasKalimdor.TheRuinsofAhnQiraj.LevelRange =	"60+";

	AtlasEK.BlackrockSpireLower.LevelRange =		"55-60";
	AtlasEK.BlackrockSpireUpper.LevelRange =		"55-60";
	AtlasEK.BlackrockDepths.LevelRange =			"52-60";
	AtlasEK.ShadowfangKeep.LevelRange =				"22-30";
	AtlasEK.ScarletMonastery.LevelRange =			"34-45";
	AtlasEK.MoltenCore.LevelRange =					"60+";
	AtlasEK.TheSunkenTemple.LevelRange =			"50-60";
	AtlasEK.TheStockade.LevelRange =				"24-32";
	AtlasEK.TheDeadmines.LevelRange =				"17-26";
	AtlasEK.Gnomeregan.LevelRange =					"29-38";
	AtlasEK.BlackwingLair.LevelRange =				"60+";
	AtlasEK.Scholomance.LevelRange =				"58-60";
	AtlasEK.Stratholme.LevelRange =					"58-60";
	AtlasEK.Uldaman.LevelRange =					"41-51";
	AtlasEK.ZulGurub.LevelRange =					"60+";
	AtlasEK.Naxxramas.LevelRange =					"60+";
	
	AtlasBG.AlteracValleyNorth.LevelRange =			"51-60";
	AtlasBG.AlteracValleySouth.LevelRange =			"51-60";
	AtlasBG.ArathiBasin.LevelRange =				"20-60";
	AtlasBG.WarsongGulch.LevelRange =				"10-60";
	
	AtlasFP.FPAllianceEast.LevelRange =				"---";
	AtlasFP.FPAllianceWest.LevelRange =				"---";
	AtlasFP.FPHordeEast.LevelRange =				"---";
	AtlasFP.FPHordeWest.LevelRange =				"---";
	
	AtlasDL.DLEast.LevelRange =						"---";
	AtlasDL.DLWest.LevelRange =						"---";
	
	AtlasRE.Azuregos.LevelRange =					"60+";
	AtlasRE.FourDragons.LevelRange =				"60+";
	AtlasRE.Kazzak.LevelRange =						"60+";
	
	AtlasINTRO.INTRO.LevelRange =			"1-60";

	AtlasTLVL.tauren1.LevelRange =			"1-6";
	AtlasTLVL.tauren2.LevelRange =			"6-10";
	AtlasTLVL.tauren3.LevelRange =			"10-12";

	
	AtlasULVL.undead1.LevelRange =			"1-6";	
	AtlasULVL.undead2.LevelRange =			"6-10";	
	AtlasULVL.undead3.LevelRange =			"6-10(Part 2)";		
	AtlasULVL.undead4.LevelRange =			"10-12";		
	AtlasULVL.undead5.LevelRange =			"10-12(Part 2)";		

    AtlasLVL.a1.LevelRange =				"1-6";
    AtlasLVL.a2.LevelRange =				"6-9";
    AtlasLVL.a3.LevelRange =				"6-9 (Part 2)";
	AtlasLVL.a4.LevelRange =				"9-12";
	AtlasLVL.a5.LevelRange =				"9-12 (Part 2)";
	AtlasLVL.a6.LevelRange =				"12-15";
	AtlasLVL.a7.LevelRange =				"12-15 (Part 2)";
	AtlasLVL.a8.LevelRange =				"15-16";
	AtlasLVL.a9.LevelRange =				"16-20";
	AtlasLVL.b1.LevelRange =				"16-20 (Part 2)";
	AtlasLVL.b2.LevelRange =				"16-20 (Part 3)";
	AtlasLVL.b3.LevelRange =				"16-20 (Part 4)";
	AtlasLVL.b4.LevelRange =				"20-21";	
	AtlasLVL.b5.LevelRange =				"21-21";	
	AtlasLVL.b6.LevelRange =				"22-23";	
	AtlasLVL.b7.LevelRange =				"23-25";	
	AtlasLVL.b8.LevelRange =				"25-25";	
	AtlasLVL.b9.LevelRange =				"25-26";	
	AtlasLVL.c1.LevelRange =				"26-28";	
	AtlasLVL.c2.LevelRange =				"26-28 (Part 2)";	
	AtlasLVL.c3.LevelRange =				"28-28";	
	AtlasLVL.c4.LevelRange =				"28-30";	
	AtlasLVL.c5.LevelRange =				"28-30 (Part 2)";	

	AtlasLV.c6.LevelRange =					"30-30";
	AtlasLV.c7.LevelRange =					"30-30";
	AtlasLV.c8.LevelRange =					"30-31";
	AtlasLV.c9.LevelRange =					"31-32";
	AtlasLV.d1.LevelRange =					"32-34";
	AtlasLV.d2.LevelRange =					"32-34 (Part 2)";
	AtlasLV.d3.LevelRange =					"32-34 (Part 3)";
	AtlasLV.d4.LevelRange =					"34-36";
	AtlasLV.d5.LevelRange =					"34-36 (Part 2)";
	AtlasLV.d6.LevelRange =					"36-37";
	AtlasLV.d7.LevelRange =					"37-37";
	AtlasLV.d8.LevelRange =					"37-38";
	AtlasLV.d9.LevelRange =					"38-39";
	AtlasLV.e1.LevelRange =					"38-39 (Part 2)";
	AtlasLV.e2.LevelRange =					"39-40";
	AtlasLV.e3.LevelRange =					"39-40 (Part 2)";	


	AtlasLVE.e4.LevelRange =				"40-41";	
	AtlasLVE.e5.LevelRange =				"40-41 (Part 2)";	
	AtlasLVE.e6.LevelRange =				"41-42";	
	AtlasLVE.e7.LevelRange =				"42-43";	
	AtlasLVE.e8.LevelRange =				"43-44";	
	AtlasLVE.e9.LevelRange =				"43-44 (Part 2)";	
	AtlasLVE.f1.LevelRange =				"44-45";	
	AtlasLVE.f2.LevelRange =				"44-45 (Part 2)";	
	AtlasLVE.f3.LevelRange =				"45-46";	
	AtlasLVE.f4.LevelRange =				"45-46 (Part 2)";	
	AtlasLVE.f5.LevelRange =				"46-47";	
	AtlasLVE.f6.LevelRange =				"47-47";	
	AtlasLVE.f7.LevelRange =				"47-47 (Part 2)";	
	AtlasLVE.f8.LevelRange =				"47-47 (Part 3)";	
	AtlasLVE.f9.LevelRange =				"47-48";	
	AtlasLVE.g1.LevelRange =				"47-48 (Part 2)";	
	AtlasLVE.g2.LevelRange =				"48-49";	
	AtlasLVE.g3.LevelRange =				"49-49";	
	AtlasLVE.g4.LevelRange =				"49-50";	
	AtlasLVE.g5.LevelRange =				"49-50 (Part 2)";	

	
	AtlasLVV.g6.LevelRange =					"50-50";
	AtlasLVV.g7.LevelRange =					"50-51";
	AtlasLVV.g8.LevelRange =					"51-51";
	AtlasLVV.g9.LevelRange =					"51-51 (Part 2)";
	AtlasLVV.h1.LevelRange =					"51-53";
	AtlasLVV.h2.LevelRange =					"51-53 (Part 2)";	
	AtlasLVV.h3.LevelRange =					"51-53 (Part 3)";
	AtlasLVV.h4.LevelRange =					"53-54";
	AtlasLVV.h5.LevelRange =					"54-54";
	AtlasLVV.h6.LevelRange =					"54-54 (Part 2)";
	AtlasLVV.h7.LevelRange =					"54-55";
	AtlasLVV.h8.LevelRange =					"54-55 (Part 2)";
	AtlasLVV.h9.LevelRange =					"55-55";	
	AtlasLVV.i1.LevelRange =					"55-55 (Part 2)";	
	AtlasLVV.i2.LevelRange =					"55-56";	
	AtlasLVV.i3.LevelRange =					"55-56 (Part 2)";	
	AtlasLVV.i4.LevelRange =					"56-56";	
	AtlasLVV.i5.LevelRange =					"56-56 (Part 2)";	
	AtlasLVV.i6.LevelRange =					"56-57";	
	AtlasLVV.i7.LevelRange =					"56-57 (Part 2)";	
	AtlasLVV.i8.LevelRange =					"57-59";		
	AtlasLVV.i9.LevelRange =					"57-59 (Part 2)";	
	AtlasLVV.j1.LevelRange =					"59-60";		
	
	AtlasLVX.j2.LevelRange =					"1-5";
	AtlasLVX.j3.LevelRange =					"5-7";	
	AtlasLVX.j4.LevelRange =					"7-10";
	AtlasLVX.j5.LevelRange =					"10-11";
	AtlasLVX.j6.LevelRange =					"10-11 (Part 2)";
	AtlasLVX.j7.LevelRange =					"10-12";
			
	AtlasLVY.j8.LevelRange =					"1-5";	
	AtlasLVY.j9.LevelRange =					"5-7";	
	AtlasLVY.k1.LevelRange =					"7-9";	
	AtlasLVY.k2.LevelRange =					"9-10";	
	AtlasLVY.k3.LevelRange =					"10-11";	
	AtlasLVY.k4.LevelRange =					"10-11 (Part 2)";	
	AtlasLVY.k5.LevelRange =					"11-12";	

	AtlasLVZ.k6.LevelRange =					"1-5";	
	AtlasLVZ.k7.LevelRange =					"5-8";	
	AtlasLVZ.k8.LevelRange =					"8-10";	
	AtlasLVZ.k9.LevelRange =					"10-12";	
	
	AtlasLWA.l1.LevelRange =					"12-13";
	AtlasLWA.l2.LevelRange =					"13-14";
	AtlasLWA.l3.LevelRange =					"14-17";
	AtlasLWA.l4.LevelRange =					"14-17 (Part 2)";	
	AtlasLWA.l5.LevelRange =					"17-18";	
	AtlasLWA.l6.LevelRange =					"17-18 (Part 2)";	
	AtlasLWA.l7.LevelRange =					"18-20";	
	AtlasLWA.l8.LevelRange =					"18-20 (Part 2)";	
	AtlasLWA.l9.LevelRange =					"20-21";	
	AtlasLWA.m1.LevelRange =					"21-22";	
	AtlasLWA.m2.LevelRange =					"21-22 (Part 2)";	
	AtlasLWA.m3.LevelRange =					"22-23";	
	AtlasLWA.m4.LevelRange =					"23-24";	
	AtlasLWA.m5.LevelRange =					"24-25";	
	AtlasLWA.m6.LevelRange =					"25-27";	
	AtlasLWA.m7.LevelRange =					"25-27 (Part 2)";	
	AtlasLWA.m8.LevelRange =					"25-27 (Part 3)";	
	AtlasLWA.m9.LevelRange =					"27-28";	
	AtlasLWA.n1.LevelRange =					"28-29";	
	AtlasLWA.n2.LevelRange =					"28-29 (Part 2)";	
	AtlasLWA.n3.LevelRange =					"28-29 (Part 3)";	
	AtlasLWA.n4.LevelRange =					"29-30";	
	AtlasLWA.n5.LevelRange =					"30-30";	

	AtlasLWB.n6.LevelRange =					"30-31";	
	AtlasLWB.n7.LevelRange =					"31-31";	
	AtlasLWB.n8.LevelRange =					"31-32";	
	AtlasLWB.n9.LevelRange =					"32-32";
	AtlasLWB.o1.LevelRange =					"32-33";
	AtlasLWB.o2.LevelRange =					"33-35";
	AtlasLWB.o3.LevelRange =					"33-35 (Part 2)";
	AtlasLWB.o4.LevelRange =					"33-35 (Part 3)";
	AtlasLWB.o5.LevelRange =					"35-36";
	AtlasLWB.o6.LevelRange =					"35-36 (Part 2)";
	AtlasLWB.o7.LevelRange =					"36-37";
	AtlasLWB.o8.LevelRange =					"37-38";
	AtlasLWB.o9.LevelRange =					"37-38 (Part 2)";
	AtlasLWB.p1.LevelRange =					"38-38";
	AtlasLWB.p2.LevelRange =					"38-38 (Part 2)";
	AtlasLWB.p3.LevelRange =					"38-40";
	AtlasLWB.p4.LevelRange =					"38-40 (Part 2)";
	

	AtlasLWC.p5.LevelRange =					"40-41";
	AtlasLWC.p6.LevelRange =					"40-41 (Part 2)";
	AtlasLWC.p7.LevelRange =					"41-41";
	AtlasLWC.p8.LevelRange =					"41-41 (Part 2)";
	AtlasLWC.p9.LevelRange =					"41-42";	
	AtlasLWC.q1.LevelRange =					"42-43";	
	AtlasLWC.q2.LevelRange =					"42-43 (Part 2)";	
	AtlasLWC.q3.LevelRange =					"43-43";	
	AtlasLWC.q4.LevelRange =					"43-43 (Part 2)";	
	AtlasLWC.q5.LevelRange =					"43-45";	
	AtlasLWC.q6.LevelRange =					"43-45 (Part 2)";	
	AtlasLWC.q7.LevelRange =					"45-46";	
	AtlasLWC.q8.LevelRange =					"46-47";	
	AtlasLWC.q9.LevelRange =					"46-47 (Part 2)";	
	AtlasLWC.r1.LevelRange =					"47-47";	
	AtlasLWC.r2.LevelRange =					"47-47 (Part 2)";	
	AtlasLWC.r3.LevelRange =					"47-48";	
	AtlasLWC.r4.LevelRange =					"47-48 (Part 2)";	
	AtlasLWC.r5.LevelRange =					"48-48";	
	AtlasLWC.r6.LevelRange =					"48-49";	
	AtlasLWC.r7.LevelRange =					"49-49";	
	AtlasLWC.r8.LevelRange =					"49-50";	
	AtlasLWC.r9.LevelRange =					"49-50 (Part 2)";	
	
	
	AtlasLWD.s1.LevelRange =					"50-51";
	AtlasLWD.s2.LevelRange =					"50-51 (Part 2)";
	AtlasLWD.s3.LevelRange =					"50-51 (Part 3)";
	AtlasLWD.s4.LevelRange =					"50-51 (Part 4)";
	AtlasLWD.s5.LevelRange =					"51-52";
	AtlasLWD.s6.LevelRange =					"51-52 (Part 2)";
	AtlasLWD.s7.LevelRange =					"52-52";
	AtlasLWD.s8.LevelRange =					"53-54";
	AtlasLWD.s9.LevelRange =					"53-54 (Part 2)";
	AtlasLWD.t1.LevelRange =					"53-54 (Part 3)";
	AtlasLWD.t2.LevelRange =					"54-54";
	AtlasLWD.t3.LevelRange =					"54-54 (Part 2)";
	AtlasLWD.t4.LevelRange =					"54-54 (Part 3)";
	AtlasLWD.t5.LevelRange =					"54-55";
	AtlasLWD.t6.LevelRange =					"54-55 (Part 2)";
	AtlasLWD.t7.LevelRange =					"55-56";
	AtlasLWD.t8.LevelRange =					"55-56 (Part 2)";
	AtlasLWD.t9.LevelRange =					"56-56";
	AtlasLWD.u1.LevelRange =					"56-56 (Part 2)";
	AtlasLWD.u2.LevelRange =					"56-56 (Part 3)";
	AtlasLWD.u3.LevelRange =					"56-57";
	AtlasLWD.u4.LevelRange =					"56-57 (Part 2)";
	AtlasLWD.u5.LevelRange =					"56-57 (Part 3)";
	AtlasLWD.u6.LevelRange =					"57-58";
	AtlasLWD.u7.LevelRange =					"58-59";
	AtlasLWD.u8.LevelRange =					"58-59 (Part 2)";
	AtlasLWD.u9.LevelRange =					"59-60";
	AtlasLWD.v1.LevelRange =					"59-60 (Part 2)";
	
	

	
end

--These are the REAL player limit values!
--Overrides the values that may be found in the localization files
function Atlas_UpdatePlayerLimits()
	AtlasKalimdor.BlackfathomDeeps.PlayerLimit =	"10";
	AtlasKalimdor.WailingCaverns.PlayerLimit =		"10";
	AtlasKalimdor.DireMaulNorth.PlayerLimit =		"5";
	AtlasKalimdor.DireMaulEast.PlayerLimit =		"5";
	AtlasKalimdor.DireMaulWest.PlayerLimit =		"5";
	AtlasKalimdor.RazorfenDowns.PlayerLimit =		"10";
	AtlasKalimdor.RazorfenKraul.PlayerLimit =		"10";
	AtlasKalimdor.Maraudon.PlayerLimit =			"10";
	AtlasKalimdor.OnyxiasLair.PlayerLimit =			"40";
	AtlasKalimdor.RagefireChasm.PlayerLimit =		"10";
	AtlasKalimdor.ZulFarrak.PlayerLimit =			"10";
	AtlasKalimdor.TheTempleofAhnQiraj.PlayerLimit =	"40";
	AtlasKalimdor.TheRuinsofAhnQiraj.PlayerLimit =	"20";
	
	AtlasEK.BlackrockSpireLower.PlayerLimit =		"10";
	AtlasEK.BlackrockSpireUpper.PlayerLimit =		"10";
	AtlasEK.BlackrockDepths.PlayerLimit =			"5";
	AtlasEK.ShadowfangKeep.PlayerLimit =			"10";
	AtlasEK.ScarletMonastery.PlayerLimit =			"10";
	AtlasEK.MoltenCore.PlayerLimit =				"40";
	AtlasEK.TheSunkenTemple.PlayerLimit =			"10";
	AtlasEK.TheStockade.PlayerLimit =				"10";
	AtlasEK.TheDeadmines.PlayerLimit =				"10";
	AtlasEK.BlackwingLair.PlayerLimit =				"40";
	AtlasEK.Scholomance.PlayerLimit =				"5";
	AtlasEK.Stratholme.PlayerLimit =				"5";
	AtlasEK.Uldaman.PlayerLimit =					"10";
	AtlasEK.ZulGurub.PlayerLimit =					"20";
	AtlasEK.Naxxramas.PlayerLimit =					"40";
	AtlasEK.Gnomeregan.PlayerLimit =				"10";
	
	AtlasBG.AlteracValleyNorth.PlayerLimit =		"40";
	AtlasBG.AlteracValleySouth.PlayerLimit =		"40";
	AtlasBG.ArathiBasin.PlayerLimit =				"15";
	AtlasBG.WarsongGulch.PlayerLimit =				"10";
	
	AtlasFP.FPAllianceEast.PlayerLimit =			"---";
	AtlasFP.FPAllianceWest.PlayerLimit =			"---";
	AtlasFP.FPHordeEast.PlayerLimit =				"---";
	AtlasFP.FPHordeWest.PlayerLimit =				"---";
	
	AtlasDL.DLEast.PlayerLimit =					"---";
	AtlasDL.DLWest.PlayerLimit =					"---";
	
	AtlasRE.Azuregos.PlayerLimit =					"40";
	AtlasRE.FourDragons.PlayerLimit =				"40";
	AtlasRE.Kazzak.PlayerLimit =					"40";
	
	AtlasINTRO.INTRO.PlayerLimit =					"";

	AtlasTLVL.tauren1.PlayerLimit =					"";	
	AtlasTLVL.tauren2.PlayerLimit =					"";		
	AtlasTLVL.tauren3.PlayerLimit =					"";		

	AtlasULVL.undead1.PlayerLimit =					"";		
	AtlasULVL.undead2.PlayerLimit =					"";			
	AtlasULVL.undead3.PlayerLimit =					"";		
	AtlasULVL.undead4.PlayerLimit =					"";		
	AtlasULVL.undead5.PlayerLimit =					"";		

	AtlasLVL.a1.PlayerLimit =					"";
	AtlasLVL.a2.PlayerLimit =					"";
	AtlasLVL.a3.PlayerLimit =					"";
	AtlasLVL.a4.PlayerLimit =					"";
	AtlasLVL.a5.PlayerLimit =					"";
	AtlasLVL.a6.PlayerLimit =					"";
	AtlasLVL.a7.PlayerLimit =					"";
	AtlasLVL.a8.PlayerLimit =					"";
	AtlasLVL.a9.PlayerLimit =					"";
	AtlasLVL.b1.PlayerLimit =					"";
	AtlasLVL.b2.PlayerLimit =					"";
	AtlasLVL.b3.PlayerLimit =					"";
	AtlasLVL.b4.PlayerLimit =					"";
	AtlasLVL.b5.PlayerLimit =					"";
	AtlasLVL.b6.PlayerLimit =					"";
	AtlasLVL.b7.PlayerLimit =					"";
	AtlasLVL.b8.PlayerLimit =					"";
	AtlasLVL.b9.PlayerLimit =					"";
	AtlasLVL.c1.PlayerLimit =					"";
	AtlasLVL.c2.PlayerLimit =					"";
	AtlasLVL.c3.PlayerLimit =					"";
	AtlasLVL.c4.PlayerLimit =					"";
	AtlasLVL.c5.PlayerLimit =					"";

	AtlasLV.c6.PlayerLimit =					"";
	AtlasLV.c7.PlayerLimit =					"";
	AtlasLV.c8.PlayerLimit =					"";
	AtlasLV.c9.PlayerLimit =					"";
	AtlasLV.d1.PlayerLimit =					"";
	AtlasLV.d2.PlayerLimit =					"";
	AtlasLV.d3.PlayerLimit =					"";
	AtlasLV.d4.PlayerLimit =					"";
	AtlasLV.d5.PlayerLimit =					"";
	AtlasLV.d6.PlayerLimit =					"";
	AtlasLV.d7.PlayerLimit =					"";
	AtlasLV.d8.PlayerLimit =					"";
	AtlasLV.d9.PlayerLimit =					"";
	AtlasLV.e1.PlayerLimit =					"";	
	AtlasLV.e2.PlayerLimit =					"";	
	AtlasLV.e3.PlayerLimit =					"";		
	
	AtlasLVE.e4.PlayerLimit =					"";
	AtlasLVE.e5.PlayerLimit =					"";
	AtlasLVE.e6.PlayerLimit =					"";
	AtlasLVE.e7.PlayerLimit =					"";
	AtlasLVE.e8.PlayerLimit =					"";
	AtlasLVE.e9.PlayerLimit =					"";
	AtlasLVE.f1.PlayerLimit =					"";
	AtlasLVE.f2.PlayerLimit =					"";
	AtlasLVE.f3.PlayerLimit =					"";
	AtlasLVE.f4.PlayerLimit =					"";
	AtlasLVE.f5.PlayerLimit =					"";
	AtlasLVE.f6.PlayerLimit =					"";
	AtlasLVE.f7.PlayerLimit =					"";
	AtlasLVE.f8.PlayerLimit =					"";
	AtlasLVE.f9.PlayerLimit =					"";
	AtlasLVE.g1.PlayerLimit =					"";
	AtlasLVE.g2.PlayerLimit =					"";
	AtlasLVE.g3.PlayerLimit =					"";
	AtlasLVE.g4.PlayerLimit =					"";
	AtlasLVE.g5.PlayerLimit =					"";

	AtlasLVV.g6.PlayerLimit =					"";	
	AtlasLVV.g7.PlayerLimit =					"";	
	AtlasLVV.g8.PlayerLimit =					"";	
	AtlasLVV.g9.PlayerLimit =					"";	
	AtlasLVV.h1.PlayerLimit =					"";	
	AtlasLVV.h2.PlayerLimit =					"";	
	AtlasLVV.h3.PlayerLimit =					"";	
	AtlasLVV.h4.PlayerLimit =					"";	
	AtlasLVV.h5.PlayerLimit =					"";	
	AtlasLVV.h6.PlayerLimit =					"";	
	AtlasLVV.h7.PlayerLimit =					"";	
	AtlasLVV.h8.PlayerLimit =					"";	
	AtlasLVV.h9.PlayerLimit =					"";	
	AtlasLVV.i1.PlayerLimit =					"";		
	AtlasLVV.i2.PlayerLimit =					"";		
	AtlasLVV.i3.PlayerLimit =					"";	
	AtlasLVV.i4.PlayerLimit =					"";		
	AtlasLVV.i5.PlayerLimit =					"";		
	AtlasLVV.i6.PlayerLimit =					"";		
	AtlasLVV.i7.PlayerLimit =					"";		
	AtlasLVV.i8.PlayerLimit =					"";		
	AtlasLVV.i9.PlayerLimit =					"";	
	AtlasLVV.j1.PlayerLimit =					"";		


	AtlasLVX.j2.PlayerLimit =					"";		
	AtlasLVX.j3.PlayerLimit =					"";		
	AtlasLVX.j4.PlayerLimit =					"";		
	AtlasLVX.j5.PlayerLimit =					"";		
	AtlasLVX.j6.PlayerLimit =					"";		
	AtlasLVX.j7.PlayerLimit =					"";		
	
	AtlasLVY.j8.PlayerLimit =					"";		
	AtlasLVY.j9.PlayerLimit =					"";		
	AtlasLVY.k1.PlayerLimit =					"";		
	AtlasLVY.k2.PlayerLimit =					"";		
	AtlasLVY.k3.PlayerLimit =					"";		
	AtlasLVY.k4.PlayerLimit =					"";		
	AtlasLVY.k5.PlayerLimit =					"";		
	
	AtlasLVZ.k6.PlayerLimit =					"";		
	AtlasLVZ.k7.PlayerLimit =					"";		
	AtlasLVZ.k8.PlayerLimit =					"";		
	AtlasLVZ.k9.PlayerLimit =					"";		
	
	AtlasLWA.l1.PlayerLimit =					"";	
	AtlasLWA.l2.PlayerLimit =					"";	
	AtlasLWA.l3.PlayerLimit =					"";	
	AtlasLWA.l4.PlayerLimit =					"";	
	AtlasLWA.l5.PlayerLimit =					"";	
	AtlasLWA.l6.PlayerLimit =					"";	
	AtlasLWA.l7.PlayerLimit =					"";	
	AtlasLWA.l8.PlayerLimit =					"";	
	AtlasLWA.l9.PlayerLimit =					"";	
	AtlasLWA.m1.PlayerLimit =					"";	
	AtlasLWA.m2.PlayerLimit =					"";	
	AtlasLWA.m3.PlayerLimit =					"";	
	AtlasLWA.m4.PlayerLimit =					"";	
	AtlasLWA.m5.PlayerLimit =					"";	
	AtlasLWA.m6.PlayerLimit =					"";	
	AtlasLWA.m7.PlayerLimit =					"";	
	AtlasLWA.m8.PlayerLimit =					"";	
	AtlasLWA.m9.PlayerLimit =					"";	
	AtlasLWA.n1.PlayerLimit =					"";	
	AtlasLWA.n2.PlayerLimit =					"";	
	AtlasLWA.n3.PlayerLimit =					"";	
	AtlasLWA.n4.PlayerLimit =					"";	
	AtlasLWA.n5.PlayerLimit =					"";	
	
	AtlasLWB.n6.PlayerLimit =					"";	
	AtlasLWB.n7.PlayerLimit =					"";	
	AtlasLWB.n8.PlayerLimit =					"";	
	AtlasLWB.n9.PlayerLimit =					"";		
	AtlasLWB.o1.PlayerLimit =					"";
	AtlasLWB.o2.PlayerLimit =					"";
	AtlasLWB.o3.PlayerLimit =					"";
	AtlasLWB.o4.PlayerLimit =					"";
	AtlasLWB.o5.PlayerLimit =					"";
	AtlasLWB.o6.PlayerLimit =					"";
	AtlasLWB.o7.PlayerLimit =					"";
	AtlasLWB.o8.PlayerLimit =					"";
	AtlasLWB.o9.PlayerLimit =					"";
	AtlasLWB.p1.PlayerLimit =					"";
	AtlasLWB.p2.PlayerLimit =					"";
	AtlasLWB.p3.PlayerLimit =					"";
	AtlasLWB.p4.PlayerLimit =					"";
		
	AtlasLWC.p5.PlayerLimit =					"";
	AtlasLWC.p6.PlayerLimit =					"";
	AtlasLWC.p7.PlayerLimit =					"";
	AtlasLWC.p8.PlayerLimit =					"";
	AtlasLWC.p9.PlayerLimit =					"";	
	AtlasLWC.q1.PlayerLimit =					"";	
	AtlasLWC.q2.PlayerLimit =					"";	
	AtlasLWC.q3.PlayerLimit =					"";	
	AtlasLWC.q4.PlayerLimit =					"";	
	AtlasLWC.q5.PlayerLimit =					"";	
	AtlasLWC.q6.PlayerLimit =					"";	
	AtlasLWC.q7.PlayerLimit =					"";	
	AtlasLWC.q8.PlayerLimit =					"";	
	AtlasLWC.q9.PlayerLimit =					"";	
	AtlasLWC.r1.PlayerLimit =					"";		
	AtlasLWC.r2.PlayerLimit =					"";		
	AtlasLWC.r3.PlayerLimit =					"";		
	AtlasLWC.r4.PlayerLimit =					"";		
	AtlasLWC.r5.PlayerLimit =					"";		
	AtlasLWC.r6.PlayerLimit =					"";		
	AtlasLWC.r7.PlayerLimit =					"";		
	AtlasLWC.r8.PlayerLimit =					"";		
	AtlasLWC.r9.PlayerLimit =					"";		
	
	AtlasLWD.s1.PlayerLimit =					"";	
	AtlasLWD.s2.PlayerLimit =					"";		
	AtlasLWD.s3.PlayerLimit =					"";	
	AtlasLWD.s4.PlayerLimit =					"";	
	AtlasLWD.s5.PlayerLimit =					"";	
	AtlasLWD.s6.PlayerLimit =					"";	
	AtlasLWD.s7.PlayerLimit =					"";	
	AtlasLWD.s8.PlayerLimit =					"";	
	AtlasLWD.s9.PlayerLimit =					"";	
	AtlasLWD.t1.PlayerLimit =					"";	
	AtlasLWD.t2.PlayerLimit =					"";	
	AtlasLWD.t3.PlayerLimit =					"";	
	AtlasLWD.t4.PlayerLimit =					"";	
	AtlasLWD.t5.PlayerLimit =					"";	
	AtlasLWD.t6.PlayerLimit =					"";	
	AtlasLWD.t7.PlayerLimit =					"";	
	AtlasLWD.t8.PlayerLimit =					"";	
	AtlasLWD.t9.PlayerLimit =					"";	
	AtlasLWD.u1.PlayerLimit =					"";	
	AtlasLWD.u2.PlayerLimit =					"";	
	AtlasLWD.u3.PlayerLimit =					"";	
	AtlasLWD.u4.PlayerLimit =					"";	
	AtlasLWD.u5.PlayerLimit =					"";	
	AtlasLWD.u6.PlayerLimit =					"";	
	AtlasLWD.u7.PlayerLimit =					"";	
	AtlasLWD.u8.PlayerLimit =					"";	
	AtlasLWD.u9.PlayerLimit =					"";	
	AtlasLWD.v1.PlayerLimit =					"";		
	
end

--Main Atlas event handler
function Atlas_OnEvent()

	if (event == "ADDON_LOADED") then
		if (strlower(arg1) == "atlas") then
			Atlas_Vars_Loaded = 1;
			Atlas_Init();
		end
	elseif (event == "VARIABLES_LOADED") then
		if (not Atlas_Vars_Loaded) then
			Atlas_Vars_Loaded = 1;
			Atlas_Init();
		end
	end
	
end

--Initializes everything relating to saved variables and data in other lua files
--This should be called ONLY when we're sure that all other files have been loaded
function Atlas_Init()

	if ( AtlasOptions == nil or AtlasOptions["AtlasVersion"] ~= ATLAS_VERSION) then
		Atlas_FreshOptions();
	end

	--Take all the maps listed in the localization files and import them into the dropdown list structure
    for k,v in pairs(AtlasEK) do table.insert(ATLAS_DROPDOWN_LIST_EK, k); end
    for k,v in pairs(AtlasKalimdor) do table.insert(ATLAS_DROPDOWN_LIST_KA, k); end
    for k,v in pairs(AtlasBG) do table.insert(ATLAS_DROPDOWN_LIST_BG, k); end
    for k,v in pairs(AtlasFP) do table.insert(ATLAS_DROPDOWN_LIST_FP, k); end
    for k,v in pairs(AtlasDL) do table.insert(ATLAS_DROPDOWN_LIST_DL, k); end
    for k,v in pairs(AtlasRE) do table.insert(ATLAS_DROPDOWN_LIST_RE, k); end
    for k,v in pairs(AtlasINTRO) do table.insert(ATLAS_DROPDOWN_LIST_INTRO, k); end		
    for k,v in pairs(AtlasTLVL) do table.insert(ATLAS_DROPDOWN_LIST_TLVL, k); end	
    for k,v in pairs(AtlasULVL) do table.insert(ATLAS_DROPDOWN_LIST_ULVL, k); end		
    for k,v in pairs(AtlasLVL) do table.insert(ATLAS_DROPDOWN_LIST_LVL, k); end
    for k,v in pairs(AtlasLV) do table.insert(ATLAS_DROPDOWN_LIST_LV, k); end
    for k,v in pairs(AtlasLVE) do table.insert(ATLAS_DROPDOWN_LIST_LVE, k); end
	for k,v in pairs(AtlasLVV) do table.insert(ATLAS_DROPDOWN_LIST_LVV, k); end
	for k,v in pairs(AtlasLVX) do table.insert(ATLAS_DROPDOWN_LIST_LVX, k); end
	for k,v in pairs(AtlasLVY) do table.insert(ATLAS_DROPDOWN_LIST_LVY, k); end
	for k,v in pairs(AtlasLVZ) do table.insert(ATLAS_DROPDOWN_LIST_LVZ, k); end
	for k,v in pairs(AtlasLWA) do table.insert(ATLAS_DROPDOWN_LIST_LWA, k); end
	for k,v in pairs(AtlasLWB) do table.insert(ATLAS_DROPDOWN_LIST_LWB, k); end
	for k,v in pairs(AtlasLWC) do table.insert(ATLAS_DROPDOWN_LIST_LWC, k); end
	for k,v in pairs(AtlasLWD) do table.insert(ATLAS_DROPDOWN_LIST_LWD, k); end

	--Update the level ranges and player limits
	--Overrides the values in the localization files because I'm too lazy to change them all
	--It's also nice to have all the these figures come from only one place
	Atlas_UpdateLevelRanges();
	Atlas_UpdatePlayerLimits();
	
	--Sort the lists of maps alphabetically
	table.sort(ATLAS_DROPDOWN_LIST_EK, Atlas_SortZonesAlphaEK);
	table.sort(ATLAS_DROPDOWN_LIST_KA, Atlas_SortZonesAlphaKA);
	table.sort(ATLAS_DROPDOWN_LIST_BG, Atlas_SortZonesAlphaBG);
	table.sort(ATLAS_DROPDOWN_LIST_FP, Atlas_SortZonesAlphaFP);
	table.sort(ATLAS_DROPDOWN_LIST_DL, Atlas_SortZonesAlphaDL);
	table.sort(ATLAS_DROPDOWN_LIST_RE, Atlas_SortZonesAlphaRE);
	table.sort(ATLAS_DROPDOWN_LIST_INTRO, Atlas_SortZonesAlphaINTRO);		
	table.sort(ATLAS_DROPDOWN_LIST_TLVL, Atlas_SortZonesAlphaTLVL);	
	table.sort(ATLAS_DROPDOWN_LIST_ULVL, Atlas_SortZonesAlphaULVL);		
	table.sort(ATLAS_DROPDOWN_LIST_LVL, Atlas_SortZonesAlphaLVL);
	table.sort(ATLAS_DROPDOWN_LIST_LV, Atlas_SortZonesAlphaLV);
	table.sort(ATLAS_DROPDOWN_LIST_LVE, Atlas_SortZonesAlphaLVE);
	table.sort(ATLAS_DROPDOWN_LIST_LVV, Atlas_SortZonesAlphaLVV);	
	table.sort(ATLAS_DROPDOWN_LIST_LVX, Atlas_SortZonesAlphaLVX);	
	table.sort(ATLAS_DROPDOWN_LIST_LVY, Atlas_SortZonesAlphaLVY);	
	table.sort(ATLAS_DROPDOWN_LIST_LVZ, Atlas_SortZonesAlphaLVZ);	
	table.sort(ATLAS_DROPDOWN_LIST_LWA, Atlas_SortZonesAlphaLWA);	
	table.sort(ATLAS_DROPDOWN_LIST_LWB, Atlas_SortZonesAlphaLWB);	
	table.sort(ATLAS_DROPDOWN_LIST_LWC, Atlas_SortZonesAlphaLWC);	
	table.sort(ATLAS_DROPDOWN_LIST_LWD, Atlas_SortZonesAlphaLWD);	
	
	--Now that saved variables have been loaded, update everything accordingly
	Atlas_Refresh();
	AtlasOptions_Init();
	Atlas_UpdateLock();
	AtlasButton_UpdatePosition();
	Atlas_UpdateAlpha();
	AtlasFrame:SetClampedToScreen(AtlasOptions.AtlasClamped);

	--Cosmos integration
	if(EarthFeature_AddButton) then
		EarthFeature_AddButton(
		{
			id = ATLAS_TITLE;
			name = ATLAS_TITLE;
			subtext = ATLAS_SUBTITLE;
			tooltip = ATLAS_DESC;
			icon = "Interface\\AddOns\\Atlas\\Images\\AtlasIcon";
			callback = Atlas_Toggle;
			test = nil;
		}
	);
	elseif(Cosmos_RegisterButton) then
		Cosmos_RegisterButton(
			ATLAS_TITLE,
			ATLAS_SUBTITLE,
			ATLAS_DESC,
			"Interface\\AddOns\\Atlas\\Images\\AtlasIcon",
			Atlas_Toggle
		);
	end
	
	--CTMod integration
	if(CT_RegisterMod) then
		CT_RegisterMod(
			ATLAS_TITLE,
			ATLAS_SUBTITLE,
			5,
			"Interface\\AddOns\\Atlas\\Images\\AtlasIcon",
			ATLAS_DESC,
			"switch",
			"",
			Atlas_Toggle
		);
	end
end

--Simple function to toggle the Atlas frame's lock status and update it's appearance
function Atlas_ToggleLock()
	if(AtlasOptions.AtlasLocked) then
		AtlasOptions.AtlasLocked = false;
		Atlas_UpdateLock();
	else
		AtlasOptions.AtlasLocked = true;
		Atlas_UpdateLock();
	end
end

--Updates the appearance of the lock button based on the status of AtlasLocked
function Atlas_UpdateLock()
	if(AtlasOptions.AtlasLocked) then
		AtlasLockNorm:SetTexture("Interface\\AddOns\\Atlas\\Images\\LockButton-Locked-Up");
		AtlasLockPush:SetTexture("Interface\\AddOns\\Atlas\\Images\\LockButton-Locked-Down");
	else
		AtlasLockNorm:SetTexture("Interface\\AddOns\\Atlas\\Images\\LockButton-Unlocked-Up");
		AtlasLockPush:SetTexture("Interface\\AddOns\\Atlas\\Images\\LockButton-Unlocked-Down");
	end
end

--Begin moving the Atlas frame if it's unlocked
function Atlas_StartMoving()
	if(not AtlasOptions.AtlasLocked) then
		AtlasFrame:StartMoving();
	end
end

--Parses slash commands
--If an unrecognized command is given, toggle Atlas
function Atlas_SlashCommand(msg)
	if(msg == ATLAS_SLASH_OPTIONS) then
		AtlasOptions_Toggle();
	else
		Atlas_Toggle();
	end
end

--Sets the transparency of the Atlas frame based on AtlasAlpha
function Atlas_UpdateAlpha()
	AtlasFrame:SetAlpha(AtlasOptions.AtlasAlpha);
end

--Sets the scale of the Atlas frame based on AtlasScale
function Atlas_UpdateScale()
	AtlasFrame:SetScale(AtlasOptions.AtlasScale);
end

--Simple function to toggle the visibility of the Atlas frame
function Atlas_Toggle()
	if(AtlasFrame:IsVisible()) then
		HideUIPanel(AtlasFrame);
	else
		ShowUIPanel(AtlasFrame);
	end
end

--Refreshes the Atlas frame, usually because a new map needs to be displayed
--The zoneID variable represents the internal name used for each map
--Also responsible for updating all the text when a map is changed
function Atlas_Refresh()
	local zoneID;
	local textSource;
	
	--Just in case AtlasType hasn't been initialized
	--Added in response to a possible error
	if ( AtlasOptions.AtlasType == nil ) then
		AtlasOptions.AtlasType = 1;
	end
	
	if ( AtlasOptions.AtlasType == 1 ) then
		zoneID = ATLAS_DROPDOWN_LIST_EK[AtlasOptions.AtlasZone];
		textSource = AtlasEK;
	elseif ( AtlasOptions.AtlasType == 2 ) then
		zoneID = ATLAS_DROPDOWN_LIST_KA[AtlasOptions.AtlasZone];
		textSource = AtlasKalimdor;
	elseif ( AtlasOptions.AtlasType == 3 ) then
		zoneID = ATLAS_DROPDOWN_LIST_BG[AtlasOptions.AtlasZone];
		textSource = AtlasBG;
	elseif ( AtlasOptions.AtlasType == 4 ) then
		zoneID = ATLAS_DROPDOWN_LIST_FP[AtlasOptions.AtlasZone];
		textSource = AtlasFP;
	elseif ( AtlasOptions.AtlasType == 5 ) then
		zoneID = ATLAS_DROPDOWN_LIST_DL[AtlasOptions.AtlasZone];
		textSource = AtlasDL;
	elseif ( AtlasOptions.AtlasType == 6 ) then
		zoneID = ATLAS_DROPDOWN_LIST_RE[AtlasOptions.AtlasZone];
		textSource = AtlasRE;
	elseif ( AtlasOptions.AtlasType == 7 ) then
		zoneID = ATLAS_DROPDOWN_LIST_INTRO[AtlasOptions.AtlasZone];
		textSource = AtlasINTRO;			
	elseif ( AtlasOptions.AtlasType == 8 ) then
		zoneID = ATLAS_DROPDOWN_LIST_TLVL[AtlasOptions.AtlasZone];
		textSource = AtlasTLVL;		
	elseif ( AtlasOptions.AtlasType == 9 ) then
		zoneID = ATLAS_DROPDOWN_LIST_ULVL[AtlasOptions.AtlasZone];
		textSource = AtlasULVL;				
	elseif ( AtlasOptions.AtlasType == 10 ) then
		zoneID = ATLAS_DROPDOWN_LIST_LVL[AtlasOptions.AtlasZone];
		textSource = AtlasLVL;
	elseif ( AtlasOptions.AtlasType == 11 ) then
		zoneID = ATLAS_DROPDOWN_LIST_LV[AtlasOptions.AtlasZone];
		textSource = AtlasLV;
	elseif ( AtlasOptions.AtlasType == 12 ) then
		zoneID = ATLAS_DROPDOWN_LIST_LVE[AtlasOptions.AtlasZone];
		textSource = AtlasLVE;
	elseif ( AtlasOptions.AtlasType == 13 ) then
		zoneID = ATLAS_DROPDOWN_LIST_LVV[AtlasOptions.AtlasZone];
		textSource = AtlasLVV;
	elseif ( AtlasOptions.AtlasType == 14 ) then
		zoneID = ATLAS_DROPDOWN_LIST_LVX[AtlasOptions.AtlasZone];
		textSource = AtlasLVX;
	elseif ( AtlasOptions.AtlasType == 15 ) then
		zoneID = ATLAS_DROPDOWN_LIST_LVY[AtlasOptions.AtlasZone];
		textSource = AtlasLVY;	
	elseif ( AtlasOptions.AtlasType == 16 ) then
		zoneID = ATLAS_DROPDOWN_LIST_LVZ[AtlasOptions.AtlasZone];
		textSource = AtlasLVZ;
	elseif ( AtlasOptions.AtlasType == 17 ) then
		zoneID = ATLAS_DROPDOWN_LIST_LWA[AtlasOptions.AtlasZone];
		textSource = AtlasLWA;	
	elseif ( AtlasOptions.AtlasType == 18 ) then
		zoneID = ATLAS_DROPDOWN_LIST_LWB[AtlasOptions.AtlasZone];
		textSource = AtlasLWB;	
	elseif ( AtlasOptions.AtlasType == 19 ) then
		zoneID = ATLAS_DROPDOWN_LIST_LWC[AtlasOptions.AtlasZone];
		textSource = AtlasLWC;	
	elseif ( AtlasOptions.AtlasType == 20 ) then
		zoneID = ATLAS_DROPDOWN_LIST_LWD[AtlasOptions.AtlasZone];
		textSource = AtlasLWD;			
		
	end
	AtlasMap:ClearAllPoints();
	AtlasMap:SetWidth(512);
	AtlasMap:SetHeight(512);
	AtlasMap:SetPoint("TOPLEFT", "AtlasFrame", "TOPLEFT", 0, -137);
	AtlasMap:SetTexture("Interface\\AddOns\\Atlas\\Images\\"..zoneID);
	local ZoneNameText = textSource[zoneID]["ZoneName"];
	if ( AtlasOptions.AtlasAcronyms and textSource[zoneID]["Acronym"] ~= nil) then
		local _RED = "|cffcc6666";
		ZoneNameText = ZoneNameText.._RED.." ["..textSource[zoneID]["Acronym"].."]";
	end
	AtlasText_ZoneName:SetText(ZoneNameText);
	AtlasText_Location:SetText(ATLAS_STRING_LOCATION..": "..textSource[zoneID]["Location"]);
	AtlasText_LevelRange:SetText(ATLAS_STRING_LEVELRANGE..": "..textSource[zoneID]["LevelRange"]);
	AtlasText_PlayerLimit:SetText(ATLAS_STRING_PLAYERLIMIT..": "..textSource[zoneID]["PlayerLimit"]);
	for i = 1, 30, 1 do
		getglobal("AtlasText_"..i):SetText(textSource[zoneID][i]);
	end
end

--Function used to initialize the map type dropdown menu
--Cycle through Atlas_MapTypes to populate the dropdown
function AtlasFrameDropDownType_Initialize()
	local info;
	for i = 1, getn(Atlas_MapTypes), 1 do
		info = {
			text = Atlas_MapTypes[i];
			func = AtlasFrameDropDownType_OnClick;
		};
		UIDropDownMenu_AddButton(info);
	end
end

--Called whenever the map type dropdown menu is shown
function AtlasFrameDropDownType_OnShow()
	UIDropDownMenu_Initialize(AtlasFrameDropDownType, AtlasFrameDropDownType_Initialize);
	UIDropDownMenu_SetSelectedID(AtlasFrameDropDownType, AtlasOptions.AtlasType);
	UIDropDownMenu_SetWidth(190, AtlasFrameDropDownType);
end

--Called whenever an item in the map type dropdown menu is clicked
--Sets the main dropdown menu contents to reflect the category of map selected
function AtlasFrameDropDownType_OnClick()
	i = this:GetID();
	UIDropDownMenu_SetSelectedID(AtlasFrameDropDownType, i);
	AtlasOptions.AtlasType = i;
	AtlasOptions.AtlasZone = 1;
	AtlasFrameDropDown_OnShow();
	Atlas_Refresh();
end

--Function used to initialize the main dropdown menu
--Looks at the status of AtlasType to determine how to populate the list
function AtlasFrameDropDown_Initialize()
	if ( AtlasOptions.AtlasType == 1 ) then
		AtlasFrameDropDown_Populate(AtlasEK, ATLAS_DROPDOWN_LIST_EK);
	elseif ( AtlasOptions.AtlasType == 2 ) then
		AtlasFrameDropDown_Populate(AtlasKalimdor, ATLAS_DROPDOWN_LIST_KA);
	elseif ( AtlasOptions.AtlasType == 3 ) then
		AtlasFrameDropDown_Populate(AtlasBG, ATLAS_DROPDOWN_LIST_BG);
	elseif ( AtlasOptions.AtlasType == 4 ) then
		AtlasFrameDropDown_Populate(AtlasFP, ATLAS_DROPDOWN_LIST_FP);
	elseif ( AtlasOptions.AtlasType == 5 ) then
		AtlasFrameDropDown_Populate(AtlasDL, ATLAS_DROPDOWN_LIST_DL);
	elseif ( AtlasOptions.AtlasType == 6 ) then
		AtlasFrameDropDown_Populate(AtlasRE, ATLAS_DROPDOWN_LIST_RE);
	elseif ( AtlasOptions.AtlasType == 7 ) then
		AtlasFrameDropDown_Populate(AtlasINTRO, ATLAS_DROPDOWN_LIST_INTRO);		
	elseif ( AtlasOptions.AtlasType == 8 ) then
		AtlasFrameDropDown_Populate(AtlasTLVL, ATLAS_DROPDOWN_LIST_TLVL);				
	elseif ( AtlasOptions.AtlasType == 9 ) then
		AtlasFrameDropDown_Populate(AtlasULVL, ATLAS_DROPDOWN_LIST_ULVL);				
	elseif ( AtlasOptions.AtlasType == 10 ) then
		AtlasFrameDropDown_Populate(AtlasLVL, ATLAS_DROPDOWN_LIST_LVL);
	elseif ( AtlasOptions.AtlasType == 11 ) then
		AtlasFrameDropDown_Populate(AtlasLV, ATLAS_DROPDOWN_LIST_LV);
	elseif ( AtlasOptions.AtlasType == 12 ) then
		AtlasFrameDropDown_Populate(AtlasLVE, ATLAS_DROPDOWN_LIST_LVE);
	elseif ( AtlasOptions.AtlasType == 13 ) then
		AtlasFrameDropDown_Populate(AtlasLVV, ATLAS_DROPDOWN_LIST_LVV);
	elseif ( AtlasOptions.AtlasType == 14 ) then
		AtlasFrameDropDown_Populate(AtlasLVX, ATLAS_DROPDOWN_LIST_LVX);
	elseif ( AtlasOptions.AtlasType == 15 ) then
		AtlasFrameDropDown_Populate(AtlasLVY, ATLAS_DROPDOWN_LIST_LVY);		
	elseif ( AtlasOptions.AtlasType == 16 ) then
		AtlasFrameDropDown_Populate(AtlasLVZ, ATLAS_DROPDOWN_LIST_LVZ);	
	elseif ( AtlasOptions.AtlasType == 17 ) then
		AtlasFrameDropDown_Populate(AtlasLWA, ATLAS_DROPDOWN_LIST_LWA);	
	elseif ( AtlasOptions.AtlasType == 18 ) then
		AtlasFrameDropDown_Populate(AtlasLWB, ATLAS_DROPDOWN_LIST_LWB);	
	elseif ( AtlasOptions.AtlasType == 19 ) then
		AtlasFrameDropDown_Populate(AtlasLWC, ATLAS_DROPDOWN_LIST_LWC);	
	elseif ( AtlasOptions.AtlasType == 20 ) then
		AtlasFrameDropDown_Populate(AtlasLWD, ATLAS_DROPDOWN_LIST_LWD);			
	end
end

--Populates the main dropdown menu based on the arguments given
--mapType is the name used in the localization files for the category of map
--dropList is the (hopefully) sorted list made from one of those categories
function AtlasFrameDropDown_Populate(mapType, dropList)
	local info;
	for i = 1, getn(dropList), 1 do
		info = {
			text = mapType[dropList[i]]["ZoneName"];
			func = AtlasFrameDropDown_OnClick;
		};
		UIDropDownMenu_AddButton(info);
	end
end

--Called whenever the main dropdown menu is shown
function AtlasFrameDropDown_OnShow()
	UIDropDownMenu_Initialize(AtlasFrameDropDown, AtlasFrameDropDown_Initialize);
	UIDropDownMenu_SetSelectedID(AtlasFrameDropDown, AtlasOptions.AtlasZone);
	UIDropDownMenu_SetWidth(190, AtlasFrameDropDown);
end

--Called whenever an item in the main dropdown menu is clicked
--Sets the newly selected map as current and refreshes the frame
function AtlasFrameDropDown_OnClick()
	i = this:GetID();
	UIDropDownMenu_SetSelectedID(AtlasFrameDropDown, i);
	AtlasOptions.AtlasZone = i;
	Atlas_Refresh();
end

--Modifies the value of GetRealZoneText to account for some naming conventions
--Always use this function instead of GetRealZoneText within Atlas
function Atlas_GetFixedZoneText()
   local currentZone = GetRealZoneText();
   if (AtlasZoneSubstitutions[currentZone]) then
      return AtlasZoneSubstitutions[currentZone];
   end
   return currentZone;
end 

--Checks the player's current location against all Atlas maps
--If a match is found display that map right away
function Atlas_AutoSelect()
	local currentZone = Atlas_GetFixedZoneText();
	
	
	--god, there MUST be a better way to do this. This makes me sick
	-------------------------------
	local currentType = UIDropDownMenu_GetSelectedID(AtlasFrameDropDownType);
	local currentDB, currentDD;
	if currentType == 1 then
		currentDB = AtlasEK;
		currentDD = ATLAS_DROPDOWN_LIST_EK;
	elseif currentType == 2 then
		currentDB = AtlasKalimdor;
		currentDD = ATLAS_DROPDOWN_LIST_KA;
	else
		return;
	end
	local currentMap = currentDB[currentDD[AtlasOptions.AtlasZone]]["ZoneName"];
	----------------------------------
	
	
	if(currentZone ~= currentMap) then
		for i = 1, getn(ATLAS_DROPDOWN_LIST_EK), 1 do
			local mapName = AtlasEK[ATLAS_DROPDOWN_LIST_EK[i]]["ZoneName"];
			if(currentZone == mapName) then
				AtlasOptions.AtlasType = 1;
				AtlasOptions.AtlasZone = i;
				UIDropDownMenu_SetSelectedID(AtlasFrameDropDown, i);
				Atlas_Refresh();
				return;
			end
		end
		for i = 1, getn(ATLAS_DROPDOWN_LIST_KA), 1 do
			local mapName = AtlasKalimdor[ATLAS_DROPDOWN_LIST_KA[i]]["ZoneName"];
			if(currentZone == mapName) then
				AtlasOptions.AtlasType = 2;
				AtlasOptions.AtlasZone = i;
				UIDropDownMenu_SetSelectedID(AtlasFrameDropDown, i);
				Atlas_Refresh();
				return;
			end
		end
	end
end

--Called whenever the Atlas frame is displayed
function Atlas_OnShow()
	if(AtlasOptions.AtlasAutoSelect) then
		Atlas_AutoSelect();
	end
end

--Checks to see if the World Map should be replaced by Atlas or not
--Is the feature turned on? Is the player in an instance?
function Atlas_ReplaceWorldMap()
	if(AtlasOptions.AtlasReplaceWorldMap) then
		local currentZone = Atlas_GetFixedZoneText();
		for i = 1, getn(ATLAS_DROPDOWN_LIST_EK), 1 do
			local mapName = AtlasEK[ATLAS_DROPDOWN_LIST_EK[i]]["ZoneName"];
			if(currentZone == mapName) then
				return true;
			end
		end
		for i = 1, getn(ATLAS_DROPDOWN_LIST_KA), 1 do
			local mapName = AtlasKalimdor[ATLAS_DROPDOWN_LIST_KA[i]]["ZoneName"];
			if(currentZone == mapName) then
				return true;
			end
		end
	end
	return false;
end

--Replaces the default ToggleWorldMap function
local oldToggleWorldMap = ToggleWorldMap;
function ToggleWorldMap()
	if (not WorldMapFrame:IsVisible() and Atlas_ReplaceWorldMap()) then
		Atlas_Toggle();
	else
		SetupFullscreenScale(WorldMapFrame);
		oldToggleWorldMap();
	end
end

--Code provided by tyroney
--Bugfix code by Cold
--Runs when the Atlas frame is clicked on
--RightButton closes Atlas and open the World Map if the RightClick option is turned on
function Atlas_OnClick()
	if ( arg1 == "RightButton" ) then
		if (AtlasOptions.AtlasRightClick) then
			local OldAtlasOptReplWMap = AtlasOptions.AtlasReplaceWorldMap;
			AtlasOptions.AtlasReplaceWorldMap = false;
			Atlas_Toggle();
			ToggleWorldMap();
			AtlasOptions.AtlasReplaceWorldMap = OldAtlasOptReplWMap;
		end
	end
end
