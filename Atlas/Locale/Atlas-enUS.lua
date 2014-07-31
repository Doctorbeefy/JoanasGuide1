--[[

   Joana's Guide Atlas Suite, an instance map browser with a built in leveling guide
   Compiled by Bennylava
   Bennylavaed@gmail.com
   Last Update: 07/30/2014

--]]




AtlasSortIgnore = {"the (.+)"};




ATLAS_TITLE = "Joana's Guide Atlas Suite";
ATLAS_SUBTITLE = "Instance Map Browser and Leveling Guide";
ATLAS_DESC = "Joana's Guide Atlas Suite is an instance map browser and a leveling guide built into one";

ATLAS_OPTIONS_BUTTON = "Options";

BINDING_HEADER_ATLAS_TITLE = "Atlas Bindings";
BINDING_NAME_ATLAS_TOGGLE = "Toggle Atlas";
BINDING_NAME_ATLAS_OPTIONS = "Toggle Options";

ATLAS_SLASH = "/atlas";
ATLAS_SLASH_OPTIONS = "options";

ATLAS_STRING_LOCATION = "Location";
ATLAS_STRING_LEVELRANGE = "Level Range";
ATLAS_STRING_PLAYERLIMIT = "Player Limit";
ATLAS_STRING_SELECT_CAT = "Select Category";
ATLAS_STRING_SELECT_MAP = "Select Map";

ATLAS_BUTTON_TOOLTIP = "Joana's Guide Atlas Suite";
ATLAS_BUTTON_TOOLTIP2 = "Left-click to open Joana's Guide Atlas Suite.";
ATLAS_BUTTON_TOOLTIP3 = "Right-click and drag to move this button.";

ATLAS_OPTIONS_TITLE = "Joana's Guide Atlas Suite Options";
ATLAS_OPTIONS_SHOWBUT = "Show Button on Minimap";
ATLAS_OPTIONS_AUTOSEL = "Auto-Select Instance Map";
ATLAS_OPTIONS_BUTPOS = "Button Position";
ATLAS_OPTIONS_TRANS = "Transparency";
ATLAS_OPTIONS_DONE = "Done";
ATLAS_OPTIONS_REPMAP = "Replace the World Map";
ATLAS_OPTIONS_RCLICK = "Right-Click for World Map";
ATLAS_OPTIONS_SHOWMAPNAME = "Show map name";
ATLAS_OPTIONS_RESETPOS = "Reset Position";
ATLAS_OPTIONS_ACRONYMS = "Display Acronyms";
ATLAS_OPTIONS_SCALE = "Scale";
ATLAS_OPTIONS_BUTRAD = "Button Radius";
ATLAS_OPTIONS_CLAMPED = "Clamp window to screen"

ATLAS_HINT = "Hint: Left-click to open Joana's Guide Atlas Suite..";




ATLAS_HELP = {"About Joana's Guide Atlas Suite.\n===========\n\nJoana's Guide Atlas Suite. is a user interface addon for World of Warcraft that provides a number of additional maps as well as an in-game map browser. Typing the command '/atlas' or clicking the mini-map icon will open the Atlas window. The options panel allows you to disable the icon, toggle the Auto Select feature, toggle the Replace World Map feature, toggle the Right-Click feature, change the icon's position, or adjust the transparency of the main window. If the Auto Select feature is enabled, Atlas will automatically open to the map of the instance you're in. If the Replace World Map feature is enabled, Atlas will open instead of the world map when you're in an instance. If the Right-Click feature is enabled, you can Right-Click on Atlas to open the World Map. You can move Atlas around by left-clicking and dragging. Use the small padlock icon in the upper-right corner to lock the window in place."};




ATLAS_LOCALE = {
	menu = "Atlas",
	tooltip = "Atlas",
	button = "Atlas"
};

AtlasZoneSubstitutions = {
	["The Temple of Atal'Hakkar"]	= "The Sunken Temple";
	["Ahn'Qiraj"]					= "The Temple of Ahn'Qiraj";
	["Ruins of Ahn'Qiraj"]			= "The Ruins of Ahn'Qiraj";
}; 

local BLUE = "|cff6666ff";
local GREY = "|cffFFFFFF";
local GREN = "|cff66cc33";
local _RED = "|cffcc6666";
local ORNG = "|cffcc9933";
local PURP = "|cff9900ff";
local YELO = "|cffFFd200";
local INDENT = "   ";
local _TAB = "				";

--Keeps track of the different categories of maps
Atlas_MapTypes = {
	"Eastern Kingdoms Instances",
	"Kalimdor Instances",
	"Battleground Maps",
	"Flight Path Maps",
	"Dungeon Locations",
	"Raid Encounters",
	"Joana's Guide Intro",
	"Tauren Guide 1-12",	
	"Undead Guide 1-12",		
	"Horde Leveling Guide 1-30",
	"Horde Leveling Guide 30-40",	
	"Horde Leveling Guide 40-50",	
	"Horde Leveling Guide 50-60",	
	"Gnome and Dwarf Guide 1-12",	
	"Human Guide 1-12",	
	"Night Elf Guide 1-12",	
	"Alliance Leveling Guide 12-30",	
	"Alliance Leveling Guide 30-40",	
	"Alliance Leveling Guide 40-50",	
	"Alliance Leveling Guide 50-60",		
};

AtlasKalimdor = {
	RagefireChasm = {
		ZoneName = "Ragefire Chasm";
		Acronym = "RFC";
		Location = "Orgrimmar";
		BLUE.."A) Entrance";
		GREY.."1) Maur Grimtotem";
		GREY.."2) Taragaman the Hungerer";
		GREY.."3) Jergosh the Invoker";
		GREY.."4) Bazzalan";
	};
	WailingCaverns = {
		ZoneName = "Wailing Caverns";
		Acronym = "WC";
		Location = "The Barrens";
		BLUE.."A) Entrance";
		GREY.."1) Disciple of Naralex";
		GREY.."2) Lord Cobrahn";
		GREY.."3) Lady Anacondra";
		GREY.."4) Kresh";
		GREY.."5) Lord Pythas";
		GREY.."6) Skum";
		GREY.."7) Lord Serpentis (Upper)";
		GREY.."8) Verdan the Everliving (Upper)";
		GREY.."9) Mutanus the Devourer";
		GREY..INDENT.."Naralex";
		GREY.."10) Deviate Faerie Dragon (Rare)";
	};
	BlackfathomDeeps = {
		ZoneName = "Blackfathom Deeps";
		Acronym = "BFD";
		Location = "Ashenvale";
		BLUE.."A) Entrance";
		GREY.."1) Ghamoo-ra";
		GREY.."2) Lorgalis Manuscript";
		GREY.."3) Lady Sarevess";
		GREY.."4) Argent Guard Thaelrid";
		GREY.."5) Gelihast";
		GREY.."6) Lorgus Jett (Varies)";
		GREY.."7) Baron Aquanis";
		GREY..INDENT.."Fathom Core";
		GREY.."8) Twilight Lord Kelris";
		GREY.."9) Old Serra'kis";
		GREY.."10) Aku'mai";
	};
	RazorfenKraul = {
		ZoneName = "Razorfen Kraul";
		Acronym = "RFK";
		Location = "The Barrens";
		BLUE.."A) Entrance";
		GREY.."1) Roogug";
		GREY.."2) Aggem Thorncurse";
		GREY.."3) Death Speaker Jargba";
		GREY.."4) Overlord Ramtusk";
		GREY.."5) Agathelos the Raging";
		GREY.."6) Blind Hunter (Rare)";
		GREY.."7) Charlga Razorflank";
		GREY.."8) Willix the Importer";
		GREY..INDENT.."Heralath Fallowbrook";
		GREY.."9) Earthcaller Halmgar (Rare)";
	};
	RazorfenDowns = {
		ZoneName = "Razorfen Downs";
		Acronym = "RFD";
		Location = "The Barrens";
		BLUE.."A) Entrance";
		GREY.."1) Tuten'kash";
		GREY.."2) Henry Stern";
		GREY..INDENT.."Belnistrasz";
		GREY.."3) Mordresh Fire Eye";
		GREY.."4) Glutton";
		GREY.."5) Ragglesnout (Rare)";
		GREY.."6) Amnennar the Coldbringer";
	};
	ZulFarrak = {
		ZoneName = "Zul'Farrak";
		Acronym = "ZF";
		Location = "Tanaris";
		BLUE.."A) Entrance";
		GREY.."1) Antu'sul";
		GREY.."2) Theka the Martyr";
		GREY.."3) Witch Doctor Zum'rah";
		GREY..INDENT.."Zul'Farrak Dead Hero";
		GREY.."4) Nekrum Gutchewer";
		GREY..INDENT.."Shadowpriest Sezz'ziz";
		GREY.."5) Sergeant Bly";
		GREY.."6) Hydromancer Velratha";
		GREY..INDENT.."Gahz'rilla";
		GREY..INDENT.."Dustwraith (Rare)";
		GREY.."7) Chief Ukorz Sandscalp";
		GREY..INDENT.."Ruuzlu";
		GREY.."8) Zerillis (Rare, Wanders)";
		GREY.."9) Sandarr Dunereaver (Rare)";
	};
	Maraudon = {
		ZoneName = "Maraudon";
		Acronym = "Mara";
		Location = "Desolace";
		BLUE.."A) Entrance (Orange)";
		BLUE.."B) Entrance (Purple)";
		BLUE.."C) Entrance (Portal)";
		GREY.."1) Veng (The Fifth Khan)";
		GREY.."2) Noxxion";
		GREY.."3) Razorlash";
		GREY.."4) Maraudos (The Fourth Khan)";
		GREY.."5) Lord Vyletongue";
		GREY.."6) Meshlok the Harvester (Rare)";
		GREY.."7) Celebras the Cursed";
		GREY.."8) Landslide";
		GREY.."9) Tinkerer Gizlock";
		GREY.."10) Rotgrip";
		GREY.."11) Princess Theradras";
	};
	DireMaulEast = {
		ZoneName = "Dire Maul (East)";
		Acronym = "DM";
		Location = "Feralas";
		BLUE.."A) Entrance";
		BLUE.."B) Entrance";
		BLUE.."C) Entrance";
		BLUE.."D) Exit";
		GREY.."1) Pusillin Chase Begins";
		GREY.."2) Pusillin Chase Ends";
		GREY.."3) Zevrim Thornhoof";
		GREY..INDENT.."Hydrospawn";
		GREY..INDENT.."Lethtendris";
		GREY.."4) Old Ironbark";
		GREY.."5) Alzzin the Wildshaper";
		GREY..INDENT.."Isalien";
	};
	DireMaulNorth = {
		ZoneName = "Dire Maul (North)";
		Acronym = "DM";
		Location = "Feralas";
		BLUE.."A) Entrance";
		GREY.."1) Guard Mol'dar";
		GREY.."2) Stomper Kreeg";
		GREY.."3) Guard Fengus";
		GREY.."4) Knot Thimblejack";
		GREY..INDENT.."Guard Slip'kik";
		GREY.."5) Captain Kromcrush";
		GREY.."6) King Gordok";
		GREY.."7) Dire Maul (West)";
		GREN.."1') Library";
	};
	DireMaulWest = {
		ZoneName = "Dire Maul (West)";
		Acronym = "DM";
		Location = "Feralas";
		BLUE.."A) Entrance";
		BLUE.."B) Pylons";
		GREY.."1) Shen'dralar Ancient";
		GREY.."2) Tendris Warpwood";
		GREY.."3) Illyanna Ravenoak";
		GREY.."4) Magister Kalendris";
		GREY.."5) Tsu'Zee (Rare)";
		GREY.."6) Immol'thar";
		GREY..INDENT.."Lord Hel'nurath";
		GREY.."7) Prince Tortheldrin";
		GREY.."8) Dire Maul (North)";
		GREN.."1') Library";
	};
	OnyxiasLair = {
		ZoneName = "Onyxia's Lair";
		Acronym = "Ony";
		Location = "Dustwallow Marsh";
		BLUE.."A) Entrance";
		GREY.."1) Onyxian Warders";
		GREY.."2) Whelp Eggs";
		GREY.."3) Onyxia";
		"";
		"";
		"";
		"";
		"";
		"";
		"";
		"";
		"";
		"";
		"";
		"";
		"";
		"";
		"";
		"";
		"";
		"";
		"";
		"";
		"";
		"";
		ORNG.."Damage: Fire";
	};
	TheTempleofAhnQiraj = {
		ZoneName = "The Temple of Ahn'Qiraj";
		Acronym = "AQ40";
		Location = "Silithus";
		BLUE.."A) Entrance";
		GREY.."1) The Prophet Skeram (Outside)";
		GREY.."2) Vem & Co (Optional)";
		GREY.."3) Battleguard Sartura";
		GREY.."4) Fankriss the Unyielding";
		GREY.."5) Viscidus (Optional)";
		GREY.."6) Princess Huhuran";
		GREY.."7) Twin Emperors";
		GREY.."8) Ouro (Optional)";
		GREY.."9) Eye of C'Thun / C'Thun";
		GREN.."1') Andorgos";
		GREN..INDENT.."Vethsera";
		GREN..INDENT.."Kandrostrasz";
		GREN.."2') Arygos";
		GREN..INDENT.."Caelestrasz";
		GREN..INDENT.."Merithra of the Dream";
		"";
		"";
		"";
		"";
		"";
		"";
		"";
		"";
		"";
		"";
		ORNG.."Damage: Nature";
	};
	TheRuinsofAhnQiraj = {
		ZoneName = "The Ruins of Ahn'Qiraj";
		Acronym = "AQ20";
		Location = "Silithus";
		BLUE.."A) Entrance";
		GREY.."1) Kurinnaxx";
		GREY..INDENT.."Lieutenant General Andorov";
		GREY..INDENT.."Four Kaldorei Elites";
		GREY.."2) General Rajaxx";
		GREY..INDENT.."Captain Qeez";
		GREY..INDENT.."Captain Tuubid";
		GREY..INDENT.."Captain Drenn";
		GREY..INDENT.."Captain Xurrem";
		GREY..INDENT.."Major Yeggeth";
		GREY..INDENT.."Major Pakkon";
		GREY..INDENT.."Colonel Zerran";
		GREY.."3) Moam (Optional)";
		GREY.."4) Buru the Gorger (Optional)";
		GREY.."5) Ayamiss the Hunter (Optional)";
		GREY.."6) Ossirian the Unscarred";
		GREN.."1') Safe Room";
		"";
		"";
		"";
		"";
		"";
		"";
		"";
		"";
		"";
		ORNG.."Damage: Nature";
	};
};

AtlasEK = {
	BlackrockDepths = {
		ZoneName = "Blackrock Depths";
		Acronym = "BRD";
		Location = "Blackrock Mountain";
		BLUE.."A) Entrance";
		GREY.."1) Lord Roccor";
		GREY.."2) Kharan Mighthammer";
		GREY.."3) Commander Gor'shak";
		GREY.."4) Marshal Windsor";
		GREY.."5) High Interrogator Gerstahn";
		GREY.."6) Ring of Law, Theldren";
		GREY.."7) Mon. of Franclorn Forgewright";
		GREY..INDENT.."Pyromancer Loregrain";
		GREY.."8) The Vault";
		GREY.."9) Fineous Darkvire";
		GREY.."10) The Black Anvil";
		GREY..INDENT.."Lord Incendius";
		GREY.."11) Bael'Gar";
		GREY.."12) Shadowforge Lock";
		GREY.."13) General Angerforge";
		GREY.."14) Golem Lord Argelmach";
		GREY.."15) The Grim Guzzler";
		GREY.."16) Ambassador Flamelash";
		GREY.."17) Panzor the Invincible (Rare)";
		GREY.."18) Summoner's Tomb";
		GREY.."19) The Lyceum";
		GREY.."20) Magmus";
		GREY.."21) Emperor Dagran Thaurissan";
		GREY..INDENT.."Princess Moira Bronzebeard";
		GREY.."22) The Black Forge";
		GREY.."23) Molten Core";
	};
	BlackrockSpireLower = {
		ZoneName = "Blackrock Spire (Lower)";
		Acronym = "LBRS";
		Location = "Blackrock Mountain";
		BLUE.."A) Entrance";
		GREY.."1) Warosh";
		GREY.."2) Roughshod Pike";
		GREY.."3) Highlord Omokk";
		GREY..INDENT.."Spirestone Battle Lord (Rare)";
		GREY.."4) Shadow Hunter Vosh'gajin";
		GREY..INDENT.."Fifth Mosh'aru Tablet";
		GREY.."5) War Master Voone";
		GREY..INDENT.."Sixth Mosh'aru Tablet";
		GREY..INDENT.."Mor Grayhoof";
		GREY.."6) Mother Smolderweb";
		GREY.."7) Crystal Fang (Rare)";
		GREY.."8) Urok Doomhowl";
		GREY.."9) Quartermaster Zigris";
		GREY.."10) Gizrul the Slavener";
		GREY..INDENT.."Halycon";
		GREY.."11) Overlord Wyrmthalak";
		GREY.."12) Bannok Grimaxe (Rare)";
		GREY.."13) Spirestone Butcher (Rare)";
	};
	BlackrockSpireUpper = {
		ZoneName = "Blackrock Spire (Upper)";
		Acronym = "UBRS";
		Location = "Blackrock Mountain";
		BLUE.."A) Entrance";
		GREY.."1) Pyroguard Emberseer";
		GREY.."2) Solakar Flamewreath";
		GREY..INDENT.."Father Flame";
		GREY.."3) Jed Runewatcher (Rare)";
		GREY.."4) Goraluk Anvilcrack";
		GREY.."5) Warchief Rend Blackhand";
		GREY..INDENT.."Gyth";
		GREY.."6) Awbee";
		GREY.."7) The Beast";
		GREY..INDENT.."Lord Valthalak";
		GREY.."8) General Drakkisath";
		GREY..INDENT.."Doomrigger's Clasp";
		GREY.."9) Blackwing Lair";
	};
	BlackwingLair = {
		ZoneName = "Blackwing Lair";
		Acronym = "BWL";
		Location = "Blackrock Spire";
		BLUE.."A) Entrance";
		BLUE.."B) Connects";
		BLUE.."C) Connects";
		GREY.."1) Razorgore the Untamed";
		GREY.."2) Vaelastrasz the Corrupt";
		GREY.."3) Broodlord Lashlayer";
		GREY.."4) Firemaw";
		GREY.."5) Ebonroc";
		GREY.."6) Flamegor";
		GREY.."7) Chromaggus";
		GREY.."8) Nefarian";
		GREY.."9) Master Elemental Shaper Krixix";
		"";
		"";
		"";
		"";
		"";
		"";
		"";
		"";
		"";
		"";
		"";
		"";
		"";
		"";
		ORNG.."Damage: Fire";
	};
	Gnomeregan = {
		ZoneName = "Gnomeregan";
		Location = "Dun Morogh";
		BLUE.."A) Entrance (Front)";
		BLUE.."B) Entrance (Back)";
		GREY.."1) Viscous Fallout (Lower)";
		GREY.."2) Grubbis";
		GREY.."3) Matrix Punchograph 3005-B";
		GREY.."4) Clean Zone";
		GREY.."5) Electrocutioner 6000";
		GREY..INDENT.."Matrix Punchograph 3005-C";
		GREY.."6) Mekgineer Thermaplugg";
		GREY.."7) Dark Iron Ambassador (Rare)";
		GREY.."8) Crowd Pummeler 9-60";
		GREY..INDENT.."Matrix Punchograph 3005-D";
	};
	MoltenCore = {
		ZoneName = "Molten Core";
		Acronym = "MC";
		Location = "Blackrock Depths";
		BLUE.."A) Entrance";
		GREY.."1) Lucifron";
		GREY.."2) Magmadar";
		GREY.."3) Gehennas";
		GREY.."4) Garr";
		GREY.."5) Shazzrah";
		GREY.."6) Baron Geddon";
		GREY.."7) Golemagg the Incinerator";
		GREY.."8) Sulfuron Harbinger";
		GREY.."9) Majordomo Executus";
		GREY.."10) Ragnaros";
		"";
		"";
		"";
		"";
		"";
		"";
		"";
		"";
		"";
		"";
		"";
		"";
		"";
		"";
		"";
		ORNG.."Damage: Fire";
	};
	ScarletMonastery = {
		ZoneName = "Scarlet Monastery";
		Acronym = "SM";
		Location = "Tirisfal Glades";
		BLUE.."A) Entrance (Library)";
		BLUE.."B) Entrance (Armory)";
		BLUE.."C) Entrance (Cathedral)";
		BLUE.."D) Entrance (Graveyard)";
		GREY.."1) Houndmaster Loksey";
		GREY.."2) Arcanist Doan";
		GREY.."3) Herod";
		GREY.."4) High Inquisitor Fairbanks";
		GREY.."5) Scarlet Commander Mograine";
		GREY..INDENT.."High Inquisitor Whitemane";
		GREY.."6) Ironspine (Rare)";
		GREY.."7) Azshir the Sleepless (Rare)";
		GREY.."8) Fallen Champion (Rare)";
		GREY.."9) Bloodmage Thalnos";
	};
	Scholomance = {
		ZoneName = "Scholomance";
		Acronym = "Scholo";
		Location = "Western Plaguelands";
		BLUE.."A) Entrance";
		BLUE.."B) Stairway";
		BLUE.."C) Stairway";
		GREY.."1) Blood Steward of Kirtonos";
		GREY..INDENT.."Deed to Southshore";
		GREY.."2) Kirtonos the Herald";
		GREY.."3) Jandice Barov";
		GREY.."4) Deed to Tarren Mill";
		GREY.."5) Rattlegore (Lower)";
		GREY..INDENT.."Death Knight Darkreaver";
		GREY.."6) Marduk Blackpool";
		GREY..INDENT.."Vectus";
		GREY.."7) Ras Frostwhisper";
		GREY..INDENT.."Deed to Brill";
		GREY..INDENT.."Kormok";
		GREY.."8) Instructor Malicia";
		GREY.."9) Doctor Theolen Krastinov";
		GREY.."10) Lorekeeper Polkelt";
		GREY.."11) The Ravenian";
		GREY.."12) Lord Alexei Barov";
		GREY..INDENT.."Deed to Caer Darrow";
		GREY.."13) Lady Illucia Barov";
		GREY.."14) Darkmaster Gandling";
		GREN.."1') Torch Lever";
		GREN.."2') Secret Chest";
		GREN.."3') Alchemy Lab";
	};
	ShadowfangKeep = {
		ZoneName = "Shadowfang Keep";
		Acronym = "SFK";
		Location = "Silverpine Forest";
		BLUE.."A) Entrance";
		BLUE.."B) Walkway";
		BLUE.."C) Walkway";
		BLUE..INDENT.."Deathsworn Captain (Rare)";
		GREY.."1) Deathstalker Adamant";
		GREY..INDENT.."Sorcerer Ashcrombe";
		GREY..INDENT.."Rethilgore";
		GREY.."2) Razorclaw the Butcher";
		GREY.."3) Baron Silverlaine";
		GREY.."4) Commander Springvale";
		GREY.."5) Odo the Blindwatcher";
		GREY.."6) Fenrus the Devourer";
		GREY.."7) Wolf Master Nandos";
		GREY.."8) Archmage Arugal";
	};
	Stratholme = {
		ZoneName = "Stratholme";
		Acronym = "Strat";
		Location = "Eastern Plaguelands";
		BLUE.."A) Entrance (Front)";
		BLUE.."B) Entrance (Side)";
		GREY.."1) Skul (Rare)";
		GREY..INDENT.."Stratholme Courier";
		GREY..INDENT.."Fras Siabi";
		GREY.."2) Hearthsinger Forresten (Varies)";
		GREY.."3) The Unforgiven";
		GREY.."4) Timmy the Cruel";
		GREY.."5) Cannon Master Willey";
		GREY.."6) Archivist Galford";
		GREY.."7) Balnazzar";
		GREY..INDENT.."Sothos";
		GREY..INDENT.."Jarien";
		GREY.."8) Aurius";
		GREY.."9) Stonespine (Rare)";
		GREY.."10) Baroness Anastari";
		GREY.."11) Nerub'enkan";
		GREY.."12) Maleki the Pallid";
		GREY.."13) Magistrate Barthilas (Varies)";
		GREY.."14) Ramstein the Gorger";
		GREY.."15) Baron Rivendare";
		GREN.."1') Crusaders' Square Postbox";
		GREN.."2') Market Row Postbox";
		GREN.."3') Festival Lane Postbox";
		GREN.."4') Elders' Square Postbox";
		GREN.."5') King's Square Postbox";
		GREN.."6') Fras Siabi's Postbox";
	};
	TheDeadmines = {
		ZoneName = "The Deadmines";
		Acronym = "VC";
		Location = "Westfall";
		BLUE.."A) Entrance";
		BLUE.."B) Exit";
		GREY.."1) Rhahk'Zor";
		GREY.."2) Miner Johnson (Rare)";
		GREY.."3) Sneed";
		GREY.."4) Gilnid";
		GREY.."5) Defias Gunpowder";
		GREY.."6) Captain Greenskin";
		GREY..INDENT.."Edwin VanCleef";
		GREY..INDENT.."Mr. Smite";
		GREY..INDENT.."Cookie";
	};
	TheStockade = {
		ZoneName = "The Stockade";
		Location = "Stormwind City";
		BLUE.."A) Entrance";
		GREY.."1) Targorr the Dread (Varies)";
		GREY.."2) Kam Deepfury";
		GREY.."3) Hamhock";
		GREY.."4) Bazil Thredd";
		GREY.."5) Dextren Ward";
		GREY.."6) Bruegal Ironknuckle (Rare)";
	};
	TheSunkenTemple = {
		ZoneName = "The Sunken Temple";
		Acronym = "ST";
		Location = "Swamp of Sorrows";
		BLUE.."A) Entrance";
		BLUE.."B) Stairway";
		BLUE.."C) Troll Minibosses (Upper)";
		GREY.."1) Altar of Hakkar";
		GREY..INDENT.."Atal'alarion";
		GREY.."2) Dreamscythe";
		GREY..INDENT.."Weaver";
		GREY.."3) Avatar of Hakkar";
		GREY.."4) Jammal'an the Prophet";
		GREY..INDENT.."Ogom the Wretched";
		GREY.."5) Morphaz";
		GREY..INDENT.."Hazzas";
		GREY.."6) Shade of Eranikus";
		GREY..INDENT.."Essence Font";
		GREN.."1'-6') Statue Activation Order";
	};
	Uldaman = {
		ZoneName = "Uldaman";
		Acronym = "Ulda";
		Location = "Badlands";
		BLUE.."A) Entrance (Front)";
		BLUE.."B) Entrance (Back)";
		GREY.."1) Baelog";
		GREY.."2) Remains of a Paladin";
		GREY.."3) Revelosh";
		GREY.."4) Ironaya";
		GREY.."5) Obsidian Sentinel";
		GREY.."6) Annora (Master Enchanter)";
		GREY.."7) Ancient Stone Keeper";
		GREY.."8) Galgann Firehammer";
		GREY.."9) Grimlok";
		GREY.."10) Archaedas (Lower)";
		GREY.."11) The Discs of Norgannon";
		GREY..INDENT.."Ancient Treasure (Lower)";
	};
	ZulGurub = {
		ZoneName = "Zul'Gurub";
		Acronym = "ZG";
		Location = "Stranglethorn Vale";
		BLUE.."A) Entrance";
		GREY.."1) High Priestess Jeklik (Bat)";
		GREY.."2) High Priest Venoxis (Snake)";
		GREY.."3) High Priestess Mar'li (Spider)";
		GREY.."4) Bloodlord Mandokir (Raptor, Optional)";
		GREY.."5) Edge of Madness (Optional)";
		GREY..INDENT.."Gri'lek, of the Iron Blood";
		GREY..INDENT.."Hazza'rah, the Dreamweaver";
		GREY..INDENT.."Renataki, of the Thousand Blades";
		GREY..INDENT.."Wushoolay, the Storm Witch";
		GREY.."6) Gahz'ranka (Optional)";
		GREY.."7) High Priest Thekal (Tiger)";
		GREY.."8) High Priestess Arlokk (Panther)";
		GREY.."9) Jin'do the Hexxer (Undead, Optional)";
		GREY.."10) Hakkar";
		GREN.."1') Muddy Churning Waters";
		"";
		"";
		"";
		"";
		"";
		"";
		"";
		"";
		"";
		"";
		ORNG.."Damage: Nature";
	};
	Naxxramas = {
		ZoneName = "Naxxramas";
		Acronym = "Nax";
		Location = "Stratholme";
		BLUE.."Abomination Wing";
		BLUE..INDENT.."1) Patchwerk";
		BLUE..INDENT.."2) Grobbulus";
		BLUE..INDENT.."3) Gluth";
		BLUE..INDENT.."4) Thaddius";
		ORNG.."Spider Wing";
		ORNG..INDENT.."1) Anub'Rekhan";
		ORNG..INDENT.."2) Grand Widow Faerlina";
		ORNG..INDENT.."3) Maexxna";
		_RED.."Deathknight Wing";
		_RED..INDENT.."1) Instructor Razuvious";
		_RED..INDENT.."2) Gothik the Harvester";
		_RED..INDENT.."3) The Four Horsemen";
		_RED..INDENT..INDENT.."Thane Korth'azz";
		_RED..INDENT..INDENT.."Lady Blaumeux";
		_RED..INDENT..INDENT.."Highlord Mograine";
		_RED..INDENT..INDENT.."Sir Zeliek";
		PURP.."Necro Wing";
		PURP..INDENT.."1) Noth the Plaguebringer";
		PURP..INDENT.."2) Heigan the Unclean";
		PURP..INDENT.."3) Loatheb";
		GREN.."Frostwyrm Lair";
		GREN..INDENT.."1) Sapphiron";
		GREN..INDENT.."2) Kel'Thuzad";
		"";
		"";
		ORNG.."Damage: Frost";
	};
};

AtlasBG = {
	AlteracValleyNorth = {
		ZoneName = "Alterac Valley (North)";
		Location = "Alterac Mountains";
		BLUE.."A) Entrance";
		BLUE.."B) Dun Baldar (Alliance)";
		_RED.."1) Stormpike Aid Station";
		_RED.."2) Stormpike Graveyard";
		_RED.."3) Stonehearth Graveyard";
		_RED.."4) Snowfall Graveyard";
		ORNG.."5) Dun Baldar North Bunker";
		GREY..INDENT.."Wing Commander Mulverick (Horde)";
		ORNG.."6) Dun Baldar South Bunker";
		ORNG.."7) Icewing Bunker";
		GREY..INDENT.."Wing Commander Guse (Horde)";
		GREY..INDENT.."Commander Karl Philips (Alliance)";
		ORNG.."8) Stonehearth Outpost (Balinda)";
		ORNG.."9) Stonehearth Bunker";
		GREY.."10) Irondeep Mine";
		GREY.."11) Icewing Cavern";
		GREY.."12) Steamsaw (Horde)";
		GREY.."13) Wing Commander Jeztor (Horde)";
		GREY.."14) Ivus the Forest Lord (Summon Zone)";
		"";
		"";
		"";
		"";
		"";
		_RED.."Red:"..BLUE.." Graveyards, Capturable Areas";
		ORNG.."Orange:"..BLUE.." Bunkers, Towers, Destroyable Areas";
		GREY.."White:"..BLUE.." Assault NPCs, Quest Areas";
	};
	AlteracValleySouth = {
		ZoneName = "Alterac Valley (South)";
		Location = "Hillsbrad Foothills";
		BLUE.."A) Entrance";
		BLUE.."B) Frostwolf Keep (Horde)";
		_RED.."1) Frostwolf Releif Hut";
		_RED.."2) Frostwolf Graveyard";
		_RED.."3) Iceblood Graveyard";
		ORNG.."4) West Frostwolf Tower";
		ORNG.."5) East Frostwolf Tower";
		GREY..INDENT.."Wing Commander Ichman (Alliance)";
		ORNG.."6) Tower Point";
		GREY..INDENT.."Wing Commander Slidore (Alliance)";
		GREY..INDENT.."Commander Louis Philips (Horde)";
		ORNG.."7) Iceblood Tower";
		ORNG.."8) Iceblood Garrison (Galvangar)";
		GREY.."9) Wildpaw Cavern";
		GREY.."10) Wolf Rider Commander";
		GREY.."11) Wing Commander Vipore (Alliance)";
		GREY.."12) Coldtooth Mine";
		GREY.."13) Steamsaw (Alliance)";
		GREY.."14) Lokholar the Ice Lord (Summon Zone)";
		"";
		"";
		"";
		"";
		"";
		_RED.."Red:"..BLUE.." Graveyards, Capturable Areas";
		ORNG.."Orange:"..BLUE.." Bunkers, Towers, Destroyable Areas";
		GREY.."White:"..BLUE.." Assault NPCs, Quest Areas";
	};
	ArathiBasin = {
		ZoneName = "Arathi Basin";
		Location = "Arathi Highlands";
		BLUE.."A) Trollbane Hall (Alliance)";
		BLUE.."B) Defiler's Den (Horde)";
		GREY.."1) Stables";
		GREY.."2) Gold Mine";
		GREY.."3) Smithy";
		GREY.."4) Lumber Mill";
		GREY.."5) Farm";
	};
	WarsongGulch = {
		ZoneName = "Warsong Gulch";
		Location = "Ashenvale / The Barrens";
		BLUE.."A) Silverwing Hold (Alliance)";
		BLUE.."B) Warsong Lumber Mill (Horde)";
	};
};

AtlasFP = {
	FPAllianceEast = {
		ZoneName = "Alliance (East)";
		Location = "Eastern Kingdoms";
		GREY.."1) Light's Hope Chapel, ".._RED.."Eastern Plaguelands";
		GREY.."2) Chillwind Post, ".._RED.."Western Plaguelands";
		GREY.."3) Aerie Peak, ".._RED.."The Hinterlands";
		GREY.."4) Southshore, ".._RED.."Hillsbrad Foothills";
		GREY.."5) Refuge Point, ".._RED.."Arathi Highlands";
		GREY.."6) Menethil Harbor, ".._RED.."Wetlands";
		GREY.."7) Ironforge, ".._RED.."Dun Morogh";
		GREY.."8) Thelsamar, ".._RED.."Loch Modan";
		GREY.."9) Thorium Point, ".._RED.."Searing Gorge";
		GREY.."10) Morgan's Vigil, ".._RED.."Burning Steppes";
		GREY.."11) Stormwind, ".._RED.."Elwyn Forest";
		GREY.."12) Lakeshire, ".._RED.."Redridge Mountains";
		GREY.."13) Sentinel Hill, ".._RED.."Westfall";
		GREY.."14) Darkshire, ".._RED.."Duskwood";
		GREY.."15) Netherguard Keep, ".._RED.."The Blasted Lands";
		GREY.."16) Booty Bay, ".._RED.."Stranglethorn Vale";
	};
	FPAllianceWest = {
		ZoneName = "Alliance (West)";
		Location = "Kalimdor";
		GREY.."1) Rut'Theran Village, ".._RED.."Teldrassil";
		GREY.."2) Shrine of Remulos, ".._RED.."Moonglade";
		GREY.."3) Everlook, ".._RED.."Winterspring";
		GREY.."4) Auberdine, ".._RED.."Darkshore";
		GREY.."5) Talonbranch Glade, ".._RED.."Felwood";
		GREY.."6) Stonetalon Peak, ".._RED.."Stonetalon Mountains";
		GREY.."7) Astranaar, ".._RED.."Ashenvale Forest";
		GREY.."8) Talrendis Point, ".._RED.."Azshara";
		GREY.."9) Nijel's Point, ".._RED.."Desolace";
		GREY.."10) Ratchet, ".._RED.."The Barrens";
		GREY.."11) Theramore Isle, ".._RED.."Dustwallow Marsh";
		GREY.."12) Feathermoon Stronghold, ".._RED.."Ferelas";
		GREY.."13) Thalanaar, ".._RED.."Ferelas";
		GREY.."14) Marshall's Refuge, ".._RED.."Un'Goro Crater";
		GREY.."15) Cenarion Hold, ".._RED.."Silithus";
		GREY.."16) Gadgetzan, ".._RED.."Tanaris Desert";
		"";
		GREN.."Green: Druid-only";
	};
	FPHordeEast = {
		ZoneName = "Horde (East)";
		Location = "Eastern Kingdoms";
		GREY.."1) Light's Hope Chapel, ".._RED.."Eastern Plaguelands";
		GREY.."2) Undercity, ".._RED.."Tirisfal Glade";
		GREY.."3) The Sepulcher, ".._RED.."Silverpine Forest";
		GREY.."4) Tarren Mill, ".._RED.."Hillsbrad Foothills";
		GREY.."5) Revantusk Village, ".._RED.."The Hinterlands";
		GREY.."6) Hammerfall, ".._RED.."Arathi Highlands";
		GREY.."7) Thorium Point, ".._RED.."Searing Gorge";
		GREY.."8) Kargath, ".._RED.."Badlands";
		GREY.."9) Flame Crest, ".._RED.."Burning Steppes";
		GREY.."10) Stonard, ".._RED.."Swamp of Sorrows";
		GREY.."11) Grom'Gol, ".._RED.."Stranglethorn Vale";
		GREY.."12) Booty Bay, ".._RED.."Stranglethorn Vale";
	};
	FPHordeWest = {
		ZoneName = "Horde (West)";
		Location = "Kalimdor";
		GREY.."1) Shrine of Remulos, ".._RED.."Moonglade";
		GREY.."2) Everlook, ".._RED.."Winterspring";
		GREY.."3) Bloodvenom Post, ".._RED.."Felwood";
		GREY.."4) Zoram'gar Outpost, ".._RED.."Ashenvale";
		GREY.."5) Valormok, ".._RED.."Azshara";
		GREY.."6) Splintertree Post, ".._RED.."Ashenvale";
		GREY.."7) Orgrimmar, ".._RED.."Durotar";
		GREY.."8) Sunrock Retreat, ".._RED.."Stonetalon Mountains";
		GREY.."9) Crossroads, ".._RED.."The Barrens";
		GREY.."10) Ratchet, ".._RED.."The Barrens";
		GREY.."11) Shadowprey Village, ".._RED.."Desolace";
		GREY.."12) Thunder Bluff, ".._RED.."Mulgore";
		GREY.."13) Camp Taurajo, ".._RED.."The Barrens";
		GREY.."14) Brackenwall Village, ".._RED.."Dustwallow Marsh";
		GREY.."15) Camp Mojache, ".._RED.."Ferelas";
		GREY.."16) Freewind Post, ".._RED.."Thousand Needles";
		GREY.."17) Marshall's Refuge, ".._RED.."Un'Goro Crater";
		GREY.."18) Cenarion Hold, ".._RED.."Silithus";
		GREY.."19) Gadgetzan, ".._RED.."Tanaris Desert";
		"";
		GREN.."Green: Druid-only";
	};
};

AtlasDL = {
	DLEast = {
		ZoneName = "Dungeon Locations (East)";
		Location = "Eastern Kingdoms";
		BLUE.."A) Alterac Valley, ".._RED.."Alterac / Hillsbrad";
		BLUE.."B) Arathi Basin, ".._RED.."Arathi Highlands";
		GREY.."1) Scarlet Monastery, ".._RED.."Tirisfal Glade";
		GREY.."2) Stratholme, ".._RED.."Eastern Plaguelands";
		GREY..INDENT.."Naxxramas, ".._RED.."Stratholme";
		GREY.."3) Scholomance, ".._RED.."Western Plaguelands";
		GREY.."4) Shadowfang Keep, ".._RED.."Silverpine Forest";
		GREY.."5) Gnomeregan, ".._RED.."Dun Morogh";
		GREY.."6) Uldaman, ".._RED.."Badlands";
		GREY.."7) Blackwing Lair, ".._RED.."Blackrock Spire";
		GREY..INDENT.."Blackrock Depths, ".._RED.."Blackrock Mountain";
		GREY..INDENT.."Blackrock Spire, ".._RED.."Blackrock Mountain";
		GREY..INDENT.."Molten Core, ".._RED.."Blackrock Depths";
		GREY.."8) The Stockade, ".._RED.."Stormwind City";
		GREY.."9) The Deadmines, ".._RED.."Westfall";
		GREY.."10) Zul'Gurub, ".._RED.."Stranglethorn Vale";
		GREY.."11) The Sunken Temple, ".._RED.."Swamp of Sorrows";
		"";
		"";
		"";
		"";
		"";
		"";
		"";
		"";
		BLUE.."Blue:"..ORNG.." Battlegrounds";
		GREY.."White:"..ORNG.." Instances";
	};
	DLWest = {
		ZoneName = "Dungeon Locations (West)";
		Location = "Kalimdor";
		BLUE.."A) Warsong Gulch, ".._RED.."The Barrens / Ashenvale";
		GREY.."1) Blackfathom Deeps, ".._RED.."Ashenvale";
		GREY.."2) Ragefire Chasm, ".._RED.."Orgrimmar";
		GREY.."3) Wailing Caverns, ".._RED.."The Barrens";
		GREY.."4) Maraudon, ".._RED.."Desolace";
		GREY.."5) Dire Maul, ".._RED.."Feralas";
		GREY.."6) Razorfen Kraul, ".._RED.."The Barrens";
		GREY.."7) Razorfen Downs, ".._RED.."The Barrens";
		GREY.."8) Onyxia's Lair, ".._RED.."Dustwallow Marsh";
		GREY.."9) Zul'Farrak, ".._RED.."Tanaris";
		GREY.."10) The Ruins of Ahn'Qiraj, ".._RED.."Silithus";
		GREY..INDENT.."The Temple of Ahn'Qiraj, ".._RED.."Silithus";
		"";
		"";
		"";
		"";
		"";
		"";
		"";
		"";
		"";
		"";
		"";
		"";
		"";
		BLUE.."Blue:"..ORNG.." Battlegrounds";
		GREY.."White:"..ORNG.." Instances";
	};
};

AtlasRE = {
	Azuregos = {
		ZoneName = "Azuregos";
		Location = "Azshara";
		GREY.."1) Azuregos";
	};
	FourDragons = {
		ZoneName = "Dragons of Nightmare";
		Location = "Various";
		GREN..INDENT.."Lethon";
		GREN..INDENT.."Emeriss";
		GREN..INDENT.."Taerar";
		GREN..INDENT.."Ysondre";
		"";
		GREY.."1) Duskwood";
		GREY.."2) The Hinterlands";
		GREY.."3) Feralas";
		GREY.."4) Ashenvale";
	};
	Kazzak = {
		ZoneName = "Lord Kazzak";
		Location = "Blasted Lands";
		GREY.."1) Lord Kazzak";
		GREY.."2) Nethergarde Keep";
	};
};

AtlasINTRO = {

	INTRO = {
			ZoneName = "Intro";
			Location = "Azeroth";
		GREY.."Hello and Welcome to the "..GREN.."Joana's Guide Atlas Suite "..GREY.." this addon was made to create an easy access to ";
		GREY.."a leveling guide. It also gives players a way to visually see the location on a map while keeping the";
		GREY.."maps and loot information from the well known atlas addon.";
		GREY.." ";
		_RED.."Coming Soon ™";
		BLUE.."Alliance 30-60";
		BLUE.."More Alliance Maps";
		BLUE.."Overlapping Text fix";
		BLUE.."Removal of Burning Crusade Content";
		BLUE.."Possible Scrolling Windows (Fewer Pages)";
		BLUE.."Best In Slot Guides";
		GREY.." ";
		GREY.."If any issues are found please report them to the issue tracker";
		GREN.."https://github.com/Doctorbeefy/JoanasGuide1/issues";
		GREY.." ";
		GREY.."Brought to you by Bennylava";
		GREY.."Alliance Maps made by Burger (Feenix:ED)";


	};	
		};

AtlasTLVL = {

	tauren1 = {
		ZoneName = "1-6";
		Location = "Mulgore";
		YELO.."01)"..GREY.." Talk to "..BLUE.."Grull Hawkwing (44,77)"..GREY.." and accept "..ORNG.."The Hunt Begins "..GREY.."then go outside the area kill";
		BLUE.."Plainstriders "..GREY.."and loot "..GREN.."7 feathers "..GREY.."and "..GREN.."7 meat"..GREY..". Run back turn it in and accept "..ORNG.."The Hunt Continues";
		GREY.."and accept "..ORNG.."Etched Note"..GREY..".";
		GREY.."02) Talk to your class trainer and turn in "..ORNG.."Etched Note "..GREY.."then talk to "..BLUE.."Chief Hawkwind "..GREY.."and accept";
		ORNG.."A Humble Task"..GREY..".";
		YELO.."03)"..GREY.." Go to (50,81) and turn in "..ORNG.."A Humble Task "..GREY.."at "..BLUE.."Greatmother Hawkwind"..GREY..", accept the next part then click";
		GREY.."the water pouch on the fountain, then run back and turn in "..ORNG.."A Humble Task "..GREY.."and accept";
		ORNG.."Rites of the Earthmother"..GREY..".";
		GREY.."04) Grind to "..PURP.."level 3 "..GREY.."then run back to ".._RED.."Camp Narache "..GREY.."and accept "..ORNG.."Break Sharptusk!"..GREY..".";
		YELO.."05)"..GREY.." South of the camp around (44,88) kill 10 "..BLUE.."Cougars "..GREY.."and loot their "..GREN.."pelts "..GREY.."then run to (42,92) and";
		GREY.."talk to "..BLUE.."Seer Graytongue "..GREY.."and turn in "..ORNG.."Rite of the Earthmother "..GREY.."and accept "..ORNG.."Rite of Strength"..GREY..".";
		YELO.."06)"..GREY.." Run back to ".._RED.."Camp Narache "..GREY.."to "..BLUE.."Chief Hawkwind (44,77) "..GREY.."turn in "..ORNG.."The Hunt Continues "..GREY.."and accept"; 
		ORNG.."The Battleboars "..GREY.."grinding mobs along the way until you hit "..PURP.."level 4"..GREY..".";
		YELO.."07)"..GREY.." Run to (53,81) and kill "..BLUE.."Battleboar "..GREY.."until you have "..GREN.."8 Flank "..GREY.."and "..GREN.."8 Snout"..GREY..".";
		YELO.."08)"..GREY.." Run to the cave at (58,85) kill the "..BLUE.."Quilboar "..GREY.."for "..GREN.."12 Belts "..GREY.."as you make your way to the tent";
		GREY.."at (64,77) and kill "..BLUE.."Sharptusk "..GREY.."making sure to loot him for "..ORNG.."Break Sharptusk! "..GREY.."then run to the little";
		GREY.."cave at (63,82) and on the inside is a "..GREN.."Dirt-stained Map"..GREY..". Use it to start Attack on "..ORNG.."Camp Narache";
		GREY.."09) Hearth back to ".._RED.."Camp Narache "..GREY.."go to "..BLUE.."Chief Hawkwind (44,77) "..GREY.."and turn in "..ORNG.."The Battleboars"..GREY..","; 
		ORNG.."Attack on Camp Narache "..GREY.."and "..ORNG.."Rite of Strength "..GREY.."then accept "..ORNG.."Rites of the Earthmother part 2"..GREY..".";
		GREY.."10) Talk to "..BLUE.."Brave Windfeather "..GREY.."and turn in "..ORNG.."Break Sharptusk!";
		YELO.."11)"..GREY.." Go to (38,81) and speak to "..BLUE.."Antur Fallow "..GREY.."and accept "..ORNG.."A Task Unfinished "..GREY.."then continue following";
		GREY.."the road to ".._RED.."Bloodhoof Village"..GREY..".";
		YELO.."12)"..GREY.." Talk to "..BLUE.."Innkeeper Kauth "..GREY.."and turn in "..ORNG.."A Task Unfinished "..GREY.."and make ".._RED.."Bloodhoof Village "..GREY.."your home";
		GREY.."You should be "..PURP.."level 6 now"..GREY..", if not grind the little exp you should need until you are";
	};
	

	tauren2 = {
		ZoneName = "6-10";
		Location = "Mulgore"; 
		GREY.."01) Talk to "..BLUE.."Baine Bloodhoof "..GREY.."and turn in "..ORNG.."Rites of the Earthmother "..GREY.."accept "..ORNG.."Sharing the Land"..GREY..",";
		ORNG.."Rite of Vision "..GREY.."and "..ORNG.."Dwarven Digging"..GREY..".";
		GREY.."02) Accept "..ORNG.."Poison Water "..GREY.."from "..BLUE.."Mull Thunderhorn (48,60)"..GREY..". Talk to "..BLUE.."Zarlman Two-Moons (47,57) "..GREY.."turn in";
		ORNG.."Rite of Vision "..GREY.."and accept "..ORNG.."part 2"..GREY..".";
		GREY.."03) Talk to "..BLUE.."Ruul Eagletalon (47,62) "..GREY.."accept "..ORNG.."Dangers of the Windfury "..GREY.."then talk to "..BLUE.."Harken Windtotem (48,59)";
		GREY.."and accept "..ORNG.."Swoop Hunting"..GREY..". Talk to "..BLUE.."Maur Raincaller (47,57) "..GREY.."accept "..ORNG.."Mazzranache";
		GREY.."04) Go southeast to (51,66) and kill "..BLUE.."Trophy Swops "..GREY.."for "..GREN.."8 Quills"..GREY..", "..BLUE.."Prairie Wolfs "..GREY.."for "..GREN.."6 Paws"..GREY..",";
		BLUE.."Plainstriders "..GREY.."for "..GREN.."4 Talons "..GREY.."and underneath trees loot "..GREN.."2 Ambercorns "..GREY.."and "..GREN.."2 Well Stones "..GREY.."near the well(53,64)";
		GREY.."05) Go to (52,70) and kill the "..BLUE.."Palemane "..GREY.."for "..ORNG.."Sharing the Land"..GREY..".";
		GREY.."06) At (33,41) kill "..BLUE.."Harpies "..GREY.."for "..GREN.."8 Windfury Talons"..GREY..". Then to (31,50) and acquire "..GREN.."broken tools "..GREY.."for";
		ORNG.."Dwarven Digging"..GREY..".";
		GREY.."07) Then go to (59,62) and accept "..ORNG.."The Ravaged Caravan "..GREY.."from "..BLUE.."Morin Cloudstalker"..GREY..". Go to (54,48) and";
		GREY.."click on the crates to turn it in then accept "..ORNG.."the second part"..GREY..". Run back to "..BLUE.."Morin Cloudstalker (59,62)";
		GREY.."and turn it in then accept "..ORNG.."The Venture Co. "..GREY.."and "..ORNG.."Supervisor Fizsprocket"..GREY..".";
		GREY.."08) Grind to "..PURP.."level 8 "..GREY.."if you aren't quite there yet.";
		GREY.."09) Go back to ".._RED.."Bloodhoof Village "..GREY.."and turn in "..ORNG.."Poison Water"..GREY..", "..ORNG.."Dangers of the Windfury"..GREY..", "..ORNG.."Swoop Hunting";
		GREY.."then turn in "..ORNG.."Rite of Vision "..GREY.."and accept the "..ORNG.."next part"..GREY..". Accept "..ORNG.."Winterhoof Cleansing"..GREY..".";
		GREY.."10) Go to (53,67) and cleanse it using "..GREN.."Thunderhorn's item"..GREY..". Then run back to "..BLUE.."Mull Thunderhorn (49,60)";
		GREY.."and turn in "..ORNG.."Winterhoof Cleansing "..GREY.."and accept "..ORNG.."Thunderhorn Totem"..GREY..".";
		GREY.."11) Go to (47,57) and drink "..GREN.."Water of the Seers "..GREY.."in your backpack, then follow the "..BLUE.."wolf spirit"..GREY..".";
		GREY.."12) Turn in "..ORNG.."Rite of Vision (33,36) "..GREY.."when the "..BLUE.."spirit "..GREY.."stops and accept "..ORNG.."Rite of Wisdom"..GREY..".";
		GREY.."13) Continue to (59,25) to "..BLUE.."Lorekeeper Raintotem "..GREY.."and accept "..ORNG.."A Sacred Burial"..GREY..".";
		GREY.."14) Go to the "..BLUE.."Ancestral Spirit (60,52) "..GREY.."turn in "..ORNG.."Rite of Wisdom "..GREY.."accept "..ORNG.."Journey into Thunder Bluff "..GREY.."and";
		GREY.."kill "..BLUE.."8 Bristleback Interlopers "..GREY.."nearby and once done speak to "..BLUE.."Lorekeeper Raintotem (59,25) "..GREY.."and turn in";
		ORNG.."A Sacred Burial"..GREY..".";
		GREY.."15) Go to ".._RED.."Thunder Bluff "..GREY.."to the Forge at (39,55) and destroy the "..GREN.."Prospector's Picks "..GREY.."here by clicking";
		GREY.."on them to destroy them.";



	};		

	tauren3 = {
		ZoneName = "10-12";
		Location = "Mulgore"; 
		GREY.."16) Go to (69,51) and talk to "..BLUE.."Cairne Bloodhoof "..GREY.."to turn in "..ORNG.."Journey into Thunder Bluff "..GREY.."accept";
		ORNG.."Rise of the Earthmother"..GREY..".";
		GREY.."You should now be "..PURP.."level 10"..GREY..", if not grind to it. Its time to do your class quest."; ;			
		GREY.."01) Hearth to ".._RED.."Bloodhoof Village"..GREY..". Talk to "..BLUE.."Skorm Whitecloud (46,60) "..GREY.."accept "..ORNG.."The Hunter's Way"..GREY..".";
		GREY.."02) Turn in "..ORNG.."Dwarven Digging "..GREY.."and "..ORNG.."Thunderhorn Totem "..GREY.."then accept "..ORNG.."Thunderhorn Cleansing"..GREY..".";
		GREY.."03) Go to 48,60 and speak to "..BLUE.."Baine Bloodhoof "..GREY.."and turn in "..ORNG.."Sharing the Land"..GREY..".";
		GREY.."04) Go to the Water Well at (49,60) and use it to cleanse your "..GREN.."totem "..GREY.."in your inventory.";
		GREY.."05) Go to (45,16) and kill "..BLUE.."Flatland Prowlers "..GREY.."until you have "..GREN.."4 claws"..GREY..".";
		GREY.."06) Go to (61,47) and you should see the ".._RED.."Venture Co. Mine"..GREY..". Kill "..BLUE.."14 Workers "..GREY.."and "..BLUE.."6 Supervisors"..GREY..".";
		GREY.."Take a right at the first intersection and you should see "..BLUE.."Fizsprocket"..GREY..", then kill him.";
		GREY.."07) Go to (59,62) and turn in "..ORNG.."The Venture Co. "..GREY.."and "..ORNG.."Supervisor Fizsprocket"..GREY..".";
		GREY.."08) Go to (49,60) and turn in "..ORNG.."Thunderhorn Cleansing "..GREY.."then accept "..ORNG.."Wildmane Totem"..GREY..". Go to (69,51)";
		GREY.."and turn in "..ORNG.."Rites of the Earthmother"..GREY..".";
		GREY.."09) Go to (46,60) and turn in "..ORNG.."The Hunters Way"..GREY..".";
		GREY.."10) Go to (38,60) in ".._RED.."Thunder Bluff "..GREY.."and you should see "..BLUE.."Eyahn Eagletalon"..GREY..". Accept "..ORNG.."Preparation for Ceremony"..GREY..".";
		GREY.."11) Go behind ".._RED.."Thunder Buff "..GREY.."and kill "..BLUE.."Windfury Matriarchs "..GREY.."and "..BLUE.."Windfury Sorceresses "..GREY.."until you have";
		GREN.."6 Azure "..GREY.."and "..GREN.."6 Bronze Feathers "..GREY.."then run back to (38,60) and turn it in.";
		GREY.."12) Run back to ".._RED.."Bloodhoof Village "..GREY.."make sure you kill "..BLUE.."Prairie Alphas "..GREY.."on the way until you have "..GREN.."8 Teeth"..GREY..".";
		GREY.."13) Go to (49,60) and turn in "..ORNG.."Windmane Totem"..GREY..".";
		GREY.."14) You should be "..PURP.."level 12 "..GREY.."now, if not grind to it then run into ".._RED.."The Barrens "..GREY.."following the path";
		GREY.."until you come to ".._RED.."Camp Taurajo"..GREY..". Talk to "..BLUE.."Kirge Sternhorn (44,58) "..GREY.."and accept "..ORNG.."Journey to the Crossroads";
		GREY.."and get the Flight Path.";
		GREY.."15) Run north up the road until you get to ".._RED.."The Crossroads "..GREY.."and turn in "..ORNG.."Journey to the Crossroads";
		GREY.."get the Flight Path.";
	};	
	
		};
		
AtlasULVL = {		

	undead1 = {
		ZoneName = "1-6";
		Location = "DeathKnell"; 
		GREY.."01) Run up the steps and exit the Crypt.";
		GREY.."02) In front of you from "..BLUE.."Undertaker Mordo "..GREY.."accept the quest "..ORNG.."Rude Awakening "..GREY.."then run down the hill and";
		GREY.."turn it in at "..BLUE.."Shadow Priest Sarvis"..GREY..".";
		GREY.."03) Accept "..ORNG.."The Mindless Ones "..GREY.."and if you are a Warlock accept "..ORNG.."Piercing the Veil"..GREY..".";
		GREY.."04) Exit the building and to your left down the hill complete "..ORNG.."The Mindless Ones "..GREY.."and "..ORNG.."Piercing the Veil";
		GREY.."then run back and turn them in.";
		GREY.."05) Accept "..ORNG.."Rattling the Rattlecages"..GREY..", "..ORNG.."Tainted Scroll"..GREY..", and "..ORNG.."The Damned"..GREY..".";
		GREY.."06) Turn in "..ORNG.."Tainted Scroll "..GREY.."at your class trainer then get new spells/skills.";
		GREY.."07) Complete "..ORNG.."The Damned "..GREY.."along with "..ORNG.."Rattling the Rattlecages "..GREY.."these are found out around the village,";
		GREY.."once down turn them in and accept "..ORNG.."Marla's Last Wish"..GREY..".";
		GREY.."08) Go outside the church, accept "..ORNG.."Night Web's Hollow "..GREY.."and "..ORNG.."Scavenging Deathknell"..GREY..".";
		GREY.."09) Complete "..ORNG.."Scavenging Deathknell "..GREY.."which are found around and inside buildings in the village then";
		GREY.."run down to (36, 62) and kill "..BLUE.."Samuel Fipps "..GREY.."for "..ORNG.."Marla's Last Wish"..GREY..".";
		GREY.."10) Run to the cave at (27,59) and do "..ORNG.."Night Web's Hollow "..GREY.."then run to the cemetery in the village to";
		GREY.."(31,64) and click the grave to bury the skull.";
		GREY.."11) Run back to town and turn in all the quests which are "..ORNG.."Night Web's Hollow"..GREY..", "..ORNG.."Scavenging Deathknell";
		GREY.."and  "..ORNG.."Marla's Last Wish"..GREY..". If you are a Priest accept "..ORNG.."In Favor of Darkness "..GREY.."which requires "..PURP.."level 5";
		GREY.."12) Accept "..ORNG.."The Scarlet Crusade "..GREY.."outside the church and go do it at (35,68) then run back and turn in.";
		GREY.."13) Accept "..ORNG.."The Red Messenger "..GREY.."and go do it at (36,68) killing "..BLUE.."Meven Korgal "..GREY.."then run back and turn in.";
		GREY.."14) Accept "..ORNG.."Vital Intelligence "..GREY.."then get new Skills if you are "..PURP.."level 6"..GREY..", if not grind until "..PURP.."level 6"; 
		GREY.."15) Run to the north of ".._RED.."Death Knell "..GREY.."and accept "..ORNG.."A Rogue's Deal "..GREY.."then leave the starting area.";
	};		
		

	undead2 = {
		ZoneName = "6-10";
		Location = "Tirisfal Glades"; 		
		GREY.."01) Continue down the hill and talk to "..BLUE.."Deathguard Simmer (41,54) "..GREY.."accept "..ORNG.."Fields of Grief "..GREY.."then go to";
		GREY.."the Pumpkin farm at (37,52) and kill any "..BLUE.."Farmers "..GREY.."in the way while you collect "..GREN.."10 Pumpkins"..GREY..".";
		GREY.."02) Go back to the road along (46,57) to "..BLUE.."Gordo "..GREY.."and accept "..ORNG.."Gordo's Task "..GREY.."then continue along the road";
		GREY.."towards ".._RED.."Brill "..GREY.."getting "..GREN.."3 Gloom Weed "..GREY.."along the way then turn it in at "..BLUE.."Junior Apothecary Holland "..GREY.."and";
		GREY.."accept "..ORNG.."Doom Weed"..GREY..".";
		GREY.."03) Stop in ".._RED.."Brill "..GREY.."(59,52) and turn in "..ORNG.."Fields of Grief "..GREY.."at "..BLUE.."Apothecary Johaan "..GREY.."then accept the "..ORNG.."next part"..GREY..".";
		GREY.."04) Turn in "..ORNG.."Vital Intelligence "..GREY.."at "..BLUE.."Executor Zygand "..GREY.."and accept "..ORNG.."At War with the Scarlet Crusade"..GREY..".";
		GREY.."05) Go into the inn and turn in "..ORNG.."A Rogue's Deal "..GREY.."at the "..BLUE.."Innkeeper "..GREY.."and make it your home. Priests turn";
		GREY.."in "..ORNG.."In Favor of Darkness "..GREY.."and accept "..ORNG.."Garments of Darkness "..GREY.."then run behind the cemetery at (59,46) and";
		GREY.."use "..GREN.."Power Word: Fortitude "..GREY.."on the guy then run back and turn it in for your robe.";
		GREY.."06) Talk to "..BLUE.."Deathguard Dillinger (58,51) "..GREY.."and accept "..ORNG.."A Putrid Task "..GREY.."then accept "..ORNG.."Wanted: Maggot Eye "..GREY.."from";
		GREY.."the "..BLUE.."Wanted sign "..GREY.."at (61,52).";
		GREY.."07) Talk to "..BLUE.."Magistrate Sevren "..GREY.."and accept "..ORNG.."Graverobbers then talk to "..BLUE.."Coleman Farthing "..GREY.."and accept";
		ORNG.."Deaths in the Family "..GREY.."and "..ORNG.."The Haunted Mills "..GREY.."then talk to "..BLUE.."Gretchen Deadmar "..GREY.."and accept "..ORNG.."The Chill of Death"..GREY..".";
		GREY.."08) Go into the Inn and in the basement turn in the "..GREN.."pumpkin "..GREY.."to finish the quest at "..BLUE.."Captured Zealot"..GREY..".";
		GREY.."09) Go back to the bridge at (53,53) and kill the "..BLUE.."Scourge "..GREY.."for "..GREN.."7 Putrid Claws "..GREY.."and keep an eye out for";
		GREY.."any "..GREN.."Gloom Weeds"..GREY..".";
		GREY.."10) Run back to the Pumpkin farm at (62,52) and just behind kill "..BLUE.."10 Scarlet Warriors "..GREY.."and any "..BLUE.."Duskbats";
		GREY.."for "..GREN.."5 pelts "..GREY.."which you can do on your way questing as well as "..BLUE.."Darkhounds "..GREY.."for "..GREN.."5 Vials of Darkhound Blood"..GREY..".";
		GREY.."11) Go back to ".._RED.."Brill "..GREY.."and speak to the "..BLUE.."Trade Supplies Merchant "..GREY.."and buy a "..GREN.."Coarse Thread"..GREY..".";
		GREY.."12) Turn in "..ORNG.."A Putrid Task "..GREY.."accept "..ORNG.."The Mills Overrun "..GREY.."and turn in "..ORNG.."The Chill of Death"..GREY..".";
		GREY.."13) You should have all the "..GREN.."Gloom Weed "..GREY.."by now so turn the quest in at "..BLUE.."Junior Apothecary Holland(58,49)";
		GREY.."and accept "..GREN.."Doom Weed"..GREY..".";
		GREY.."14) Turn in "..ORNG.."At War with the Scarlet Crusade "..GREY.."accept the "..ORNG.."next part"..GREY..". Turn in "..ORNG.."A New Plague "..GREY.."and accept "..ORNG.."part 3"..GREY..".";
		GREY.."Accept "..ORNG.."Proof of Demise"..GREY..".";
		GREY.."15) Go to (59,30) looting any "..GREN.."Doom Weed "..GREY.."along the way and whilst here kill "..BLUE.."5 Rot Hide Mongrels "..GREY.."and";
		BLUE.."Maggot Kill "..GREY.."for his "..GREN.."Paw "..GREY.."whilst collecting "..GREN.."8 Embalming Ichors "..GREY.."from the "..BLUE.."Rot Hide Mongrels "..GREY.."you kill.";


	};
	
	undead3 = {
		ZoneName = "6-10(Part 2)";
		Location = "Tirisfal Glades"; 		
		GREY.."16) Go to (55,42) and kill "..BLUE.."8 Graverobbers"..GREY..", collecting any remaining "..GREN.."Doom Weed "..GREY.."and "..GREN.."Embalming Ichors"..GREY..".";
		GREY.."17) Go just behind where you killed "..BLUE.."Maggot Eye "..GREY.."to the beach and kill "..BLUE.."Murlocs "..GREY.."until you have "..GREN.."5 scales"..GREY..".";
		GREY.."18) Go back to (57,49) to "..BLUE.."Junior Apothecary Holland "..GREY.."and turn in "..ORNG.."Doom Weed"..GREY..".";
		GREY.."19) Go back into ".._RED.."Brill "..GREY.."and turn in all quests which include "..ORNG.."A New Plague"..GREY..", "..ORNG.."Wanted: Maggot Eye "..GREY.."and"; 
		ORNG.."Graverobbers "..GREY.."then get all new quests which include "..ORNG.."A New Plague"..GREY..", "..ORNG.."Forsaken Duties "..GREY.."and "..ORNG.."The Prodical Lich"..GREY..".";
		GREY.."20) Travel to the tower at (53,66) and kill "..BLUE.."3 Scarlet Missionaries"..GREY..", "..BLUE.."3 Scarlet Zealots "..GREY.."and";
		BLUE.."Captain Parrine (51,68) "..GREY.."make sure you loot all "..GREN.."10 Scarlet Insignia Rings"..GREY..".";
		GREY.."21) Run back to ".._RED.."Brill "..GREY.."and turn in "..ORNG.."At War with the Scarlet Crusade "..GREY.."and accept the "..ORNG.."next part"..GREY..".";
		GREY.."Turn in "..ORNG.."Proof of Demise"..GREY..".";
		GREY.."You should now be "..PURP.."level 10"..GREY..", its time to do your class quest.";

	};	
	
	undead4 = {
		ZoneName = "10-12";
		Location = "Tirisfal Glades"; 	
		GREY.."01) Go to Agamand Hills (48,42).";
		GREY.."02) Kill "..BLUE.."Rattlecage Soldiers "..GREY.."and "..BLUE.."Darkeye Bonecasters "..GREY.."looting them for "..GREN.."Notched Ribs "..GREY.."and "..GREN.."Blackened Skulls"..GREY..".";
		GREY.."03) Kill "..BLUE.."Devlin Agamand (47,42)"..GREY..", Kill "..BLUE.."Nissa Agamand (49,36) "..GREY.."then kill "..BLUE.."Gregor "..GREY.."and "..BLUE.."Thurman (46,32)";
		GREY.."making sure to loot all their "..GREN.."remains"..GREY..".";
		GREY.."04) Kill "..BLUE.."Cracked Skull Soldiers "..GREY.."until they drop a "..GREN.."letter"..GREY..", then use it to start "..ORNG.."A Letter Undelivered"..GREY..".";
		GREY.."05) Go back to ".._RED.."Brill "..GREY.."and turn in "..ORNG.."A Letter Undelivered "..GREY.."and accept "..ORNG.."Speak with Sevren"..GREY..".";
		GREY.."06) Go to around (62,52) and turn in all these "..ORNG.."The Haunted Mills"..GREY..", "..ORNG.."Deaths in the Family"..GREY..", "..ORNG.."The Mills Overrun";
		GREY.."and Speak with "..BLUE.."Sevren"..GREY..".";
		GREY.."07) Run to the ".._RED.."Undercity"..GREY..".";
		GREY.."08) Go to the ".._RED.."Mage Quarter "..GREY.."and speak with "..BLUE.."Bethor Iceshard "..GREY.."and turn in "..ORNG.."The Prodical Lich (84,17)"..GREY.." then";
		GREY.."accept "..ORNG.."The Lich's Identity"..GREY..".";
		GREY.."09) You can grab any professions you want while here also such as Mining or Herbalism to make you";
		GREY.."some gold at early levels.";
		GREY.."10) Exit the ".._RED.."Undercity "..GREY.."the way you came in and go to (65,60) and turn in "..ORNG.."Forsaken Duties "..GREY.."then accept";
		ORNG.."Return to the Magistrate "..GREY.."and "..ORNG.."Rear Guard Patrol"..GREY..".";
		GREY.."11) Go to (75,61) and kill "..BLUE.."8 Bleeding Horrors "..GREY.."and "..BLUE.."8 Wandering Spirits "..GREY.."for "..ORNG.."Rear Guard Patrol "..GREY.."then run";
		GREY.."to (76,54) and kill "..BLUE.."5 Scarlet Friars "..GREY.."and "..BLUE.."Captain Vachon "..GREY.."for "..ORNG.."At War with the Scarlet Crusade"..GREY..".";
		GREY.."12) Travel east to (82,54) and kill "..BLUE.."spiders "..GREY.."until you get "..GREN.."4 Venoms"..GREY..".";
		GREY.."13) Go to ".._RED.."Brightwater Lake "..GREY.."and swim to ".._RED.."Gunther's Retreat"..GREY..", and take the "..GREN.."book "..GREY.."here (84,17) then go back";
		GREY.."to (65,60) and turn in "..ORNG.."Rear Guard Patrol"..GREY..".";
		GREY.."14) Enter the ".._RED.."Undercity"..GREY..". Go to (84,17) and turn in "..ORNG.."The Lich's Identity "..GREY.."accept "..ORNG.."Return the Book"..GREY..".";
		GREY.."15) Leave the ".._RED.."Undercity "..GREY.."and run back to ".._RED.."Brill"..GREY..".";
		GREY.."16) Turn in "..ORNG.."At War with the Scarlet Crusade "..GREY.."and accept the "..ORNG.."next part"..GREY..". Turn in "..ORNG.."A New Plague "..GREY.."accept the";
		ORNG.."next part "..GREY.."and turn in "..ORNG.."Return to the Magistrate"..GREY..". Go to the Inn in the basement and turn in "..ORNG.."A New Plague"..GREY..".";
		GREY.."17) Go to the tower up the pathway at (79,26) and kill "..BLUE.."Captain Melrache "..GREY.."for "..ORNG.."At War with the Scarlet Crusade"..GREY..".";
		GREY.."18) Go back to ".._RED.."Gunther's Retreat "..GREY.."at (68,41) and turn in "..ORNG.."Return the Book "..GREY.."and accept "..ORNG.."Proving Allegiance";
		GREY.."then take a "..GREN.."candle "..GREY.."next to you.";


	};		
	
	undead5 = {
		ZoneName = "10-12(Part 2)";
		Location = "Tirisfal Glades"; 	
		GREY.."19) At the little island just behind at (66,44) use the "..GREN.."candle "..GREY.."to summon "..BLUE.."Lillith Nefara"..GREY..", kill her";
		GREY.."then go back and turn the quest in then accept "..ORNG.."The Prodigal Lich Returns"..GREY..".";
		GREY.."20) Go back to ".._RED.."Brill "..GREY.."and turn in "..ORNG.."At War with the Scarlet Crusade "..GREY.."then run to the ".._RED.."Undercity "..GREY.."and at";
		GREY.."the ".._RED.."Mage Quarter "..GREY.."(84,17) turn in "..ORNG.."The Prodigal Lich Returns"..GREY..".";
		GREY.."21) Get your training for "..PURP.."level 12"..GREY..", and train weapons if you need to.";
		GREY.."22) Get on the zeppelin to go to ".._RED.."Orgrimmar"..GREY..".";
		GREY.."23) Get the ".._RED.."Orgrimmar "..GREY.."flight path.";
		GREY.."24) Go south to ".._RED.."Razor Hill "..GREY.."and accept "..ORNG.."Conscript of the Horde"..GREY..".";
		GREY.."25) Head west to the ".._RED.."Barrens "..GREY.."and turn in "..ORNG.."Crossroads Conscription "..GREY.."Accept it again.";
		GREY.."26) Run to the ".._RED.."Crossroads "..GREY.."and turn in "..ORNG.."Crossroads Conscription"..GREY..".";

	};	

		};
		
AtlasLVL = {


	a1 = {
		ZoneName = "1-6";
		Location = "Durotar";
		GREY.."01) I do every single quest in ".._RED.."Durotar"..GREY.."! Here's the fastest way to do them:";
		GREY.."02) Start off accepting "..ORNG.."Your Place In The World"..GREY..". (Right in front of you)";
		GREY.."03) Then turn it in (at 42.68) accept "..ORNG.."Cutting Teeth"..GREY..".";
		GREY.."04) Go start doing: "..ORNG.."Cutting Teeth "..GREY.."(keep step #5 in mind)";
		GREY.."05) Once you hit "..PURP.."level 2"..GREY..", go accept "..ORNG.."Sarkoth "..GREY.."(at 40.62).";
		GREY.."06) Go do "..ORNG.."Sarkoth "..GREY.."(at 40.66).";
		GREY.."07) Then turn "..ORNG.."Sarkoth "..GREY.."in (at 40.66) Accept "..ORNG.."Sarkoth pt.2"..GREY..".";
		GREY.."08) Make sure "..ORNG.."Cutting Teeth "..GREY.."is complete.";
		GREY.."09) Turn in "..ORNG.."Sarkoth pt.2 "..GREY.."and "..ORNG.."Cutting Teeth(42.68) "..GREY.."Accept "..ORNG.."Etched Tablet "..GREY.."and "..ORNG.."Sting of the Scorpid"..GREY..".";
		GREY.."10) Turn in "..ORNG.."Etched Tablet "..GREY.."(around 43.69) and get new spells/abilities for your class.";
		GREY.."11) Then accept and do the following: "..ORNG.."Sting of the Scorpid"..GREY..", "..ORNG.."Vile Familiars"..GREY..",";
		ORNG.."Galgar's Cactus Apple Surprise "..GREY.."and "..ORNG.."Lazy Peons "..GREY.."these are done north and NE of Valley of Trials.";
		GREY.."12) Turn all those quests in, then accept "..ORNG.."Burning Blade Medallion "..GREY.."and "..ORNG.."Thazz'ril's Pick"..GREY..".";
		GREY.."13) Go do: "..ORNG.."Burning Blade Medallion "..GREY.."and "..ORNG.."Thazz'ril's Pick "..GREY.." These are done in the cave at 44.56.";
		GREY.."14) Once those two quests are done use your "..GREN.."hearthstone"..GREY..".";
		GREY.."15) Turn those 2 quests in and accept "..ORNG.."Report to Sen'jin Village"..GREY..".";
		GREY.."16) The starting area is now completed.  Leave starting noob zone (by heading east).";
	};

	a2 = {
		ZoneName = "6-9";
		Location = "Durotar";
		GREY.."01) Accept "..ORNG.."A Peon's Burden "..GREY.."(at 52.68).";
		GREY.."02) Accept "..ORNG.."Thwarting Kolkar Aggression "..GREY.."(at 54.75).";
		GREY.."03) Go turn in "..ORNG.."Report to Sen'jin Village "..GREY.."(at ".._RED.."Sen'jen Village"..GREY..", 55.74).";
		GREY.."04) Then collect all the quests in ".._RED.."Sen'jin Village"..GREY..". Which include:  "..ORNG.."A solvent Spirit"..GREY..", "..ORNG.."Practical Prey"..GREY..","; 
		ORNG.."Minshina's Skull"..GREY..", "..ORNG.."Report to Orgnil"..GREY.." and "..ORNG.."Zalazane"..GREY..".";
		GREY.."05) Do ".._RED.."NOT "..GREY.."do "..ORNG.."A solvent Spirit "..GREY.."at the water around ".._RED.."Sen'jin Village"..GREY..". Make sure the quest is accepted.";
		GREY.."06) Then run up to ".._RED.."Razor Hill(52.44)"..GREY..", grinding mobs along the way, and make sure you get to "..PURP.."level 6";
		GREY.."before you get up there for new spells.";
		GREY.."07) Turn in "..ORNG.."Report to Orgnil "..GREY.."and collect all the quests at ".._RED.."Razor Hill "..ORNG.."Dark Storms"..GREY..","; 
		ORNG.."Vanquish the Betrayers"..GREY..", "..ORNG.."Encroachment Break a Few Eggs"..GREY..".";
		GREY.."08) Go up to the watch tower north-west of ".._RED.."Razor Hill"..GREY..", at 49.40 and accept "..ORNG.."Carry Your Weight"..GREY..".";
		GREY.."09) Go in the Inn (51.41) and turn in "..ORNG.."A Peon's Burden"..GREY..".  And also make ".._RED.."Razor Hill "..GREY.."your home.";
		GREY.."10) Get "..GREN.."first aid"..GREY..". (at 54.41).";
		GREY.."11) Then go do this: "..ORNG.."Vanquish the Betrayers "..GREY.."along with "..ORNG.."Carry Your Weight "..GREY.."these are done at ";
		_RED.."Tiragarde Keep"..GREY..", (57.55).";
		GREY.."12) After killing "..BLUE.."Benedict he is in the building at 59.58 and get his "..GREN.."key"..GREY..", go up the steps open the";
		GREY.."chest and grab the "..GREN.."note "..GREY.."that starts: "..ORNG.."The Admiral's Orders "..GREY.."accept the quest.";
		GREY.."13) Go turn in "..ORNG.."Vanquish the Betrayers"..GREY..", "..ORNG.."The Admiral's Orders "..GREY.."and "..ORNG.."Carry Your Weight "..GREY.."at ".._RED.."Razor Hill(52.44)";
		GREY.."and accept "..ORNG.."From The Wreckage"..GREY..", "..ORNG.."The Admiral's Orders (part2)"..GREY..".";
		GREY.."14) Go do "..ORNG.."A solvent Spirit "..GREY.."and "..ORNG.."From The Wreckage "..GREY.."Do these two quests at the water east of ".._RED.."Tiragarde"; 
		_RED.."Keep "..GREY.."(around 62.50).";
		GREY.."15) Then do the first half of "..ORNG.."Encroachment "..GREY.."(at 49.49).";
		GREY.."16) Then if you're not at least 3 bars away from "..PURP.."lvl 8"..GREY..", grind till you are, go turn in"; 
		ORNG.."From The Wreckage "..GREY.."at ".._RED.."Razor Hill(52.44) "..GREY.."and get new spells/abilities.";
		GREY.."17) Run way down south and do "..ORNG.."Thwarting Kolkar Aggression "..GREY.."(at 48.79).";
		GREY.."18) Once that is done turn it in (at 54.75).";
		GREY.."19) Turn in "..ORNG.."A solvent Spirit "..GREY.."at "..BLUE.."Sen'jin(55.74)";

	};

	a3 = {
		ZoneName = "6-9 (Part 2)";
		Location = "Durotar";
		GREY.."20) Then go to ".._RED.."Echo Isles "..GREY.."the islands south-east of ".._RED.."Durotar "..GREY.."and do the following 4 quests together.";
		GREY.."21) "..ORNG.."Break a Few Eggs";
		GREY.."22) "..ORNG.."Practical Prey";
		GREY.."23) "..ORNG.."Minshina's Skull "..GREY.."the "..GREN.."skull "..GREY.."is at 67.87";
		GREY.."24) "..ORNG.."Zalazane "..BLUE.."Zalazane "..GREY.."is at 67.86";  
		GREY.."25) After completing all these quests, die on purpose, so you end up right at ".._RED.."Sen'jin Village(55.74)";
		GREY.."26) Turn in "..ORNG.."Practical Prey"..GREY..", "..ORNG.."Minshina's Skull "..GREY.."and "..ORNG.."Zalazane"..GREY..". Save the quest reward item";
		GREN.."Faintly Glowing Skull "..GREY.."for a later quest called "..ORNG.."Burning Shadows"..GREY..".";
		GREY.."27) "..GREN.."Hearth "..GREY.."to ".._RED.."Razor Hill"..GREY..".  Turn in "..ORNG.."Break a Few Eggs";
		GREY.."28) Then do the second half of "..ORNG.."Encroachment "..GREY.."west of ".._RED.."Razor Hill "..GREY.."at 42.38.";		
	};

	a4 = {
		ZoneName = "9-12";
		Location = "Durotar";
		GREY.."01) Then go up and accept "..ORNG.."Lost But Not Forgotten "..GREY.."at the little hut at 43.30";
		GREY.."02) Then go up (grind mobs along the way) and accept "..ORNG.."Winds in the Desert "..GREY.."at the "..BLUE.."goblin"..GREY..", 46.22.";
		GREY.."03) Then do "..ORNG.."Winds in the Desert"..GREY..".";
		GREY.."04) Then turn it in, accept "..ORNG.."Securing the Lines "..GREY.."(at 46.22).";
		GREY.."05) Grind mobs to "..PURP.."lvl 10"..GREY..".";
		GREY.."06) Go down to ".._RED.."razor hill(52.44)"..GREY..", turn in "..ORNG.."Encroachment";
		GREY.."07) Get new spells/abilities.";
		_RED.."08) "..GREY.."Do your "..PURP.."level 10 "..GREY.."class quests. I do this as a hunter: do all three pet quests "..ORNG.."Taming the Beast";
		_RED.."09) "..ORNG.."Dire molted bore "..GREY.."(south of ".._RED.."razor hill"..GREY..")";
		_RED.."10) "..ORNG.."Surf crawler "..GREY.."(north east of ".._RED.."razor hill "..GREY.."at 58.30), ".._RED.."DON'T "..GREY.."go down to ".._RED.."Senjen Village"..GREY..", it's too far away.";
		GREY.."Then "..GREN.."Hearth "..GREY.."if you can, if not run back.";
		_RED.."11) "..ORNG.."Armored scorpid "..GREY.."(north west of ".._RED.."razor hill"..GREY..")";
		_RED.."12) "..GREY.."After completing all those, accept "..ORNG.."Training the Beast"..GREY..".";
		_RED.."13) "..GREY.."Go way up north-east, (at 57.16) and tame an "..BLUE.."Encrusted Surf Crawler "..GREY.."for your first real pet.";
		GREY.."14) Then go way west (grinding mobs along the way) and accept "..ORNG.."Need for a Cure "..GREY.."(at 41.18)";
		GREY.."15) Go to ".._RED.."Orgrimmar "..GREY.."(at 45.11)";
		_RED.."16) "..GREY.."Turn in "..ORNG.."Training the Beast "..GREY.."at hunter trainer(66.18)";
		GREY.."17) Then turn in "..ORNG.."The Admiral's Orders "..GREY.."in "..BLUE.."thrall's "..GREY.."chamber(34.36)";
		GREY.."18) Accept "..ORNG.."Hidden Enemies "..BLUE.."Thrall "..GREY.."gives it";
		GREY.."19) Go into ".._RED.."Cleft of Shadow"..GREY..", accept "..ORNG.."Finding the Antidote"..GREY.." (46.53)";
		GREY.."20) Then go do: "..ORNG.."Securing the Lines "..GREY.."(at 53.23 in ".._RED.."Durotar)";
		GREY.."21) Turn in "..ORNG.."Securing the Lines "..GREY.."(at 46.22)";
		GREY.."22) Then go do: "..ORNG.."Finding the Antidote "..GREY.."(the "..BLUE.."scorpids "..GREY.."are all over the place) and "..ORNG.."Lost But Not Forgotten";
		GREY.."(all along the river west of ".._RED.."Durotar)";
		GREY.."23) Then go do: "..ORNG.."Dark Storms "..GREY.."(at 41.26)";
		GREY.."24) Turn in "..ORNG.."Lost But Not Forgotten "..GREY.."(43.30)";
		GREY.."25) Turn in "..ORNG.."Dark Storms "..GREY.."(at ".._RED.."Razor Hill"..GREY..", 52.44)"; 
	};

	a5 = {
		ZoneName = "9-12 (Part 2)";
		Location = "Durotar";
		GREY.."26) Accept "..ORNG.."Margoz"..GREY..".";
		GREY.."27) Turn in "..ORNG.."Margoz "..GREY.."(at 56.20) accept "..ORNG.."Skull Rock";
		GREY.."28) Go do "..ORNG.."Skull Rock "..GREY.."along with "..ORNG.."Hidden Enemies "..GREY.."(in the cave at 54.11)";
		GREY.."29) If you can, try to kill "..BLUE.."Gazz'uz"..GREY..", he drops "..GREN.."Eye of Burning Shadow "..GREY.."item which starts "..ORNG.."Burning Shadows"..GREY..".";
		GREY.."HINT: use the quest reward item "..GREN.."Faintly Glowing Skull "..GREY.."to help you kill him, he's tough without it,"; 
		GREY.."also try to party up with somebody if you can."; 
		GREY.."30) Turn in "..ORNG.."Skull Rock "..GREY.."(56.20) accept "..ORNG.."Neeru Fireblade"..GREY..".";
		GREY.."31) Go to into ".._RED.."Orgrimmar"..GREY..".";
		GREY.."32) Turn in "..ORNG.."Hidden Enemies "..GREY.."(33.37 in ".._RED.."Orgrimmar"..GREY..") accept the next part to "..ORNG.."Hidden Enemies"..GREY..".";
		GREY.."33) Go to ".._RED.."Cleft of Shadows(47.53) "..GREY.."and turn in "..ORNG.."Finding the Antidote"..GREY..".";
		GREY.."34) Turn in "..ORNG.."Neeru Fireblade "..GREY.."and "..ORNG.."Burning Shadows "..GREY.."at "..BLUE.."Neeru Fireblade "..GREY.."(49.50) accept "..ORNG.."Ak'Zeloth"..GREY..".";
		GREY.."35) Also keep talking to him to complete "..ORNG.."Hidden Enemies"..GREY..".";
		GREY.."36) Then go back to "..BLUE.."Thrall "..GREY.."and turn in "..ORNG.."Hidden Enemies "..GREY.."again. The 3rd part refers to ".._RED.."RFC "..GREY.."which I skip.";
		GREY.."37) Leave ".._RED.."Orgrimmar"..GREY..", and turn in "..ORNG.."Need for a Cure"..GREY.."(41.18) you will most likely have to accept it again";
		GREY.."to turn it in.";
		GREY.."38) "..GREN.."Hearth "..GREY.."to ".._RED.."Razor Hill"..GREY..".";
		GREY.."39) Build up "..GREN.."first aid"..GREY..".";
		GREY.."40) Get new spells/abilities.";
		GREY.."41) Accept "..ORNG.."Conscript of the Horde "..GREY.."(at 50.43 in ".._RED.."Razor Hill"..GREY..")";
		GREY.."42) Run west into the ".._RED.."Barrens"..GREY.."."; 
	};

	a6 = {
		ZoneName = "12-15";
		Location = "Barrens";
		GREY.."01) Turn in "..ORNG.."Conscript of the Horde "..GREY.."(62.19 in the ".._RED.."Barrens"..GREY..") accept "..ORNG.."Crossroads Conscription"..GREY..".";
		GREY.."02) Then turn in "..ORNG.."Ak'Zeloth "..GREY.."(62.20) I SKIP "..ORNG.."The Demon Seed"..GREY..".";
		GREY.."03) Run to ".._RED.."Crossroads "..GREY.."(at 52.30) (If you're a hunter do step 4).";
		_RED.."04) "..GREY.."While on my way to XRs, I  abandon my "..BLUE.."crab "..GREY.."and tame a "..BLUE.."Savannah Huntress cat"..GREY..", for my new pet.";
		GREY.."05) Once at ".._RED.."XRs "..GREY.."(at 52.30) turn in "..ORNG.."Crossroads Conscription "..GREY.."Then accept all quests in ".._RED.."XRs "..GREY.."which includes:"; 
		ORNG.."Meats to Orgrimmar"..GREY..", "..ORNG.."Plainstrider Menace"..GREY..", "..ORNG.."The Forgotten Pools"..GREY..", "..ORNG.."Raptor Thieves"..GREY..", "..ORNG.."Wharfmaster Dizzywig"..GREY..",";
		ORNG.."Fungal Spores"..GREY..", "..ORNG.."Disrupt the Attacks"..GREY..", "..ORNG.."Supplies for the Crossroads "..GREY.."and "..ORNG.."Harpy Raiders"..GREY.."."; 
		GREY.."Turn in "..ORNG.."Meats to Orgrimmar "..GREY.."I SKIP "..ORNG.."Ride to Orgrimmar"..GREY..".";
		GREY.."06) Make ".._RED.."XRs "..GREY.."your home.";
		GREY.."07) Get "..GREN.."FP (Flight Path)"..GREY..".";
		GREY.."08) Then go do:  "..ORNG.."Disrupt the Attacks "..GREY.."along with "..ORNG.."Plainstrider Menace "..GREY.."and "..ORNG.."Raptor Thieves "..GREY.."(all around 54.26)."; 
		GREY.."NOTE: If you find "..GREN.."Chen's Empty Keg "..GREY.."accept it.";
		GREY.."09) Once "..ORNG.."Disrupt the Attacks "..GREY.."is completed go turn it in (at 52.30) and accept "..ORNG.."The Disruption Ends"..GREY..".";
		GREY.."10) Go do "..ORNG.."The Disruption Ends "..GREY.."and "..ORNG.."Supplies for the Crossroads "..GREY.."(at 56.26).";
		GREY.."11) If you find "..GREN.."Chen's Empty Keg "..GREY.."accept it.";
		GREY.."12) Once "..ORNG.."Plainstrider Menace"..GREY..", "..ORNG.."The Disruption Ends "..GREY.."and "..ORNG.."Supplies for the Crossroads "..GREY.."are complete";
		GREY.."13) Go to ".._RED.."Ratchet"..GREY..", get the "..GREN.."Flight Path "..GREY.."there (63.37) and accept "..ORNG.."Raptor Horns"..GREY..", "..ORNG.."Samophlange"..GREY..","; 
		ORNG.."Southsea Freebooters"..GREY..", "..ORNG.."The Guns of Northwatch"..GREY..".  Turn in "..ORNG.."Chen's Empty Keg "..GREY.."if you have it accept "..ORNG.."the next part";
		GREY.."to it, and focus on doing this quest while throughout the ".._RED.."Barrens"..GREY..".";
		GREY.."14) Grab the quest "..ORNG.."WANTED: Baron Longshore "..GREY.."(the wanted sign by the bank).";
		GREY.."15) Turn in "..ORNG.."Wharfmaster Dizzywig "..GREY.."(goblin on the docks) accept "..ORNG.."Miner's Fortune"..GREY..".";
		GREY.."16) Then go do "..ORNG.."Southsea Freebooters "..GREY.."along with "..ORNG.."WANTED: Baron Longshore "..GREY.."along the shore just south of ".._RED.."Ratchet"..GREY..".";
		GREY.."17) Once those are done, turn them in (at 62.38), accept new ones, then go do:";
		GREY.."18) "..ORNG.."The Missing Shipment "..GREY.."(just turn this in at the "..BLUE.."goblin "..GREY.."at the docks) accept "..ORNG.."The Missing Shipment part2"..GREY..".";
		GREY.."19) Run back, to "..BLUE.."Gazlowe "..GREY.."(62.38), turn in "..ORNG.."The Missing Shipment part2 "..GREY.."accept "..ORNG.."Stolen Booty"..GREY..".";
		GREY.."20) Then go do "..ORNG.."Stolen Booty "..GREY.."(south of ".._RED.."Ratchet "..GREY.."again) ("..GREN.."Telescopic Lens=63.49"..GREY..", and "..GREN.."Shipment of Boots=62.49)"..GREY..".";
		GREY.."21) Once "..ORNG.."Stolen Booty "..GREY.."is completed "..GREN.."hearth "..GREY.."to ".._RED.."XRs"..GREY..". (don't turn it in yet)."
	};
	
	a7 = {
		ZoneName = "12-15 (Part 2)";
		Location = "Barrens";
		GREY.."22) Turn in "..ORNG.."The Disruption Ends "..GREY.."and "..ORNG.."Supplies for the Crossroads"..GREY..".";
		GREY.."23) Turn in "..ORNG.."Plainstrider Menace "..GREY.."It should be done by now accept "..ORNG.."The Zhevra"..GREY..". Also accept "..ORNG.."Consumed by Hatred";
		GREY.."and "..ORNG.."Lost in Battle"..GREY..".";
		GREY.."24) At this point, I make sure I have three/four "..GREN.."6 slot bags"..GREY..", if I don't, I buy them at the "..BLUE.."bag vendor"..GREY..".";
		GREY.."25) Run west from ".._RED.."XRs"..GREY..", go to the guy in the hut (at 45.28).";
		GREY.."26) Accept: "..ORNG.."Kolkar Leaders "..GREY.."and "..ORNG.."Centaur Bracers"..GREY..".";
		GREY.."27) Then go start doing:";
		GREY.."28) "..ORNG.."Kolkar Leaders"..GREY..", "..ORNG.."Centaur Bracers"..GREY..", "..ORNG.."Raptor Thieves"..GREY..", "..ORNG.."The Zhevra"..GREY..", "..ORNG.."Fungal Spores "..GREY.."and "..ORNG.."The Forgotten Pools"; 
		GREY.."all of these are done just slightly north of where you are";
		GREY.."29) Once "..ORNG.."Kolkar Leaders "..GREY.."is done. ("..BLUE.."Barak "..GREY.."is at 42.23)";
		GREY.."30) Go do: "..ORNG.."Harpy Raiders "..GREY.."(at 38.17).";
		GREY.."31) Once "..ORNG.."Harpy Raiders "..GREY.."is done, grind your way down into ".._RED.."Stonetalon Mountains "..GREY.."(at 35.27 in the ".._RED.."Barrens)"..GREY..".";
	};

	a8 = {
		ZoneName = "15-16";
		Location = "Stonetalon Mountains";
		GREY.."01) Accept "..ORNG.."Goblin Invaders "..GREY.."and "..ORNG.."Avenge My Village "..GREY.."(at 35.27 in the ".._RED.."Barrens"..GREY..").";
		GREY.."02) Go do: "..ORNG.."Avenge My Village "..GREY.."then turn it in.";
		GREY.."03) Then do: "..ORNG.."Kill Grundig Darkcloud "..GREY.."(he is at 73.86).";
		GREY.."04) Then accept and do the "..ORNG.."escort quest "..GREY.."there (Protect "..BLUE.."Kaya "..GREY.."73.85 in the hut), This quest can be a little"; 
		GREY.."tough, kill the "..BLUE.."Sorcerer "..GREY.."first that pops out during the one battle you have to fight.  If it's too hard for";
		GREY.."you, you can skip it.";
		GREY.."05) Turn in "..ORNG.."Kill Grundig Darkcloud "..GREY.."and "..ORNG.."Protect Kaya "..GREY.."(at 35.27 in the ".._RED.."Barrens"..GREY..") accept "..ORNG.."Kaya's Alive"..GREY..".";
		GREY.."06) Then go back to the ".._RED.."Barrens"..GREY..".";
	};

	a9 = {
		ZoneName = "16-20";
		Location = "Barrens";
		GREY.."01) Grind your way back to the guy in the hut (at 45.28)";
		GREY.."02) Turn in "..ORNG.."Kolkar Leaders "..GREY.."accept "..ORNG.."Verog the Dervish"..GREY..".  Also turn in "..ORNG.."Centaur Bracers "..GREY.."if it is done";
		GREY.."03) Make sure you finish up "..ORNG.."Raptor Thieves"..GREY..", "..ORNG.."The Zhevra"..GREY..", "..ORNG.."Fungal Spores"..GREY..", and "..ORNG.."The Forgotten Pools"..GREY.." before ";
		GREY.."returning to the ".._RED.."XRs"..GREY..".";
		GREY.."04) Run to ".._RED.."XRs"..GREY..".";
		GREY.."05) Turn in ALL quests, grab ALL new ones.";
		GREY.."06) Grind your way down south (to 49.50) and do "..ORNG.."Lost in Battle "..GREY.."(Manrik's Wife)  She's laying dead by the"; 
		GREY.."hut all raped and shit, west of the bridge. ".._RED.."P.S. She was a Slut";
		GREY.."07) Go down to ".._RED.."Camp Taurajo "..GREY.."and accept "..ORNG.."Tribes at War "..GREY.."("..BLUE.."gnoll "..GREY.."in the cage at 44.59), and get "..GREN.."FP "..GREY.."there.";
		GREY.."08) Then do "..ORNG.."Apothecary Zamah "..GREY.."Which has you run all the way to ".._RED.."Thunder Bluff (TB) "..GREY.."(in ".._RED.."Mulgore "..GREY.."at 39.27).";
		GREY.."09) Once at ".._RED.."TB"..GREY..", go to "..BLUE.."weapon master "..GREY.."(40.62), get Guns and Staff skills. (I do this as a Hunter), get what";
		GREY.."weapon skills you need for your class)";
		GREY.."10) Get new spells/abilities.";
		GREY.."11) Turn in "..ORNG.."Apothecary Zamah "..GREY.."the cave below the ".._RED.."spirit rise "..GREY.."(at 29.29).";
		GREY.."12) Go to "..GREN.."first aid "..GREY.."guy at ".._RED.."spirit rise "..GREY.."to build up "..GREN.."first aid"..GREY..".";
		GREY.."13) Go up to the tower in middle of town to get "..GREN.."FP"..GREY..", but ".._RED.."DON'T "..GREY.."fly back to ".._RED.."XRs"..GREY..".";
		GREY.."14) "..GREN.."Hearth "..GREY.."back to ".._RED.."XRs"..GREY..".";
		GREY.."15) Turn in "..ORNG.."Lost in Battle"..GREY..".";
		GREY.."16) Then go north west of ".._RED.."XRs "..GREY.."and do "..ORNG.."Prowlers of the Barrens "..GREY.."(37.20).";
		GREY.."17) Then "..ORNG.."Harpy Lieutenants "..GREY.."(38.14).";
		GREY.."18) Then grind your way east and do "..ORNG.."Samophlange "..GREY.."(52.11) complete the whole chain, which in the end has you";
		GREY.."kill the "..BLUE.."goblin "..GREY.."for the "..GREN.."key"..GREY.."."; 
		GREY.."19) Then go east to ".._RED.."Sludge Fen "..GREY.."and do "..ORNG.."Ignition "..GREY.."(56.8).";
		GREY.."20) Then do "..ORNG.."The Escape"..GREY.."."; 
		GREY.."21) Then go north-east and do "..ORNG.."Miner's Fortune "..GREY.."(61.5).";
		GREY.."22) Then grind your way south to ".._RED.."Ratchet "..GREY.."(63.37).";
		GREY.."23) Turn in "..ORNG.."Stolen Booty"..GREY..", "..ORNG.."Samophlange"..GREY..", "..ORNG.."The Escape "..GREY..". accept "..ORNG.."Ziz Fizziks "..GREY.." and SKIP "..ORNG.."Wenikee Boltbucket";
	};

	b1 = {
		ZoneName = "16-20 (Part 2)";
		Location = "Barrens";
		GREY.."24) Turn in "..ORNG.."Miner's Fortune";
		GREY.."25) Then go west of ".._RED.."ratchet "..GREY.."and do "..ORNG.."The Stagnant Oasis "..GREY.."and "..ORNG.."Verog the Dervish "..GREY.."(at 54.43)";
		GREY.."26) Then run to ".._RED.."XRs "..GREY.."(52.30).";
		GREY.."27) Turn in "..ORNG.."Prowlers of the Barrens"..GREY..", "..ORNG.."Harpy Lieutenants"..GREY..", and "..ORNG.."The Stagnant Oasis"..GREY.." accept "..ORNG.."Altered Beings"..GREY..",";
		ORNG.."Echeyakee"..GREY..", "..ORNG.."Serena Bloodfeather"..GREY..", "..ORNG.."Report to Kadrak"..GREY..", and "..ORNG.."Egg Hunt"..GREY..".";
		GREY.."28) Go west of ".._RED.."XRs "..GREY.."(45.28), to turn in: "..ORNG.."Centaur Bracers "..GREY.."and "..ORNG.."Verog the Dervish"..GREY.." I SKIP "..ORNG.."Hezrul Bloodmark"..GREY..".";
		GREY.."29) Then grind your way north and do: "..ORNG.."Serena Bloodfeather "..GREY.."(at 38.11).";
		GREY.."30) Then go east (grind mobs along the way) and do "..ORNG.."Echeyakee "..GREY.."(coords are at 55.17).";
		GREY.."31) "..GREN.."Hearth "..GREY.."to ".._RED.."XRs"..GREY..".";
		GREY.."32) Turn in "..ORNG.."Echeyakee "..GREY..". accept "..ORNG.."The Angry Scytheclaws"..GREY..".";
		GREY.."33) Turn in "..ORNG.."Serena Bloodfeather "..GREY.."accept "..ORNG.."Letter to Jin'Zil"..GREY..". Make sure that "..ORNG.."Consumed by Hatred "..GREY.."is accepted.";
	};

	b2 = {
		ZoneName = "16-20 (Part 3)";
		Location = "Barrens ";
		GREY.."01) Go down south and do:";
		GREY.."02) "..ORNG.."Altered Beings "..GREY.."(55.42).";
		GREY.."03) "..GREY.."Raptor Horns "..GREY.."along with "..ORNG.."Stolen Silver "..GREY.."(at 57.54).";
		GREY.."04) "..ORNG.."The Angry Scytheclaws "..GREY.."(51.46).";
		GREY.."05) "..ORNG.."Tribes at War "..GREY.."along with "..ORNG.."Consumed by Hatred "..GREY.."(at 51.54).";
		GREY.."06) Then grind your way to ".._RED.."Camp Taurajo "..GREY.."(45.58).";
		GREY.."07) Accept "..ORNG.."Weapons of Choice"..GREY..".";
		GREY.."08) Go to "..BLUE.."gnoll "..GREY.."in the cage.";
		GREY.."09) Turn in "..ORNG.."Tribes at War "..GREY.."accept "..ORNG.."Blood Shards of Agamaggan "..GREY.."and "..ORNG.."Betrayal from Within"..GREY..".";
		GREY.."10) Turn in "..ORNG.."Blood Shards of Agamaggan"..GREY..".";
		GREY.."11) Turn in "..GREN.."10 bloodshards "..GREY.."for "..ORNG.."Spirit of the Wind "..GREY.."(repeatable quest) for fast run speed.";
		GREY.."12) At this point, you should be about half way to "..PURP.."level 20"..GREY..".";
		GREY.."13) Now comes the fun part:  ".._RED.."Wailing Caverns Instance! "..GREY.."(at 46.36).  You will need a full group to do this.";
		GREY.."OPTIONAL: GRIND all the way to "..PURP.."level 20! "..GREY.."(which is what I do, but it's not recommended).  I grind away at"; 
		GREY..""..BLUE.."beasts "..GREY.."and "..BLUE.."brisstlebacks "..GREY.."just north of ".._RED.."CT"..GREY.."."; 
		GREY.."14) Keep an eye out for the mob named "..BLUE.."Lakota'mani "..GREY.."a big grey kodo (45.53), he drops "..GREN.."Hoof of Lakota'mani";
		GREY.."which starts "..ORNG.."Lakota'mani"..GREY..".  Turn this in at ".._RED.."CT "..GREY.."when you get the chance.";
		GREY.."15) Once you are at least 5 bars away from "..PURP.." Level 20"..GREY..", run to ".._RED.."XRs"..GREY..".";
		GREY.."16) Turn in "..ORNG.."Stolen Silver"..GREY..", "..ORNG.."Consumed by Hatred"..GREY..", "..ORNG.."Altered Beings "..GREY.."and "..ORNG.."The Angry Scytheclaws "..GREY.."accept all new";
		GREY.."quests.  SKIP "..ORNG.."Mura Runetotem"..GREY..".  You should be "..PURP.."lvl 20 "..GREY.."now.";
		GREY.."17) Fly to ".._RED.."Orgrimmar"..GREY..", get new spells/abilities.";
		GREY.."18) Grab "..ORNG.."The Ashenvale Hunt "..GREY.."quest.";
		GREY.."19) "..GREN.."Hearth "..GREY.."back to ".._RED.."XRs"..GREY..".";
		GREY.."20) Fly to ".._RED.."Ratchet"..GREY..".";
		GREY.."21) Turn in "..ORNG.."Chen's Empty Keg "..GREY.."(if you did it, if not don't worry). accept the "..ORNG.."next part "..GREY.."to it.";
		GREY.."22) Turn in "..ORNG.."Raptor Horns "..GREY.."accept "..ORNG.."Deepmoss Spider Eggs"..GREY..".";
		GREY.."23) Then go do: "..ORNG.."The Guns of Northwatch "..GREY.."(at 60.55).";
	};


	b3 = {
		ZoneName = "16-20 (Part 4)";
		Location = "Barrens";
		GREY.."24) Then once "..ORNG.."The Guns of Northwatch "..GREY.."is done, do:";
		GREY.."25) "..ORNG.."Free From the Hold "..GREY.."(escort quest).";
		GREY.."26) Turn in both quests at ".._RED.."Ratchet"..GREY..", then.";
		GREY.."27) "..GREN.."Hearth "..GREY.."to ".._RED.."XRs"..GREY..". (if "..GREN.."hearth stone "..GREY.."is still on a cooldown, fly to ".._RED.."XRs"..GREY..").";
		GREY.."28) Run west into ".._RED.."Stonetalon Mountains"..GREY..".";
	};
	
	b4 = {
		ZoneName = "20-21";
		Location = "Stonetalon Mountains";
		GREY.."01) Run to "..BLUE.."Malaka'Jin "..GREY.."(at 71.94)";
		GREY.."02) Accept "..ORNG.."Blood Feeders"..GREY..".";
		GREY.."03) Turn in "..ORNG.."Letter to Jin'Zil "..GREY.."(74.97 in the cave) ... accept "..ORNG.."Jin'Zil's Forest Magic"..GREY..".";
		GREY.."04) Then go accept "..ORNG.."Arachnophobia "..GREY.."(wanted poster is at 59.75).";
		GREY.."05) Go do: "..ORNG.."Blood Feeders "..GREY.."along with "..ORNG.."Deepmoss Spider Eggs "..GREY.."and "..ORNG.."Arachnophobia "..GREY.."(around 54.76).";
		GREY.."06) Then turn in "..ORNG.."Ziz Fizziks "..GREY.." to the goblin in the hut at ".._RED.."Windshear Crag, "..GREY.."58.62 accept "..ORNG.."Super Reaper 6000"..GREY..".";
		GREY.."07) Then do: "..ORNG.."Goblin Invaders "..GREY.."and "..ORNG.."Super Reaper 6000 "..GREY.."(the mobs are just north in ".._RED.."Windshear Crag"..GREY..")";
		GREY.."08) Then turn in "..ORNG.."Super Reaper 6000 "..GREY.."(58.62) ... accept "..ORNG.."Further Instructions"..GREY..".";
		GREY.."09) Run to ".._RED.."Sun Rock Retreat "..GREY.."at 46.59.";
		GREY.."10) Turn in "..ORNG.."Arachnophobia "..GREY.."and "..ORNG.."Kaya's Alive"..GREY..".";
		GREY.."11) Get "..GREN.."FP "..GREY.."there.";
		GREY.."12) Run up the little pathway and accept "..ORNG.."Boulderslide Ravine "..GREY.."and "..ORNG.."Trouble in the Deeps "..GREY.."(at 47.64)";
		GREY.."13) Then go do "..ORNG.."Boulderslide Ravine "..GREY.."(at 61.92)";
		GREY.."14) Then turn in "..ORNG.."Blood Feeders "..GREY.."(71.95)";
		GREY.."15) Turn in "..ORNG.."Goblin Invaders "..GREY.."at 35.27 in the ".._RED.."Barrens "..GREY.."accept "..ORNG.."Shredding Machines "..GREY.."(I SKIP "..ORNG.."The Elder Crone"..GREY..")";
		GREY.."16) "..GREN.."Hearth "..GREY.."to ".._RED.."XRs"..GREY..".";
		GREY.."17) Run north to ".._RED.."Ashenvale "..GREY.."stopping along the way to turn in "..ORNG.."Report to Kadrak "..GREY.."at 48.5 but SKIP";
		ORNG.."The Warsong Reports"..GREY..".";
	};
	
	b5 = {
		ZoneName = "21-21";
		Location = "Ashenvale";
		_RED.."01) "..GREY.."stable pet";
		GREY.."02) Run to ".._RED.."Splintertree Post "..GREY.."(at 73.65)";
		GREY.."03) Turn in "..ORNG.."The Ashenvale Hunt"..GREY..".  Then accept and turn in "..ORNG.."The Ashenvale Hunt "..GREY.."again.";
		GREY.."04) Get "..GREN.."FP "..GREY.."in ".._RED.."Splintertree Post"..GREY..".";
		GREY.."05) Run all the way to ".._RED.."Zoram Strand "..GREY.."(at 13.31), grind mobs along the way.";
		_RED.."06) "..GREY.."tame a Clattering Crawler to get *Claw rank 3*, use that pet for the following quests";
		GREY.."07) Get "..GREN.."FP "..GREY.."there. (12.33).  Turn in "..ORNG.."Trouble in the Deeps "..GREY..".. i SKIP "..ORNG.."The Essence of Aku'Mai"..GREY..".";
		GREY.."08) Do the following quests:";
		GREY.."09) Accept and do "..ORNG.."Naga at the Zoram Strand "..GREY.."then turn it in.";
		GREY.."10) "..GREN.."Hearth back "..GREY.."to ".._RED.."XRs"..GREY..", if "..GREN.."hearth stone "..GREY.."is still on a cooldown, fly there.";
		_RED.."11) "..GREY.."Remember to buy ammo/arrows. Get Cat back out";
	};	

	b6 = {
		ZoneName = "22-23";
		Location = "Southern Barrens";
		GREY.."01) Fly to ".._RED.."CT"..GREY..".";
		GREY.."02) Turn in "..ORNG.."Jorn Skyseer "..GREY.."... accept "..ORNG.."Ishamuhale and Melor "..GREY.."Sends Word";
		GREY.."03) Make ".._RED.."CT "..GREY.."your home.";
		GREY.."04) I give "..GREN.."bloodshards "..GREY.."to the "..BLUE.."gnoll "..GREY.."in the cage to get increased agility/spirit.";
		GREY.."05) Run south and keep an eye out for the mob named "..BLUE.."Owatanka "..GREY.."(around 45.62), he drops";
		GREN.."Owatanka's Tailspike "..GREY.."which starts "..ORNG.."Owatanka"..GREY..".";
		GREY.."06) "..ORNG.."Egg Hunt "..GREY.."(44.71)";
		GREY.."07) "..ORNG.."Chen's Empty Keg "..GREY.."(if you have it)";
		GREY.."08) "..ORNG.."Betrayal from Within "..GREY.."and "..ORNG.."Weapons of Choice "..GREY.."(43.79)";
		GREY.."09) Accept "..ORNG.."Gann's Reclamation "..GREY.."from "..BLUE.."Gann Stonespire"..GREY..".  Then go do it (at 46.86). Then turn it in,";
		GREY.."accept "..ORNG.."Revenge of Gann"..GREY..".";
		GREY.."10) "..GREN.."Hearth back "..GREY.."to ".._RED.."Camp Taurajo"..GREY..", turn in "..ORNG.."Weapons of Choice "..GREY.."and "..ORNG.."Betrayal from Within"..GREY..". accept";
		ORNG.."Betrayal from Within part2"..GREY..".";
		GREY.."11) Fly to "..GREN.."XR"..GREY..".";
		GREY.."12) Turn in "..ORNG.."Betrayal from Within part2 "..GREY.."and "..ORNG.."Egg Hunt"..GREY..".";
		GREY.."13) Do "..ORNG.."Ishamuhale "..GREY.."(at 60.32)";
		GREY.."14) Turn in "..ORNG.."Further Instructions "..GREY.."(at ".._RED.."Ratchet "..GREY.."63.37) ... accept "..ORNG.."Further Instructions part2"..GREY..".";
		GREY.."15) Turn in "..ORNG.."Deepmoss Spider Eggs "..GREY.."and "..ORNG.."Chen's Empty Keg"..GREY..".";
		GREY.."16) Fly to ".._RED.."Stonetalon Mountains"..GREY..".";
	};	
	
	b7 = {
		ZoneName = "23-25";
		Location = "Stonetalon Mountains";
		GREY.."01) Accept all quests at ".._RED.."Sun Rock Retreat "..GREY.."which include: "..ORNG.."Cenarius' Legacy"..GREY..","..ORNG.." Cycle of Rebirth "..GREY.."and ";
		ORNG.."Harpies Threaten"..GREY..".";
		GREY.."02) Make ".._RED.."Sun Rock Retreat "..GREY.."your home.";
		GREY.."03) Turn in "..ORNG.."Boulderslide Ravine"..GREY..". I SKIP "..ORNG.."Earthen Arise "..GREY.."(accept "..ORNG.."Elemental War "..GREY.."there though)";
		GREY.."04) Do:";
		GREY.."05) "..ORNG.."Cycle of Rebirth "..GREY.."(pick up the seeds around 48.41)";
		GREY.."06) "..ORNG.."Cenarius' Legacy "..GREY.."(done at around 35.14)";
		GREY.."07) "..ORNG.."Jin'Zil's Forest Magic "..GREY.."(the mobs are around the path at 45.27, and the area at 34.14)";
		GREY.."08) Go back to ".._RED.."Sun Rock Retreat "..GREY.."and turn in "..ORNG.."Cycle of Rebirth"..GREY..". accept "..ORNG.."New Life"..GREY..".";
		GREY.."09) Turn in "..ORNG.."Cenarius' Legacy"..GREY..". accept "..ORNG.."Ordanus"..GREY..".";
		GREY.."10) NOTE: I skip getting my "..PURP.."level 24 "..GREY.."spells/abilities cause there's little that are useful this level";
		GREY.."11) Go turn in "..ORNG.."Further Instructions part2 "..GREY.."(58.62)... accept "..ORNG.."Gerenzo Wrenchwhistle"..GREY..".";
		GREY.."12) Go do "..ORNG.."Gerenzo Wrenchwhistle "..GREY.."(at 64.41) and "..ORNG.."Shredding Machines "..GREY.."(kill "..BLUE.."XT:4 "..GREY.."and "..BLUE.."XT:9"..GREY..")";
		GREY.."13) Then turn in "..ORNG.."Gerenzo Wrenchwhistle"..GREY..". (58.62)";
		GREY.."14) Run down south and turn in "..ORNG.."Jin'Zil's Forest Magic "..GREY.."(74.97)";
		GREY.."15) Turn in "..ORNG.."Shredding Machines "..GREY.."(in the ".._RED.."Barrens "..GREY.."at 35.27)";
		GREY.."16) "..GREN.."Hearth "..GREY.."back to ".._RED.."Sun Rock Retreat"..GREY..".";
		GREY.."17) Stock back up on food/water.";
		GREY.."18) Go do "..ORNG.."Harpies Threaten "..GREY.."along with "..ORNG.."Elemental War "..GREY.."and "..ORNG.."New Life "..GREY.."(all at the ".._RED.."Charred Vale"..GREY..", 32.67)";
		GREY.."19) Once they are all done, make sure you are at least 5 bars away from "..PURP.."level 25"..GREY..", so you may have to";
		GREY.."grind a little."; 
		GREY.."20) Then go turn them all in, and accept "..ORNG.."Calling in the Reserves"..GREY..".";
		GREY.."21) Then fly to ".._RED.."CT"..GREY..".";
	};	
	
	b8 = {
		ZoneName = "25-25";
		Location = "Southern Barrens";
		GREY.."01) Turn in "..ORNG.."Ishamuhale"..GREY..". accept "..ORNG.."Enraged Thunder Lizards"..GREY..".";
		GREY.."02) Make ".._RED.."CT "..GREY.."your home.";
		GREY.."03) Accept "..ORNG.."A New Ore Sample "..GREY.."(need to be "..PURP.."lvl 25 "..GREY.."to get this)";
		GREY.."04) Go down and do:";
		GREY.."05) "..ORNG.."Enraged Thunder Lizards"..GREY..".";
		GREY.."06) You should find the mob "..BLUE.."Washte Pawne"..GREY..", he drops "..GREN.."Washte Pawne Feather"..GREY.." which starts "..ORNG.."Washte Pawne"..GREY..".";
		GREY.."07) "..ORNG.."Revenge of Gann "..GREY.."(at 47.85) Once done, Turn it in, accept the "..ORNG.."next part"..GREY..".";
		GREY.."08) Do "..ORNG.."Revenge of Gann Part 3 "..GREY.."(at 46.85), then turn it in.";
		GREY.."09) Head south down the path to the ".._RED.."Great Lift "..GREY.."at 44.91 in the ".._RED.."barrens "..GREY.."and turn in";
		ORNG.."Calling in the Reserves"..GREY..".";
		GREY.."10) Accept "..ORNG.."Message to Freewind Post"..GREY..".";
		GREY.."11) Run to ".._RED.."Freewind Post"..GREY..". (45.50 in ".._RED.."Thousand Needles"..GREY..")";
	};

	b9 = {
		ZoneName = "25-26";
		Location = "Thousand Needles";
		GREY.."01) Turn in "..ORNG.."Message to Freewind Post "..GREY.."accept "..ORNG.."Pacify the Centaur"..GREY..".";
		GREY.."02) Accept "..ORNG.."Wanted - Arnak Grimtotem"..GREY..", "..ORNG.."Alien Egg "..GREY.."and "..ORNG.."Wind Rider"..GREY..".";
		GREY.."03) Get "..GREN.."FP "..GREY.."there.";
		GREY.."04) Go do (in the following order):";
		GREY.."05) "..ORNG.."Pacify the Centaur "..GREY.."(mobs are just north)";
		GREY.."06) "..ORNG.."Test of Faith "..GREY.."(the cave at 52.43)";
		GREY.."07) "..ORNG.."A New Ore Sample "..GREY.."(if you can't find the drop, just skip it for now)";
		GREY.."08) "..ORNG.."Alien Egg "..GREY.."this egg has 4 possible spawn points, either at around: 52.56 / 45.63 / 41.60 / 50.56,";
		GREY.."and there might be more, just check around those areas.";
		GREY.."09) If you're not "..PURP.."level 26 "..GREY.."(or two bars away from it), grind till you are.";
		GREY.."10) Go up to ".._RED.."Freewind Post "..GREY.."(45.50).";
		GREY.."11) Turn in "..ORNG.."Pacify the Centaur"..GREY..". accept "..ORNG.."Grimtotem Spying"..GREY..".";
		GREY.."12) Turn in "..ORNG.."Alien Egg"..GREY..". accept "..ORNG.."Serpent Wild"..GREY..".";
		GREY.."13) "..GREN.."Hearth "..GREY.."to ".._RED.."Camp Taurajo"..GREY..".";
		GREY.."14) Turn in "..ORNG.."Enraged Thunder Lizards "..GREY.."and "..ORNG.."Washte Pawne"..GREY..". accept "..ORNG.."Cry of the Thunderhawk"..GREY..".";
		GREY.."15) Turn in "..ORNG.."A New Ore Sample"..GREY..".";
		GREY.."16) Go do "..ORNG.."Cry of the Thunderhawk "..GREY.."then turn it in. I SKIP "..ORNG.."Mahren Skyseer"..GREY..".";
		GREY.."17) Fly to ".._RED.."Thunder Bluff "..GREY.."to get new spells/abilities.";
		GREY.."18) Turn in "..ORNG.."Melor Sends Word "..GREY.."(61.80 on the ".._RED.."Hunter Rise"..GREY.."). accept "..ORNG.."Steelsnap"..GREY..".";
		GREY.."19) Accept "..ORNG.."The sacred Flame "..GREY.."(55.51)";
		GREY.."20) Fly to ".._RED.."Splintertree Post, Ashenvale"..GREY..".";
	};

	c1 = {
		ZoneName = "26-28";
		Location = "Ashenvale";
		GREY.."01) Make it your home.";
		GREY.."02) Do the following order:";
		GREY.."03) Accept all the quests, which include: "..ORNG.."Stonetalon Standstill"..GREY..", "..ORNG.."Satyr Horns"..GREY..", "..ORNG.."Ashenvale Outrunners"..GREY..","; 
		GREY.."accept this at 71.68.  Make sure "..ORNG.."The Ashenvale Hunt "..GREY.."is turned in at "..BLUE.."Senani Thunderheart "..GREY.."you can";
		GREY.."accept this quest right at the NPC itself. Note: I SKIP "..ORNG.."Warsong Supplies "..GREY.."and "..ORNG.."The Lost Pages"..GREY..".";
		GREY.."04) Kill the first of the three mobs related to "..ORNG.."The Ashenvale hunt"..GREY..":";
		GREY.."05) "..ORNG.."Sharptalon's Claw "..GREY.."(Kill "..BLUE.."Sharptalon "..GREY.."(patrols around 74.70), then he drops the item that starts";
		GREY.."this quest (hint: easy way to kill it (he's "..PURP.."lvl 31 mob"..GREY.."), is to bring his health to a 3rd left,";
		GREY.."then drag him into the guards at ".._RED.."Splintertree Post"..GREY..", they will finish em).";
		GREY.."06) Do: "..ORNG.."Ashenvale Outrunners "..GREY.."(around 71.72) (use track hidden, to find them better). Once the quest";
		GREY.."is completed, turn it in when you get the chance.";
		GREY.."07) Then go slightly west and do "..ORNG.."Torek's Assault "..GREY.."(starts at 68.75)";
		GREY.."08) Then go do "..ORNG.."Stonetalon Standstill "..GREY.."(the lake at 53.70) find and kill "..BLUE.."Tideress "..GREY.."he drops an item";
		GREY.."which starts: "..ORNG.."The Befouled Element"..GREY..".";
		GREY.."09) Kill "..BLUE.."Ursangous"..GREY..", (around 42.67) "..GREN.."Ursangous's Paw "..GREY.."("..ORNG.."Ashenvale hunt"..GREY..")";
		GREY.."10) Kill "..BLUE.."Shadumbra "..GREY.."(around 56.54) "..GREN.."Shadumbra's Head "..GREY.."(".._RED.."Ashenvale hunt"..GREY..")";
		GREY.."11) "..ORNG.."The sacred Flame "..GREY.."first find a "..BLUE.."phial "..GREY.."killing the "..BLUE.."dryads "..GREY.."at 61.52, then fill at the moonwell 60.72";
		GREY.."12) "..GREN.."Hearth "..GREY.."to ".._RED.."Splintertree Post "..GREY.."to turn in "..ORNG.."Stonetalon Standstill"..GREY..", "..ORNG.."The Befouled Element "..GREY.."accept"; 
		ORNG.."Je'neu of the Earthen Ring"..GREY..", "..ORNG.."Torek's Assault "..GREY.."and all three of the "..ORNG.."Ashenvale Hunt "..GREY.."quests, then accept";
		GREY.."and complete "..ORNG.."The Hunt Completed"..GREY..".";
		GREY.."13) Fly to ".._RED.."Zoram Strand"..GREY..", and turn in "..ORNG.."Je'neu of the Earthen Ring"..GREY..".";
		GREY.."14) Accept and do "..ORNG.."Vorsha the Lasher"..GREY..". Once done go back and turn it in.";
		GREY.."15) Accept and do: "..ORNG.."Between a Rock and a Thistlefur "..GREY.."(34.37) and "..ORNG.."Troll Charm "..GREY.."(the cave is at 38.30).";  
		GREY.."NOTE:  While you are in the cave, there is an escort quest (a white bear-formed "..BLUE.."druid "..GREY.."in a cage)"; 
		GREY.."called "..ORNG.."Freedom to Ruul"..GREY..", try to do this quest, you may have to fight 3-5 mobs at once several times,"; 
		GREY.."if you fail then it can be skipped.";
	};

	c2 = {
		ZoneName = "26-28";
		Location = "Ashenvale (Part 2)";
		GREY.."16) Once they are both completed, go turn in "..ORNG.."Between a Rock and a Thistlefur "..GREY.."and "..ORNG.."Troll Charm ";
		GREY.."back at the ".._RED.."Zoram Strand"..GREY..", then "..GREN.."hearth "..GREY.."back to ".._RED.."Splintertree Post"..GREY..". Turn in "..ORNG.."Freedom to Ruul"..GREY.."."; 
		GREY.."17) If not "..PURP.."level 27 "..GREY.."grind till it.";
		_RED.."18) "..GREY.."stable pet";
		_RED.."19) "..GREY.."tame a "..BLUE.."Ghostpaw Alpha "..GREY.."(lvl 27) to get *Bite rank 4*, then abandon him";
		_RED.."20) "..GREY.."tame an "..BLUE.."Elder Ashenvale Bear "..GREY.."(lvl 25-26) to get *Claw rank 4*, then abandon him";
		_RED.."21) "..GREY.."get "..BLUE.."cat "..GREY.."back out.";
		GREY.."22) Accept "..ORNG.."Destroy the Legion "..GREY.."(in ".._RED.."Splintertree Post"..GREY..").";
		GREY.."23) Go do "..ORNG.."Ordanus "..GREY.."(61.52) fight your way to him, just kill the guy, grab his "..GREN.."head"..GREY..".";
		GREY.."24) Go do: "..ORNG.."Satyr Horns "..GREY.."(done at the ".._RED.."Night Run"..GREY..", 67.53)(entrance to the area is around 64.42).";
		GREY.."25) Then do: "..ORNG.."Destroy the Legion "..GREY.."(at 82.69) you should find an item called "..GREN.."Diabolical Plans"..GREY..", which ";
		GREY.."starts "..ORNG.."Diabolical Plans "..GREY.."while doing this quest.";
		GREY.."26) Run back to ".._RED.."Splintertree Post"..GREY..". Turn in "..ORNG.."Satyr Horns"..GREY..", "..ORNG.."Destroy the Legion "..GREY.."and "..ORNG.."Diabolical Plans"..GREY..".";
		GREY.."27) Fly to ".._RED.."Stonetalon Mountains"..GREY..".";
	};

	c3 = {
		ZoneName = "28-28";
		Location = "Stonetalon Mountains";
		GREY.."01) Turn in "..ORNG.."Ordanus"..GREY..". I SKIP "..ORNG.."The Den.";
		GREY.."02) Make ".._RED.."Sun Rock Retreat "..GREY.."your home.";
		GREY.."03) Accept and do "..ORNG.."Bloodfury Bloodline"..GREY..", go kill "..BLUE.."Bloodfury Ripper "..GREY.."(at 30.63) grind mobs along the way,";
		GREY.."then "..GREN.."hearth "..GREY.."back.";
		GREY.."04) Turn "..ORNG.."Bloodfury Bloodline"..GREY.." in.";
		GREY.."05) Fly to ".._RED.."Thunder Bluff"..GREY..".";
		GREY.."06) Make ".._RED.."Thunder Bluff "..GREY.."your home.";
		GREY.."07) Turn in "..ORNG.."The sacred Flame "..GREY.."(54.51 in ".._RED.."TB"..GREY.."). accept "..ORNG.."The sacred Flame part2"..GREY..".";
		GREY.."08) Fly to ".._RED.."Thousand Needles"..GREY..".";
	};

	c4 = {
		ZoneName = "28-30";
		Location = "Thousand Needles";
		GREY.."01) Turn in "..ORNG.."The sacred Flame"..GREY..". accept "..ORNG.."The sacred Flame part3"..GREY..".";
		GREY.."02) I do the following order:";
		GREY.."03) "..ORNG.."The sacred Flame "..GREY.."(charge the "..GREN.."brazier "..GREY.."in the cave at 44.37)";
		GREY.."04) Go to ".._RED.."Whitereach Post "..GREY.."21.32, accept "..ORNG.."Hypercapacitor Gizmo"..GREY..", Turn in "..ORNG.."Serpent Wild"..GREY..". accept "..ORNG.."Sacred Fire"..GREY..".";
		GREY.."05) Go do: "..ORNG.."Sacred Fire "..GREY.."(35.36)";
		GREY.."06) "..ORNG.."Wind Rider "..GREY.."(11.36)";
		GREY.."07) "..ORNG.."Homeward Bound "..GREY.."(escort starts at 17.40)(if the Elite gets in the way, skip it)";
		GREY.."08) "..ORNG.."Steelsnap "..GREY.."("..BLUE.."Steelsnap patrols "..GREY.."around 16.25)";
		GREY.."09) "..GREN.."Hearth "..GREY.."to ".._RED.."Thunder Bluff"..GREY..".";
		GREY.."10) Get new spells/abilities.";
		GREY.."11) Turn in "..ORNG.."Steelsnap "..GREY.."(on ".._RED.."Hunter Rise"..GREY.."). accept "..ORNG.."Frostmaw"..GREY..".";
		GREY.."12) Turn in "..ORNG.."Sacred Fire "..GREY.."(on "..ORNG.."Elder Rise"..GREY.."). accept "..ORNG.."Arikara"..GREY..".";
		GREY.."13) Fly back to ".._RED.."1K Needles"..GREY..".";
		GREY.."14) Make ".._RED.."Freewind Post "..GREY.."your home.";
		GREY.."15) Turn in "..ORNG.."The sacred Flame "..GREY.."and "..ORNG.."Wind Rider"..GREY..".";
		GREY.."16) Go to the ".._RED.."Darkcloud Pinnacle "..GREY.."the entrance ramp is at 31.36 and do the following quests:"; 
		ORNG.."Grimtotem Spying "..GREY.."(the "..GREN.."notes "..GREY.."are up in the rises at 31.32, 33.39, and 39.41)";
		GREY.."17) "..ORNG.."Arikara "..GREY.."(done up at 37.35)";
		GREY.."18) "..ORNG.."Wanted - Arnak Grimtotem "..GREY.."(he is up at 38.27)";
		GREY.."19) "..ORNG.."Free at Last "..GREY.."(escort quest starts up at 38.27)";
		GREY.."20) Go to ".._RED.."Whitereach Post "..GREY.."(21.32), turn in "..ORNG.."Arikara"..GREY..", "..ORNG.."Homeward Bound "..GREY..". accept";
		ORNG.."A Dip in the Moonwell"..GREY..".";
		GREY.."21) Go do: "..ORNG.."A Dip in the Moonwell "..GREY.."(the "..GREN.."control console "..GREY.."is at 9.18)";
		GREY.."22) You should be "..PURP.."level 29"..GREY..", if not grind to "..PURP.."level 29"..GREY..", I grind away at "..BLUE.."centuars around ".._RED.."Camp E'Thok"; 
		GREY.."23) Then do "..ORNG.."Hypercapacitor Gizmo (Elite) "..GREY.."kill mobs around the cage, at 22.24, free him";
		GREY.."24) Kill the "..BLUE.."Galak Messenger"..GREY..", he drops "..GREN.."Assassination Note "..GREY.."which starts "..ORNG.."Assassination Plot"..GREY..", Turn in.";
	};

	c5 = {
		ZoneName = "28-30 (Part 2)";
		Location = "Thousand Needles";
		GREY.."Also turn in "..ORNG.."Hypercapacitor Gizmo "..GREY.."and "..ORNG.."A Dip in the Moonwell"..GREY..". accept "..ORNG.."Testing the Tonic"..GREY..".";
		GREY.."25) Then do: "..ORNG..""..ORNG.."Protect Kanati Greycloud"..GREY..".";
		GREY.."26) If you are not at least 4 bars from "..PURP.."level 30"..GREY..", grind until you are. "..GREN.."hearth "..GREY.."back to ".._RED.."Freewind Post"..GREY..".";
		GREY.."27) Turn in "..ORNG.."Free at Last"..GREY..", "..ORNG.."Wanted - Arnak Grimtotem"..GREY..", "..ORNG.."Grimtotem Spying "..GREY.."and "..ORNG.."Testing the Tonic"..GREY..".";
		GREY.."28) NOTE: I skip "..ORNG.."Test of Endurance"..GREY..".";
		GREY.."29) Fly to ".._RED.."Orgrimmar"..GREY..".";
		GREY.."30) Make ".._RED.."Orgrimmar "..GREY.."your home.";
		GREY.."31) Get new spells/abilities.";
		GREY.."32) You need to get on the zeppelin just right outside of ".._RED.."Orgrimmar"..GREY..".";
		GREY.."33) Run to ".._RED.."Tarren Mill "..GREY.."in ".._RED.."Hillsbrad Foothills"..GREY.."."; 
	};	
	
};



AtlasLV = {


	c6 = {
		ZoneName = "30-30";
		Location = "Hillsbrad Foothills";
		GREY.."01) Once at ".._RED.."Tarren Mill "..GREY.."(at 62.20) accept "..ORNG.."Regthar Deathgate "..GREY.."and "..ORNG.."The Hammer May Fall";
		GREY.."02) Get "..GREN.."flight path "..GREY.."there.";
		GREY.."03) Then run east into ".._RED.."Arathi Highlands"..GREY..".";
	};

	c7 = {
		ZoneName = "30-30";
		Location = "Arathi Highlands";
		GREY.."01) Run to ".._RED.."Hammerfall "..GREY.."(at 73.36)";
		GREY.."02) Accept "..ORNG.."Hammerfall"..GREY..".";
		GREY.."03) Turn in "..ORNG.."Hammerfall"..GREY..". Accept "..ORNG.."Raising Spirits";
		GREY.."04) Get "..GREN.."FP "..GREY.."there.";
		GREY.."05) Then do "..ORNG.."Raising Spirits "..GREY.."(just to the left of ".._RED.."Hammerfall "..GREY.."all around 64.37. Then turn it in."; 
		GREY.."Accept "..ORNG.."Raising Spirits part2"..GREY..".";
		GREY.."06) Turn in "..ORNG.."Raising Spirits part2"..GREY..". Accept "..ORNG.."Raising Spirits part3"..GREY..".";
		GREY.."07) Turn in "..ORNG.."Raising Spirits part3"..GREY..". Skip "..ORNG.."Guile of the Raptor "..GREY.."for now.";
		GREY.."08) "..GREN.."Hearth "..GREY.."to ".._RED.."Orgrimmar"..GREY..".";
		GREY.."09) Get on the Zeppelin to go to ".._RED.."Grom'Gol"..GREY..".";		
	};

	c8 = {
		ZoneName = "30-31";
		Location = "Stranglethorn Vale";
		GREY.."01) Get the "..GREN.."FP "..GREY.."at ".._RED.."Grom'Gol"..GREY..".";
		GREY.."02) Go up north (35.10) and start doing the ".._RED.."STV "..GREY.."hunt quests:";
		GREY.."03) "..ORNG.."Welcome to the Jungle "..GREY.."(just accept this and turn in in right there)";
		GREY.."04) "..ORNG.."Tiger Mastery "..GREY.."("..BLUE.."Young Stranglethorn Tigers"..GREY..") (35.10)";
		GREY.."05) "..ORNG.."Panther Mastery "..GREY.."("..BLUE.."Young Panthers"..GREY..") (39.9)";
		GREY.."06) "..ORNG.."Panther Mastery "..GREY.."("..BLUE.."Panthers"..GREY..") (35.10)";
		GREY.."07) "..ORNG.."Tiger Mastery "..GREY.."("..BLUE.."Stranglethorn Tigers"..GREY..") (35.10)";
		GREY.."08) "..ORNG.."Raptor Mastery "..GREY.."("..BLUE.."Stranglethorn Raptors"..GREY..") (25.15)";
		GREY.."09) Accept "..ORNG.."Tiger Mastery "..GREY.."("..BLUE.."Elder Stranglethorn Tigers"..GREY.."). but don't do it now.";
		GREY.."10) Accept "..ORNG.."Raptor Mastery "..GREY.."("..BLUE.."Lashtail Raptors"..GREY.."). but don't do it now.";
		GREY.."11) Skip the rest for now.";
		GREY.."12) "..GREN.."Hearth "..GREY.."to ".._RED.."Orgrimmar"..GREY..".";
		GREY.."13) Fly to ".._RED.."XRs"..GREY..".";
		GREY.."14) Run west IN the ".._RED.."XRs "..GREY.."and accept "..ORNG.."The Swarm Grows"..GREY..".";
		GREY.."15) Then run west from the ".._RED.."XRs "..GREY.."to the guy in the hut (45.28) and turn in "..ORNG.."Regthar Deathgate"..GREY..". Accept";
		ORNG.."The Kolkar of Desolace"..GREY..".";
		GREY.."16) Run back to ".._RED.."XRs"..GREY..".";
		GREY.."17) Fly to ".._RED.."1K needles"..GREY..".";
		GREY.."18) Go east into ".._RED.."Shimmering Flats "..GREY.."(at 77.77).";		
	};

	c9 = {
		ZoneName = "31-32";
		Location = "Shimmering Flats";
		GREY.."01) Accept:";
		GREY.."02) "..ORNG.."Hemet Nesingwary";
		GREY.."03) "..ORNG.."Wharfmaster Dizzywig";
		GREY.."04) Accept and do the following 5 quests together:";
		GREY.."05) "..ORNG.."A Bump in the Road";
		GREY.."06) "..ORNG.."Hardened Shells";
		GREY.."07) "..ORNG.."Load Lightening";
		GREY.."08) "..ORNG.."Rocket Car Parts";
		GREY.."09) "..ORNG.."Salt Flat Venom";
		GREY.."10) Turn them all in.";
		GREY.."11) Accept:";
		GREY.."12) "..ORNG.."Goblin Sponsorship";
		GREY.."13) "..ORNG.."Martek the Exiled";
		GREY.."14) "..ORNG.."Encrusted Tail Fins";
		GREY.."15) You may or may not be "..PURP.."level 32 "..GREY.."right now, if not that's okay.";
		GREY.."16) Go south into ".._RED.."Tanaris "..GREY.."to get "..GREN.."FP "..GREY.."in ".._RED.."Gadgetzan "..GREY.."at 51.25";
		GREY.."17) "..GREN.."Hearth "..GREY.."to ".._RED.."Orgrimmar"..GREY..".";
		GREY.."18) Turn in "..ORNG.."The Swarm Grows "..GREY.."(at 75.34). Accept "..ORNG.."The Swarm Grows part2"..GREY..".";
		GREY.."19) Accept "..ORNG.."Alliance Relations "..GREY.."(get it from "..BLUE.."Craven Drok "..GREY.."in the ".._RED.."Cleft of Shadow"..GREY..", 50.47)";
		GREY.."20) Then go to "..BLUE.."Keldran "..GREY.."in ".._RED.."Orgrimmar "..GREY.."(22.53) to accept "..ORNG.."Alliance Relations part2"..GREY..".";
		GREY.."21) Stop at "..GREN.."first aid "..GREY.."guy to buy "..GREN.."silk bandage training"..GREY..".  NOTE:  Make sure you save all your extra";
		GREY.."Cloths in either your bank or mailbox, you will need them later for Cloth Donation quests.";
		GREY.."22) Then fly to ".._RED.."Stonetalon Mountains"..GREY..".";
		GREY.."23) Run into ".._RED.."Desolace"..GREY..".";		
	};

	d1 = {
		ZoneName = "32-34";
		Location = "Desolace";
		GREY.."01) First thing to do here is start killing mobs at the ".._RED.."Thunder Axe Fortress"..GREY.." (55.24).";
		GREY.."02) Until this item drops: "..GREN.."Flayed Demon Skin "..GREY.."which starts: "..ORNG.."The Corrupter";
		GREY.."03) Then go down the path and do:";
		GREY.."04) "..ORNG.."Kodo Roundup "..GREY.."(starts at 60.61) (don't have to finish all of it now)";
		GREY.."05) Then go to ".._RED.."Ghost Walker Post "..GREY.."(56.59)";
		GREY.."06) Turn in "..ORNG.."The Kolkar of Desolace"..GREY..". Accept "..ORNG.."Khan Dez'hepah"..GREY..".";
		GREY.."07) Accept "..ORNG.."Gelkis Alliance "..GREY.."(this is the one you should choose to do).  Skip "..ORNG.."Magram Alliance"..GREY..".";
		GREY.."08) Turn in "..ORNG.."Alliance Relations"..GREY..". Accept "..ORNG.."Alliance Relations part2"..GREY..". Accept "..GREY.."Befouled by Satyr"..GREY..".";
		GREY.."09) Turn in "..ORNG.."The Corrupter"..GREY..". Accept "..ORNG.."The Corrupter part2"..GREY..".";
		GREY.."10) Turn in "..ORNG.."Alliance Relations part2"..GREY..". Accept "..ORNG.."The Burning of Spirits"..GREY..".";
		GREY.."11) Accept "..ORNG.."Catch of the Day"..GREY..".";
		GREY.."12) Do in the following order:";
		GREY.."13) "..ORNG.."Befouled by Satyr "..GREY.."(75.22)  (Keep step #13 in mind)";
		GREY.."14) "..ORNG.."The Corrupter Part2 "..GREY.."(collect a "..GREN.."Shadowstalker Scalp "..GREY.."from a "..BLUE.."Hatefury shadowstalker"..GREY..")";
		GREY.."15) "..ORNG.."Khan Dez'hepah "..GREY.."(73.48)";
		GREY.."16) "..ORNG.."Gelkis Alliance "..GREY.."(68.71)";
		GREY.."17) Go back to ".._RED.."Ghost Walker Post "..GREY.."(56.59), and turn in "..ORNG.."Khan Dez'hepah"..GREY..". Accept "..ORNG.."Centaur Bounty"..GREY..". Turn";
		GREY.."in "..ORNG.."Befouled by Satyr"..GREY..". Turn in "..ORNG.."The Corrupter Part2"..GREY..". Accept "..ORNG.."The Corrupter Part3"..GREY..".";
		GREY.."18) Then run to ".._RED.."Shadowprey Village "..GREY.."(stopping along the way to turn this in: "..ORNG.."Gelkis Alliance "..GREY.."at 36.79)";
		GREY.."Accept "..ORNG.."Stealing Supplies"..GREY..".";
		GREY.."19) Accept all quests at ".._RED.."Shadowprey Village "..GREY.."(at 24.71), which include:  "..ORNG.."Hunting in Stranglethorn"..GREY..".";
		ORNG.."Hand of Iruxos"..GREY..", "..ORNG.."Clam Bait"..GREY..", and "..ORNG.."Other Fish to Fry"..GREY..".";
		GREY.."20) Make ".._RED.."Shadowprey Village "..GREY.."your home.";
		GREY.."21) Then do:";
		GREY.."22) go in the water and collect "..GREN.."10 Shellfish "..GREY.."(from the Shellfish traps)";
		GREY.."23) turn those in for "..GREN.."2 Bloodbelly Fish"..GREY..".";
		GREY.."24) Travel up the water (collecting "..GREN.."Soft-shelled Clam Meat "..GREY.."for the quest "..ORNG.."Clam Bait "..GREY.."along the way)";		
	};
	
	d2 = {
		ZoneName = "32-34 (Part 2)";
		Location = "Desolace";
		GREY.."24) Then accept "..ORNG.."Claim Rackmore's Treasure! "..GREY.."(the chest/wrecked boat along the shore, 36.30)";  
		GREY.."(the "..GREN.."silver key "..GREY.."is dropped by a "..BLUE.."drysnap"..GREY..", and the "..GREN.."golden key "..GREY.."is dropped by a "..BLUE.."Slitherblade"..GREY..")";
		GREY.."25) Go accept "..ORNG.."Sceptre of Light "..GREY.."(the argent dawn dude, at 38.27)(You might have a full questlog)";
		GREY.."26) Then go do following at ".._RED.."Thunder Axe Fortress "..GREY.."(54.29):";
		GREY.."27) "..ORNG.."The Burning of Spirits";
		GREY.."28) "..ORNG.."Sceptre of Light";
		GREY.."29) "..ORNG.."Hand of Iruxos"; 
		GREY.."30) Then grind your way back to the argent dawn dude (38.27).";
		GREY.."31) Then turn "..ORNG.."Sceptre of Light "..GREY.."in and get "..ORNG.."Book of the Ancients "..GREY.."quest.";
		GREY.."32) Then go do all this stuff in the water to the west:";
		GREY.."33) "..ORNG.."Other Fish to Fry";
		GREY.."34) "..ORNG.."Clam Bait";
		GREY.."35) "..ORNG.."Book of the Ancients "..GREY.."(27.6)";
		GREY.."36) "..ORNG.."The Corrupter Part3 "..GREY.."(collect a "..GREN.."Oracle Crystal "..GREY.."from a "..BLUE.."Slitherblade Oracle"..GREY..")";
		GREY.."37) "..ORNG.."Claim Rackmore's Treasure!";
		GREY.."38) Then turn in "..ORNG.."Claim Rackmore's Treasure! "..GREY.."at the little chest (29.8)";
		GREY.."39) Turn in "..ORNG.."Book of the Ancients "..GREY.."(38.27)";
		GREY.."40) Then go accept "..ORNG.."Bone Collector "..GREY.."(62.38) (grinding mobs along the way)";
		GREY.."41) Go to ".._RED.."Ghost Walker Post "..GREY.."(56.59), accept and turn in "..ORNG.."The Burning of Spirits"..GREY..", "..ORNG.."The Corrupter Part3"..GREY..".";
		GREY.."Accept and then turn in "..ORNG.."The Corrupter Part4"..GREY..". Accept "..ORNG.."Alliance Relations"..GREY..". Skip "..ORNG.."The Corrupter Part5"..GREY..".";
		GREY.."43) Then go do:";
		GREY.."44) "..ORNG.."Bone Collector "..GREY.."(done at the ".._RED.."kodo graveyard"..GREY..", 51.58)";
		GREY.."45) Then "..ORNG.."Centaur Bounty "..GREY.."and "..ORNG.."Stealing Supplies "..GREY.."(70.74)";
		GREY.."46) Then go turn in "..ORNG.."Centaur Bounty "..GREY.."(56.59)";
		GREY.."47) Then turn in "..ORNG.."Bone Collector "..GREY.."(62.38)";
		GREY.."48) "..GREN.."Hearth "..GREY.."to ".._RED.."Shadowprey Village"..GREY..".";
		_RED.."49) "..GREY.."stable pet";		
	};

	d3 = {
		ZoneName = "32-34 (Part 3)";
		Location = "Desolace";
		GREY.."50) Turn in all quests there, which are: "..ORNG.."Hand of Iruxos"..GREY..", "..ORNG.."Other Fish to Fry "..GREY.."and "..ORNG.."Clam Bait";
		GREY.."51) You should be "..PURP.."level 34 "..GREY.."now for sure.";
		GREY.."52) Turn in "..ORNG.."Stealing Supplies "..GREY.."(36.79) . i SKIP "..ORNG.."Ongeku";
		_RED.."53) "..GREY.."go tame a "..BLUE.."Scorpashi Lasher "..GREY.."(lvl 34) to get *Claw rank 5*";
		GREY.."54) Fly to ".._RED.."CT "..GREY.."(In the ".._RED.."Barrens"..GREY.."). (the flight master is on the docks in ".._RED.."Shadowprey Village"..GREY..")";
		GREY.."55) Once at ".._RED.."CT"..GREY..", run south-east into ".._RED.."Dust Wallowmarsh "..GREY.."(51.79 in the ".._RED.."Barrens"..GREY..").";
		GREY.."56) Collect the 3 quest-objects at the ".._RED.."Shady Rest Inn";
		GREY.."57) "..GREN.."Suspicious Hoofprints "..GREY.."(just right outside in front of the inn)";
		GREY.."58) "..GREN.."Lieutenant Paval Reethe "..GREY.."(laying on one of the planks on the ground)";
		GREY.."59) "..GREN.."The Black Shield "..GREY.."(on top of the fireplace)";
		GREY.."60) Now run to ".._RED.."Brackenwall Village "..GREY.."(35.29)";
		GREY.."61) Turn those 3 quests in ("..ORNG.."Suspicious Hoofprints"..GREY..", "..ORNG.."Lieutenant Paval Reethe"..GREY.." and "..ORNG.."The Black Shield"..GREY..")."; 
		GREY.."Accept and then turn in "..ORNG.."The Black Shield Part2"..GREY..". Skip "..ORNG.."The Black Shield Part3 "..GREY.."for now.";
		GREY.."62) Stop at the "..BLUE.."troll vendor"..GREY..", buy the "..GREN.."3 first aid books"..GREY..".";
		GREY.."63) Fly to ".._RED.."Ratchet "..GREY.."to turn in "..ORNG.."Goblin Sponsorship "..GREY.."& "..ORNG.."Wharfmaster Dizzywig"..GREY..". Accept"; 
		ORNG.."Goblin Sponsorship Part2 "..GREY.."and "..ORNG.."Parts for Kravel"..GREY..".";
		GREY.."64) Get on the boat to go to ".._RED.."BB (Booty Bay)"..GREY..". (while waiting for the boat, build up "..GREN.."first aid"..GREY..")";	
		GREY.."65) At this point you might want to run ".._RED.."Scarlet Monastery"..GREY.." to catch up if you've fallen behind.";
	};

	d4 = {
		ZoneName = "34-36";
		Location = "Stranglethorn Vale";
		GREY.."01) Turn in "..ORNG.."Goblin Sponsorship Part2"..GREY..". Accept "..ORNG.."Goblin Sponsorship Part3"..GREY..".  Make ".._RED.."BB "..GREY.."your home!  Accept";
		ORNG.."Singing Blue Shards"..GREY..", "..ORNG.."Bloodscalp Ears"..GREY..", "..ORNG.."Hostile Takeover "..GREY.."and "..ORNG.."Investigate the Camp"..GREY..".  Turn in";
		ORNG.."Goblin Sponsorship Part3 "..GREY.."at "..BLUE.."Baron Revilgaz"..GREY..". Accept "..ORNG.."Goblin Sponsorship Part4"..GREY..".";
		_RED.."02) "..BLUE.."cat "..GREY.."should still be stabled, you should still have the "..BLUE.."Scorpashi Lasher "..GREY.."as a pet.";
		GREY.."03) Then do the following:";
		GREY.."04) Fly to ".._RED.."Grom'gol"..GREY..". Your Questlog Might get overfilled here, run some then pick up the rest.";
		GREY.."05) Grab ALL quests in ".._RED.."grom'gol"..GREY..": "..ORNG.."The Defense of Grom'gol"..GREY..", "..ORNG.."Mok'thardin's Enchantment"..GREY..",";
		ORNG.."Bloodscalp Insight"..GREY..", "..ORNG.."Hunt for Yenniku"..GREY..", "..ORNG.."Trollbane"..GREY..", "..ORNG.."Bloody Bone Necklaces"..GREY..", "..ORNG.."The Vile Reef"..GREY..".";
		_RED.."06) Get new hunter spells/abilities.";
		_RED.."07) "..GREY.."go tame a "..BLUE.."Stranglethorn Tiger "..GREY.."to get *Dash rank 1*";
		_RED.."08) "..GREY.."then, this is the main pet i use for the rest of the game.";
		GREY.."09) ".._RED.."IMPORTANT: "..GREY.."Make sure you save any "..GREN.."Green Hills of Stranglethorn pages "..GREY.."you find and mail them to";
		GREY.."your alt for storage, you will need them for a later quest. You will need one of each of the"; 
		GREY.."following pages: "..GREN.."1"..GREY..", "..GREN.."4"..GREY..", "..GREN.."6"..GREY..", "..GREN.."8"..GREY..", "..GREN.."10"..GREY..", "..GREN.."11"..GREY..", "..GREN.."14"..GREY..", "..GREN.."16"..GREY..", "..GREN.."18"..GREY..", "..GREN.."20"..GREY..", "..GREN.."21"..GREY..", "..GREN.."24"..GREY..", "..GREN.."25"..GREY..", "..GREN.."26"..GREY..", and "..GREN.."27"..GREY..".  Once your alt collects";
		GREY.."all the pages, mail them back to your main. Now go complete these quests:";
		GREY.."10) "..ORNG.."Singing Blue Shards "..GREY.."(25.19)";
		GREY.."11) "..ORNG.."Tiger Mastery "..GREY.."("..BLUE.."Elder Stranglethorn Tigers"..GREY..") (31.19)";
		GREY.."12) "..ORNG.."Bloodscalp Ears along "..GREY.."with "..ORNG.."Bloodscalp Insight";
		GREY.."13) "..ORNG.."Hunt for Yenniku";
		GREY.."14) "..ORNG.."Bloody Bone Necklaces "..GREY.."(you don't have to finish all of this now)";
		GREY.."15) "..ORNG.."Raptor Mastery "..GREY.."("..BLUE.."Lashtail Raptors"..GREY..")";
		GREY.."16) "..ORNG.."The Defense of Grom'gol";
		GREY.."17) Once all those are done (besides "..ORNG.."Bloody Bone Necklaces"..GREY.."), go to ".._RED.."Grom'gol"..GREY..".";
		GREY.."18) Turn in "..ORNG.."Hunt for Yenniku"..GREY..". Accept "..ORNG.."Headhunting";
		GREY.."19) Turn in "..ORNG.."The Defense of Grom'gol"..GREY..". Accept "..ORNG.."The Defense of Grom'gol part2"..GREY..".  Also turn in";
		ORNG.."Bloodscalp Insight"..GREY..". Accept "..ORNG.."An Unusual Patron"..GREY..".";		
	};
	
	d5 = {
		ZoneName = "34-36 (Part 2)";
		Location = "Stranglethorn Vale";
		GREY.."20) Should be "..PURP.."lvl 35 "..GREY.."now, either way buy "..PURP.."lvl 35 "..GREN.."food/water/repair "..GREY.."(so that you are prepared for when";
		GREY.."you do turn "..PURP.."level 35"..GREY.."), then go do in the following order:";
		GREY.."21) "..ORNG.."Headhunting "..GREY.."along with finishing up "..ORNG.."Bloody Bone Necklaces "..GREY.."(21.14)";
		GREY.."22) "..ORNG.."An Unusual Patron "..GREY.."(the altar is at 19.22)";
		GREY.."23) "..ORNG.."The Vile Reef "..GREY.."along with "..ORNG.."Encrusted Tail Fins "..GREY.."(24.24) Use a "..GREN.."breath potion "..GREY.."if you can.";
		GREY.."24) Then go to ".._RED.."Nesingwary's Expedition "..GREY.."(35.10). turn in ALL quests, accept all new ones"; 
		GREY.."(except "..ORNG.."The Green Hills of Stranglethorn"..GREY..").  Then go do:";
		GREY.."25) "..ORNG.."Tiger Mastery "..GREY.."("..BLUE.."Sin'Dall"..GREY..")  (he is usually on top of the hill at 31.17).  Once that is done, go";
		GREY.."turn it in, then go do:";
		GREY.."26) "..ORNG.."Hostile Takeover "..GREY.."along with "..ORNG.."Goblin Sponsorship "..GREY.."(44.19)";
		GREY.."27) "..ORNG.."Panther Mastery "..GREY.."along with "..ORNG.."Mok'thardin's Enchantment "..GREY.."(kill "..BLUE.."shadowmaw panthers"..GREY..") (48.21)";
		GREY.."28) "..ORNG.."The Defense of Grom'gol part2 "..GREY.."(36.30), once that's done.";
		GREY.."29) Head up north and turn in "..ORNG.."Panther Mastery"..GREY..". accept "..ORNG.."Panther Mastery "..GREY.."("..BLUE.."Bhag'thera"..GREY..") but don't do it now.";
		GREY.."30) "..GREN.."Hearth "..GREY.."to ".._RED.."BB"..GREY..", turn in "..ORNG.."Singing Blue Shards"..GREY..", "..ORNG.."Hostile Takeover"..GREY..", "..ORNG.."Bloodscalp Ears"..GREY..", "..ORNG.."Investigate the Camp";
		GREY.."31) Turn in "..ORNG.."Goblin Sponsorship part4"..GREY..". Accept "..ORNG.."Goblin Sponsorship part5.";
		GREY.."32) Fly to ".._RED.."Grom'gol"..GREY..", turn in all quests: "..ORNG.."The Defense of Grom'gol"..GREY..", "..ORNG.."An Unusual Patron"..GREY..",";
		ORNG.."Mok'thardin's Enchantment"..GREY..", "..ORNG.."Headhunting"..GREY..", "..ORNG.."Bloody Bone Necklaces "..GREY.."and "..ORNG.."The Vile Reef"..GREY..".";
		GREY.."33) Should be "..PURP.."level 36 "..GREY.."now, if not, grind to it. Then get new hunter spells/abilities.";
		GREY.."34) Get on the zeppelin to go to the ".._RED.."Undercity"..GREY..".";
		GREY.."35) Once in the ".._RED.."UC"..GREY..", turn in "..GREN.."60 Silk Cloth "..GREY.."for "..ORNG.."A Donation of Silk "..GREY.."quest (at 71.28).";
		GREY.."36) Accept "..ORNG.."To Steal From Thieves "..GREY.."(63.49)";
		GREY.."37) Then fly to ".._RED.."Hammerfall"..GREY..".";		
	};	
	
	d6 = {
		ZoneName = "36-37";
		Location = "Arathi Highlands";
		GREY.."01) Make ".._RED.."Hammerfall "..GREY.."your home.";
		GREY.."02) Turn in "..ORNG.."Trollbane"..GREY..". I SKIP "..ORNG.."Sigil of Strom"..GREY..".";
		GREY.."03) Accept "..ORNG.."Foul Magics "..GREY.."and "..ORNG.."Guile of the Raptor"..GREY..".";
		GREY.."04) Then go west of ".._RED.."hammerfall "..GREY.."and accept "..ORNG.."The Princess Trapped "..GREY.."(62.33).";
		GREY.."05) Then go do "..ORNG.."The Princess Trapped "..GREY.."(mobs are east of ".._RED.."hammerfall"..GREY..").";
		GREY.."06) Go in the cave (look for the tree, shows you where the hidden path is).";
		GREY.."07) Then turn in "..ORNG.."The Princess Trapped "..GREY.."(in the cave). Accept "..ORNG.."Stones of Binding"..GREY..".";
		GREY.."08) Build up "..GREN.."first aid"..GREY..", go do "..ORNG.."Triage "..GREY.."("..BLUE.."Doctor Gregory Victor"..GREY..", "..GREN.."first aid "..GREY.."training in ".._RED.."Hammerfall"..GREY..").";
		GREY.."09) Then do:";
		GREY.."10) "..ORNG.."Stones of Binding "..GREY.."(first "..GREN.."key"..GREY..", just west of ".._RED.."hammerfall "..GREY.."66.29)";
		GREY.."11) Then do: "..ORNG.."To Steal From Thieves "..GREY.."(at 54.40).";
		GREY.."12) Go down south a little and get the next "..GREN.."key "..GREY.."for "..ORNG.."Stones of Binding "..GREY.."(52.50)";
		GREY.."13) Then go down and do:";
		GREY.."14) "..ORNG.."Guile of the Raptor "..GREY.."(killing "..BLUE.."Highland Fleshstalkers"..GREY..", around 50.75).";
		GREY.."15) Then go up and do "..ORNG.."The Hammer May Fall "..GREY.."(at 34.45).";
		GREY.."16) Then go up and do "..ORNG.."Foul Magics "..GREY.."(at 31.28).";
		GREY.."17) Then go west and get the last "..GREN.."key "..GREY.."for "..ORNG.."Stones of Binding "..GREY.."(25.31).";
		GREY.."18) Go discover ".._RED.."Stromguard"..GREY..", and turn in "..ORNG.."Stones of Binding "..GREY.."(at the Circle of Inner Binding) (36.57)";
		GREY.."19) Note: i SKIP "..ORNG.."Breaking the Keystone (Elite)";
		GREY.."20) "..GREN.."Hearth "..GREY.."to ".._RED.."Hammerfall"..GREY..".";
		GREY.."21) Turn in "..ORNG.."Foul Magics"..GREY..", "..ORNG.."Guile of the Raptor"..GREY.." and "..ORNG.."The Hammer May Fall"..GREY..". SKIP "..ORNG.."Call to Arms";
		GREY.."22) Complete the "..ORNG.."Guile of the Raptor "..GREY.."quest chain by running back and forth.";
		GREY.."23) NOTE: i SKIP all ".._RED.."stromguard "..GREY.."quests (but I still recommend doing them if you can find groups)";
		GREY.."24) Fly to ".._RED.."Tarren Mill"..GREY..".";		
	};
	
	d7 = {
		ZoneName = "37-37";
		Location = "Alterac Mountains";
		GREY.."01) Once at ".._RED.."TM"..GREY..", accept "..ORNG.."Stone Tokens"..GREY..", "..ORNG.."Prison Break In "..GREY.."and "..ORNG.."Crown of Will";
		GREY.."02) "..ORNG.."Frostmaw "..GREY.."quest (at 37.69 in ".._RED.."Alterac Mountains"..GREY..")";
		GREY.."03) Then go do: "..ORNG.."Crown of Will "..GREY.."(at ".._RED.."Ruins of Alterac"..GREY..", around 40.50)";
		GREY.."04) Then go do "..ORNG.."Stone Tokens "..GREY.."along with "..ORNG.."Prison Break In "..GREY.."in ".._RED.."Alterac Mountains "..GREY.."(20.85)";
		GREY.."05) Then run back to ".._RED.."Tarren Mill "..GREY.."and turn in "..ORNG.."Stone Tokens "..GREY.."and "..ORNG.."Prison Break In"..GREY..". SKIP "..ORNG.."Dalaran Patrols"; 
		GREY.."and "..ORNG.."Bracers of Binding"..GREY..".";
		GREY.."06) Turn in "..ORNG.."Crown of Will"..GREY..". SKIP "..ORNG.."Crown of Will Part2"..GREY..".";
		GREY.."07) Then fly to the ".._RED.."UC"..GREY..".";
		GREY.."08) Once at ".._RED.."UC"..GREY..", turn in "..ORNG.."To Steal From Thieves"..GREY..".";
		_RED.."09) "..GREY.."make sure you buy some "..GREN.."fungus food "..GREY.."(food for a turtle you’re about to tame later)";
		GREY.."10) Get on zeppelin to go to ".._RED.."orgrimmar"..GREY..".";
		GREY.."11) Once in ".._RED.."Orgrimmar"..GREY..", turn in "..ORNG.."Alliance Relations "..GREY.."at "..BLUE.."Keldran"..GREY..". (at 21.53)";
		GREY.."12) Then fly to ".._RED.."XRs"..GREY..".";
		GREY.."13) Make ".._RED.."XRs "..GREY.."your home.";
		GREY.."14) Fly to ".._RED.."Freewind Post (1k needles)"..GREY..".";		
	};	
	
	d8 = {
		ZoneName = "37-38";
		Location = "Thousand Needles";	
		_RED.."01) "..GREY.."stable pet";
		GREY.."02) Run towards the ".._RED.."Shimmering Flats"..GREY..".";
		GREY.."03) Turn in "..ORNG.."The Swarm Grows"..GREY..". Accept "..ORNG.."The Swarm Grows part2"..GREY.." (67.63)";
		_RED.."04) "..GREY.."go tame a level 34-35 "..BLUE.."turtle "..GREY.."(for Bite Rank5), feed the fungus/fruit/fish to him.";
		GREY.."05) Stop at the "..BLUE.."goblins "..GREY.."and turn in "..ORNG.."Parts for Kravel"..GREY..". Accept "..ORNG.."Delivery to the Gnomes"..GREY..". turn in";
		ORNG.."Delivery to the Gnomes"..GREY..". Turn in "..ORNG.."Goblin Sponsorship part3"..GREY..". Accept "..ORNG.."The Eighteenth Pilot"..GREY..". Turn in";
		ORNG.."The Eighteenth Pilot"..GREY..". Accept "..ORNG.."Razzeric's Tweaking"..GREY..". Turn in "..ORNG.."Encrusted Tail Fins"..GREY..".";
		GREY.."06) Accept "..ORNG.."The Rumormonger"..GREY..".";
		GREY.."07) Do the following quests:";
		GREY.."08) "..ORNG.."The Swarm Grows "..GREY.."and "..ORNG.."Parts of the Swarm "..GREY.."(quest starts from an item drop) (71.85)";
		GREY.."09) Then go turn in "..ORNG.."The Swarm Grows "..GREY.."(67.63)";
		GREY.."10) "..GREN.."Hearth "..GREY.."to ".._RED.."XRs"..GREY..".";
		_RED.."11) "..GREY.."abandon "..BLUE.."turtle, get "..BLUE.."cat "..GREY.."back out.";
		GREY.."12) Turn in "..ORNG.."Parts of the Swarm"..GREY..". Accept "..ORNG.."Parts of the Swarm part2"..GREY..".";
		GREY.."13) Fly to ".._RED.."TB "..GREY.."and turn in "..ORNG.."Frostmaw "..GREY.."(61.80). Accept "..ORNG.."Deadmire"..GREY..".";
		GREY.."14) Get new spells/abilities.";
		GREY.."15) Fly to ".._RED.."Dustwallow Marsh"..GREY..".";		
	};
	
	d9 = {
		ZoneName = "38-39";
		Location = "Dustwallow Marsh";	
		GREY.."01) Make ".._RED.."Brackenwall Village "..GREY.."your home.";
		GREY.."02) Accept "..ORNG.."Theramore Spies"..GREY..", "..ORNG.."Check Up on Tabetha"..GREY..", "..ORNG.."The Black Shield"..GREY..", "..ORNG.."Twilight of the Dawn Runner "..GREY.."and"; 
		ORNG.."The Hermit of Witch Hill"..GREY..".";
		GREY.."03) While doing the following steps, focus on also doing "..ORNG.."Theramore Spies"..GREY..".";
		GREY.."04) Go slightly south of ".._RED.."Brackenwall Village "..GREY.."and accept "..ORNG.."Hungry! "..GREY.."(the "..BLUE.."orge "..GREY.."at 35.38)";
		GREY.."05) Go to the ".._RED.."Northpoint Tower "..GREY.."at 46.23 and do "..ORNG.."Twilight of the Dawn Runner"; 
		GREY.."(the Cargo is at the very top of the tower)";
		GREY.."06) Stop at ".._RED.."Jarl's cabin "..GREY.."(55.25) and get "..ORNG.."The Lost Report "..GREY.."quest (the dirt mound next to his cabin)";
		GREY.."07) Then turn in "..ORNG.."The Hermit of Witch Hill"..GREY..". Accept "..ORNG.."Marsh Frog Legs "..GREY.."and "..ORNG.."What's Haunting Witch Hill"..GREY..".";
		GREY.."08) Do "..ORNG.."Marsh Frog Legs "..GREY.."and "..ORNG.."What's Haunting Witch Hill "..GREY.."(just north). Once they are both done, turn"; 
		GREY.."them in. Accept "..ORNG.."Jarl Needs Eyes "..GREY.."and "..ORNG.."The Witch's Bane"..GREY..".";
		GREY.."09) Go do "..ORNG.."Hungry! "..GREY.."(around 57.15).  Also focus on doing "..ORNG.."The Witch's Bane"..GREY..".";
		GREY.."10) Then finish up "..ORNG.."The Witch's Bane "..GREY.."and turn it in (at 55.25). Accept "..ORNG.."Cleansing Witch Hill"..GREY..".";
		GREY.."11) Do "..ORNG.."Cleansing Witch Hill "..GREY.."and then turn it in.";
		GREY.."12) I do the escort quest: "..ORNG.."Stinky's Escape "..GREY.."(starts at 46.17) (grind mobs during this quest)";
		GREY.."13) Then go do "..ORNG.."Jarl Needs Eyes "..GREY.."along with "..ORNG.."The Black Shield "..GREY.."(at 32.22)";
		GREY.."14) After that finish up "..ORNG.."Theramore Spies"..GREY..".";
		GREY.."15) Then stop at ".._RED.."Brackenwall Village "..GREY.."and turn in "..ORNG.."Twilight of the Dawn Runner"..GREY..", "..ORNG.."The Lost Report "..GREY.."and";
		ORNG.."Theramore Spies"..GREY..". Accept "..ORNG.."The Theramore Docks"..GREY..". Turn in "..ORNG.."The Black Shield"..GREY..". Accept "..ORNG.."The Black Shield "..GREY.."again";
		GREY.."and turn it in.";
		GREY.."16) Turn in "..ORNG.."Hungry! "..GREY.."(35.38)";
		GREY.."17) Run down south to ".._RED.."Tabetha's Farm "..GREY.."(45.57) and turn in "..ORNG.."Check Up on Tabetha"..GREY..". Accept"; 
		ORNG.."Help for Mudsprocket"..GREY..", "..ORNG.."The Grimtotem Weapon"..GREY..", "..ORNG.."The Reagent Thief"..GREY..".";
		GREY.."18) Also accept "..ORNG.."Direhorn Raiders "..GREY.."and "..ORNG.."The Zeppelin Crash "..GREY.."(just right outside of the hut)";
		GREY.."19) Grind your way to ".._RED.."Beezil's Wreck "..GREY.."(53.56) and turn in "..ORNG.."The Zeppelin Crash"..GREY..". Accept";
		ORNG.."Corrosion Prevention "..GREY.."and "..ORNG.."Secure the Cargo!"..GREY..".";		
	};	

	e1 = {
		ZoneName = "38-39 (Part 2)";
		Location = "Dustwallow Marsh";	
		GREY.."20) Then do "..ORNG.."Corrosion Prevention "..GREY.."along with "..ORNG.."Secure the Cargo! "..GREY.."(done basically right where you are at)";
		GREY.."Once they are done, turn them in. Accept "..ORNG.."Delivery for Drazzit"..GREY..".";
		GREY.."21) Go up to 46.48 and do "..ORNG.."Direhorn Raiders"..GREY..".";
		GREY.."22) While there make sure you kill "..BLUE.."Apothecary Cylla"..GREY..", she drops a "..GREN.."Sealed Letter"..GREY..", which starts"; 
		ORNG.."Signs of Treachery"..GREY..".";
		GREY.."23) Go finish up the following quests:";
		GREY.."24) "..ORNG.."Deadmire "..GREY.."(this "..BLUE.."croc "..GREY.."roams around 47.57)";
		GREY.."25) "..ORNG.."The Reagent Thief";
		GREY.."26) "..ORNG.."The Grimtotem Weapon";
		GREY.."27) Once they are done go to ".._RED.."Tabetha's Farm "..GREY.."(45.57) and turn in "..ORNG.."Direhorn Raiders"..GREY..",";
		ORNG.."The Grimtotem Weapon "..GREY.."and "..ORNG.."The Reagent Thief";
		GREY.."28) Then go to ".._RED.."Mudsprocket "..GREY.."(at 41.73).";
		GREY.."29) Turn in "..ORNG.."Delivery for Drazzit "..GREY.."and "..ORNG.."Help for Mudsprocket";
		GREY.."30) Get the "..GREN.."FP "..GREY.."there and fly to ".._RED.."Brackenwall Village"..GREY..", ".._RED.."Dustwallow Marsh"..GREY..".";
		GREY.."31) Stop back at ".._RED.."Jarl's cabin "..GREY.."(55.25), go to the dirt mound once again to get "..ORNG.."The Severed Head";
		GREY.."32) Turn in "..ORNG.."Jarl Needs Eyes"..GREY..". Accept "..ORNG.."Jarl Needs a Blade";
		GREY.."33) Go kill "..BLUE.."Razorspine "..GREY.."(at around 57.19) for the quest "..ORNG.."Jarl Needs a Blade";
		GREY.."34) Go back and turn in "..ORNG.."Jarl Needs a Blade"..GREY..".";
		GREY.."35) Then go do The ".._RED.."Theramore Docks "..GREY.."the "..GREN.."Captain's Documents "..GREY.."are under the water at (71.51).  Do not"; 
		GREY.."go through the town, just go around the side of the town and into the water.";
		GREY.."36) Then "..GREN.."Hearth back to ".._RED.."Brackenwall Village"..GREY..".";
		GREY.."37) Turn in "..ORNG.."Signs of Treachery"..GREY..", "..ORNG.."The Theramore Docks "..GREY.."and "..ORNG.."The Severed Head"..GREY..". Accept "..ORNG.."The Troll Witchdoctor"..GREY..".";
		GREY.."38) Fly to ".._RED.."Thunder Bluff"..GREY..".";
		GREY.."39) Turn "..ORNG.."Deadmire "..GREY.."in.";
		GREY.."40) Fly to ".._RED.."Ratchet"..GREY..", turn in "..ORNG.."Stinky's Escape "..GREY.."while you're there.";
		GREY.."41) Get on the boat to go to ".._RED.."BB"..GREY..".";		
	};	
	
	e2 = {
		ZoneName = "39-40";
		Location = "Stranglethorn Vale";	
		GREY.."01) Accept "..ORNG.."The Captain's Chest"..GREY..", "..ORNG.."The Bloodsail Buccaneers"..GREY.." and "..ORNG.."Scaring Shaky"..GREY..".";
		GREY.."02) Make ".._RED.."BB "..GREY.."your home, then go up the steps and turn in "..ORNG.."The Rumormonger"..GREY..".";
		GREY.."Accept "..ORNG.."Dream Dust in the Swamp"..GREY..".";
		GREY.."03) Fly to ".._RED.."Grom'gol"..GREY..".";
		GREY.."04) Accept "..ORNG.."Mok'thardin's Enchantment"..GREY..".";
		GREY.."05) Turn in "..ORNG.."The Troll Witchdoctor"..GREY..". Right click the "..GREN.."cauldron"..GREY..". Accept "..ORNG.."Marg Speaks"..GREY..".";
		GREY.."06) Go do:";
		GREY.."07) "..ORNG.."Raptor Mastery "..GREY.."along with "..ORNG.."Mok'thardin's Enchantment "..GREY.."(31.41)  (Kill "..BLUE.."Jungle Stalkers"..GREY..")";
		GREY.."08) Once that is done, go back to ".._RED.."Grom'Gol "..GREY.."and turn in "..ORNG.."Mok'thardin's Enchantment"..GREY.."."; 
		GREY.."Accept "..ORNG.."Mok'thardin's Enchantment part3"..GREY..".";
		GREY.."09) Then do "..ORNG.."Panther Mastery "..GREY.."("..BLUE.."Bhag'thera"..GREY..")";
		GREY.."(he has 3 different spawn points, either at 48.20, 49.23, or 47.26)";
		GREY.."10) Then turn in "..ORNG.."Panther Mastery "..GREY.."("..BLUE.."Bhag'thera"..GREY..") and "..ORNG.."Raptor Mastery "..GREY.."("..BLUE.."Jungle Stalkers"..GREY..")";
		GREY.."at ".._RED.."Nesingwary's Expedition "..GREY.."(35.10)";
		GREY.."11) Accept "..ORNG.."Raptor Mastery "..GREY.."("..BLUE.."Tethis"..GREY..") but don't do it now.";
		GREY.."12) "..GREN.."Hearth "..GREY.."to ".._RED.."BB"..GREY..".";
		GREY.."13) Then go do:";
		GREY.."14) "..ORNG.."The Bloodsail Buccaneers "..GREY.."(just slightly north-west of ".._RED.."BB "..GREY.."at 27.69, there's a little "..GREN.."note "..GREY.."on a";
		GREY.."barrel, click on it, accept new quest).";
		GREY.."15) "..ORNG.."Scaring Shaky "..GREY.."along with "..ORNG.."Mok'thardin's Enchantment part3 "..GREY.."(32.66)";
		GREY.."16) Once that's done run back into ".._RED.."BB"..GREY..".";
		GREY.."17) Turn in "..ORNG.."Scaring Shaky"..GREY..". Accept "..ORNG.."Return to MacKinley"..GREY..".";
		GREY.."18) Turn in "..ORNG.."The Bloodsail Buccaneers"..GREY..". Accept "..ORNG.."The Bloodsail Buccaneers"..GREY..".";
		GREY.."19) Turn in "..ORNG.."Return to MacKinley"..GREY..".";
		GREY.."20) Then turn in "..ORNG.."The Bloodsail Buccaneers "..GREY.."at "..BLUE.."Fleet Master Seahorn"..GREY..".";
		GREY.."21) Fly to ".._RED.."Grom'gol"..GREY..".";		
	};	

	e3 = {
		ZoneName = "39-40 (Part 2)";
		Location = "Stranglethorn Vale";	
		GREY.."22) Turn in "..ORNG.."Mok'thardin's Enchantment part3"..GREY..". Accept "..ORNG.."Mok'thardin's Enchantment part4"..GREY..".";
		GREY.."23) Make ".._RED.."Grom'gol "..GREY.."your home.";
		GREY.."24) You should be "..PURP.."level 40 "..GREY.."for sure now.";
		GREY.."25) I get new hunter spells/abilities at ".._RED.."grom'gol"..GREY..", also make sure you get the "..PURP.."lvl 40 "..GREN.."arrows/bullets"..GREY..".";
		GREY.."26) Then get on the zeppelin to go to the ".._RED.."UC"..GREY..".";
		GREY.."27) Fly to ".._RED.."Hammerfall"..GREY..".";
		GREY.."28) Run all the way to the ".._RED.."Badlands"..GREY..".";
		GREN.."29) "..GREY.."I suggest world chat ".._RED.."/join world "..GREY.."or get "..GREN.."Bennylava's TriviaBot "..GREY.."to keep yourself entertained OTW";	
	};		
	
};

AtlasLVE = {

	e4 = {
		ZoneName = "40-41";
		Location = "Badlands";
		GREY.."01) As you enter ".._RED.."Badlands"..GREY..", run southwest to (42.52)";
		GREY.."02) Turn in "..ORNG.."Martek the Exiled "..GREY.."(at 42.52)  accept "..ORNG.."Indurium "..GREY.."and "..ORNG.."Barbecued Buzzard Wings";
		GREY.."03) Go down south a little and do "..ORNG.."Indurium "..GREY.."(51.67)";
		GREY.."04) Go back up and turn "..ORNG.."Indurium "..GREY.."in  accept "..ORNG.."News for Fizzle";
		GREY.."05) Then go north-west and accept "..ORNG.."Study of the Elements: Rock "..GREY.."(at 25.44)."; 
		GREY.."NOTE: If you have the "..GREN.."Frost Oil "..GREY.."item, accept and complete the quest "..ORNG.."Coolant Heads Prevail"..GREY..".";
		GREY.."06) Grind your way west to ".._RED.."Kargath "..GREY.."(4.46)";
		GREY.."07) Get "..GREN.."FP "..GREY.."at ".._RED.."Kargath"..GREY..".";
		GREY.."08) Do ".._RED.."NOT "..GREY.."make ".._RED.."Kargath "..GREY.."your home. (it should still be ".._RED.."Grom'gol"..GREY..")";
		GREY.."09) Accept: "..ORNG.."Unclaimed Baggage"..GREY..", "..ORNG.."Coyote Thieves"..GREY..", "..ORNG.."Report to Helgrum"..GREY..", "..ORNG.."Broken Alliances "..GREY.."and";
		ORNG.."Badlands Reagent Run"..GREY..".";
		GREY.."10) Then go do:";
		GREY.."11) "..ORNG.."Barbecued Buzzard Wings";
		GREY.."12) "..ORNG.."Coyote Thieves";
		GREY.."13) "..ORNG.."Broken Alliances "..GREY.."(i skip the next part to this quest)";
		GREY.."14) "..ORNG.."Badlands Reagent Run";
		GREY.."15) "..ORNG.."Unclaimed Baggage "..GREY.."(this is done at ".._RED.."Angor Fortress"..GREY..", 42.31) (the "..GREN.."Pack "..GREY.."is in an orange barrel on"; 
		GREY.."the left entrance of the fortress, and the "..GREN.."Rapier "..GREY.."is on the weapon rack going through the right"; 
		GREY.."entrance of the fortress)";
		GREY.."16) "..ORNG.."Study of the Elements: Rock "..GREY.."("..BLUE.."lesser rock elementals"..GREY.."), turn in, then do";
		GREY.."17) "..ORNG.."Study of the Elements: Rock "..GREY.."("..BLUE.."rock elementals"..GREY.."), turn in, then do";
		GREY.."18) "..ORNG.."Study of the Elements: Rock "..GREY.."("..BLUE.."greater rock elementals"..GREY..")";
		GREY.."19) Then make sure all Badlands quests (besides "..ORNG.."Report to Helgrum"..GREY..") are done and turned in.";
		GREY.."20) You should be about "..PURP.."level 41 "..GREY.."right now, if not, that's okay.";
		GREY.."21) "..GREN.."Hearth "..GREY.."to ".._RED.."Grom'gol"..GREY..".";		
	};
	
	e5 = {
		ZoneName = "40-41 (Part 2)";
		Location = "Badlands";
		GREY.."22) Go turn in all the "..GREN.."The Green Hills of Stranglethorn Chapters"..GREY.."/"..ORNG.."Quests "..GREY.."at ".._RED.."Nesingwary's Expedition"; 
		GREY.."(35.10) if you have all the "..GREN.."pages "..GREY.."for it, if not you have another chance to turn this in again later.";
		GREY.."You can also look in the AH for your missing pages.";
		GREY.."23) Then run all the way to ".._RED.."Swamp of Sorrows"..GREY..", stopping along the way to accept this quest:";
		ORNG.."Nothing But the Truth "..GREY.."(in ".._RED.."Duskwood "..GREY.."at 87.35)";
		GREY.."24) Then turn in "..ORNG.."Nothing But the Truth "..GREY.."(the guy right next to him)";
		GREY.."25) I SKIP "..ORNG.."Nothing But the Truth part2";
		GREY.."26) Then run into ".._RED.."Swamp of Sorrows"..GREY..".";		
	};
	
	e6 = {
		ZoneName = "41-42";
		Location = "Swamp of Sorrows";
		GREY.."01) Start off doing: "..ORNG.."Dream Dust in the Swamp "..GREY.."(14.59) Just clear the "..BLUE.."whelps "..GREY.."in this area once, you"; 
		GREY.."will finish this quest up later at the "..BLUE.."Scalebane dragons "..GREY.."far east.";
		GREY.."02) Find and kill "..BLUE.."Cudgel"..GREY..", he drops "..GREN.."Noboru's Cudgel"..GREY..", which starts "..ORNG.."Noboru the Cudgel"..GREY..".";
		GREY.."03) Go turn in "..ORNG.."Noboru the Cudgel "..GREY.."(25.31)  accept "..ORNG.."Draenethyst Crystals"..GREY..".";
		GREY.."04) Go to ".._RED.."Stonard "..GREY.."(45.54)";
		GREY.."05) Make ".._RED.."Stonard "..GREY.."your home.";
		GREY.."06) Accept: "..ORNG.."Lack of Surplus "..GREY.."and "..ORNG.."Little Morsels"..GREY..". I SKIP "..ORNG.."Fresh Meat";
		_RED.."07) "..GREY.."stable pet.";
		GREY.."08) Get "..GREN.."FP"..GREY..".";
		GREY.."09) Turn in "..ORNG.."Report to Helgrum"..GREY.."  accept "..ORNG.."Pool of Tears"..GREY..".";
		_RED.."10) "..GREY.."go tame a "..BLUE.."DeathStrike Tarantula "..GREY.."(for Bite Rank6), then abandon.";
		_RED.."11) "..GREY.."go tame a "..BLUE.."Silt Crawler "..GREY.."(for Claw Rank6), then abandon.";
		_RED.."12) "..GREY.."then "..GREN.."hearth "..GREY.."to ".._RED.."Stonard"..GREY..".";
		_RED.."13) "..GREY.."get "..BLUE.."cat "..GREY.."back out.";
		GREY.."14) Go do the following quests:";
		GREY.."15) "..ORNG.."Pool of Tears "..GREY.."(the "..GREN.."artifacts "..GREY.."are in the water around ".._RED.."temple of atal'hakkar"..GREY..")";
		GREY.."16) "..ORNG.."Lack of Surplus "..GREY.."then turn it in (at 81.80)  SKIP "..ORNG.."Lack of Surplus part2"..GREY..".";
		GREY.."17) "..ORNG.."Dream Dust in the Swamp "..GREY.."(killing the "..BLUE.."Scalebane dragons"..GREY..")";
		GREY.."18) "..ORNG.."Draenethyst Crystals "..GREY.."along with "..ORNG.."Little Morsels "..GREY.."(62.22)";
		GREY.."19) Go turn in "..ORNG.."Draenethyst Crystals "..GREY.."(25.31)";
		GREY.."20) "..GREN.."Hearth "..GREY.."to ".._RED.."Stonard"..GREY..".";
		GREY.."21) Turn in "..ORNG.."Little Morsels "..GREY.."and "..ORNG.."Pool of Tears"..GREY.."  accept "..ORNG.."The Atal'ai Exile"..GREY..".";
		GREY.."22) Should be about "..PURP.."lvl 42 "..GREY.."now, if not that's okay.  Get new hunter spells/abilities.";
		GREY.."23) Fly to ".._RED.."Booty Bay"..GREY..".";		
	};
	
	e7 = {
		ZoneName = "42-43";
		Location = "Stranglethorn Vale";
		GREY.."01) Turn in "..ORNG.."Dream Dust in the Swamp"..GREY..".  Accept "..ORNG.."Tran'Rek "..GREY.."and "..ORNG.."Rumors for Kravel";
		GREY.."02) Accept all of the following quests in ".._RED.."BB"..GREY..": "..ORNG.."The Bloodsail Buccaneers"..GREY..", "..ORNG.."Up to Snuff"..GREY..",";
		ORNG.."Venture Company Mining"..GREY..", "..ORNG.."Zanzil's Secret"..GREY..", "..ORNG.."Akiris by the Bundle"..GREY..", "..ORNG.."Voodoo Dues"..GREY..", "..ORNG.."Stoley's Debt"..GREY..",";
		ORNG.."Stranglethorn Fever "..GREY.."and "..ORNG.."Keep An Eye Out"..GREY..".";
		GREY.."03) Make ".._RED.."BB "..GREY.."your home.";
		GREY.."04) Then go do in the following order:";
		GREY.."05) "..ORNG.."The Bloodsail Buccaneers "..GREY.."along with "..ORNG.."Up to Snuff "..GREY.."and "..ORNG.."Keep An Eye Out "..GREY.."(these are done at the shore";
		GREY.."around 31.80, and some more mobs can be found at 27.70).  Also do "..ORNG.."Stranglethorn Fever"; 
		GREY.."(for "..ORNG.."Stranglethorn Fever "..GREY.."you will need one "..GREN.."gorilla fang"..GREY..", the "..BLUE.."witch doctor "..GREY.."is in the cave at 34.60)";
		GREY.."06) "..ORNG.."Mok'thardin's Enchantment part4 "..GREY.."along with "..ORNG.."Akiris by the Bundle "..GREY.."(25.63)";
		GREY.."07) Go do "..ORNG.."Raptor Mastery "..GREY.."("..BLUE.."Tethis"..GREY..") (28.44)";
		GREY.."08) "..ORNG.."Zanzil's Secret "..GREY.."along with "..ORNG.."Voodoo Dues "..GREY.."(34.52 and 39.58)";
		GREY.."09) "..ORNG.."Venture Company Mining "..GREY.."(41.44)";
		GREY.."10) Then go up (at 35.10) and turn in "..ORNG.."Raptor Mastery "..GREY.."("..BLUE.."Tethis"..GREY..")  accept "..ORNG.."Big Game Hunter (Elite)";
		GREY.."11) Then go to ".._RED.."Grom'gol"..GREY..".";
		GREY.."12) Turn in "..ORNG.."Mok'thardin's Enchantment";
		GREY.."13) Go do "..ORNG.."Big Game Hunter (Elite) "..GREY.."(he is at 38.35)  I am always able to solo him, but you could try";
		GREY.."partying up with someone, if you can't do it, skip it.";
		GREY.."14) Then run all the way up and turn in "..ORNG.."Big Game Hunter"..GREY..".  Also if you haven't yet, turn in all the";
		GREN.."The Green Hills of Stranglethorn Chapters"..GREY..". You can also look in the AH for your missing "..GREN.."pages"..GREY..", or"; 
		GREY.."you can simply skip the quest.";
		GREY.."15) Then "..GREN.."hearth "..GREY.."to ".._RED.."BB"..GREY..".";
		GREY.."16) Turn in ALL quests: "..ORNG.."Venture Company Mining"..GREY..", "..ORNG.."Zanzil's Secret"..GREY..", "..ORNG.."Stranglethorn Fever"..GREY..", "..ORNG.."Up to Snuff"..GREY..",";
		ORNG.."The Bloodsail Buccaneers"..GREY..", "..ORNG.."Akiris by the Bundle"..GREY..", "..ORNG.."Voodoo Dues"..GREY..", and "..ORNG.."Keep An Eye Out"..GREY..".";
		GREY.."17) Get on the boat to go to ".._RED.."Ratchet";
		GREY.."18) Fly to ".._RED.."Dustwallow Marsh"..GREY..".";		
	};
	
	e8 = {
		ZoneName = "43-44";
		Location = "Dustwallow Marsh";
		GREY.."01) Accept "..ORNG.."Identifying the Brood"..GREY..", "..ORNG.."Army of the Black Dragon"..GREY..". and "..ORNG.."Overlord Mok'Morokk's Concern";
		GREY.."02) Go down to (40.36) and accept "..ORNG.."Questioning Reethe "..GREY.."then do it.";
		GREY.."03) Then go back to "..ORNG.."Brakenwall Village "..GREY.."and turn in "..ORNG.."Questioning Reethe";
		GREY.."04) Fly to ".._RED.."Mudsprocket "..GREY.."(".._RED.."Dustwallow Marsh"..GREY..").";
		GREY.."05) Accept "..ORNG.."Bloodfen Feathers"..GREY..". "..ORNG.."WANTED: Goreclaw the Ravenous"..GREY..", "..ORNG.."Catch a Dragon by the Tail";
		GREY.."06) Go do "..ORNG.."Bloodfen Feathers "..GREY.."along with "..ORNG.."WANTED: Goreclaw the Ravenous "..GREY.."(at 32.66)";
		GREY.."07) Once they are done go back to ".._RED.."Mudsprocket "..GREY.."and turn them in, accept "..ORNG.."Banner of the Stonemaul "..GREY.."and";
		ORNG.."The Essence of Enmity";
		GREY.."08) Go do the following steps (9 - 16) in any order:";
		GREY.."09) "..ORNG.."Catch a Dragon by the Tail";
		GREY.."10) "..ORNG.."Identifying the Brood";
		GREY.."11) "..ORNG.."Razzeric's Tweaking "..GREY.."(there is a box at 54.56)";
		GREY.."12) "..ORNG.."Marg Speaks "..GREY.."kill the mobs at around (58.63)";
		GREY.."13) "..ORNG.."Overlord Mok'Morokk's Concern "..GREY.."("..BLUE.."Snuff"..GREY.."=44.66, "..BLUE.."Grog"..GREY.."=38.65, "..BLUE.."Strongbox"..GREY.."=in the cave at 36.69";
		GREY.."[the entrance to the cave is at 38.66])";
		GREY.."14) "..ORNG.."The Essence of Enmity";
		GREY.."15) "..ORNG.."Banner of the Stonemaul "..GREY.."(this banner is inside the cave at 38.69)";
		GREY.."16) "..ORNG.."Army of the Black Dragon";
		GREY.."17) Once all that is done, go back to ".._RED.."Mudsprocket "..GREY.."and turn in "..ORNG.."Catch a Dragon by the Tail"..GREY..",";
		ORNG.."Banner of the Stonemaul "..GREY.."and "..ORNG.."The Essence of Enmity"..GREY..".  accept "..ORNG.."Spirits of Stonemaul Hold";
		GREY.."18) "..ORNG.."Go do Spirits of Stonemaul Hold"..GREY..".  Once it is done, go back and turn it in"; 
		GREY.."accept "..ORNG.."Challenge to the Black Flight";
		GREY.."19) Go do "..ORNG.."Challenge to the Black Flight "..GREY.."(at 53.76).  Once it's done go back and turn it in.";
		GREY.."20) Fly to ".._RED.."Brackenwall Village "..GREY.."(".._RED.."Dustwallow Marsh"..GREY..").";
		GREY.."21) Turn in "..ORNG.."Questioning Reethe"..GREY..", "..ORNG.."Army of the Black Dragon"..GREY..", "..ORNG.."Overlord Mok'Morokk's Concern "..GREY.."and";
		ORNG.."Identifying the Brood  "..GREY.."accept "..ORNG.."The Brood of Onyxia";
	};
	
	e9 = {
		ZoneName = "43-44 (Part 2)";
		Location = "Dustwallow Marsh";
		GREY.."22) Run back and forth until "..ORNG.."The Brood of Onyxia "..GREY.."is done, but don't actually do the final quest yet";
		GREY.."(this will be done later at "..PURP.."level 48"..GREY..", so you can abandon it for now).";
		GREY.."23) Turn in "..ORNG.."Marg Speaks"..GREY..".  accept "..ORNG.."Report to Zor";
		GREY.."24) Fly to ".._RED.."Tanaris";		
	};
	
	f1 = {
		ZoneName = "44-45";
		Location = "Tanaris";
		GREY.."01) Go into ".._RED.."Gadgetzan"..GREY..".";
		GREY.."02) "..ORNG.."Accept: WANTED: Caliph Scorpidsting "..GREY.."and "..ORNG.."WANTED: Andre Firebeard "..GREY.." ("..BLUE.."Wanted Poster"..GREY..")";
		GREY.."03) Turn in "..ORNG.."Tran'Rek";
		GREY.."04) "..ORNG.."Accept: Gadgetzan Water Survey"..GREY..". "..ORNG.."Wastewander Justice "..GREY.."and "..ORNG.."Water Pouch Bounty";
		GREY.."05) Make ".._RED.."Gadgetzan "..GREY.."your home.";
		GREY.."06) Go to the ".._RED.."Shimmering Flats "..GREY.."(in ".._RED.."Thousand Needles "..GREY.."at 78.77) and turn in "..ORNG.."Rumors for Kravel"..GREY..",";
		ORNG.."News for Fizzle "..GREY.."and "..ORNG.."Razzeric's Tweaking"..GREY..".  accept "..ORNG.."Safety First";
		GREY.."07) Accept "..ORNG.."Keeping Pace";
		GREY.."08) Turn "..ORNG.."Keeping Pace "..GREY.."in at "..BLUE.."Zamek"..GREY..", then go pick up "..GREN.."Rizzle's Plans "..GREY.."at 77.77 accept "..ORNG.."Rizzle's Schematics";
		GREY.."09) Accept "..ORNG.."Back to Booty Bay "..GREY.."(at "..BLUE.."Kravel Koalbeard"..GREY..")";
		GREY.."10) Go turn in "..ORNG.."Rizzle's Schematics "..GREY.."at "..BLUE.."Pozzik"..GREY..".";
		GREY.."11) "..GREN.."Hearth back "..GREY.."to ".._RED.."Gadgetzan"..GREY..".";
		GREY.."12) Turn in "..ORNG.."Safety First"..GREY..".  I ".._RED.."SKIP "..GREY.."the next part to this quest.";
		GREY.."13) Then grind your way east to ".._RED.."Steamwheedle Port"..GREY..". (67.23)";
		GREY.."14) "..ORNG.."Accept: Pirate Hats Ahoy!"..GREY..", "..ORNG.."Screecher Spirits "..GREY.."and "..ORNG.."Southsea Shakedown";
		GREY.."15) Turn in "..ORNG.."Stoley's Debt"..GREY..".  accept "..ORNG.."Stoley's Shipment";
		GREY.."16) Then go complete these quests:";
		GREY.."17) "..ORNG.."Wastewander Justice "..GREY.."along with "..ORNG.."Water Pouch Bounty "..GREY.."(at 64.29";
		GREY.."18) Then go do all of the following (steps 19 - 23) at ".._RED.."Lost Rigger Cove "..GREY.."(72.47):";
		GREY.."19) "..ORNG.."Southsea Shakedown";
		GREY.."20) "..ORNG.."Pirate Hats Ahoy!";
		GREY.."21) "..ORNG.."Stoley's Shipment";
		GREY.."22) "..ORNG.."Ship Schedules "..GREY.."(find this in one of the Pirate's footlocker at ".._RED.."Lost Rigger Cove"..GREY..". If the item";
		GREY.."cannot be found, just skip it)";
		GREY.."23) "..ORNG.."WANTED: Andre Firebeard";
		GREY.."24) Once they're all done, "..GREN.."hearth "..GREY.."to ".._RED.."Gadgetzan"..GREY..".";
		GREY.."25) Turn in "..ORNG.."Water Pouch Bounty"..GREY..", "..ORNG.."Wastewander Justice"..GREY..".  accept "..ORNG.."More Wastewander Justice";		
	};
	
	f2 = {
		ZoneName = "44-45 (Part 2)";
		Location = "Tanaris";
		GREY.."26) Go do "..ORNG.."Gadgetzan Water Survey "..GREY.."(grinding mobs along the way, coords are at 38.29), then go back";
		GREY.."and turn it in.";
		GREY.."27) Go to ".._RED.."Steamwheedle Port"..GREY..".";
		GREY.."28) Turn in ALL quests there  accept "..ORNG.."Deliver to MacKinley"..GREY..".";
		GREY.."29) Then go do: "..ORNG.."More Wastewander Justice "..GREY.."along with "..ORNG.."WANTED: Caliph Scorpidsting "..GREY.."(59.37)";
		GREY.."30) Then "..GREN.."hearth "..GREY.."to ".._RED.."Gadgetzan"..GREY..".  Make sure you save (put in your bank) all the"; 
		GREN.."Wastewander Water Pouches "..GREY.."you have, because you will need them for a later quest.";
		GREY.."31) Turn in "..ORNG.."More Wastewander Justice "..GREY.."and "..ORNG.."WANTED: Caliph Scorpidsting";
		GREY.."32) Fly to ".._RED.."Freewind Post"..GREY..".";
		GREY.."33) Run west into ".._RED.."Feralas"..GREY..".";		
	};
	
	f3 = {
		ZoneName = "45-46";
		Location = "Feralas";
		GREY.."01) Run into ".._RED.."Camp Mojache"..GREY..". (75.44)";
		GREY.."02) Accept ALL quests there: "..ORNG.."A New Cloak's Sheen"..GREY..", "..ORNG.."The Ogres of Feralas"..GREY..", "..ORNG.."Gordunni Cobalt"..GREY..",";
		ORNG.."War on the Woodpaw"..GREY..", "..ORNG.."The Mark of Quality"..GREY..", "..ORNG.."A Strange Request"..GREY..".";
		GREY.."03) Get "..GREN.."FP"..GREY..".";
		GREY.."04) Make ".._RED.."Camp Mojache "..GREY.."your home.";
		GREY.."05) Then go do in the following order:";
		GREY.."06) "..ORNG.."War on the Woodpaw "..GREY.."go just north of ".._RED.."Camp Mojache "..GREY.."to do this. (71.37)";
		GREY.."07) "..ORNG.."The Ogres of Feralas "..GREY.."along with "..ORNG.."Gordunni Cobalt "..GREY.."(75.31)";
		GREY.."08) Make sure you click on one of the "..GREN.."scrolls "..GREY.."laying on the ground which starts: "..ORNG.."The Gordunni Scroll";
		GREY.."09) Then go do: "..ORNG.."A New Cloak's Sheen "..GREY.."(67.48)";
		GREY.."10) Go back to ".._RED.."Camp Mojache"..GREY..", turn in ALL those quests, accept all new quests.";
		GREY.."11) Go do "..ORNG.."Alpha Strike "..GREY.."(at 72.56) then turn it in.  accept "..ORNG.."Woodpaw Investigation";
		GREY.."12) Go do "..ORNG.."Woodpaw Investigation "..GREY.."(at 71.55) complete it  accept "..ORNG.."The Battle Plans";
		GREY.."13) Then go do "..ORNG.."A Grim Discovery "..GREY.."(66.46)";
		GREY.."14) "..GREN.."Hearth "..GREY.."back to ".._RED.."Camp Mojache"..GREY..", turn in "..ORNG.."The Battle Plans "..GREY.."and "..ORNG.."A Grim Discovery"..GREY..", accept ALL new quests.";
		GREY.."15) ".._RED.."PLEASE NOTE"..GREY..":  If the "..GREN.."OOX-22/FE Distress Beacon "..GREY.."item drops, accept the quest "..ORNG.."Find OOX-22/FE!"..GREY.."."; 
		GREY.."Turn in "..ORNG.."Find OOX-22/FE! "..GREY.."(at 53.55).  Then go do:";
		GREY.."16) "..ORNG.."Stinglasher "..GREY.."along with "..ORNG.."Zukk'ash Infestation "..GREY.."(74.62)";
		GREY.."17) "..ORNG.."Screecher Spirits "..GREY.."(55.56)";
		GREY.."18) "..ORNG.."The Ogres of Feralas part2 "..GREY.."(59.68)";
		_RED.."NOTE: "..GREY.."While in this area, make sure you pick up a "..GREN.."Hippogryph Egg "..GREY.."down south-west (around 55.76),"; 
		GREY.."this will be turned in at ".._RED.."Tanaris "..GREY.."for a later quest.";
		GREY.."19) "..ORNG.."Dark Ceremony "..GREY.."(59.68)";
		GREY.."20) "..ORNG.."The Mark of Quality "..GREY.."(53.55)";
		GREY.."21) Run back to ".._RED.."Camp Mojache"..GREY..", then go turn those quests in, accept all new quests just from those"; 
		GREY.."quest givers.  Also accept "..ORNG.."The Sunken Temple"..GREY..".";		
		
	};
	
	f4 = {
		ZoneName = "45-46 (Part 2)";
		Location = "Feralas";
		GREY.."22) Then do the following:";
		GREY.."23) I then Fly to ".._RED.."Orgrimmar";
		GREY.."24) Then I make it my home. Then make sure I get "..GREN.."120 Wool Cloth, 120 Silk cloth, 120 Mageweave "..GREY.."out"; 
		GREY.."from either my bank or mailbox. For those of you who can't add, that's 6 stacks of 20 for each.";
		GREY.."25) Then go turn in: "..ORNG.."Zukk'ash Report "..GREY.."(56.46)";
		GREY.."26) Go complete "..ORNG.."A Donation of Silk "..GREY.."and "..ORNG.."A Donation of Mageweave "..GREY.."(at 63.51)";
		GREY.."27) Accept "..ORNG.."Ripple Recovery "..GREY.."(from "..BLUE.."Dran Droffers"..GREY..") (59.36)";
		GREY.."28) Then turn in "..ORNG.."Ripple Recovery "..GREY.."(the guy right next to "..BLUE.."Dran"..GREY..")  accept "..ORNG.."Ripple Recovery "..GREY.."again.";
		GREY.."29) Turn in "..ORNG.."Parts of the Swarm "..GREY.."and "..ORNG.."A Grim Discovery "..GREY.."at "..BLUE.."Belgrom Rockmaul  "..GREY.."accept "..ORNG.."Betrayed "..GREY.."(75.34).";  
		GREY.."Also get new spells/abilities while you are in ".._RED.."Orgrimmar"..GREY..".";
		GREY.."30) Go turn in "..ORNG.."A Strange Request  ".._RED.."SKIP: "..ORNG.."Retrun to Witch Doctor Uzer'i "..GREY.."(".._RED.."cleft of shadow"..GREY..", 49.50)";
		GREY.."31) Go turn in "..ORNG.."Report to Zor  "..GREY.."accept/complete "..ORNG.."Service to the Horde "..GREY.."(".._RED.."valley of wisdom"..GREY..", 38.38)";
		GREY.."32) Go turn in "..ORNG.."The Gordunni Orb "..GREY.."(".._RED.."valley of spirits"..GREY..", 39.86)";
		GREY.."33) Turn in "..ORNG.."A Donation of Silk "..GREY.."and "..ORNG.."A Donation of Mageweave "..GREY.."(for the troll faction, at 37.87)";
		GREY.."34) Fly to ".._RED.."Splintertree Post "..GREY.."(".._RED.."Ashenvale"..GREY..")";
		GREY.."35) Then go east into ".._RED.."Azshara"..GREY..".";		
	};
	
	f5 = {
		ZoneName = "46-47";
		Location = "Azshara";
		GREY.."01) Go accept "..ORNG.."Spiritual Unrest "..GREY.."and "..ORNG.."A Land Filled with Hatred "..GREY.."(at 10.78)";
		GREY.."02) Then go do them (at 17.66 and 20.62), and turn them in.";
		GREY.."03) Then go to ".._RED.."Valormok "..GREY.."(at 21.52)";
		GREY.."04) Turn in "..ORNG.."Betrayed "..GREY.."(skip the next part to this quest for now)";
		GREY.."05) Then get "..GREN.."FP "..GREY.."there and "..GREN.."hearth "..GREY.."to ".._RED.."Orgrimmar"..GREY..", if "..GREN.."hearthstone "..GREY.."is still on a cooldown, just fly to";
		_RED.."Orgrimmar.";
		GREY.."06) Then head to ".._RED.."The UnderCity"..GREY..".";
		GREY.."07) Then go to ".._RED.."apothecary quarter "..GREY.."and accept: "..ORNG.."Seeping Corruption "..GREY.."and "..ORNG.."Errand for Apothecary Zinge";
		GREY.."08) Then go turn in "..ORNG.."Errand for Apothecary Zinge "..GREY.."(out in the other room)";
		GREY.."09) Go return back, and turn in "..ORNG.."Errand for Apothecary Zinge "..GREY.."again  accept "..ORNG.."Into the Field";
		GREY.."10) You can put the "..GREN.."Field Testing Kit "..GREY.."and the "..GREN.."Box of Empty Vials "..GREY.."in the Bank for now.";
		GREY.."Accept: "..ORNG.."Lines of Communication "..GREY.."in the ".._RED.."UC "..GREY.."(".._RED.."magic quarter"..GREY..")";
		GREY.."11) Get on the zeppelin to go to ".._RED.."Grom'gol"..GREY..".";		
	};
	
	f6 = {
		ZoneName = "47-47";
		Location = "Hinterlands";
		GREY.."Here are the prerequisites to this section:";
		GREY.."Accept: "..ORNG.."Grim Message at Grom'gol "..GREY.."(in ".._RED.."STV"..GREY..")";
		GREY.."01) Go turn in "..ORNG.."Ripple Recovery "..GREY.."(at 26.48)  accept"..ORNG.." A Sticky Situation";
		GREY.."02) Ride all the way to "..ORNG.."Revantusk Village "..GREY.."(at 77.80)";
		GREY.."03) Accept: "..ORNG.."Vilebranch Hooligans"..GREY..", "..ORNG.."Cannibalistic Cousins"..GREY..", "..ORNG.."Message to the Wildhammer"..GREY..",";
		ORNG.."Stalking the Stalkers"..GREY..", "..ORNG.."Hunt the Savages"..GREY..", and "..ORNG.."Avenging the Fallen"..GREY..".";
		GREY.."04) Before you go out and start questing make sure you stock up heavily on "..GREN.."food/water/supplies "..GREY.."cause";
		GREY.."you won't be back to town for while.";
		GREY.."05) Then go do the following:";
		GREY.."06) "..ORNG.."Vilebranch Hooligans";
		GREY.."07) "..ORNG.."Cannibalistic Cousins";
		GREY.."08) "..ORNG.."A Sticky Situation "..GREY.."(57.41) turn this in when you get the chance  accept "..ORNG.."Ripple Delivery";
		GREY.."09) "..ORNG.."Stalking the Stalkers";
		GREY.."10) "..ORNG.."Hunt the Savages";
		GREY.."11) "..ORNG.."Testing the Vessel";
		GREY.."12) "..ORNG.."Avenging the Fallen";
		GREY.."13) "..ORNG.."Lines of Communication";
		GREY.."14) "..ORNG.."Message to the Wildhammer";
		GREY.."15) "..ORNG.."Rin'ji is Trapped! "..GREY.."(the escort quest, starts at 31.48)";
		GREY.."16) "..ORNG.."Grim Message "..GREY.."while doing this quest accept "..ORNG.."Venom Bottles "..GREY.."(those little "..GREN.."bottles "..GREY.."on the table,23.58)";
		GREY.."17) Yeah the good 'ol ".._RED.."hinterlands "..GREY.."grind have fun LOL.";
		GREY.."18) If the "..GREN.."OOX-09/HL Distress Beacon "..GREY.."item drops, accept the quest "..ORNG.."Find OOX-09/HL!";
		GREY.."19) Turn in "..ORNG.."Find OOX-09/HL! "..GREY.."(at 49.38) (Don't do the escort yet)";
		GREY.."20) Turn in "..ORNG.."Rin'ji is Trapped! "..GREY.."(at 86.59)  accept "..ORNG.."Rin'ji's Secret";
		GREY.."21) Go to ".._RED.."Revantusk Village"..GREY..".";
		GREY.."22) Turn in ALL quests.";		
	};
	
	f7 = {
		ZoneName = "47-47 (Part 2)";
		Location = "Hinterlands";
		GREY.."23) Then get "..GREN.."FP "..GREY.."and fly to ".._RED.."Hammerfall "..GREY.."(".._RED.."Arathi Highlands"..GREY..").";
		GREY.."24) I then get all my "..GREN.."magewaeve "..GREY.."out from my mailbox.";
		GREY.."25) Go to "..BLUE.."Doctor Gregory Victor "..GREY.."to build up "..GREN.."first aid";
		GREY.."26) I'm usually able to get at least 260 "..GREN.."first aid "..GREY.."for the "..GREN.."Runecloth Bandage"..GREY..". However, try to save";
		GREY.."the rest of the "..GREN.."mageweave cloth "..GREY.."for the "..ORNG.."Cloth Donation "..GREY.."quest turn ins (in all the major cities).";
		GREY.."27) Then fly back to ".._RED.."TM"..GREY..".";
		GREY.."28) Then set your "..GREN.."Hearth"..GREY.." here.";
		GREY.."28) Turn in "..ORNG.."Venom Bottles  "..GREY.."accept "..ORNG.."Undamaged Venom Sac";
		GREY.."29) Then ride back into ".._RED.."Hinterlands "..GREY.."(don't fly)";
		GREY.."30) Go do "..ORNG.."Undamaged Venom Sac "..GREY.."and "..ORNG.."The Atal'ai Exile "..GREY.."(33.72) accept "..ORNG.."Return to Fel'Zerul";
		GREY.."31) Then "..GREN.."hearth "..GREY.."to ".._RED.."TM"..GREY..".";
		GREY.."32) Turn in "..ORNG.."Undamaged Venom Sac  "..GREY.."I SKIP "..ORNG.."Consult Master Gadrin";
		GREY.."33) Fly to the ".._RED.."UC"..GREY..".";
		GREY.."34) Go to ".._RED.."magic quarter "..GREY.."and turn in "..ORNG.."A Donation of Mageweave "..GREY.."(you need "..GREN.."60 mageweave cloth"..GREY..")"; 
		GREY.."35) Then turn in: "..ORNG.."Lines of Communication "..GREY.."and "..ORNG.."Rin'ji's Secret "..GREY.."then complete "..ORNG.."Oran's Gratitude";
		GREY.."36) Get on the zeppelin to go to ".._RED.."Grom'gol"..GREY..".";		
	};
	
	f8 = {
		ZoneName = "47-47 (Part 3)";
		Location = "Stranglethorn Vale";
		GREY.."01) Once in ".._RED.."Grom'gol"..GREY..", turn in "..ORNG.."Grim Message "..GREY.."(if you did the ".._RED.."Hinterlands section).";
		GREY.."02) Fly to ".._RED.."BB"..GREY..".";
		GREY.."03) Accept "..ORNG.."The Bloodsail Buccaneers part5 "..GREY.."and "..ORNG.."Whiskey Slim's Lost Grog";
		GREY.."04) Make ".._RED.."BB "..GREY.."your home.";
		GREY.."05) Turn in "..ORNG.."Back to Booty Bay "..GREY.."and "..ORNG.."Deliver to MacKinley";
		GREY.."06) Make sure that "..ORNG.."The Captain's Chest "..GREY.."is accepted, then go do it (at 36.65).  If your class has";
		GREY.."troubles, either find a group to help, or you can simply skip it.";
		GREY.."07) Find a "..GREN.."small bottle "..GREY.."laying around the shore east of ".._RED.."BB"..GREY..", until this item:"; 
		GREN.."Carefully Folded Note "..GREY.."shows up which starts "..ORNG.."Message in a Bottle";
		GREY.."08) Go turn "..ORNG.."Message in a Bottle "..GREY.."in (at 38.80)  accept and do "..ORNG.."Message in a Bottle Part2"..GREY..".";  
		GREY.."Once done turn it in.";
		GREY.."09) Then go do "..ORNG.."The Bloodsail Buccaneers part5 "..GREY.."(kill the three "..BLUE.."pirates "..GREY.."in the three ships) while"; 
		GREY.."doing it, find "..GREN.."Cortello's Riddle "..GREY.."(it's usually a "..GREN.."little scroll "..GREY.."downstairs in the middle ship)";
		GREY.."10) Then "..GREN.."hearth "..GREY.."back to ".._RED.."BB"..GREY..", if "..GREN.."hearth stone "..GREY.."still is on a cooldown, die on purpose.";
		GREY.."11) Turn in "..ORNG.."The Captain's Chest "..GREY.."and "..ORNG.."The Bloodsail Buccaneers part5";
		GREY.."12) Fly to ".._RED.."Kargath "..GREY.."(".._RED.."Badlands"..GREY..")";
		GREY.."13) I get a stack of "..GREN.."Silk Cloth "..GREY.."out of the mailbox for the quest "..ORNG.."Caught"..GREY..", then";
		GREY.."14) Go into ".._RED.."Searing Gorge"..GREY..".";		
	};
	
	f9 = {
		ZoneName = "47-48";
		Location = "Searing Gorge";
		GREY.."01) First thing I do here is go south-east and do "..ORNG.."Caught! "..GREY.."(guy in the outhouse, 65.62), then turn it";
		GREY.."in. accept "..ORNG.."Ledger from Tanaris  "..GREY.."click on outhouse to get the "..GREN.."Goodsteel Ledger";
		GREY.."02) I then go start killing "..BLUE.."Glassweb Spiders "..GREY.."for the "..ORNG.."Ledger from Tanaris "..GREY.."quest.";
		GREY.."03) Then go up north-west, Talk to "..BLUE.."Kalaran Windblade "..GREY.."(at 39.38) on way to ".._RED.."Thorium Point "..GREY.."(35.25).";
		GREY.."Do first his listen to me quest "..ORNG.."Divine Retribution"..GREY..". In order to get "..ORNG.."The Flawless Flame "..GREY.."Once at"; 
		_RED.."Thorium Point "..GREY.."collect ALL quests there and get the "..GREN.."FP "..GREY.."there too.";
		GREY.."04) Then do the following (steps 5 - 13 in any order):";
		GREY.."05) "..ORNG.."Fiery Menace!";
		GREY.."06) "..ORNG.."Curse These Fat Fingers";
		GREY.."07) "..ORNG.."STOLEN: Smithing Tuyere "..GREY.."and "..ORNG.."Lookout's Spyglass";
		GREY.."08) "..ORNG.."The Flawless Flame "..GREY.."turn in, then get and do "..ORNG.."Forging the Shaft";
		GREY.."09) "..ORNG.."JOB OPPORTUNITY: Culling the Competition";
		GREY.."10) "..ORNG.."WANTED: Overseer Maltorius "..GREY.."(the plans for "..ORNG.."What the Flux? "..GREY.."quest is right behind "..BLUE.."Overseer Maltorius"..GREY..")";
		GREY.."11) "..ORNG.."What the Flux?";
		GREY.."12) "..ORNG.."Incendosaurs? Whateverosaur is More Like It";
		GREY.."13) "..ORNG.."The Key to Freedom "..GREY.."starts from an item drop "..GREN.."Grimsite Outhouse Key"..GREY..", turn in at the outhouse"; 
		GREY.."(south-east, 65.62)";
		GREY.."14) Turn in "..ORNG.."Forging the Shaft  "..GREY.."accept "..ORNG.."The Flame's Casing";
		GREY.."15) Do "..ORNG.."The Flame's Casing "..GREY.."(around 24.36).  Just keep killing the mobs there until the item drops.";
		GREY.."16) Then turn in "..ORNG.."The Flame's Casing  "..GREY.."accept and do "..ORNG.."The Torch of Retribution"..GREY..", then turn it in";
		GREY.."accept and do "..ORNG.."The Torch of Retribution Part2 "..GREY.."(just pick up the "..GREN.."torch "..GREY.."on the ground.";
		GREY.."17) Accept "..ORNG.."Squire Maltrake"..GREY..", then turn it in  accept "..ORNG.."Set Them Ablaze!";
		GREY.."18) Do "..ORNG.."Set Them Ablaze! "..GREY.."(north=33.54, south=44.61, east=50.54, west=35.60). Once that is done, go";
		GREY.."back and turn it in.";
		GREY.."19) Click on the "..GREN.."little chest "..GREY.."on the ground (at 38.38) and accept "..ORNG.."Trinkets"..GREY..", then click on the "..GREN.."chest";
		GREY.."again to turn it in.";		
	};
	
	g1 = {
		ZoneName = "47-48 (Part 2)";
		Location = "Searing Gorge";
		GREY.."20) Make sure you keep the "..GREN.."Black Dragonflight Molt "..GREY.."in your inventory as you will need it later.";
		GREY.."21) Once all that's done, turn all ".._RED.."Searing Gorge "..GREY.."quests in. make sure you have all "..GREN.."20 solid crystal";
		GREN.."leg shafts.";
		GREY.."22) Head south into ".._RED.."Burning Steppes "..GREY.."(You have to go through ".._RED.."Black Rock Mountains"..GREY..")";
		GREY.."23) I discover some areas, then get "..GREN.."FP there "..GREY.."(at 65.25), and fly directly to ".._RED.."Stonard"..GREY.."(".._RED.."swamp of sorrows"..GREY..")";		
	};
	
	g2 = {
		ZoneName = "48-49";
		Location = "Swamp of Sorrows";
		GREY.."01) Do ".._RED.."NOT "..GREY.."make ".._RED.."Stonard "..GREY.."your home. (it should still be ".._RED.."Booty Bay"..GREY..")";
		GREY.."02) Go to the "..BLUE.."Fallen Hero of the Horde "..GREY.."(34.66) keep talking to him till you get "..ORNG.."The Disgraced One";
		GREY.."03) Then go do "..ORNG.."Cortello's Riddle "..GREY.."(22.48 under the bridge)";
		GREY.."04) Accept "..ORNG.."Cortello's Riddle part2";
		GREY.."05) Go back to ".._RED.."Stonard"..GREY..".";
		GREY.."06) Go turn in "..ORNG.."The Disgraced One "..GREY.."(and Return to "..BLUE.."Fel'Zerul "..GREY.."if you did ".._RED.."Hinterlands"..GREY..")"; 
		GREY.."accept "..ORNG.."The Missing Orders";
		GREY.."07) Get new hunter spells/abilities";
		GREY.."08) Go turn in "..ORNG.."The Missing Orders "..GREY.."(in the inn)  accept "..ORNG.."The Swamp Talker";
		GREY.."09) Go do "..ORNG.."The Swamp Talker "..GREY.."(in the cave at 65.78)";
		GREY.."10) Then head north east and";
		GREY.."11) Go kill the mob "..BLUE.."Jarquia "..GREY.."(at around 94.50 or 92.65), he drops "..GREN.."Goodsteel's Balanced Flameberge";
		GREY.."for the quest "..ORNG.."Ledger from Tanaris";
		GREY.."12) Then die on purpose, so you end up at ".._RED.."Stonard"..GREY..".";
		GREY.."13) Go to the "..BLUE.."Fallen Hero of the Horde "..GREY.."(34.66) and turn in "..ORNG.."The Swamp Talker";
		GREY.."14) Accept and do "..ORNG.."A Tale of Sorrow "..GREY.."(Just talk to the guy)";
		GREY.."15) "..GREN.."Hearth "..GREY.."to ".._RED.."Booty Bay"..GREY..".";
		GREY.."16) Get on the boat to go to ".._RED.."Ratchet"..GREY..".";
		GREY.."17) Fly to ".._RED.."Brackenwall Village "..GREY.."(".._RED.."Dustwallow Marsh"..GREY..").  Once there accept "..ORNG.."The Brood of Onyxia";
		GREY.."18) Then head south and get the "..GREN.."Overdue Package "..GREY.."for the quest "..ORNG.."Ledger from Tanaris "..GREY.."(at 54.55)";
		GREY.."19) Go down a bit and do "..ORNG.."The Brood of Onyxia  "..GREY.."(the "..GREN.."eggs "..GREY.."can be found at 53.72 and 48.75)";
		GREY.."20) Then head west to ".._RED.."Bloodfen Burrow cave "..GREY.."(32.67), and do "..ORNG.."Cortello's Riddle"; 
		GREY.."accept the next part to it.";
		GREY.."21) Then go to ".._RED.."Mudsprocket "..GREY.."and fly to ".._RED.."Brackenwall Village"..GREY..".";
		GREY.."22) Turn in "..ORNG.."The Brood of Onyxia  "..GREY.."accept "..ORNG.."Challenge Overlord Mok'Morokk";
		GREY.."23) Do "..ORNG.."Challenge Overlord Mok'Morokk "..GREY.."Then turn it in.";
		GREY.."24) Then fly to ".._RED.."Tanaris"..GREY..".";		
	};
	
	g3 = {
		ZoneName = "49-49";
		Location = "Feralas";
		GREY.."01) Accept: "..ORNG.."Improved Quality Vengeance on the Northspring "..GREY.."and "..ORNG.."Dark Heart";
		_RED.."SKIP: "..ORNG.."The Strength of Corruption";
		GREY.."02) Turn in "..ORNG.."Return to Witch Doctor Uzer'i  ".._RED.."SKIP "..GREY.."the follow up quests.";
		GREY.."03) Make ".._RED.."Camp Mojache "..GREY.."your home.";
		_RED.."04) "..GREY.."Stable Pet";
		GREY.."05) turn in "..ORNG.."Testing the Vessel"..GREY..". Accept "..ORNG.."Hippogryph Muisek"..GREY..".";
		GREY.."06) "..GREN.."Hearth "..GREY.."Back and turn it in and do the rest of the "..ORNG.."Muisek quests"..GREY..".";
		GREY.."07) Go do the "..ORNG.."chicken escort "..GREY.."quest (starts at 53.55).";
		GREY.."08) Go accept "..ORNG.."Zapped Giants "..GREY.."(at 44.43)";
		_RED.."09) "..GREY.."go tame an "..BLUE.."Ironfur Patriarch "..GREY.."(for Claw Rank7)";
		GREY.."10) Do the following quests:";
		GREY.."11) "..ORNG.."Improved Quality "..GREY.."(52.32)";
		GREY.."(while doing this quest you should find an item which starts "..ORNG.."Perfect Yeti Hide"..GREY..")";
		GREY.."12) "..ORNG.."Vengeance on the Northspring "..GREY.."(40.13)";
		GREY.."13) "..ORNG.."Dark Heart "..GREY.."(41.09)";
		GREY.."14) "..ORNG.."Zapped Giants "..GREY.."(38.18)";
		GREY.."15) Once those quests are completed and "..ORNG.."Zapped Giants "..GREY.."is turned in";
		GREY.."16) "..GREN.."Hearth "..GREY.."to ".._RED.."Camp Mojache"..GREY..".";
		_RED.."17) "..GREY.."abandon "..BLUE.."bear"..GREY..", get "..BLUE.."cat "..GREY.."back out.";
		GREY.."18) Turn in "..ORNG.."Improved Quality "..GREY..", "..ORNG.."Perfect Yeti Hide"..GREY..", "..ORNG.."Vengeance on the Northspring "..GREY.."and "..ORNG.."Dark Heart";
		GREY.."19) Fly to ".._RED.."Tanaris"..GREY..".";		
	};
	
	g4 = {
		ZoneName = "49-50";
		Location = "Tanaris";
		GREY.."01) Go to the "..GREN.."Egg-O-Matic machine "..GREY.."in ".._RED.."Gadgetzan"..GREY..", and turn in the "..ORNG.."Hippogryph Egg "..GREY.."for"; 
		ORNG.."The Super Egg-O-Matic "..GREY.."quest.";
		GREY.."02) Make ".._RED.."Gadgetzan "..GREY.."your home.";
		GREY.."03) Turn in "..ORNG.."Ledger from Tanaris "..GREY.."and "..ORNG.."Into the Field  "..GREY.."accept and complete "..ORNG.."Shake That Thirst";  
		_RED.."SKIP  "..ORNG.."Tanaris Field Sampling  "..GREY.."Accept: "..ORNG.."The Thirsty Goblin"..GREY..", "..ORNG.."Noxious Lair"..GREY..", "..ORNG.."Investigation"..GREY..",";
		ORNG.."Super Sticky"..GREY..", "..ORNG.."Thistleshrub Valley"..GREY.." and "..ORNG.."The Dunemaul Compound";
		GREY.."04) Go turn in "..ORNG.."The Sunken Temple "..GREY.."(at 52.45)  accept "..ORNG.."The Stone Circle "..GREY.."and "..ORNG.."Gahz'ridian";
		GREY.."05) Go do in the following order:";
		GREY.."06) "..ORNG.."The Dunemaul Compound "..GREY.."along with "..ORNG.."Gahz'ridian";
		GREY.."(done at 46.66 and 40.73, "..BLUE.."Gor'marok "..GREY.."is in the cave at 40.58)";
		GREY.."07) "..ORNG.."Noxious Lair Investigation "..GREY.."(34.47)";
		GREY.."08) "..ORNG.."Thistleshrub Valley "..GREY.."along with "..ORNG.."The Thirsty Goblin "..GREY.."(28.65)";
		GREY.."09) "..ORNG.."Tooga's Quest "..GREY.."(escort quest starts in the ".._RED.."Thistleshrub Valley"..GREY..", lead "..BLUE.."Tooga "..GREY.."to "..BLUE.."Torta"..GREY.." at 66.25).";
		GREY.."10) Then turn in "..ORNG.."Tooga's Quest "..GREY.."along with "..ORNG.."Screecher Spirits";
		GREY.."11) Run to ".._RED.."Gadgetzan"..GREY..".";
		GREY.."12) Turn in "..ORNG.."The Thirsty Goblin  "..GREY.."accept "..ORNG.."In Good Taste "..GREY.."turn it in  accept "..ORNG.."Sprinkle's Secret Ingredient";
		GREY.."13) Turn in "..ORNG.."Thistleshrub Valley"..GREY..", "..ORNG.."The Dunemaul Compound"..GREY.." and "..ORNG.."Noxious Lair Investigation";
		GREY.."14) Accept "..ORNG.."The Scrimshank Redemption";
		GREY.."15) Go do:";
		GREY.."16) Turn in "..ORNG.."Gahz'ridian "..GREY.."(at 52.45).";
		GREY.."17) "..ORNG.."The Scrimshank Redemption "..GREY.."(in the cave at 53.70) The secret for finding the item for this quest";
		GREY.."is keep making right turns in the cave and it will lead you to it."; 
		GREY.."18) If the "..GREN.."OOX-17/TN Distress Beacon "..GREY.."item drops, accept the quest "..ORNG.."Find OOX-17/TN!";
		GREY.."19) Turn in "..ORNG.."Find OOX-17/TN! "..GREY.."(at 60.64)";
		GREY.."20) Then do the "..ORNG.."Chicken escort Rescue OOX-17/TN!";
		GREY.."21) Once all those quests are finished";
		GREY.."22) "..GREN.."Hearth "..GREY.."to ".._RED.."Gadgetzan"..GREY..".";		
		
	};
	
	g5 = {
		ZoneName = "49-50 (Part 2)";
		Location = "Tanaris";
		GREY.."23) Turn in "..ORNG.."The Scrimshank Redemption  "..GREY.."accept "..ORNG.."Insect Part Analysis";
		GREY.."24) Turn in "..ORNG.."Insect Part Analysis  "..GREY.."accept "..ORNG.."Insect Part Analysis "..GREY.."again.";
		GREY.."25) Turn in "..ORNG.."Insect Part Analysis  "..GREY.."accept "..ORNG.."Rise of the Silithid";
		GREY.."26) Fly to ".._RED.."Orgrimmar"..GREY..".";
		GREY.."27) Make ".._RED.."Orgrimmar "..GREY.."your home.";
		GREY.."28) Get the "..GREN.."Box of Empty Vials "..GREY.."out of your Bank.";
		GREY.."29) Fly to ".._RED.."Azshara"..GREY..".";		
	};

};


AtlasLVV = {

	g6 = {
		ZoneName = "50-50";
		Location = "Azshara";
		GREY.."01) Accept: "..ORNG.."Stealing Knowledge"..GREY..".";
		GREY.."02) Go do:";
		GREY.."03) "..ORNG.."Stealing Knowledge "..GREY.."(Done at the ".._RED.."Ruins of Eldarath"..GREY..", 36.54)";
		GREY.."04) "..ORNG.."Seeping Corruption "..GREY.."(Tide Pools are at: 1=47.61, 2=47.51, 3=48.48, 4=47.46)";
		GREY.."05) Once their done, turn in "..ORNG.."Stealing Knowledge"..GREY..". Accept ALL 4 delivery quests.";
		GREY.."06) Turn in "..ORNG.."Delivery to Archmage Xylem "..GREY.."(there is a teleporter at 28.50,). accept";
		ORNG.."Xylem's Payment to Jediga";
		GREY.."07) Then fly to ".._RED.."Thunder Bluff"..GREY..".";
		GREY.."08) Turn in "..ORNG.."Delivery to Magatha "..GREY.."(on ".._RED.."Elder Rise"..GREY.."). accept "..ORNG.."Magatha's Payment to Jediga";
		GREY.."09) "..GREN.."Hearth "..GREY.."to ".._RED.."Orgrimmar"..GREY..".";
		GREY.."10) Go turn in "..ORNG.."Rise of the Silithid"..GREY..". Accept "..ORNG.."March of the Silithid "..GREY.."(at 56.46)";
		GREY.."11) Turn in "..ORNG.."Delivery to Jes'rimon "..GREY.."(at 55.34). accept "..ORNG.."Jes'rimon's Payment to Jediga "..GREY.."and";
		ORNG.."Bone-Bladed Weapons"..GREY..".";
		GREY.."12) Then turn in "..ORNG.."Ripple Delivery "..GREY.."(at 59.36)  (If you did the ".._RED.."Hinterlands "..GREY.."section)";
		_RED.."13) "..GREY.."Then go get new hunter spells/abilities. Accept "..ORNG.."The Hunter's Charm "..GREY.."(if you're a Hunter).";
		GREY.."14) Then go to The ".._RED.."Undercity"..GREY..", head to the ".._RED.."Apothecarium Quarter"..GREY..".";
		GREY.."15) Turn in "..ORNG.."Delivery to Andron Gant"..GREY..". Accept "..ORNG.."Andron's Payment to Jediga"..GREY..".";
		GREY.."16) Then turn in "..ORNG.."Seeping Corruption "..GREY.."and accept "..ORNG.."Vivian Lagrave "..GREY.."while you are there.";
		GREY.."17) Then accept "..ORNG.."Seeping Corruption"..GREY..". then turn it in (at the "..BLUE.."tauren "..GREY.."right next to him).";
		GREY.."18) Then complete "..ORNG.."Seeping Corruption "..GREY.."for the final time.";
		GREY.."19) Then accept "..ORNG.."A Sample of Slime"..GREY.." and "..ORNG.."A Batch of Ooze"..GREY..".";
		GREY.."20) Then fly to ".._RED.."Tarren Mill "..GREY.."(".._RED.."Hillsbrad"..GREY..").";
		GREY.."21) Then go into ".._RED.."Hinterlands "..GREY.."(the entrance is at 86.30 in ".._RED.."Hillsbrad"..GREY..").";		
};

	g7 = {
		ZoneName = "50-51";
		Location = "Hinterlands";
		GREY.."01) As you enter ".._RED.."Hinterlands go to 26.48 and turn in "..ORNG.."Ripple Recovery"..GREY..". ".._RED.."SKIP "..ORNG.."A Sticky Situation";
		GREY.."02) Next go down south to 33.73 and turn in "..ORNG.."The Atal'ai Exile "..GREY.."(33.73). ".._RED.."SKIP "..ORNG.."Return to Fel'Zerul";
		GREY.."03) Then go do "..ORNG.."Sprinkle's Secret Ingredient "..GREY.."(the lake at 41.60)";
		GREY.."04) Go to ".._RED.."Raventusk Village "..GREY.."(at 77.80)";
		GREY.."05) Accept: "..ORNG.."Snapjaws, Mon!"..GREY..", "..ORNG.."Gammerita, Mon! "..GREY.."and "..ORNG.."Lard Lost His Lunch"..GREY..".";
		_RED.."06) "..GREY.."stable "..BLUE.."cat"..GREY..".";
		_RED.."07) "..GREY.."go tame a "..BLUE.."Saltwater Snapjaw "..GREY.."(for Bite Rank7). then abandon, get "..BLUE.."cat "..GREY.."back out.";
		GREY.."08) Go do in the following order:";
		GREY.."09) "..ORNG.."Snapjaws, Mon! "..GREY.."along with "..ORNG.."Gammerita, Mon! "..GREY.."and "..ORNG.."Whiskey Slim's Lost Grog";
		GREY.."10) "..ORNG.."Cortello's Riddle "..GREY.."(at 80.46, "..GREN.."little chest "..GREY.."in the water, "..GREN.."14 slot bag "..GREY.."along with 8800 XP)";
		GREY.."11) "..ORNG.."Lard Lost His Lunch "..GREY.."(at 84.42)";
		GREY.."12) Then go turn in "..ORNG.."Snapjaws, Mon!"..GREY..", "..ORNG.."Gammerita, Mon! "..GREY.."and "..ORNG.."Lard Lost His Lunch";
		GREY.."13) Get "..GREN.."FP "..GREY.."there and fly to ".._RED.."Hammerfall "..GREY.."(".._RED.."Arathi Highlands"..GREY..")";
		GREY.."14) Build up "..GREN.."first aid "..GREY.."at "..BLUE.."Doctor Gregory Victor"..GREY..".";
		GREY.."15) Then "..GREN.."hearth "..GREY.."to ".._RED.."Orgrimmar"..GREY..".";
		GREY.."16) Fly to ".._RED.."Azshara"..GREY..".";
		GREY.."17) Turn in all 4 delivery quests.";
		GREY.."18) If you're not "..PURP.."level 51"..GREY..", grind till you are.";
		GREY.."19) Fly to ".._RED.."Ratchet"..GREY..".";
		GREY.."20) Pick up the "..GREN.."Stone Circle "..GREY.."at "..BLUE.."Liv Rizzlefix "..GREY.."shop. also accept "..ORNG.."Volcanic Activity "..GREY.."while you're there.";
		GREY.."21) Get on the boat to go to ".._RED.."BB";
		GREY.."22) Fly to "..ORNG.."Stonard "..GREY.."("..ORNG.."swamp of sorrows"..GREY..")";
		GREY.."23) Go into ".._RED.."Blasted Lands"..GREY..".";		
};

	g8 = {
		ZoneName = "51-51";
		Location = "Blasted Lands";
		GREY.."01) I then find all the items to complete these 5 quests:";
		GREY.."02) "..ORNG.."A Boar's Vitality";
		GREY.."03) "..ORNG.."Snickerfang Jowls";
		GREY.."04) "..ORNG.."The Basilisk's Bite";
		GREY.."05) "..ORNG.."The Decisive Striker";
		GREY.."06) "..ORNG.."Vulture's Vigor";
		GREY.."07) You need to find these many items to complete those quests:";
		GREY.."08) "..GREN.."Vulture Gizzards"..GREY.." = "..GREN.."14";
		GREY.."09) "..GREN.."Basilisk Brain"..GREY.." = "..GREN.."11";
		GREY.."10) "..GREN.."Blasted Boar Lungs"..GREY.." = "..GREN.."6";
		GREY.."11) "..GREN.."Scorpok Pincers"..GREY.." = "..GREN.."6";
		GREY.."12) "..GREN.."Snickerfang Jowls"..GREY.." = "..GREN.."5";
		GREY.."13) While I'm in ".._RED.."Blasted Lands"..GREY..", I discover most of all the areas for XP.";
		GREY.."14) If an "..GREN.."Imperfect Draenethyst Fragment "..GREY.."drops turn in for this quest:";
		ORNG.."Everything Counts In Large Amounts"..GREY..".";
		GREY.."15) ".._RED.."NOTE: "..GREY.."I have NEVER found a "..GREN.."Flawless Draenethyst Sphere "..GREY.."for the quest "..ORNG.."To Serve Kum'isha";
		GREY.."16) Turn in all quests.";
		GREY.."17) I turn in "..ORNG.."The Decisive Striker "..GREY.."in ASAP for "..GREN.."Ground Scorpok Assay "..GREY.."(+25 to agility), so I can use";
		GREY.."the extra +25 agility boost while in the ".._RED.."Blasted Lands"..GREY..". Class may differ";
		GREY.."18) Go back to ".._RED.."Stonard "..GREY.."(".._RED.."Swamp of Sorrows"..GREY..")";
		GREY.."19) Fly to".._RED.." BB"..GREY..", Take the boat to ".._RED.."Rachet";		
};

	g9 = {
		ZoneName = "51-51 (Part 2)";
		Location = "Blasted Lands";
		GREY.."21) Fly to ".._RED.."Thunder Bluff"..GREY..".";
		GREY.."22) Make ".._RED.."Thunder Bluff "..GREY.."your home.";
		GREY.."23) ".._RED.."NOTE: "..GREY.."ONLY do the following if you are using a class that buys mana to drink and that you have at";
		GREY.."least 15 gold: Go to the "..BLUE.."AV battlemaster "..GREY.."(at 56.76 in ".._RED.."TB"..GREY..") and enter ".._RED.."AV "..GREY.."(".._RED.."Alterac Valley"..GREY..")"; 
		GREY.."(choose First Available). Once in ".._RED.."AV "..GREY.."go to "..BLUE.."Grunnda Wolfheart <Frostwolf Supply Officer> "..GREY.."(at 49.82)";
		GREY.."and buy as many "..GREN.."Alterac Manna Biscuits "..GREY.."as you can (buy as many so you only have like 5-10 gold left).";
		GREY.."Then to leave ".._RED.."AV"..GREY..", simply type: /afk. These "..GREN.."Biscuits "..GREY.."will help replenish mana and health much faster,";
		GREY.."thus making leveling a lot faster.";
		GREY.."24) Fly to ".._RED.."Tanaris"..GREY..".";
		GREY.."25) Turn in "..ORNG.."Sprinkle's Secret Ingredient"..GREY..". accept "..ORNG.."Delivery for Marin";
		GREY.."26) Turn in "..ORNG.."March of the Silithid"..GREY..". accept "..ORNG.."Bungle in the Jungle";
		GREY.."27) Turn in "..ORNG.."Delivery for Marin"..GREY..". Accept "..ORNG.."Noggenfogger Elixir "..GREY.."then turn it in.";
		GREY.."28) If you have a "..GREN.."mithril casing "..GREY.."get that out of your mailbox.";
		GREY.."29) Go turn in "..GREN.."The Stone Circle "..GREY.."(at 52.45 in ".._RED.."Tanaris"..GREY..")";
		GREY.."30) Then go into ".._RED.."Un'Goro Crater"..GREY..".";		
};

	h1 = {
		ZoneName = "51-53";
		Location = "Un'Goro Crater";
		GREY.."01) Go accept: "..ORNG.."The Apes of Un'Goro "..GREY.."and "..ORNG.."The Fare of Lar'korwi "..GREY.."(at 71.75)";
		GREY.."02) Go do "..ORNG.."The Fare of Lar'korwi "..GREY.."(at 68.56)";
		GREY.."03) Then go start doing: "..ORNG.."Super Sticky "..GREY.."(up north in the middle) until this drops "..GREN.."A Mangled Journal";
		GREY.."04) Then go into ".._RED.."Marshal's Refuge "..GREY.."(43.10), accept ALL quests there:  "..ORNG.."Chasing A-Me 01"..GREY..",";
		ORNG.."Shizzle's Flyer Lost!"..GREY..", "..ORNG.."Beware of Pterrordax"..GREY..", "..ORNG.."Roll the Bones"..GREY..", "..ORNG.."Alien Ecology"..GREY..", "..ORNG.."Expedition Salvation"..GREY..",";
		ORNG.."Larion and Muigin";
		GREY.."05) Turn in "..ORNG.."Williden's Journal"..GREY..".";
		GREY.."06) Get "..GREN.."FP "..GREY.."there, then go do the ".._RED.."Ungoro "..GREY.."Grind :).";
		GREY.."07) ".._RED.."NOTE: "..GREY.."don't worry about the "..GREN.."ungoro dirt mounds"..GREY..", you'll find enough soil from mob drops. Also I"; 
		GREY.."don't worry about the "..GREN.."Bloodpetal Sprouts"..GREY..", as they are not turned in for any XP.";
		GREY.."08) While questing, find "..GREN.."7 crystals "..GREY.."of each color (".._RED.."red"..GREY..", "..BLUE.."blue"..GREY..", "..GREN.."green"..GREY..", and "..YELO.."yellow "..GREY.."for the"; 
		ORNG.."Crystals of Power quest"..GREY..")";
		GREY.."09) "..ORNG.."Super Sticky";
		GREY.."10) "..ORNG.."The Apes of Un'Goro "..GREY.."along with "..ORNG.."Chasing A-Me 01 "..GREY.."(if you have a "..GREN.."mithril casing "..GREY.."do the escort)(63.17)";
		GREY.."11) "..ORNG.."Larion and Muigin";
		GREY.."12) "..ORNG.."Beware of Pterrordax "..GREY.."along with "..ORNG.."Shizzle's Flyer "..GREY.."and";
		GREY.."13) "..ORNG.."Roll the Bones";
		GREY.."14) "..ORNG.."Expedition Salvation "..GREY.."(68.36 and 38.65)";
		GREY.."15) "..ORNG.."A Batch of Ooze "..GREY.."(I make sure I get at least "..GREN.."25 ooze samples"..GREY..")";
		GREY.."16) Go turn in "..ORNG.."The Apes of Un'Goro"..GREY..". accept "..ORNG.."The Mighty U'cha";
		GREY.."17) Turn in "..ORNG.."The Fare of Lar'korwi"..GREY..". accept "..ORNG.."The Scent of Lar'korwi";
		GREY.."18) Then go do:";
		GREY.."19) "..ORNG.."Bone-Bladed Weapons "..GREY.."along with "..ORNG.."The Scent of Lar'korwi";
		GREY.."20) "..ORNG.."It's a Secret to Everybody"..GREY..". click on "..GREN.."boat "..GREY.."and then "..GREN.."bag "..GREY.."under water (at 63.68)";
		GREY.."21) Then turn in "..ORNG.."The Scent of Lar'korwi"..GREY..". accept "..ORNG.."The Bait for Lar'korwi "..GREY.."(71.75)";
		GREY.."22) Then go do "..ORNG.."Alien Ecology "..GREY.."along with "..ORNG.."Bungle in the Jungle "..GREY.."(50.80)";		
};

	h2 = {
		ZoneName = "51-53 (Part 2)";
		Location = "Un'Goro Crater";
		GREY.."23) Go accept "..ORNG.."Finding the Source "..GREY.."(at 30.50), then do it along with "..ORNG.."Volcanic Activity";
		GREY.."24) The hotspot path for the quest "..ORNG.."Finding the Source "..GREY.."starts at 51,42 and the hot spot is at 50,46"; 
		GREY.."25) "..ORNG.."Lost! "..GREY.."Make sure all quests are done before doing this (besides "..ORNG.."The Mighty U'cha "..GREY.."and";
		ORNG.."The Bait for Lar'korwi"..GREY..")";
		GREY.."26) This leads back to ".._RED.."Marshal's Refuge"..GREY..", Turn in ALL quests there, accept new ones (including all the";
		GREY.."Pylon quests in the cave).";
		GREY.."27) Then go do (in the following order):";
		GREY.."28) "..ORNG.."The Northern Pylon "..GREY.."(at 56.13)";
		GREY.."29) "..ORNG.."The Mighty U'cha "..GREY.."(cave at 63.13)";
		GREY.."30) "..ORNG.."The Eastern Pylon "..GREY.."(at 77.50)";
		GREY.."31) "..ORNG.."The Bait for Lar'korwi "..GREY.."(80.50).  Then turn it in along with "..ORNG.."The Mighty U'cha "..GREY.."(71.75)";
		GREY.."32) Go west killing "..BLUE.."oozes "..GREY.."along the way.";
		GREY.."33) Turn in "..ORNG.."Finding the Source"..GREY..". accept "..ORNG.."The New Springs "..GREY.."(30.50)";
		GREY.."34) "..ORNG.."The Western Pylon "..GREY.."(at 23.58)";
		GREY.."35) Go back to ".._RED.."Marshal's Refuge "..GREY.."killing "..BLUE.."oozes "..GREY.."along the way.";
		GREY.."36) Turn in quests. make sure you complete "..ORNG.."Making Sense of It "..GREY.."(just talk to the "..BLUE.."gnome "..GREY.."in the cave)";
		GREY.."37) Fly to ".._RED.."Tanaris"..GREY..".";
		GREY.."38) Turn in "..ORNG.."Super Sticky "..GREY.."and "..ORNG.."Bungle in the Jungle"..GREY..". I ".._RED.."SKIP "..ORNG.."Pawn Captures Queen";
		GREY.."39) Then "..GREN.."hearth "..GREY.."to ".._RED.."Thunder Bluff"..GREY..".";
		GREY.."40) Go to ".._RED.."Elder Rise"..GREY..".";
		GREY.."41) Accept "..ORNG.."Un'goro Soil"..GREY..". then turn it in. accept "..ORNG.."Morrowgrain Research"..GREY..". then turn that in.";
		GREY.."42) ".._RED.."SKIP "..GREY.."the next part (the part that says bring "..GREN.."10 Morrowgrain"..GREY..")";
		GREY.."43) Go get new spells/abilities.";
		GREY.."44) Fly to ".._RED.."XRs"..GREY..".";
		GREY.."45) Make ".._RED.."XRs "..GREY.."your home.";
		GREY.."46) Then fly to ".._RED.."Ratchet"..GREY..".";
		GREY.."47) Turn in "..ORNG.."Volcanic Activity "..GREY.."and "..ORNG.."Marvon's Workshop"..GREY.." - I ".._RED.."SKIP "..ORNG.."Zapper Fuel";		
};

	h3 = {
		ZoneName = "51-53 (Part 3)";
		Location = "Un'Goro Crater";
		GREY.."48) Get on the boat to go to ".._RED.."BB"..GREY..".";
		GREY.."49) Turn in "..ORNG.."Whiskey Slim's Lost Grog";
		GREY.."50) Also turn in "..ORNG.."Rescue OOX-17/TN! "..GREY.."(if you did it)";
		GREY.."51) Fly to ".._RED.."Kargath "..GREY.."(".._RED.."Badlands"..GREY..").";
		GREY.."52) Turn in "..ORNG.."Vivian Lagrave";
		GREY.."53) Accept: "..ORNG.."Dreadmaul Rock "..GREY.."and "..ORNG.."The Rise of the Machines";
		GREY.."54) Then fly to ".._RED.."Burning Steppes"..GREY..".";		
};

	h4 = {
		ZoneName = "53-54";
		Location = "Burning Steppes";
		GREY.."01) Accept: "..ORNG.."Broodling Essence "..GREY.."and "..ORNG.."Tablet of the Seven";
		GREY.."02) Then go do:";
		GREY.."03) "..ORNG.."Broodling Essence "..GREY.."(to the east)(also kill as many "..BLUE.."dragon whelps "..GREY.."you see, their squishy mobs that";
		GREY.."die real fast)";
		GREY.."04) Work your way to the cave (at 94.31) and accept "..ORNG.."A Taste of Flame"..GREY..". Then turn it in.";
		GREY.."05) "..ORNG.."Dreadmaul Rock "..GREY.."(79.45). Then "..ORNG.."Krom'Grul "..GREY.."("..BLUE.."Krom'Grul "..GREY.."has 2 different spawn points, in either cave)";
		GREY.."06) "..ORNG.."The Rise of the Machines";
		GREY.."07) "..ORNG.."Tablet of the Seven"..GREY.." (it's at 54.40)";
		GREY.."08) Go turn in "..ORNG.."Tablet of the Seven "..GREY.."and "..ORNG.."Broodling Essence"..GREY..". accept "..ORNG.."Felnok Steelspring";
		GREY.."09) Then fly to ".._RED.."Kargath "..GREY.."(".._RED.."Badlands"..GREY..")";
		GREY.."10) Turn in "..ORNG.."Krom'Grul";
		GREY.."11) Turn in "..ORNG.."The Rise of the Machines"..GREY..". accept "..ORNG.."The Rise of the Machines part2";
		GREY.."12) Go turn in "..ORNG.."The Rise of the Machines part2 "..GREY.."(at 25.46 in ".._RED.."Badlands"..GREY..")";
		GREY.."13) Then "..GREN.."hearth "..GREY.."to ".._RED.."XRs"..GREY..".";
		GREY.."14) Then fly to ".._RED.."Orgrimmar"..GREY..".";
		GREY.."15) Go turn in "..ORNG.."Bone-Bladed Weapons "..GREY.."(55.34)";
		GREY.."16) Fly to ".._RED.."Splintertree Post"..GREY..", (".._RED.."Ashenvale"..GREY..").";
		GREY.."17) Go north into ".._RED.."Felwood"..GREY..".";		
};

	h5 = {
		ZoneName = "54-54";
		Location = "Azshara";
		GREY.."01) Accept "..ORNG.."Betrayed";
		_RED.."02) "..GREY.."Go turn in "..ORNG.."The Hunter's Charm "..GREY.."(this is a hunter only quest, at 42.42). accept "..ORNG.."Courser Antlers";
		GREY.."03) Go accept "..ORNG.."Kim'jael Indeed!"..GREY.." (at 53.21 on top of the hill)";
		GREY.."04) Then go do:";
		GREY.."05) "..ORNG.."Courser Antlers";
		GREY.."06) I grind away at "..BLUE.."Blood Elves "..GREY.."all the way to "..PURP.."level 54 "..GREY.."while doing "..ORNG.."Kim'jael Indeed! "..GREY.."and "..ORNG.."Betrayed"; 
		GREY.."(turn this in at 59.31. accept and do the next part to this quest)";
		GREY.."(this is all done at the ".._RED.."Thalassian Base Camp"..GREY..", 56.28)";
		GREY.."07) I grind "..BLUE.."Blood Elves"..GREY..", cause their squishy mobs (mobs that have 30% fewer health/armor, than the";
		GREY.."average mob that level). I used to grind "..BLUE.."Satyrs "..GREY.."on previous speed runs, but I was able to cut off a"; 
		GREY.."whole hour with the "..BLUE.."Blood Elves"..GREY..".";
		GREY.."08) OPTIONAL: Instead of the grinding you could go do ".._RED.."BRD "..GREY.."instance instead.";
		GREY.."09) Once you turn "..PURP.."level 54 "..GREY.."and those 3 quests are done, go turn in "..ORNG.."Kim'jael Indeed!"..GREY..". accept";
		ORNG.."Kim'jael's Missing Equipment"..GREY..".";
		GREY.."10) Turn in "..ORNG.."Courser Antlers"..GREY..". i ".._RED.."SKIP"..ORNG.." Wavethrashing "..GREY.."(42.42)";
		GREY.."11) Then go do "..ORNG.."Kim'jael's Missing Equipment";
		GREY.."12) Go turn in "..ORNG.."Kim'jael's Missing Equipment";
		GREY.."13) Turn in "..ORNG.."Betrayed"..GREY..". accept "..ORNG.."Betrayed "..GREY.."(22.51)";
		GREY.."14) "..GREN.."Hearth "..GREY.."to ".._RED.."Orgrimmar"..GREY..".";
		GREY.."15) I then go turn in "..ORNG.."Bone-Bladed Weapons "..GREY.."and "..ORNG.."Betrayed";
		GREY.."16) Then fly to ".._RED.."Splintertree Post "..GREY.."(".._RED.."Ashenvale"..GREY..").";
		GREY.."17) Then go into ".._RED.."Felwood"..GREY..".";		
};

	h6 = {
		ZoneName = "54-54 (Part 2)";
		Location = "Felwood";
		GREY.."01) Accept "..ORNG.."Timbermaw Ally "..GREY.."(at 50.85)  Just talk to the NPC there he will give it to you.";
		GREY.."02) Go accept "..ORNG.."Forces of Jaedenar "..GREY.."and "..ORNG.."Verifying the Corruption "..GREY.."(at the ".._RED.."Emerald Sanctuary "..GREY.."51.82). ";
		GREY.."Get the "..GREN.."FP "..GREY.."there too.";
		GREY.."03) Go accept "..ORNG.."Cleansing Felwood "..GREY.."(at 46.84)";
		GREY.."04) start killing "..BLUE.."oozes"..GREY..", make sure to kill about "..BLUE.."30 oozes "..GREY.."here total for the quest "..ORNG.."A Sample of Slime"..GREY..".";
		GREY.."05) Then go complete "..ORNG.."Forces of Jaedenar "..GREY.."(38.60)";
		GREY.."06) Then go to ".._RED.."BloodVenom Post"..GREY..". (34.52)";
		GREY.."07) Accept: "..ORNG.."Well of Corruption"..GREY..", "..ORNG.."A Husband's Last Battle"..GREY.." and "..ORNG.."Wild Guardians";
		GREY.."08) Get "..GREN.."FP "..GREY.."there.";
		GREY.."09) Then go do in the following order:";
		GREY.."10) "..ORNG.."Verifying the Corruption "..GREY.."(41.41)";
		GREY.."11) "..ORNG.."Cleansing Felwood "..GREY.."(54.16)";
		GREY.."12) Go accept "..ORNG.."Deadwood of the North "..GREY.."(at 64.8) but ".._RED.."DON'T "..GREY.."do it now.";
		GREY.."13) Grind your way through the cave to go to ".._RED.."Winterspring"..GREY..".";		
};

	h7 = {
		ZoneName = "54-55";
		Location = "Winterspring";
		GREY.."01) Exit the cave and accept "..ORNG.."Winterfall Activity "..GREY.."right outside of it.";
		GREY.."02) Go to "..BLUE.."Donova Snowden "..GREY.."(at 31.45)";
		GREY.."03) Turn in "..ORNG.."The New Springs "..GREY.."and "..ORNG.."It's a Secret to Everybody"..GREY..". accept "..ORNG.."Strange Sources "..GREY.."and";
		ORNG.."Threat of the Winterfall"..GREY..".";
		GREY.."04) ".._RED.."NOTE: "..GREY.."I SKIP "..ORNG.."The Videre Elixir "..GREY.."and the rest of that chain.";
		GREY.."05) Go to ".._RED.."Everlook"..GREY..". (61.38)";
		GREY.."06) Accept: "..ORNG.."Are We There, Yeti?"..GREY..", "..ORNG.."The Everlook Report"..GREY..", "..ORNG.."Duke Nicholas Zverenhoff"..GREY..", "..ORNG.."Sister Pamela"..GREY..", and";
		ORNG.."Ursius of the Shardtooth"..GREY..".";
		GREY.."07) Turn in "..ORNG.."Felnok Steelspring"..GREY..". accept "..ORNG.."Chillwind Horns"..GREY..".";
		GREY.."08) Make ".._RED.."Everlook "..GREY.."your home.";
		GREY.."09) N/A";
		GREY.."10) Go do "..ORNG.."Ursius of the Shardtooth "..GREY.."(just keep grinding mobs on the hill north of ".._RED.."everlook "..GREY.."till";
		BLUE.."Ursius "..GREY.."shows up)";
		GREY.."11) Then turn in "..ORNG.."Ursius of the Shardtooth"..GREY..". accept "..ORNG.."Brumeran of the Chillwind";
		GREY.."12) Go do "..ORNG.."Brumeran of the Chillwind "..GREY.."(he patrols around 60.60, see map for complete patrol path)";
		GREY.."13) Then go Discover "..ORNG.."Darkwhisper Gorge "..GREY.."(at 59.73) for the quest "..ORNG.."Strange Sources";
		GREY.."14) Then "..GREN.."hearth "..GREY.."back to ".._RED.."Everlook"..GREY..".";
		GREY.."15) Turn in "..ORNG.."Brumeran of the Chillwind"..GREY..". ".._RED.."SKIP "..ORNG.."Shy-Rotam";
		GREY.."16) Then go do the following quests (steps 17-20, in any order) to the west and some to the north:";
		GREY.."17) "..ORNG.."Are We There, Yeti?";
		GREY.."18) "..ORNG.."Threat of the Winterfall "..GREY.."you should find "..GREN.."Empty Firewater Flask "..GREY.."which starts "..ORNG.."Winterfall Firewater"; 
		GREY.."while doing this quest. When the "..GREN.."Winterfall Ritual Totem "..GREY.."item drops, save it and put it in your bank"; 
		GREY.."you will need it later.";
		GREY.."19) "..ORNG.."Wild Guardians "..GREY.."(the "..BLUE.."Ragged Owls "..GREY.."are west of ".._RED.."Everlook"..GREY..", and the "..BLUE.."Raging Owls "..GREY.."are just north)";
		GREY.."20) "..ORNG.."Chillwind Horns "..GREY.."(you can find a larger concentration of "..BLUE.."chimaera "..GREY.."around 66.29)";
		GREY.."21) Once "..ORNG.."Threat of the Winterfall "..GREY.."and "..ORNG.."Winterfall Firewater "..GREY.."is completed go turn them in along with"; 
		ORNG.."Strange Sources "..GREY.."(at 31.45). accept "..ORNG.."Falling to Corruption";		
};

	h8 = {
		ZoneName = "54-55 (Part 2)";
		Location = "Winterspring";
		GREY.."22) Once the rest of those quests are complete, go back to ".._RED.."Everlook "..GREY.."and turn in "..ORNG.."Are We There, Yeti?"..GREY..".";
		GREY.."accept "..ORNG.."Are We There, Yeti? part2"..GREY..".  Turn in "..ORNG.."Chillwind Horns"..GREY..". i ".._RED.."SKIP "..ORNG.."Return to Tinkee";
		GREY.."23) Then go do:";
		GREY.."24) "..ORNG.."Winterfall Activity "..GREY.."(67.37)";
		GREY.."25) "..ORNG.."Are We There, Yeti? "..GREY.."(find "..GREN.."2 Pristine Yeti Horns"..GREY..") (66.43)";
		GREY.."26) Then "..GREN.."hearth "..GREY.."to ".._RED.."Everlook"..GREY..".";
		GREY.."27) Go turn in "..ORNG.."Are We There, Yeti?"..GREY..". Accept "..ORNG.."Are We There, Yeti? part3";
		GREY.."28) Then fly to ".._RED.."Felwood "..GREY.."(".._RED.."BloodVenom Post"..GREY..").";		
};

	h9 = {
		ZoneName = "55-55";
		Location = "Felwood";
		GREY.."01) Turn in "..ORNG.."Wild Guardians"..GREY..". ".._RED.."SKIP "..ORNG.."Wild Guardians part2";
		GREY.."02) Fly to ".._RED.."Emerald Sanctuary "..GREY.."(In ".._RED.."Felwood"..GREY..").";
		GREY.."03) Turn in "..ORNG.."Verifying the Corruption "..GREY.."and "..ORNG.."Forces of Jaedenar"..GREY..". accept "..ORNG.."Collection of the Corrupt Water"; 
		GREY.."04) Go turn in "..ORNG.."Cleansing Felwood"..GREY..". then get a "..GREN.."cenarion beacon "..GREY.."for the quest "..ORNG.."Salve Via Hunting"; 
		GREY.."(just talk to the NPC to get it) (46.83)";
		GREY.."05) Go do "..ORNG.."A Husband's Last Battle "..GREY.."along with "..ORNG.."Timbermaw Ally "..GREY.."(48.94)";
		GREY.."06) Once they are done go turn in "..ORNG.."Timbermaw Ally "..GREY.."(at 50.85). accept "..ORNG.."Speak to Nafien";
		GREY.."07) Go do "..ORNG.."Well of Corruption "..GREY.."(at 32.66).  Also make sure you collect "..GREN.."6 Corrupted Soul Shards "..GREY.."for the";
		GREY.."quest "..ORNG.."Salve Via Hunting";
		GREY.."08) "..ORNG.."Collection of the Corrupt Water "..GREY.."(35.59)";
		GREY.."09) Then go to ".._RED.."Bloodvenom Post"..GREY..".";
		GREY.."10) Turn in "..ORNG.."A Husband's Last Battle "..GREY.."and "..ORNG.."Well of Corruption"..GREY..". accept "..ORNG.."Corrupted Sabers";
		GREY.."11) Fly to ".._RED.."Emerald Sanctuary"..GREY..".";
		GREY.."12) Turn in "..ORNG.."Collection of the Corrupt Water"..GREY..". I ".._RED.."SKIP "..ORNG.."Seeking Spiritual Aid "..GREY.."(51.82)";
		GREY.."13) Go turn in "..ORNG.."Salve Via Hunting "..GREY.."(the "..GREN.."6 Corrupted Soul Shards"..GREY..") (46.83)";
		GREY.."14) Go do "..ORNG.."Corrupted Sabers "..GREY.."(32.66) then go turn it in.  (".._RED.."NOTE: "..GREY.."when you turn it in, you have to talk"; 
		GREY.."to the cat first once you get to the NPC)";
		GREY.."15) Then go up north and do:";
		GREY.."16) "..ORNG.."Deadwood of the North "..GREY.."(61.9) When the "..GREN.."Deadwood Ritual Totem "..GREY.."item drops, save it and put it in";
		GREY.."your bank when you get a chance, you will need it later.";
		GREY.."17) "..ORNG.."Falling to Corruption "..GREY.."(the cauldron at 60.5) (hint: I have my pet distract the mobs, while doing";
		GREY.."this quest). then accept "..ORNG.."Mystery Goo";
		GREY.."18) Go turn in "..ORNG.."Deadwood of the North "..GREY.."(64.8). accept "..ORNG.."Speak to Salfa"..GREY..".  And turn in "..ORNG.."Speak to Nafien";
		GREY.."19) Then run through the cave (you should be Unfriendly with "..BLUE.."Timbermaw"..GREY..", so they shouldn't attack you).";
		GREY.."20) Turn in "..ORNG.."Winterfall Activity "..GREY.."and "..ORNG.."Speak to Salfa";
		GREY.."21) Then go turn in "..ORNG.."Mystery Goo "..GREY.."(at 31.45 in ".._RED.."Winterspring"..GREY.."). ".._RED.."SKIP "..ORNG.."Toxic Horrors";
		GREY.."22) Then "..GREN.."hearth "..GREY.."to ".._RED.."Everlook"..GREY..".";		
};

	i1 = {
		ZoneName = "55-55 (Part 2)";
		Location = "Felwood";
		GREY.."23) Fly to ".._RED.."Orgrimmar"..GREY..".";
		GREY.."24) If you happen to see "..BLUE.."Warcaller Gorlach"..GREY..", accept "..ORNG.."A Call To Arms: The Plaguelands!";
		GREY.."25) Go to the ".._RED.."UnderCity"..GREY..".";
		GREY.."26) Go complete "..ORNG.."A Sample of Slime"..GREY.." and "..ORNG.."A Batch of Ooze";
		GREY.."27) Go accept "..ORNG.."A Call To Arms: The Plaguelands!"..GREY.." (this same quest can also get accepted in ".._RED.."Orgrimmar"..GREY..")";
		GREY.."28) Make ".._RED.."UnderCity "..GREY.."your home.";
		GREY.."29) Go to the ".._RED.."Bulwark"..GREY..". (which is a small village east of ".._RED.."Tirisfal Glades"..GREY..")";
};

	i2 = {
		ZoneName = "55-56";
		Location = "Silithus";
		GREY.."Here are the prerequisites to this section:";
		GREY.."Accept: "..ORNG.."Are We There, Yeti? part3 "..GREY.."(In ".._RED.."Everlook"..GREY..", ".._RED.."Winterspring"..GREY..")";
		GREY.."Accept: "..ORNG.."Taking Back Silithus "..GREY.."In ".._RED.."Orgrimmar"..GREY..".";
		GREY.."01) Accept: "..ORNG.."Report to General Kirika"..GREY..", "..ORNG.."The Twilight Mystery"..GREY..", "..ORNG.."Deadly Desert Venom "..GREY.."and "..ORNG.."Wanted - Deathclasp"..GREY..",";
		ORNG.."Terror of the Sands "..GREY.."(Wanted Poster).  Turn in "..ORNG.."Taking Back Silithus"..GREY..". accept "..ORNG.."Securing the Supply Lines";
		GREY.."02) Go do: "..ORNG.."Securing the Supply Lines "..GREY.."and "..ORNG.."Deadly Desert Venom (do these 2 quests NE of ".._RED.."Cenarion Hold"..GREY..")";
		GREY.."03) Then turn them in and accept new quests.";
		GREY.."04) Then go do:";
		GREY.."05) "..ORNG.."Stepping Up Security "..GREY.."(mobs are all over to the west)";
		GREY.."06) "..ORNG.."The Twilight Mystery "..GREY.."(around 21.17)";
		GREY.."07) Go turn in "..ORNG.."Report to General Kirika "..GREY.."at 50.69. accept "..ORNG.."Scouring the Desert";
		GREY.."08) Go do "..ORNG.."Noggle's Last Hope "..GREY.."along with "..ORNG.."Scouring the Desert "..GREY.."Once you find the "..GREN.."Silithyst "..GREY.."item which";
		GREY.."looks like a glowing red thing, bring it back to the PVP horde base and stand in the teleporter"; 
		GREY.."looking thing, then turn the quest in for 6,600 XP!";
		GREY.."09) "..ORNG.."Wanted - Deathclasp"..GREY..", "..ORNG.."Terror of the Sands (Elite) "..GREY.."(40.90) This quest is very easy to solo at";
		PURP.."lvl 55"..GREY..". If your class has troubles, either find a group to help, or you can simply skip it.";
		GREY.."10) Once all of those are done, go turn them in at ".._RED.."Cenarion Hold"..GREY..", accept new ones.";
		GREY.."11) Go do: "..ORNG.."Noggle's Lost Satchel "..GREY.."(it's at around 44.91)";
		GREY.."12) "..ORNG.."The Deserter "..GREY.."(he's in the cave at 67.71). i ".._RED.."SKIP "..ORNG.."The Twilight Lexicon";
		GREY.."13) Then I die on purpose, so I end up at ".._RED.."Cenarion Hold"..GREY..".";
		GREY.."14) Turn in "..ORNG.."Noggle's Lost Satchel";
		GREY.."15) Then fly to "..ORNG.."Marshal's Refuge "..GREY.."in ".._RED.."Un'Goro Crater"..GREY..".";
		GREY.."16) Go scare "..BLUE.."Quixxil "..GREY.."with the "..GREN.."mechanical yeti "..GREY.."for the quest "..ORNG.."Are We There, Yeti? part3";
		GREY.."17) Then fly to ".._RED.."Tanaris"..GREY..".";
		GREY.."18) Go scare "..BLUE.."Sprinkle "..GREY.."with the "..GREN.."mechanical yeti "..GREY.."for the quest "..ORNG.."Are We There, Yeti? part3";
		GREY.."19) Then "..GREN.."hearth "..GREY.."to ".._RED.."Orgrimmar"..GREY..".";
		GREY.."20) Go to the ".._RED.."UnderCity"..GREY..".";		
};
	i3 = {
		ZoneName = "55-56 (Part 2)";
		Location = "Silithus";
		GREY.."21) Go complete "..ORNG.."A Sample of Slime"..GREY.." and "..ORNG.."A Batch of Ooze"..GREY..".";
		GREY.."22) Go accept "..ORNG.."A Call To Arms: The Plaguelands! "..GREY.."(this same quest can also get accepted in ".._RED.."Orgrimmar)";
		GREY.."23) Make ".._RED.."UnderCity "..GREY.."your home.";
		GREY.."24) Go to the ".._RED.."Bulwark"..GREY..". (which is a small village east of ".._RED.."Tirisfal Glades"..GREY..")";		
};
	i4 = {
		ZoneName = "56-56";
		Location = "Western Plaguelands";
		GREY.."01) Turn in "..ORNG.."A Call To Arms: The Plaguelands! "..GREY.."accept "..ORNG.."Scarlet Diversions"..GREY..".";
		GREY.."02) (make sure you get a "..GREN.."Flame in a Bottle "..GREY.."first, before doing this quest, it's in the box)";
		GREY.."03) Turn in "..ORNG.."The Everlook Report"..GREY..".";
		GREY.."04) Accept and complete "..ORNG.."Argent Dawn Commission"..GREY..".";
		GREY.."05) Accept "..ORNG.."The So-Called Mark of the Lightbringer "..GREY.."and "..ORNG.."A Plague Upon Thee"..GREY..".";
		GREY.."06) Go into the ".._RED.."Western Plaguelands "..GREY.."(".._RED.."Felstone field "..GREY.."at 37.56) and";
		GREY.."07) Accept "..ORNG.."Better Late Than Never "..GREY.."(the lady in the house)";
		GREY.."08) Then go to the barn next door, and";
		GREY.."09) Complete "..ORNG.."Better Late Than Never"..GREY..". click on the chest again to accept "..ORNG.."Better Late Than Never "..GREY.."again.";
		GREY.."10) Go do "..ORNG.."Scarlet Diversions "..GREY.."(burn the tent down, and plant the banner, 40.51)";
		GREY.."11) Go back to the ".._RED.."Bulwark."..GREY.." (".._RED.."NOTE: "..GREY.."Make sure you save all "..GREN.."Bone Fragments "..GREY.."you find, you will need 30"; 
		GREY.."of them for a later quest)";
		GREY.."12) Turn in "..ORNG.."Scarlet Diversions"..GREY..". accept "..ORNG.."All Along the Watchtowers "..GREY.."and "..ORNG.."The Scourge Cauldrons";
		GREY.."13) Turn in "..ORNG.."The Scourge Cauldrons"..GREY..". accept "..ORNG.."Target: Felstone Field";
		GREY.."14) Go complete the whole "..ORNG.."Cauldron quest chain"..GREY..", you need to kill the "..BLUE.."Cauldron Lord "..GREY.."at each targeted"; 
		GREY.."field (listed below), grab their "..GREN.."key "..GREY.."and use it at the "..GREN.."big cauldron "..GREY.."in the middle of the field.";  
		GREY.."(Just keep going back and forth from ".._RED.."The Bulwark "..GREY.."to the next field completing each one, turning them";
		GREY.."in and then accepting and doing the next one).";
		GREY.."15) "..ORNG.."Target: Felstone Field"..GREY.." (37.56)";
		GREY.."16) "..ORNG.."Target: Dalson's Tears"..GREY.." (46.52).  ".._RED.."NOTE:  "..GREY.."While you are here, there is a small quest chain here";
		GREY.."that starts with a "..GREN.."little Diary "..GREY.."in the barn (47.50) called "..ORNG.."Mrs. Dalson's Diary"..GREY..", just click that to";
		GREY.."complete the quest.  Now, after you did that, then you need to kill a "..BLUE.."Wandering Skeleton "..GREY.."to get a";
		GREN.."key "..GREY.."that opens the outhouse behind the barn. After you get the "..GREN.."key "..GREY.."and open the outhouse, it will";
		GREY.."release a "..BLUE.."Farmer Dalson"..GREY..", a "..PURP.."level 56 "..BLUE.."undead"..GREY..". Kill him, grab that "..GREN.."key"..GREY..", and then run in the house"; 
		GREY.."(that is right next to the barn) and go up the stairs, there you will find a "..GREN.."cabinet"..GREY..", open the"; 
		GREN.."cabinet "..GREY.."with that "..GREN.."key "..GREY.."(For the quest "..ORNG.."Locked Away"..GREY..") and finally it's over.  Easy 10200 XP!  Or was it?";		
};
	i5 = {
		ZoneName = "56-56 (Part 2)";
		Location = "Western Plaguelands";
		GREY.."17) "..ORNG.."Target: Writhing Haunt "..GREY.."(53.65) (while you're there accept "..ORNG.."The Wildlife Suffers Too "..GREY.."(at 53.64, the";
		GREY.."almost dead "..BLUE.."tauren "..GREY.."in the hut)";
		GREY.."18) "..ORNG.."Target: Gahrron's Withering "..GREY.."(62.59)  (Once you turn in the "..GREN.."Key "..GREY.."and accept "..ORNG.."Return to the Bulwark"..GREY..","; 
		GREY.."then just go directly into ".._RED.."Eastern Plaguelands "..GREY.."(without turning that quest in yet).";		
};
	i6 = {
		ZoneName = "56-57";
		Location = "Eastern Plaguelands";
		GREY.."01) Go accept: "..ORNG.."Demon Dogs"..GREY..", "..ORNG.."Blood Tinged Skies "..GREY.."and "..ORNG.."Carrion Grubbage "..GREY.."(at 4.38)";
		GREY.."02) Grind your way to (23.68) and accept: "..ORNG.."To Kill With Purpose "..GREY.."and "..ORNG.."Un-Life's Little Annoyances"..GREY.."."; 
		_RED.."NOTE: "..GREY.."I SKIP "..ORNG.."The Ranger Lord's Behest"..GREY..".";
		GREY.."03) Go down in the crypt at ".._RED.."The Undercroft "..GREY.."(24.78) and accept "..ORNG.."Hameya's Plea "..GREY.."(the "..GREN.."scroll "..GREY.."on the ground).";
		GREY.."04) Grind your way to ".._RED.."Darrowshire "..GREY.."(32.83) while doing these quests:";
		GREY.."05) "..ORNG.."Demon Dogs";
		GREY.."06) "..ORNG.."Blood Tinged Skies";
		GREY.."07) "..ORNG.."Carrion Grubbage";
		GREY.."08) Then turn in "..ORNG.."Sister Pamela"..GREY..". accept and do "..ORNG.."Pamela's Doll "..GREY.."(there's 3 parts of the "..GREN.."doll"..GREY..")";  
		GREY.."09) Turn in "..ORNG.."Pamela's Doll"..GREY..". accept "..ORNG.."Auntie Marlene "..GREY.."and "..ORNG.."Uncle Carlin";
		GREY.."10) Then go complete "..ORNG.."Blood Tinged Skies";
		GREY.."11) Then make sure you kill "..BLUE.."20 Plaguehound Runts "..GREY.."for the quest "..ORNG.."Demon Dogs";
		GREY.."12) Then go to ".._RED.."Light's Hope Chapel "..GREY.."(at 75.53)";
		GREY.."13) Accept: "..ORNG.."Zaeldarr the Outcast "..GREY.."and "..ORNG.."The Restless Souls";
		GREY.."14) Turn in "..ORNG.."Duke Nicholas Zverenhoff "..GREY.."and "..ORNG.."Uncle Carlin"..GREY..". accept "..ORNG.."Defenders of Darrowshire";
		GREY.."15) Get "..GREN.."FP "..GREY.."there.  Then go do:";
		GREY.."16) "..ORNG.."To Kill With Purpose";
		GREY.."17) "..ORNG.."Defenders of Darrowshire";
		GREY.."18) "..ORNG.."Hameya's Plea "..GREY.."(66.11)";
		GREY.."19) "..ORNG.."Demon Dogs";
		GREY.."20) "..ORNG.."Carrion Grubbage";
		GREY.."21) "..ORNG.."Un-Life's Little Annoyances";
		GREY.."22) "..ORNG.."A Plague Upon Thee "..GREY.."(done at ".._RED.."Plaguewood "..GREY.."up north)";
		GREY.."23) "..ORNG.."Augustus' Receipt Book "..GREY.."(get this in the hut at 13.34, the "..GREN.."book "..GREY.."is upstairs in the inn at 12.27)";
		GREY.."24) "..ORNG.."The Restless Souls "..GREY.."("..BLUE.."Egan "..GREY.."is in the hut at 11.28)(The next part refers to ".._RED.."Stratholme"..GREY..",which I skip)";
		GREY.."25) Then go turn in: "..ORNG.."Augustus' Receipt Book"..GREY..".";		
};
	i7 = {
		ZoneName = "56-57 (Part 2)";
		Location = "Eastern Plaguelands";
		GREY.."26) Grind your way through the cave (12.24) (watch out it is not easy)";
		_RED.."NOTE: "..GREY.."If the cave is too hard for you, another easy alternative is to take the "..BLUE.."Tower Gryphon "..GREY.."ride"; 
		GREY.."from the ".._RED.."Plaguewood Tower "..GREY.."(18.27) to the ".._RED.."Crown Guard tower "..GREY.."(35.68), as long as the horde has control"; 
		GREY.."over the towers that is. Then turn in "..ORNG.."Demon Dogs"..GREY..", "..ORNG.."Blood Tinged Skies"..GREY.." and "..ORNG.."Carrion Grubbage"..GREY.."  accept";
		ORNG.."Redemption"..GREY..". Just talk to the guy to complete it. I ".._RED.."SKIP "..ORNG.."Of Forgotten Memories"..GREY.." (you can try it if you";
		GREY.."find a group)";
		GREY.."27) Then go turn in: "..ORNG.."To Kill With Purpose "..GREY.."and "..ORNG.."Un-Life's Little Annoyances "..GREY.."(at 23.68)";
		GREY.."28) Then go do "..ORNG.."Zaeldarr the Outcast "..GREY.."(24.78)";
		GREY.."29) Then go to the "..GREN.."dirt mound "..GREY.."behind the crypt and turn in "..ORNG.."Hameya's Plea";
		GREY.."30) "..GREN.."Hearth "..GREY.."to ".._RED.."UnderCity"..GREY..".";
		GREY.."31) Turn in "..ORNG.."Better Late Than Never"..GREY..". accept "..ORNG.."The Jeremiah Blues";
		GREY.."32) Turn in "..ORNG.."The Jeremiah Blues "..GREY.."(just right underneath the bank). accept "..ORNG.."Good Luck Charm";
		GREY.."33) Go back to the ".._RED.."Bulwark"..GREY..".";		
};
	i8 = {
		ZoneName = "57-59";
		Location = "Western Plaguelands";
		GREY.."01) Turn in "..ORNG.."Return to the Bulwark "..GREY.."and "..ORNG.."A Plague Upon Thee"..GREY..". accept "..ORNG.."A Plague Upon Thee part2"..GREY..". Then go";
		GREY.."accept and complete "..ORNG.."Mission Accomplished! "..GREY.."(right there at the ".._RED.."Bulwark"..GREY..")";
		GREY.."02) Go turn in "..ORNG.."Good Luck Charm"..GREY..". accept "..ORNG.."Two Halves Become One "..GREY.."(the lady in the house at 37.56)";
		GREY.."03) Do "..ORNG.."Two Halves Become One"..GREY.." ("..BLUE.."Jabbering ghouls "..GREY.."out in ".._RED.."Felstone Field "..GREY.."drop the item you need, once";
		GREY.."you get the item right-click it), then go back to the lady in the house to turn it in.";
		GREY.."04) Then do "..ORNG.."A Plague Upon Thee part2"..GREY..". accept "..ORNG.."A Plague Upon Thee part3"..GREY.." (this is all done at 48.31)";
		GREY.."05) Then go accept "..ORNG.."Unfinished Business part1"..GREY.." (at 51.28), then do it. (the mobs for this quest are at";
		GREY.."50.42 and 53.44)";
		GREY.."06) Turn in "..ORNG.."Unfinished Business part1 "..GREY.."(back at 51.28). accept "..ORNG.."Unfinished Business part2"..GREY..", then go do";
		GREY.."it. The 2 mobs for this quest are at (57.37 and 54.24). While doing this quest make sure you do"; 
		ORNG.."The So-Called Mark of the Lightbringer"..GREY.." along with it, it's up in the top of the tower at 54.23)";
		GREY.."07) "..ORNG.."Turn in Unfinished Business part2 "..GREY.."(back at 51.28). accept "..ORNG.."Unfinished Business part3"..GREY..", then go do";
		GREY.."it. Need to go up in the tower (at 45.19) in a certain spot, watch out for Elites."; 
		GREY.."08) Then turn in "..ORNG.."Unfinished Business part3"..GREY..".";
		GREY.."09) Then go complete and turn in "..ORNG.."The Wildlife Suffers Too"..GREY..". accept "..ORNG.."The Wildlife Suffers Too part2"..GREY.."(53.64)";
		GREY.."10) Do "..ORNG.."The Wildlife Suffers Too part2"..GREY..", then turn it in. ".._RED.."SKIP "..ORNG.."Glyphed Oaken Branch"..GREY..".";
		GREY.."11) Go turn in "..ORNG.."Auntie Marlene "..GREY.."(in the house at 49.78). accept "..ORNG.."A Strange Historian";
		GREY.."12) Go get the "..GREN.."ring "..GREY.."for "..ORNG.."A Strange Historian "..GREY.."(the "..GREN.."ring "..GREY.."is out in the graveyard)";  
		GREY.."13) Go into ".._RED.."Andorhal"..GREY..".";
		GREY.."14) Do "..ORNG.."All Along the Watchtowers "..GREY.."while working your way to the inn (at 39.66)";
		GREY.."15) Turn in "..ORNG.."A Strange Historian"..GREY.." (at "..BLUE.."Chromie "..GREY.."up stairs in the inn at 39.68). accept"; 
		ORNG.."The Annals of Darrowshire "..GREY.."and "..ORNG.."A Matter of Time"..GREY..".";
		GREY.."16) Then go do (while grinding away at mobs):";
		GREY.."17) "..ORNG.."All Along the Watchtowers";
		GREY.."18) "..ORNG.."The Annals of Darrowshire "..GREY.."the "..GREN.."book "..GREY.."for this is in the building at (42.67), the actual";
		ORNG.."Annals of Darrowshire "..GREN.."book "..GREY.."looks different from the others, it has a lighter tint on the top portion";
		GREY.."of the pages in the book, unlike the rest which has a darker tint on the top portion of the pages."; 		
};
	i9 = {
		ZoneName = "57-59 (Part 2)";
		Location = "Western Plaguelands";
		GREY.."19) "..ORNG.."A Matter of Time "..GREY.."(47.62)";
		GREY.."20) Go turn in "..ORNG.."A Matter of Time "..GREY.."and "..ORNG.."The Annals of Darrowshire"..GREY..". accept "..ORNG.."Counting Out Time "..GREY.."and"; 
		ORNG.."Brother Carlin"..GREY..".";
		GREY.."21) Go do "..ORNG.."Counting Out Time "..GREY.."then turn it in. (it's repeatable but you only get XP once from it)";
		GREY.."22) Then go back to the ".._RED.."Bulwark"..GREY..".";
		GREY.."23) Turn in "..ORNG.."A Plague Upon Thee part3 "..GREY.."and "..ORNG.."The So-Called Mark of the Lightbringer"..GREY..". Accept";
		ORNG.."Defiling Uther's Tomb"..GREY..".";
		GREY.."24) Turn in "..ORNG.."All Along the Watchtowers"..GREY..". accept "..ORNG.."Scholomance"..GREY..".";
		GREY.."25) Turn in "..ORNG.."Scholomance "..GREY.."at the "..BLUE.."undead guy "..GREY.."right next to him. accept "..ORNG.."Skeletal Fragments";
		GREY.."26) Stock up on "..GREN.."Enriched Manna Biscuits "..GREY.."(which replenishes mana faster from drinking)";
		GREY.."27) I then go back to ".._RED.."Andorhal"..GREY..", and do "..ORNG.."Skeletal Fragments"..GREY..".";
		GREY.."28) Stop at ".._RED.."Uther's Tomb "..GREY.."(51.82) and do "..ORNG.."Defiling Uther's Tomb "..GREY.."(you need to equip the quest item to";
		GREY.."use it at the tomb).";
		GREY.."29) As you hit "..PURP.." lvl 58 and "..ORNG.."Skeletal Fragments "..GREY.."and "..ORNG.."Defiling Uther's Tomb "..GREY.."are done and you also have"; 
		GREN.."30 Bone Fragments "..GREY.."(please note, if you are far off from the "..GREN.."30 bone fragments"..GREY..", then you can just";
		GREY.."skip it), then go back to the ".._RED.."Bulwark "..GREY.."and turn in "..ORNG.."Defiling Uther's Tomb "..GREY.."and "..ORNG.."Skeletal Fragments"; 
		GREY.."I ".._RED.."SKIP "..ORNG.."Mold Rhymes With"..GREY..".";
		GREY.."30) I turn in any "..GREN.."scourge stones"..GREY..", I have.";
		GREY.."31) I then stock up on "..GREN.."Enriched Manna Biscuits"..GREY..".";
		GREY.."32) Go to ".._RED.."Undercity "..GREY.."and then fly to ".._RED.."Light's Hope Chapel"..GREY..", ".._RED.."Eastern Plaguelands"..GREY..".";
		GREY.."33) Turn in "..ORNG.."Zaeldarr the Outcast"..GREY..", "..ORNG.."Defenders of Darrowshire "..GREY.."and "..ORNG.."Brother Carlin"..GREY..".";
		GREY.."i ".._RED.."SKIP "..ORNG.."Villains of Darrowshire"..GREY..".";
		GREY.."34) Accept and turn in "..ORNG.."Bonescythe Digs"..GREY..".";
		GREY.."35) Then fly to ".._RED.."Hammerfall "..GREY.."(".._RED.."Arathi Highlands"..GREY..")";
		GREY.."36) Build up "..GREN.."first aid"..GREY..", make sure you get "..GREN.."heavy runecloth bandage"..GREY..".";
		GREY.."37) Then "..GREN.."Hearth "..GREY.."to ".._RED.."Undercity"..GREY..".";		
};
	j1 = {
		ZoneName = "59-60";
		Location = "Winterspring";
		_RED.."01) "..GREY.."First thing to do here is stable your pet.";
		GREY.."02) then make ".._RED.."Everlook "..GREY.."your home.";
		GREY.."03) turn in "..ORNG.."Are We There, Yeti? part3";
		GREY.."04) accept: "..ORNG.."Luck Be With You (Elite) "..GREY.."and "..ORNG.."Ursius of the Shardtooth (Elite)";
		_RED.."05) "..GREY.."then go tame a "..BLUE.."Winterspring Screecher "..GREY.."(for Claw Rank8) (head south to do this)";
		GREY.."06) then do "..ORNG.."Luck Be With You "..GREY.."(use your pet to distract the "..BLUE.."giants while picking up the "..GREN.."Frostmaul Shards"..GREY..")";
		GREY.."07) then "..GREN.."hearth "..GREY.."to ".._RED.."Everlook"..GREY..".";
		GREY.."08) go do "..ORNG.."Ursius of the Shardtooth(Elite) "..GREY.."(just grind mobs on the hill north of ".._RED.."everlook till "..BLUE.."Ursius "..GREY.."shows)";
		GREY.."09) go turn in "..ORNG.."Luck Be With You "..GREY.."and "..ORNG.."Ursius of the Shardtooth"..GREY..". accept "..ORNG.."Brumeran of the Chillwind(Elite)";
		GREY.."10) then go south and do:";
		GREY.."11) "..ORNG.."Brumeran of the Chillwind (Elite)";
		GREY.."12) "..ORNG.."Luck Be With You (Elite) "..GREY.."(if you still need to finish it up)";
		GREY.."13) "..ORNG.."Wild Guardians part2 "..GREY.."(grind away at "..BLUE.."owls "..GREY.."at the ".._RED.."Owl Wing Thicket "..GREY.."for a few hours, before leaving here)";
		GREY.."14) then when a few bars away from "..PURP.."LVL 59"..GREY..", go back up to ".._RED.."Everlook"..GREY..".";
		GREY.."15) turn in "..ORNG.."Luck Be With You "..GREY.."and "..ORNG.."Brumeran of the Chillwind"..GREY..". ".._RED.."SKIP "..ORNG.."Shy-Rotam(Elite)";
		GREY.."16) Fly to ".._RED.."Bloodvenom Post "..GREY.."(".._RED.."Felwood"..GREY..").";
		GREY.."17) turn in "..ORNG.."Wild Guardians part2"..GREY..". accept "..ORNG.."Wild Guardians part3";
		GREY.."18) then "..GREN.."hearth "..GREY.."back to ".._RED.."Everlook"..GREY..".";
		GREY.."19) Then go down to the ".._RED.."Owl Wing Thicket "..GREY.."and do ".._RED.."Wild Guardians part3";
		GREY.."20) Keep grinding away at "..BLUE.."Owls "..GREY.."till about "..PURP.."LVL 59 1/2"..GREY..", then";
		GREY.."21) Die on purpose, to end up at ".._RED.."Everlook"..GREY..". then Fly to ".._RED.."Bloodvenom Post "..GREY.."(".._RED.."Felwood"..GREY..").";
		GREY.."22) turn in "..ORNG.."Wild Guardians part3 "..GREY.."and "..ORNG.."Guarding Secrets"..GREY..". accept "..ORNG.."Guarding Secrets part2";
		GREY.."23) I then fly to ".._RED.."XRs"..GREY..", then to ".._RED.."Thunderbluff"..GREY..", go to ".._RED.."Elder Rise"..GREY..".";
		GREY.."24) turn in "..ORNG.."Guarding Secrets part2 "..GREY.."and "..ORNG.."Glyphed Oaken Branch "..GREY.."(both at "..BLUE.."Nara Wildmane"..GREY..")";
		GREY.."25) "..GREN.."Hearth "..GREY.."back to ".._RED.."Everlook"..GREY..". At this point should be about 3/4 way to 60.";
		GREY.."26) I then go back down to the ".._RED.."Owl Wing Thicket "..GREY.."and Grind to 60.  (See End Game Credits)";			
};


	};

AtlasLVX = {
		j2 = {
		ZoneName = "1-5";
		Location = "Dun Morogh";
		GREY.."1) I started this guide with a "..BLUE.."dwarf rogue"..GREY..". I am trying different classes for each guide to write"; 
		GREY.."them from different views. My main is a "..BLUE.."rogue "..GREY.."so I know how to play one extremely well. I find that";  
		GREY.."I kick ass a lot more as a noob with a "..BLUE.."rogue "..GREY.."than I did as a "..BLUE.."warrior "..GREY.."when I did the human guide.";
		GREY.."2) It took me x hours to get to "..PURP.."12 "..GREY.."and not knowing the area. If you know it any I’m sure you could do";
		GREY.."better. I did do research while making this for all of you so don’t think I just picked random stuff.";
		GREY.."3) If you purchased the ".._RED.."Collector’s Edition Game"..GREY..", Right Click your "..GREN.."Gift Voucher "..GREY.."and start "..ORNG.."Welcome!";
		GREY.."4) Right in front of where you start accept "..ORNG.."Dwarven Outfitters"..GREY..".";
		GREY.."5) Go south around 28,73 and kill "..BLUE.."wolves "..GREY.."for the "..GREN.."meat "..GREY.."then go back to 29,71 and turn in"; 
		ORNG.."Dwarven Outfitters "..GREY.."then accept "..ORNG.."Encrypted Rune "..GREY.."and "..ORNG.."Coldridge Valley Mail Delivery pt.1";
		GREY.."6) To your left accept "..ORNG.."A New Threat";
		GREY.."7) At 30,74 kill "..BLUE.."burly troggs "..GREY.."and at 26,72 there is a camp of "..BLUE.."rockjaw troggs"..GREY..", kill them for";
		ORNG.."A New Threat"..GREY..".";
		GREY.."8) Go back to 29,71 and turn in "..ORNG.."A New Threat "..GREY.."you should be "..PURP.."3 "..GREY.."now.";
		GREY.."9) Go in ".._RED.."Anvilmar "..GREY.."at 28,69 and turn in your "..ORNG.."class skill quest "..GREY.."which was "..ORNG.."Encrypted Rune "..GREY.."for a "..BLUE.."rogue";
		GREY.."10) Accept "..ORNG.."A Refugee's Quandary "..GREY.."inside.";
		GREY.."11) Follow the road south to 22,71 and turn in "..ORNG.."Coldridge Valley Mail Delivery pt.1 "..GREY.."accept";
		ORNG.."Coldridge Valley Mail Delivery pt.2 "..GREY.."and "..ORNG.."The Boar Hunter";
		GREY.."12) Just behind him start killing "..BLUE.."small boars "..GREY.."until you have 12 for "..ORNG.."The Boar Hunter "..GREY.."then go back to";
		GREY.."22,71 and turn it in.";
		GREY.."13) At 20,76 clear the front of the tent and grab "..GREN.."Felix's Box "..GREY.."for "..ORNG.."A Refugee's Quandary"..GREY..".";
		GREY.."14) At 22,80 clear in front of the tent and grab "..GREN.."Felix's Chest "..GREY.."for "..ORNG.."A Refugee's Quandary"..GREY..".";
		GREY.."15) Run up to 25,75 (end of the road on the map) and turn in "..ORNG.."Coldridge Valley Mail Delivery pt.2 "..GREY.."and"; 
		GREY.."accept "..ORNG.."The Troll Cave";
		GREY.."16) At 26,79 clear in front of the cave and grab "..GREN.."Felix's Bucket of Bolts "..GREY.."for "..ORNG.."A Refugee's Quandary"; 
		GREY.."then kill the "..BLUE.."trolls "..GREY.."in and out of it until you complete "..ORNG.."The Troll Cave";
		GREY.."17) Run back up to 25,75 and turn in "..ORNG.."The Troll Cave "..GREY.."accept "..ORNG.."The Stolen Journal "..GREY.."you should be "..PURP.."5 "..GREY.."or very";
		GREY.."close to it now.";
	};

		j3 = {
		ZoneName = "5-7";
		Location = "Dun Morogh";
		GREY.."18) Go back in the cave at 26,79 and go left at the 3 directions to 30,80 and kill "..BLUE.."Grik'nir the Cold";
		GREY.."for "..ORNG.."The Stolen Journal"..GREY..".";
		GREY.."19) Return back to 25,75 and turn in "..ORNG.."The Stolen Journal "..GREY.."accept "..ORNG.."Senir's Observations pt.1"..GREY..".";
		GREY.."20) Turn around and Accept "..ORNG.."Scalding Mornbrew Delivery "..GREY.."and "..GREN.."hearth"..GREY..".";
		GREY.."21) Run up into ".._RED.."Anvilmar "..GREY.."at 28,69 and turn in "..ORNG.."A Refugee's Quandary"..GREY..".";
		GREY.."22) Go further back and turn in "..ORNG.."Scalding Mornbrew Delivery "..GREY.."accept "..ORNG.."Bring Back the Mug"..GREY..".";
		GREY.."23) Get training before you leave";
		GREY.."24) Run right to 25,75, everything is yellow so nothing will attack you, turn in "..ORNG.."Bring Back the Mug";
		GREY.."25) Head toward the tunnel and turn in "..ORNG.."Senir's Observations pt.1 "..GREY.."at 33,71 and accept";
		ORNG.."Senir's Observations pt.2"..GREY..".";
		GREY.."26) You should be about 500 to "..PURP.."6 "..GREY.."now.";
		GREY.."27) About 10 feet away accept "..ORNG.."Supplies to Tannok";
		GREY.."28) Go through the tunnel and kill all the stuff on the way. Follow the road to 46,53 in ".._RED.."Kharanos "..GREY.."and";
		GREY.."kill stuff on the way until you’re "..PURP.."6"..GREY..". Save your "..GREN.."boar ribs "..GREY.."and "..GREN.."boar meat"..GREY..".";
		GREY.."29) Once at 46,53 turn in "..ORNG.."Senir's Observations pt.2"..GREY..".";
		GREY.."30) Up ahead on the right, in front of the Inn, accept "..ORNG.."Beer Basted Boar Ribs"..GREY..".";
		GREY.."31) Go in the Inn and turn in "..ORNG.."Supplies to Tannok"..GREY..".";
		GREY.."32) Go to the Innkeeper, make it your home and purchase the "..GREN.."rhapsody malt "..GREY.."for "..ORNG.."Beer Basted Boar Ribs";
		GREY.."33) Get new skills";
		GREY.."34) Go across the road from the Inn and accept "..ORNG.."Tools For Steelgrill"..GREY..".";
		GREY.."35) Go NE to 49,48 and accept "..ORNG.."Stocking Jetsteam "..GREY.."and "..ORNG.."The Grizzled Den"..GREY..".";
		GREY.."36) Go to the left house and turn in "..ORNG.."Tools For Steelgrill"..GREY..".";
		GREY.."37) By the tree out front accept "..ORNG.."Ammo For Rumbleshot"..GREY..".";
		GREY.."38) Go to the small camp at 44,56 and open the "..GREN.."box "..GREY.."for "..ORNG.."Ammo For Rumbleshot"..GREY..".";
		GREY.."39) From around this camp to the SW kill "..BLUE.."boars "..GREY.."and "..BLUE.."bears "..GREY.."until you finish "..ORNG.."Stocking Jetsteam "..GREY.."and"; 
		ORNG.."Beer Basted Boar Ribs"..GREY..".";
	};	
	
		j4 = {
		ZoneName = "7-10";
		Location = "Dun Morogh";
		GREY.."40) If you’re having trouble finding "..BLUE.."boars"..GREY..", just go to around 40,65 there is a lot.";
		GREY.."41) Go into the ".._RED.."grizzled den "..GREY.."at 42,54 and kill "..BLUE.."wendingos "..GREY.."until you get "..GREN.."8 manes "..GREY.."for "..ORNG.."The Grizzled Den";
		GREY.."42) You also wanna head out to 40,65 and turn in "..ORNG.."Ammo For Rumbleshot "..GREY.."watch the scene it’s cool, only";
		GREY.."if you aren’t time running. You should be "..PURP.."7 "..GREY.."or very close now";
		GREY.."43) "..GREN.."Hearth "..GREY.."back to ".._RED.."Kharanos"..GREY..".";
		GREY.."44) Just outside the Inn, turn in "..ORNG.."Beer Basted Boar Ribs"..GREY..".";
		GREY.."45) Go to the house at 45,49, NE of the Inn, and accept "..ORNG.."Operation Recombobulation"..GREY..".";
		GREY.."46) Run NE to 49,48 and turn in "..ORNG.."Stocking Jetsteam "..GREY.."accept "..ORNG.."Evershine"..GREY..".";
		GREY.."47) Turn in "..ORNG.."The Grizzled Den"..GREY..".";
		GREY.."48) You should be close to half way through "..PURP.."lvl 7"..GREY..".";
		GREY.."49) Run west to 30,45 and turn in "..ORNG.."Evershine "..GREY.."accept "..ORNG.."A Favor For Evershine "..GREY.."and "..ORNG.."The Perfect Stout";
		GREY.."50) Beside him accept "..ORNG.."Bitter Rivals"..GREY..".";
		GREY.."51) To the North/NE from here you’ll find tons of "..BLUE.."bears"..GREY..","..BLUE.."leopards"..GREY..", and "..BLUE.."boars "..GREY.."to kill for"; 
		ORNG.."A Favor For Evershine "..GREY.."You should ding "..PURP.."8 "..GREY.."while killing for this";
		GREY.."52) Kill "..BLUE.."troll seers "..GREY.."and open "..GREN.."baskets "..GREY.."at 41,44 and 41,35 for "..ORNG.."The Perfect Stout "..GREY.."the drops kinda suck"; 
		GREY.."off the "..BLUE.."trolls "..GREY.."but the "..GREN.."baskets "..GREY.."can be hard to get.";
		GREY.."53) Die so you end up in ".._RED.."Kharanos"..GREY..".";
		GREY.."54) Next to the GY accept "..ORNG.."Frostmane Hold"..GREY..".";
		GREY.."55) Go into the Inn and buy a "..GREN.."thunder ale "..GREY.."off the Innkeeper and down in the basement, give the ale to";		
		BLUE.."Jarven Thunderbrew"..GREY..". When he leaves touch the "..GREN.."barrel "..GREY.."to turn in "..ORNG.."Bitter Rivals "..GREY.."accept "..ORNG.."Return to Marleth";
		GREY.."56) Get new skills";
		GREY.."57) Go west to ".._RED.."brewnall village "..GREY.."again at 30,45 and turn in "..ORNG.."The Perfect Stout "..GREY.."and "..ORNG.."A Favor For Evershine";
		GREY.."accept "..ORNG.."Return to Bellowfiz "..GREY.."and "..ORNG.."Shimmer Stout";
		GREY.."58) Next to him turn in "..ORNG.."Return to Marleth "..GREY.."you should be past half way to "..PURP.."9 "..GREY.."now.";
	};		
	
		j5 = {
		ZoneName = "10-12";
		Location = "Dun Morogh";
		GREY.."59) Go west of ".._RED.."brewnall "..GREY.."and kill "..BLUE.."leper gnomes "..GREY.."until you complete "..ORNG.."Operation Recombobulation "..GREY.."you ";
		GREY.."should hit "..PURP.."9 "..GREY.."getting kills";
		GREY.."60) Go to 24,50 and enter the cave kill "..BLUE.."5 headhunters "..GREY.."and explore the cave for "..ORNG.."Frostmane Hold "..GREY.."To explore it just run in and stay to the right, it will curve left and you can see a raised platform with mobs, get near it to complete exploration";
		GREY.."61) Die so you end up at ".._RED.."Kharanos"..GREY..".";
		GREY.."62) Either straight down the steps of the Inn, or N of the GY, turn in "..ORNG.."Frostmane Hold "..GREY.."accept "..ORNG.."The Reports";
		GREY.."63) Go NW in the house at 45,49 and turn in "..ORNG.."Operation Recombobulation";
		GREY.."64) Go east to 49,48 and turn in "..ORNG.."Return to Bellowfiz "..GREY.."you should be half way to "..PURP.."10 now";
		GREY.."65) Go North to ".._RED.."IF "..GREY.."at 53,35";
		GREY.."66) Make IF your home at 21,55";
		GREY.."67) Go to 39,56 in ".._RED.."IF"..GREY..", behind the bank, in the kings room, turn in "..ORNG.."The Reports";
		GREY.."68) Enter the tram at 76,51";
		GREY.."69) Take the tram down to ".._RED.."SW"..GREY..".";
		GREY.."70) Go to 66,62 and get the "..GREN.."FP"..GREY..".";
		GREY.."71) Reach ".._RED.."goldshire "..GREY.."and enter the Inn at 42,65";
		GREY.."72) Just to your left accept "..ORNG.."Kobold Candles"..GREY..".";
		GREY.."73) Exit the Inn and go straight out and accept "..ORNG.."The Fargodeep Mine"..GREY..".";
		GREY.."74) In the ".._RED.."blacksmith house "..GREY.."right here accept "..ORNG.."Elmore's Task"..GREY..".";
		GREY.."75) Go near the carts at 42,67 and accept "..ORNG.."Gold Dust Exchange"..GREY..".";
		GREY.."76) Go south to the ".._RED.."Fargodeep Mine "..GREY.."at 39,82 and kill the "..BLUE.."kobold "..GREY.."until you complete all 3 quests "..ORNG.."The Fargodeep Mine"..GREY..", "..ORNG.."Gold Dust Exchange"..GREY..", and "..ORNG.."Kobold Candles "..GREY.."Make sure you go in the lower entrance so "..ORNG.."The Fargodeep Mine "..GREY.."is easier";
		GREY.."77) Once all 3 are done go to the ".._RED.."stonefield farm "..GREY.."just up the hill east at 34,84 and accept "..ORNG.."Lost Necklace"..GREY..". ".._RED.."SKIP: "..ORNG.."Princess Must Die!";
		GREY.."78) Go east to the ".._RED.."Maclure Vinyard "..GREY.."43,85 and turn in "..ORNG.."Lost Necklace "..GREY.."accept "..ORNG.."Pie For Billy "..GREY.."then turn around and kill "..BLUE.."boars "..GREY.."until it’s finished";
		GREY.."79) at 43,80 and accept "..ORNG.."Young Lovers"..GREY..".";
		GREY.."80) Go back west to 34,84 and turn in "..ORNG.."Pie For Billy"..GREY..". ".._RED.."SKIP: "..ORNG.."Back to Billy"..GREY..".";
		GREY.."81) Go west some to the river at 29,85 and turn in "..ORNG.."Young Lovers "..GREY.."accept "..ORNG.."Speak with Gramma"..GREY..".";
		GREY.."82) Go back to 34,84 and turn in "..ORNG.."Speak with Gramma "..GREY.."in the house, accept "..ORNG.."Note to William "..GREY.."You should be "..PURP.."10 "..GREY.."now";
		GREY.."83) Go back to ".._RED.."goldshire"..GREY..", either die or run.";
		GREY.."84) In the Inn turn in "..ORNG.."Kobold Candles"..GREY..". ".._RED.."SKIP: "..ORNG.."Shipment to Stormwind "..GREY.."also turn in "..ORNG.."Note to William"..GREY..". ".._RED.."SKIP: "..ORNG.."Collecting Kelp"..GREY..".";
		GREY.."85) Straight outside the Inn, turn in "..ORNG.."The Fargodeep Mine"..GREY..". ".._RED.."SKIP: "..ORNG.."The Jasperlode Mine"..GREY..".";
};

		j6 = {
		ZoneName = "10-12 (Part 2)";
		Location = "Dun Morogh";
		GREY.."86) South near the fence, turn in "..ORNG.."Gold Dust Exchange"..GREY..".";
		GREY.."87) Go up into ".._RED.."SW "..GREY.."to 51,12 and turn in "..ORNG.."Elmore's Task  "..GREY.."accept "..ORNG.."Stormpike's Delivery "..GREY.."this will be done on the way to the ".._RED.."wetlands";
		GREY.."88) "..GREN.."Hearth "..GREY.."to ".._RED.."IF "..GREY.."and train, do your classes "..PURP.."lvl 10 "..GREY.."quest.";
		GREY.."89) Go into the tram again at 76,51 accept "..ORNG.."Deeprun Rat Roundup "..GREY.."just collect "..GREN.."5 rats "..GREY.."and turn it in.";
		GREY.."You could skip this and keep the "..GREN.."flute"..GREY..", It can really piss people off if you play it non stop around";
		GREY.."the ".._RED.."IF "..GREY.."bank. ".._RED.."SKIP: "..ORNG.."Me Brother, Nipsy "..GREY.."unless you go back to ".._RED.."SW "..GREY.."on the tram because you get crap xp";
		GREY.."90) After this you should be a bit over half way to "..PURP.."11"..GREY..".";
		GREY.."91) Run east to 68,55 and accept "..ORNG.."The Public Servant"..GREY..".";
		GREY.."92) Go behind him and accept "..ORNG.."Those Blasted Troggs!"..GREY..".";
		GREY.."93) Go in the pidd below and kill the "..BLUE.."troggs "..GREY.."here and in the cave for both quests then turn them back";
		GREY.."in at 68,55";
		GREY.."94) Go east to 80,51 and follow the path into ".._RED.."Loch Modan"..GREY..".";

};	
		
		j7 = {
		ZoneName = "11-12";
		Location = "Loch Modan";		

		GREY.."1) Go to 22,73 and accept "..ORNG.."In Defense of the King's Lands"..GREY..".";
		GREY.."2) Go up in the tower and accept "..ORNG.."The Trogg Threat";
		GREY.."3) At 33,50 grab the "..GREN.."FP"..GREY..".";
		GREY.."4) Look for the "..BLUE.."wandering guard "..GREY.."and accept "..ORNG.."Rat Catching"..GREY..".";
		GREY.."5) Kill "..BLUE.."troggs "..GREY.."from 27,53 and north for "..ORNG.."In Defense of the King's Lands "..GREY.."and "..ORNG.."The Trogg Threat";
		GREY.."6) Go back to 22,73 and turn them both in";
		GREY.."7) Go north to the tower at 24,18 and turn in "..ORNG.."Stormpike's Delivery"..GREY..".";
		GREY.."8) You should be "..PURP.."12 "..GREY.."now or close to it. You can grind if you’d like but it doesn’t matter much."; 
		GREY.."Follow the "..BLUE.."Night Elf "..GREY.."to ".._RED.."IF "..GREY.."guide but just go backwards. You’re going to go north through the ".._RED.."wetlands";
		GREY.."to ".._RED.."menethil"..GREY..", then boat to ".._RED.."auberdine "..GREY.."from here.";	
	
};	

};
	
	AtlasLVY = {	
	
		j8 = {
		ZoneName = "1-5";
		Location = "Elywnn Forest";
		GREY.."1) I chose a "..BLUE.."warrior "..GREY.."to do this part of the guide.I don’t do every quest out here, some are too hard"; 
		GREY.."unless you have a group. ".._RED.."Elewynn Forest "..GREY.."is badly designed compared to the other start zones. You"; 
		GREY.."can’t even hit "..PURP.."level 12 "..GREY.."here. I find this zone very tough and it will be for you. You could even"; 
		GREY.."follow my "..BLUE.."gnome/dwarf "..GREY.."guide and just go there when I finish that next.";
		GREY.."2) I got to "..PURP.."12 "..GREY.."in 5 hours 20 minutes I’m sure you can get better.";
		GREY.."3) If you purchased the "..GREN.."Collector’s Edition Game"..GREY..", Right Click your "..GREN.."Gift Voucher "..GREY.."and start "..ORNG.."Welcome!";
		GREY.."4) Directly in front of where you start accept "..ORNG.."A Threat Within "..GREY.."then go in the building and turn it"; 
		GREY.."in, accept "..ORNG.."Kobold Camp Cleanup"..GREY..".";
		GREY.."5) Run back out, and turn in "..ORNG.."Welcome! "..GREY.."at the wagons at 47,41";
		GREY.."6) Go to the nook at the NW corner of the building at 48,40 and accept "..ORNG.."Wolves Across the Border";
		GREY.."7) Kill the "..BLUE.."wolves "..GREY.."all in front of you for "..ORNG.."Wolves Across the Border "..GREY.."while working your way to the"; 
		BLUE.."kobold vermin "..GREY.."at 47,35 for "..ORNG.."Kobold Camp Cleanup"..GREY..".";
		GREY.."8) Go back to 48,40 and turn in "..ORNG.."Wolves Across the Border"..GREY.."."; 
		GREY.."9) Run into the house at 48,41 and turn in "..ORNG.."Kobold Camp Cleanup "..GREY.."accept "..ORNG.."Simple Letter "..GREY.."and"; 
		ORNG.."Investigate Echo Ridge"..GREY..".";
		GREY.."10) Go to the "..BLUE.."warrior trainer "..GREY.."at 50,42 and turn in "..ORNG.."Simple Letter "..GREY.."and train";
		GREY.."11) Exit the house and grab "..ORNG.."Brotherhood of Thieves "..GREY.."just outside.";
		GREY.."12) Go NW to the cave at 47,32 and kill "..BLUE.."kobold workers "..GREY.."on the way up to it for "..ORNG.."Investigate Echo Ridge";
		GREY.."13) Go West to 54,40 and go south killing the "..BLUE.."defias "..GREY.."until you finish "..ORNG.."Brotherhood of Thieves "..GREY.."you"; 
		GREY.."should have dinged "..PURP.."4 "..GREY.."by the time you’re done, if not just kill until you are.";
		GREY.."14) Run back to the ".._RED.."abbey "..GREY.."at 48,42 and turn in "..ORNG.."Brotherhood of Thieves "..GREY.."accept "..ORNG.."Milly Osworth "..GREY.."and"; 
		ORNG.."Bounty on Garrick Padfoot"..GREY..".";
		GREY.."15) Go inside the house and turn in "..ORNG.."Investigate Echo Ridge "..GREY.."accept "..ORNG.."Skirmish at Echo Ridge "..GREY.."then get";
		GREY.."new skills";
		GREY.."16) Go north of the house at 50,39 next to the barn, turn in "..ORNG.."Milly Osworth "..GREY.."accept "..ORNG.."Milly's Harvest";
		GREY.."17) Go back east and grab the "..GREN.."grapes "..GREY.."in the ".._RED.."garden "..GREY.."at 54,48 for "..ORNG.."Milly's Harvest "..GREY.."then NE to 57,48"; 
		GREY.."you'll see a ".._RED.."shack "..GREY.."with "..BLUE.."padfoot "..GREY.."and a "..BLUE.."thug"..GREY..". Kill him for "..ORNG.."Bounty on Garrick Padfoot";
 };	

		j9 = {
		ZoneName = "5-7";
		Location = "Elywnn Forest";
		GREY.."18) Go back to 50,39 and turn in "..ORNG.."Milly's Harvest "..GREY.."accept "..ORNG.."Grape Manifest"..GREY..".";
		GREY.."19) Go into the cave at 47,31 and kill "..BLUE.."kobold laborer’s "..GREY.."for "..ORNG.."Skirmish at Echo Ridge"..GREY..".";
		GREY.."20) "..GREN.."Hearth "..GREY.."back to the ".._RED.."Abbey"..GREY..".";
		GREY.."21) Turn in "..ORNG.."Bounty on Garrick Padfoot "..GREY.."right in front of you.";
		GREY.."22) Go inside the house, turn in "..ORNG.."Skirmish at Echo Ridge "..GREY.."accept "..ORNG.."Report to Goldshire"..GREY..".";
		GREY.."23) Go to the top of the tower through the spiral staircase, turn in "..ORNG.."Grape Manifest"..GREY..".";
		GREY.."24) Go to 45,47 and accept "..ORNG.."Rest and Relaxation";
		GREY.."25) If you’re not "..PURP.."6 "..GREY.."you should be close, just grind on a few mobs while you head towards the house"; 
		GREY.."near ".._RED.."goldshire "..GREY.."at 46,62 and pick up "..GREN.."skinning "..GREY.."if you want it.";
		GREY.."26) Reach ".._RED.."goldshire "..GREY.."and enter the Inn at 42,65";
		GREY.."27) Just to your left accept "..ORNG.."Kobold Candles"..GREY..".";
		GREY.."28) Near the bar turn in "..ORNG.."Rest and Relaxation "..GREY.."and make ".._RED.."Goldshire "..GREY.."your home";
		GREY.."29) Exit the Inn and go straight out, turn in "..ORNG.."Report to Goldshire "..GREY.."accept "..ORNG.."The Fargodeep Mine";
		GREY.."30) Get your new skills in town here.";
		GREY.."31) Go near the carts at 42,67 and accept "..ORNG.."Gold Dust Exchange"..GREY..".";
		GREY.."32) Go south to the ".._RED.."Fargodeep Mine "..GREY.."at 39,82 and kill the "..BLUE.."kobold "..GREY.."until you complete all 3 quests";
		ORNG.."The Fargodeep Mine"..GREY..", "..ORNG.."Gold Dust Exchange"..GREY..", and "..ORNG.."Kobold Candles "..GREY.."Make sure you go in the lower entrance so";
		ORNG.."The Fargodeep Mine "..GREY.."is easier.";
		GREY.."33) Once all 3 are done go to the ".._RED.."stonefield farm "..GREY.."just up the hill east at 34,84 and accept"; 
		ORNG.."Lost Necklace ".._RED.."SKIP: "..ORNG.."Princess Must Die! "..GREY.."it’s just too hard to do alone.";
		GREY.."34) Go east to the ".._RED.."Maclure Vinyard "..GREY.."at 43,80 and accept "..ORNG.."Young Lovers"..GREY..".";
		GREY.."35) Go to 43,85 and turn in "..ORNG.."Lost Necklace "..GREY.."accept "..ORNG.."Pie For Billy "..GREY.."then turn around and kill "..BLUE.."boars "..GREY.."until"; 
		GREY.."it’s finished.";
		GREY.."36) Go back west to 34,84 and turn in "..ORNG.."Pie For Billy "..GREY.."and accept "..ORNG.."Back to Billy"..GREY..".";
		GREY.."37) Go west some to the river at 29,85 and turn in "..ORNG.."Young Lovers "..GREY.."accept "..ORNG.."Speak with Gramma"..GREY..".";
		GREY.."38) Go back to 34,84 and turn in "..ORNG.."Speak with Gramma "..GREY.."in the house, accept "..ORNG.."Note to William"..GREY..".";
		GREY.."39) Run back east to 43,85 and turn in "..ORNG.."Back to Billy "..GREY.."accept "..ORNG.."Goldtooth"..GREY..".";		

 };	 
 
 		k1 = {
		ZoneName = "7-9";
		Location = "Elywnn Forest";
		GREY.."40) Go in the bottom entrance of the "..ORNG.."fargodeep mine "..GREY.."at 39,82 and to about 41,78 inside and kill"; 
		BLUE.."goldtooth "..GREY.."for "..ORNG.."Goldtooth "..GREY.."You should ding "..PURP.."7 "..GREY.."sometime in the cave or before you came in.";
		GREY.."41) "..GREN.."Hearth "..GREY.."back to ".._RED.."Goldshire"..GREY..".";
		GREY.."42) In the Inn turn in "..ORNG.."Kobold Candles "..GREY.."accept "..ORNG.."Shipment to Stormwind "..GREY.."also turn in "..ORNG.."Note to William";
		GREY.."accept "..ORNG.."Collecting Kelp"..GREY..".";
		GREY.."43) Straight outside the Inn, turn in "..ORNG.."The Fargodeep Mine "..GREY.."accept "..ORNG.."The Jasperlode Mine";
		GREY.."44) South near the fence, turn in "..ORNG.."Gold Dust Exchange "..GREY.."You should have dinged "..PURP.."lvl 7 "..GREY.."now, accept";
		ORNG.."A Fishy Peril"..GREY..".";
		GREY.."45) Turn around by the "..BLUE.."blacksmith "..GREY.."and turn it in, accept "..ORNG.."Further Concerns"..GREY..".";
		GREY.."46) Kill "..BLUE.."murlocs "..GREY.."around the lake at 51,65 for "..ORNG.."Collecting Kelp"..GREY..".";
		GREY.."47) Grind up to the ".._RED.."Jasperlode mine "..GREY.."at 61,53 and run through it about half way to 60,50 for"; 
		ORNG.."The Jasperlode Mine"..GREY..".";
		GREY.."48) Run to the bridge at 73,72 and turn in "..ORNG.."Further Concerns "..GREY.."accept "..ORNG.."Find the Lost Guards "..GREY.."and"; 
		ORNG.."Protect the Frontier"..GREY..".";
		GREY.."49) Stop at the house NE of here at 79,68 and accept "..ORNG.."Red Linen Goods";
		GREY.."50) At the center of the camp, 81,66, accept "..ORNG.."A Bundle of Trouble"..GREY..".";
		GREY.."51) Run just west of the waterfall at 72,60 touch the "..GREN.."mangled body "..GREY.."and turn in "..ORNG.."Find the Lost Guards"; 
		GREY.."accept "..ORNG.."Discover Rolf’s Fate "..GREY.."if this doesn’t make you ding "..PURP.."8 "..GREY.."then grind that last tiny bit.";
		GREY.."52) Go to the ".._RED.."murloc camp "..GREY.."at 79,55 and loot the "..GREN.."mangled body "..GREY.."there (might need a group, but usually"; 
		GREY.."always people here) and turn in "..ORNG.."Discover Rolf’s Fate "..GREY.."accept "..ORNG.."Report to Thomas";

 };	 
 
 		k2 = {
		ZoneName = "9-10";
		Location = "Elywnn Forest";
		GREY.."1) Go south to 81,66 and turn in "..ORNG.."A Bundle of Trouble";
		GREY.."2) Cross the road and go south and east and finish killing the "..BLUE.."bears "..GREY.."and "..BLUE.."wolves "..GREY.."for"; 
		ORNG.."Protect the Frontier "..BLUE.."bears "..GREY.."are kinda scarce so you might have to search.";
		GREY.."3) While doing this you can get some, if not all, of the "..GREN.."red bandannas "..GREY.."for "..ORNG.."Red Linen Goods "..GREY.."at 90,78";
		GREY.."4) Go back to 73,72 near the bridge and turn in "..ORNG.."Protect the Frontier "..GREY.."and "..ORNG.."Report to Thomas "..GREY.."accept"; 
		ORNG.."Deliver Thomas' Report"..GREY..".";
		GREY.."5) Go down to the ".._RED.."pumpkin patch "..GREY.."at 69,78 and kill the rest of the "..BLUE.."defias "..GREY.."for "..ORNG.."Red Linen Goods";	
		GREY.."6) You might find "..GREN.."Furlbrow's Deed "..GREY.."on the "..BLUE.."defias "..GREY.."while you’re killing "..BLUE.."defias "..GREY.."just hold it for now.";
		GREY.."7) Go to 79,68 and turn in "..ORNG.."Red Linen Goods "..GREY.."it should make you "..PURP.."lvl 9 "..GREY.."or bring you really close";
		GREY.."8) Stop at the bridge again at 73,72 and accept "..ORNG.."Report to Gryan Stoutmantle "..GREY.."must be "..PURP.."9 "..GREY.."to accept";
		GREY.."9) "..GREN.."Hearth "..GREY.."to ".._RED.."Goldshire"..GREY..".";
		GREY.."10) By the front door turn in "..ORNG.."Collecting Kelp "..GREY.."accept "..ORNG.."The Escape"..GREY..".";
		GREY.."11) Outside the Inn turn in "..ORNG.."The Jasperlode Mine "..GREY.."and "..ORNG.."Deliver Thomas Report ".._RED.."SKIP: "..ORNG.."Cloth and Leather Armor";
		GREY.."accept "..ORNG.."Westbrook Garrison Needs Help!"..GREY..".";
		GREY.."12) In the ".._RED.."blacksmith house "..GREY.."right here accept "..ORNG.."Elmore's Task "..GREY.."then get training";
		GREY.."13) Run south to the ".._RED.."maclure vinyard "..GREY.."at 43,89 and turn in "..ORNG.."The Escape"..GREY..".";
		GREY.."14) Run west to the ".._RED.."stonefield farm "..GREY.."at 34,84 and turn in "..ORNG.."Goldtooth"..GREY..".";
		GREY.."15) Go NW to 24,74 and turn in "..ORNG.."Westbrook Garrison Needs Help! "..GREY.."accept "..ORNG.."Riverpaw Gnoll Bounty "..GREY.."You will"; 
		GREY.."also see the "..GREN.."wanted poster "..GREY.."and it’s the "..ORNG.."famous old hogger quest"..GREY..". He’s a tough lvl 11 elite and is not";
		GREY.."easy so skip it, unless you have a group it’s up to you. Remember on new servers you’re probably";
		GREY.."still within range of everyone so it shouldn’t be hard to get done.";
		GREY.."16) Go just south of the road and start killing "..BLUE.."gnolls "..GREY.."for "..ORNG.."Riverpaw Gnoll Bounty "..GREY.."they can also drop a";
		GREN.."gold schedule "..GREY.."which starts a quest.";
		GREY.."17) Go back up to 34,74 and turn in "..ORNG.."Riverpaw Gnoll Bounty"..GREY..".";
		GREY.."18) You should be very close to "..PURP.."10 "..GREY.."now.";
		GREY.."19) Follow the road west into ".._RED.."Westfall"..GREY..".";		

 };	 
 
 		k3 = {
		ZoneName = "10-11";
		Location = "Westfall";
		GREY.."1) Go to 59,19 and turn in "..ORNG.."Furlbrow’s Deed "..GREY.."if you found it before.";
		GREY.."2) Accept "..ORNG.."Westfall Stew ".._RED.."SKIP: "..ORNG.."Poor Old Blanchy"..GREY..".";
		GREY.."3) Go in the house at 56,30 and turn in "..ORNG.."Westfall Stew"..GREY..".";
		GREY.."4) Go to 56,47 and turn in "..ORNG.."Report to Gryan Stoutmantle"..GREY..".";
		GREY.."5) Go in the tower and accept "..ORNG.."A Swift Message"..GREY..".";
		GREY.."6) Get the "..GREN.."FP "..GREY.."at 56,52 and turn in "..ORNG.."A Swift Message "..GREY.."accept "..ORNG.."Continue to Stormwind";
		GREY.."7) "..GREN.."Fly "..GREY.."to ".._RED.."SW "..GREY.."unless you did "..BLUE.."hogger"..GREY..", then "..GREN.."hearth "..GREY.."to ".._RED.."Goldshire "..GREY.."and turn it in outside the Inn then train";
		GREY.."8) In ".._RED.."SW "..GREY.."go to 56,64 and turn in "..ORNG.."Shipment to Stormwind"..GREY..".";
		GREY.."9) Train new weapons at 57,57";
		GREY.."10) Go to 74,47 and turn in "..ORNG.."Continue to Stormwind "..GREY.."accept "..ORNG.."Dungar Longdrink";
		GREY.."11) Go to 51,12 and turn in "..ORNG.."Elmore's Task "..GREY.."accept "..ORNG.."Stormpike's Delivery "..GREY.."this will be done on the way to";
		GREY.."the ".._RED.."wetlands"..GREY..".";
		GREY.."12) Go to 78,45 and accept "..ORNG.."A Warrior’s Training "..GREY.."or your classes "..PURP.."lvl 10 "..GREY.."quest.";
		GREY.."13) Go to 66,62 and turn in "..ORNG.."Stormpike's Delivery "..GREY.."accept "..ORNG.."Return to Lewis "..GREY.."then fly back to ".._RED.."Westfall";
		GREY.."14) Go to the tower at 56,47 and turn in "..ORNG.."Return to Lewis "..GREY.."super easy xp.";
		GREY.."15) Fly back to ".._RED.."SW "..GREY.."Go in the bar at 74,37 and turn in "..ORNG.."A Warrior’s Training "..GREY.."accept "..ORNG.."Bartleby the Drunk"; 
		GREY.."then turn around and hand it in accept "..ORNG.."Beat Bartleby"..GREY..".";
		GREY.."16) Kick "..BLUE.."bartleby’s "..GREY.."ass then talk to him again and accept "..ORNG.."Bartleby's Mug "..GREY.."then turn it in behind you";
		GREY.."and learn your defence.";
		GREY.."17) Go into the ".._RED.."tram "..GREY.."at 63,8 and take it to ".._RED.."IF"..GREY..".";

 };	 

 		k4 = {
		ZoneName = "10-11 (Part 2)";
		Location = "Westfall";
		GREY.."18) Once it stops accept "..ORNG.."Deeprun Rat Roundup "..GREY.."just collect "..GREN.."5 rats "..GREY.."and turn it in. You could skip this";
		GREY.."and keep the "..GREN.."flute"..GREY..", It can really piss people off if you play it non stop around the ".._RED.."IF "..GREY.."bank."; 
		_RED.."SKIP: "..ORNG.."Me Brother, Nipsy "..GREY.."unless you go back to ".._RED.."SW "..GREY.."on the ".._RED.."tram "..GREY.."because you get crap xp";
		GREY.."19) Grab the "..GREN.."FP "..GREY.."at 55,47";
		GREY.."20) After the "..BLUE.."rat "..GREY.."quest you should be real close to "..PURP.."Level 11"..GREY..".";
		GREY.."21) Leave ".._RED.."IF "..GREY.."and head into ".._RED.."Dun Morogh"..GREY..".";
		GREY.."22) Run east to 68,55 and accept "..ORNG.."The Public Servant"..GREY..".";
		GREY.."23) Go behind him and accept "..ORNG.."Those Blasted Troggs!"..GREY..".";
		GREY.."24) Go in the pit below and kill the "..BLUE.."troggs "..GREY.."here and in the cave for both quests then turn them back";
		GREY.."in at 68,55";
		GREY.."25) Go east to 80,51 and follow the path into ".._RED.."Loch Modan"..GREY..".";

 };	  
 
  		k5 = {
		ZoneName = "11-12";
		Location = "Loch Modan";
		GREY.."1) Go to 22,73 and accept "..ORNG.."In Defense of the King's Lands"..GREY..".";
		GREY.."2) Go up in the tower and accept "..ORNG.."The Trogg Threat"..GREY..".";
		GREY.."3) At 33,50 grab the "..GREN.."FP"..GREY..".";
		GREY.."4) Look for the "..BLUE.."wandering guard "..GREY.."and accept "..ORNG.."Rat Catching"..GREY..".";
		GREY.."5) Kill "..BLUE.."troggs "..GREY.."from 27,53 and north for "..ORNG.."In Defense of the King's Lands "..GREY.."and "..ORNG.."The Trogg Threat";
		GREY.."6) Go back to 22,73 and turn them both in";
		GREY.."7) Go north to the tower at 24,18 and turn in "..ORNG.."Stormpike's Delivery"..GREY..".";
		GREY.."8) You should be "..PURP.."Level 12 "..GREY.."now or close to it. You can grind if you’d like but it doesn’t matter much."; 
		GREY.."Follow the "..BLUE.."Night Elf "..GREY.."to ".._RED.."IF "..GREY.."guide but just go backwards. You’re going to go north through the ".._RED.."wetlands";
		GREY.."to ".._RED.."menethil"..GREY..", then boat to ".._RED.."auberdine "..GREY.."from here.";	
		_RED.."STAY ON THE PATH. BE CAREFUL!!!";

 };	  
 
 
};

	AtlasLVZ = {	

		k6 = {
		ZoneName = "1-5";
		Location = "Teldrassil";
		GREY.."1) If you purchased the "..GREN.."Collector’s Edition "..GREY.."Game, Right Click your "..GREN.."Gift Voucher "..GREY.."and start "..ORNG.."Welcome!";
		GREY.."2) Turn in "..ORNG.."Welcome! "..GREY.."at 58,44 (right in front of where you start) and pick your pet"; 
		GREY.."3) Accept "..ORNG.."The Balance of Nature pt.1 "..GREY.."at 58,44 and go do it by killing mobs at 57,45 and 61,43. Turn";
		GREY.."it in at 58,44.";
		GREY.."4) Accept "..ORNG.."The Balance of Nature pt.2"..GREY.." and "..ORNG.."Etched Sigil "..GREY.."at 58,44. "..ORNG.."The Woodland Protector pt.1 "..GREY.."at 59,42"; 
		GREY.."and "..ORNG.."A Good Friend "..GREY.."at 60,41";
		GREY.."5) Hand in "..ORNG.."The Woodland Protector pt.1 "..GREY.."at 57,45 and accept "..ORNG.."The Woodland Protector pt.2 "..GREY.."Mobs are at";
		GREY.."56,46. Turn it in at 57,45.";
		GREY.."6) Accept "..ORNG.."Webwood Venom "..GREY.."at 57,41.";
		GREY.."7) Run up the ramp to the top of the tree, turn in "..ORNG.."Etched Sigil "..GREY.."at 58,40 ("..BLUE.."hunter trainer"..GREY..") and get";
		GREY.."beast tracking";
		GREY.."8) Jump down and go do the following:";
		GREY.."9) "..ORNG.."The Balance of Nature pt.2 "..GREY.."mobs are all around 60,35";
		GREY.."10) "..ORNG.."Webwood Venom "..GREY.."at 57,32 in and outside the cave";
		GREY.."11) Turn in "..ORNG.."A Good Friend "..GREY.."at 54,32 in a cove just west of the cave. Accept "..ORNG.."A Friend in Need";
		GREY.."12) Turn in "..ORNG.."Webwood Venom "..GREY.."at 57,41. Accept "..ORNG.."Webwood Egg"..GREY..".";
		GREY.."13) Get new skills";
		GREY.."14) Turn in "..ORNG.."The Balance of Nature pt.2 "..GREY.."at 58,44";
		GREY.."15) Turn in "..ORNG.."A Friend in Need "..GREY.."at 60,41, accept "..ORNG.."Iverron's Antidote pt.1"..GREY..".";
		GREY.."16) Go do:";
		GREY.."17) "..ORNG.."Iverron's Antidote pt.1 "..GREY.."("..GREN.."lilies "..GREY.."and "..GREN.."mushrooms"..GREY..") around 57,37";
		GREY.."18) "..ORNG.."Iverron's Antidote pt.1 "..GREY.."("..GREN.."ichor"..GREY..") in the cave 57,32 along with "..ORNG.."Webwood Egg "..GREY.."at 56,26";
		GREY.."19) Turn in "..ORNG.."Webwood Egg "..GREY.."at 57,41 Accept "..ORNG.."Tenaron's Summons "..GREY.."then Run up the ramp to the top of the tree";
		GREY.."and hand it in at 59,39. Accept "..ORNG.."Crown of the Earth pt.1"..GREY..".";
		GREY.."20) Turn in "..ORNG.."Iverron's Antidote pt.1 "..GREY.."accept "..ORNG.."Iverron's Antidote pt.2"..GREY..".";
		GREY.."21) Do "..ORNG.."Crown of the Earth pt.1 "..GREY.."at 59,32.";
		GREY.."22) Turn in "..ORNG.."Iverron's Antidote pt.2 "..GREY.."at 54,32.";
	};	
	
		k7 = {
		ZoneName = "5-8";
		Location = "Teldrassil";
		GREY.."23) Turn in "..ORNG.."Crown of the Earth pt.1 "..GREY.."at 59,39 Accept "..ORNG.."Crown of the Earth pt.2";
		GREY.."24) If you’re not "..PURP.."level 6 "..GREY.."yet, you should be close. Level and get skills. Head towards ".._RED.."Dolanaar";
		GREY.."25) Accept "..ORNG.."Dolanaar Delivery "..GREY.."at 61,47";
		GREY.."26) Accept "..ORNG.."Zenn's Bidding "..GREY.."at 60,56";
		GREY.."27) Make ".._RED.."Dolanaar "..GREY.."your home.";
		GREY.."28) Turn in "..ORNG.."Dolanaar Delivery "..GREY.."at 55,59 in ".._RED.."Dolanaar";
		GREY.."29) Turn in "..ORNG.."Crown of the Earth pt.2 "..GREY.."at 56,61 accept "..ORNG.."Crown of the Earth pt.3";
		GREY.."30) At the tower in ".._RED.."Dolanaar  "..GREY.."grab the following:";
		GREY.."31) "..ORNG.."Denalan's Earth"..GREY..", "..ORNG.."A Troubling Breeze"..GREY..", Get "..GREN.."First Aid"..GREY..", "..ORNG.."The Emerald Dreamcatcher"..GREY..", "..ORNG.."Twisted Hatred";
		GREY.."32) Accept "..ORNG.."The Road to Darnassus "..GREY.."from the "..BLUE.."mounted patrol "..GREY.."(if she’s there) right around 56,57";
		GREY.."33) Now do:";
		GREY.."34) "..ORNG.."Zenn's Bidding "..GREY.."mobs east of ".._RED.."Dolanaar";
		GREY.."35) "..ORNG.."Crown of the Earth pt.3 "..GREY.."at 63,58";
		GREY.."36) Turn in "..ORNG.."A Troubling Breeze "..GREY.."at 66,58 accept "..ORNG.."Gnarlpine Corruption";
		GREY.."37) "..ORNG.."The Emerald Dreamcatcher "..GREY.."68,59";
		GREY.."38) Turn in "..ORNG.."Zenn's Bidding "..GREY.."at 60,56 then go to the";
		GREY.."39) ".._RED.."Dolanaar tower "..GREY.."and get "..ORNG.."Seek Redemption!";
		GREY.."40) "..ORNG.."Do Seek Redemption! "..GREY.."(cones under trees) while heading to 60,68 and turn in "..ORNG.."Denalan's Earth";
		GREY.."41) Accept and do "..ORNG.."Timberling Seeds "..GREY.."(all around lake) & "..ORNG.."Timberling Sprouts "..GREY.."(around trees near lake)";
		GREY.."42) Hand those back in and accept "..ORNG.."Rellian Greenspyre";
		GREY.."43) Run to ".._RED.."Dolanaar";
		GREY.."44) Turn in "..ORNG.."Crown of the Earth pt.3 "..GREY.."accept "..ORNG.."Crown of the Earth pt.4";
		GREY.."45) Go to tower in ".._RED.."Dolanaar"..GREY..":";
		GREY.."46) Turn in "..ORNG.."Gnarlpine Corruption "..GREY.."accept "..ORNG.."The Relics of Wakening";
		GREY.."47) Turn in "..ORNG.."The Emerald Dreamcatcher "..GREY.."accept "..ORNG.."Ferocitas the Dream Eater";
		GREY.."48) You should be "..PURP.."Level 8 "..GREY.."by now. Get new skills";
		GREY.."49) Finish "..ORNG.."Seek Redemption! "..GREY.."Then go North of ".._RED.."Starbreeze";
	};	

		k8 = {
		ZoneName = "8-10";
		Location = "Teldrassil";
		GREY.."50) Do "..ORNG.."Ferocitas the Dream Eater "..GREY.."mobs around 68,53";
		GREY.."51) Die on purpose so you end up at ".._RED.."Dolanaar";
		GREY.."52) Run to ".._RED.."Fel Rock Cave "..GREY.."at 54,52 and do "..ORNG.."Twisted Hatred "..GREY.."you can also wait until you’re "..PURP.."10 "..GREY.."to do this.";
		GREY.."53) Turn in "..ORNG.."Ferocitas the Dream Eater "..GREY.."& "..ORNG.."Twisted Hatred "..GREY.."at ".._RED.."Dolanaar";
		GREY.."54) Do "..ORNG.."The Road to Darnassus "..GREY.."at 46,52";
		GREY.."55) Go do "..ORNG.."The Relics of Wakening "..GREY.."at 44,57 in the cave";
		GREY.."56) Accept "..ORNG.."The Sleeping Druid "..GREY.."inside, kill "..BLUE.."shamans "..GREY.."to get it, turn it in.";
		GREY.."57) Accept "..ORNG.."Druid of the Claw "..GREY.."do it at 45,58";
		GREY.."58) I stop at 42,49 to get "..GREN.."skinning"..GREY..".";
		GREY.."59) Go south and do "..ORNG.."Crown of the Earth pt.4 "..GREY.."at 42,67. Die so you end up at ".._RED.."Dolanaar";
		GREY.."60) Turn in "..ORNG.."Crown of the Earth pt.4 "..GREY.."accept "..ORNG.."Crown of the Earth pt.5";
		GREY.."61) Turn in "..ORNG.."The Road to Darnassus "..GREY.."just west of tower to mountie";
		GREY.."62) Turn in "..ORNG.."The Relics of Wakening "..GREY.."accept "..ORNG.."Ursal the Mauler"..GREY..".";
		GREY.."63) You should be "..PURP.."Level 10 "..GREY.."now, if not grind to it and lets get your pet";
		_RED.."64) "..GREY.."Accept "..ORNG.."Taming the Beast pt.1 "..GREY.."("..BLUE.."webwood lurker"..GREY..") 58,60";
		_RED.."65) "..GREY.."Accept "..ORNG.."Taming the Beast pt.2 "..GREY.."("..BLUE.."nightsaber stalker"..GREY..") 55,73";
		_RED.."66) "..GREY.."Accept "..ORNG.."Taming the Beast pt.3  "..GREY.."("..BLUE.."strigid screecher"..GREY..") 55,73";
		_RED.."67) "..GREY.."I tamed a "..BLUE.."Strigid Hunter "..GREY.."to get claw rank 2 and growl rank 2";
		_RED.."68) "..GREY.."I then tame an "..BLUE.."Elder Nightsaber "..GREY.."(42,42) as my pet.";
		GREY.."69) Run to ".._RED.."Darnassus "..GREY.."Hand in "..ORNG.."Rellian Greenspyre "..GREY.."at 38,21 accept "..ORNG.."Tumors";
		GREY.."70) Go to 40,81 turn in "..ORNG.."Training the Beast"..GREY..".";
		GREY.."71) Get "..ORNG.."Nessa Shadowsong "..GREY.."at 70,45 in ".._RED.."Darnassus";
		GREY.."72) Go south and do:";
		GREY.."73) Get "..ORNG.."The Glowing Fruit "..GREY.."at 42,76";
		GREY.."74) Do "..ORNG.."Ursal the Mauler "..GREY.."at 38,77";
		GREY.."75) Die so you’re in front of ".._RED.."Darnassus"..GREY..".";
	};	

		k9 = {
		ZoneName = "10-12";
		Location = "Teldrassil";
		GREY.."76) Then go do:";
		GREY.."77) "..ORNG.."Tumors "..GREY.."at 42,42";
		GREY.."78) "..ORNG.."Crown of the Earth pt.5 "..GREY.."at 38,34"; 
		GREY.."79) Accept "..ORNG.."The Enchanted Glade "..GREY.."at 38,34. Then do it at 35,43. Turn it back in";
		GREY.."80) Accept "..ORNG.."Teldrassil";
		GREY.."81) Run back to ".._RED.."Darnassus"..GREY..", turn in "..ORNG.."Tumors "..GREY.."at 38,21 accept "..ORNG.."Return to Denalan";
		GREY.."82) Turn in "..ORNG.."Teldrassil "..GREY.."atop the tower at 36,12 accept "..ORNG.."Grove of the Ancients";
		GREY.."83) "..GREN.."Hearth "..GREY.."to ".._RED.."Dolanaar";
		GREY.."84) Hand in "..ORNG.."Crown of the Earth pt.5 "..GREY.."accept "..ORNG.."Crown of the Earth pt.6";
		GREY.."85) Turn in "..ORNG.."Ursal the Mauler";
		GREY.."86) Go SE to 60,68 Turn in "..ORNG.."Return to Denalan "..GREY.."accept "..ORNG.."Oakenscowlelite";
		GREY.."87) Turn in "..ORNG.."Glowing Fruit";
		GREY.."88) Go kill "..BLUE.."Oakenscowl "..GREY.."at 53,74. Turn it in at 60,68";
		GREY.."89) Run to ".._RED.."Darnassus"..GREY..", if you’re not within 1100xp to "..PURP.."12 "..GREY.."yet grind "..BLUE.."harpies "..GREY.."North of ".._RED.."Darnassus "..GREY.."entrance.";
		GREY.."90) Turn in "..ORNG.."Crown of the Earth pt.6 "..GREY.."34,8 in ".._RED.."Darnassus";
		GREY.."91) Get skills and run through gate at 30,41";
		GREY.."92) Run straight ahead to 56,92, hand in "..ORNG.."Nessa Shadowsong "..GREY.."accept "..ORNG.."The Bounty of Teldrassil "..GREY.."go hand it";
		GREY.."in to the "..BLUE.."hippograph guy "..GREY.."at 58,93 to get a free ride and start "..ORNG.."Flight to Auberdine";
	};	
	

};


	AtlasLWA = {	
	
		l1 = {
		ZoneName = "12-13";
		Location = "Darkshore";	
		GREY.."1) Now you’re in ".._RED.."Auberdine"..GREY..", do the following:";
		GREY.."2) Once you land grab "..ORNG.."Washed Ashore pt.1 "..GREY.."right in front of you";
		GREY.."3) Turn in "..ORNG.."Flight to Auberdine "..GREY.."accept "..ORNG.."Return to Nessa "..GREY.."fly back to ".._RED.."darnassus "..GREY.."to get it done. She’s";
		GREY.."right off the edge of the dock.";
		GREY.."4) Run out on the docks of ".._RED.."Auberdine "..GREY.."grab "..ORNG.."For Love Eternal "..GREY.."at 35,43";
		GREY.."5) Go upstairs accept "..ORNG.."Buzzbox 827";
		GREY.."6) Accept "..ORNG.."Cave Mushrooms "..GREY.."in front of the Inn";
		GREY.."7) Grab "..ORNG.."The Red Crystal "..GREY.."near the bridge";
		GREY.."8) Buy some "..GREN.."6 slot bags "..GREY.."if you haven’t found 3 by now at 37,40 then grab "..ORNG.."Bashal'Aran pt.1 "..GREY.."and"; 
		ORNG.."Tools of the Highborne"..GREY..".";
		GREY.."9) I then get "..GREN.."mining "..GREY.."at 38,41";
		GREY.."10) Go south over the bridge, grab "..ORNG.."Plagued Lands"..GREY..".";
		GREY.."11) Run inside, grab "..ORNG.."How Big a Threat? pt.1"..GREY..".";
		GREY.."12) Go do "..ORNG.."Washed Ashore pt.1 "..GREY.."at 36,50 grind from town to there to get "..GREN.."Crawler legs "..GREY.."for "..ORNG.."Buzzbox 827";
		GREY.."13) Turn in "..ORNG.."Buzzbox 827 "..GREY.."at 36,46 accept "..ORNG.."Buzzbox 411"..GREY..".";
		GREY.."14) Turn in "..ORNG.."Washed Ashore pt.1 "..GREY.."accept "..ORNG.."Washed Ashore pt.2"..GREY..".";
		GREY.."15) Do "..ORNG.."Washed Ashore pt.2 "..GREY.."at 31,46 west of boat dock. Turn it in";
		GREY.."16) Go do:";
		GREY.."17) "..ORNG.."Buzzbox 411 "..BLUE.."Threshers "..GREY.."look like loch ness in the water, Turn it in at 41,28 accept "..ORNG.."Buzzbox 323";
		GREY.."18) Stop at 36,51 accept "..ORNG.."Beached Sea Creature"..GREY..".";
		GREY.."19) "..ORNG.."Bashal'Aran pt.1 "..GREY.."at 44,36 grinding along the way, accept "..ORNG.."Bashal'Aran pt.2 "..GREY.."killing "..BLUE.."grells "..GREY.."around";
		GREY.."him for "..GREN.."earrings"..GREY..".";
		GREY.."20) Turn in "..ORNG.."Bashal'Aran pt.2 "..GREY.."at 44,36 accept "..ORNG.."Bashal’Aran pt.3"..GREY..".";
		GREY.."21) Do "..ORNG.."Bashal’Aran pt.3 "..GREY.."by killing "..BLUE.."satyr’s "..GREY.."and turn it in accept "..ORNG.."Bashal’Aran pt.4"..GREY..".";
		GREY.."22) Grind to 47,48 and do "..ORNG.."The Red Crystal"..GREY..".";
		GREY.."23) Grind to 40,53 to find the camp for "..ORNG.."How Big a Threat? pt.1"..GREY..".";
		GREY.."24) Run down to ".._RED.."Ameth’Aran "..GREY.."at 40,59 and accept "..ORNG.."The Fall of Ameth'Aran "..GREY.."do it at 43,58 and 42,63";		

};

		l2 = {
		ZoneName = "13-14";
		Location = "Darkshore";	
		GREY.."25) Do "..ORNG.."Tools of the Highborne "..GREY.."while in here, killing mobs for them.";
		GREY.."26) Do "..ORNG.."For Love Eternal "..GREY.."at 41,58 she’s "..PURP.."lvl 16 "..GREY.."but easy.";
		GREY.."27) Do "..ORNG.."Bashal’Aran pt.4 "..GREY.."at 42,61";
		GREY.."28) Turn in "..ORNG.."The Fall of Ameth'Aran "..GREY.."at 40,59";
		GREY.."29) To the west of ".._RED.."Amath’Aran "..GREY.."do "..ORNG.."Plagued Lands";
		GREY.."30) "..GREN.."Hearth "..GREY.."back to ".._RED.."Auberdine "..GREY.."along with your new bear friend =P";
		GREY.."31) Turn in "..ORNG.."Plagued Lands "..GREY.."at the first house accept "..ORNG.."Cleansing the Infected";
		GREY.."32) Go inside hand in "..ORNG.."How Big a Threat? pt.1 "..GREY.."accept "..ORNG.."How Big a Threat? Pt.2";
		GREY.."33) Accept "..ORNG.."Thundris Windweaver"..GREY..".";
		GREY.."34) Go Upstairs accept "..ORNG.."The Tower of Althalaxx pt.1"..GREY..".";
		GREY.."35) Don’t do "..ORNG.."Deep Ocean, Vast Sea "..GREY.."it’s not worth it and too hard";
		GREY.."36) Go in the merchant house, turn in "..ORNG.."Tools of the Highborne"..GREY..".";
		GREY.."37) Turn in "..ORNG.."Thundris Windweaver "..GREY.."accept "..ORNG.."The Cliffspring River";
		GREY.."38) Turn in "..ORNG.."The Red Crystal "..GREY.."near the Inn accept "..ORNG.."As Water Cascades";
		GREY.."39) Fill the "..GREN.."Vial "..GREY.."in the "..BLUE.."Moonwell "..GREY.."for "..ORNG.."As Water Cascades";
		GREY.."40) Accept "..ORNG.."WANTED: Murkdeep! "..GREY.."in front of the Inn ("..PURP.."lvl 15 "..GREY.."quest now)";
		GREY.."41) Turn in "..ORNG.."For Love Eternal "..GREY.."on the dock. Watch the love story";
		GREY.."42) You should be "..PURP.."Level 14 "..GREY.."by now get skills in ".._RED.."Darnassus"..GREY..".";
		GREY.."43) Turn in "..ORNG.."Bashal’Aran pt.4 "..GREY.."at 44,36";
		GREY.."44) Kill "..BLUE.."Moonstalkers "..GREY.."and "..BLUE.."Rabid Thistle Bears "..GREY.."all around 48,30 while you head to 50,25 for"; 
		ORNG.."The Cliffspring River"..GREY..".";
		GREY.."45) Accept "..ORNG.."Beached Sea Turtle "..GREY.."at 44,20";
		GREY.."46) Turn in "..ORNG.."Buzzbox 323 "..GREY.."at 51,24 accept "..ORNG.."Buzzbox 525"..GREY..".";
		GREY.."47) Go to 54,32 and do "..ORNG.."Cave Mushrooms"..GREY..".";
		GREY.."48) Head south stopping at 47,48 to do "..ORNG.."As Water Cascades "..GREY.."accept "..ORNG.."The Fragments Within";
		GREY.."49) Grind to 40,53 and do "..ORNG.."How Big a Threat? Pt.2"..GREY..".";
		GREY.."50) Stop at 37,62 and grab "..ORNG.."Beached Sea Turtle"..GREY..".";
};

		l3 = {
		ZoneName = "14-17";
		Location = "Darkshore";	
		GREY.."51) Follow the shore and "..ORNG.."Beached Sea Creature "..GREY.."at 36,70";
		GREY.."52) Turn in "..ORNG.."Grove of the Ancients "..GREY.."at 43,76";
		GREY.."53) Kill "..BLUE.."Grizzled Thistle Bear "..GREY.."South of ".._RED.."Grove of the Ancients "..GREY.."for "..ORNG.."Buzzbox 525 "..GREY.."then turn it in at 41,80";
		GREY.."54) Stop at 35,74 and do "..ORNG.."WANTED: Murkdeep! "..GREY.."you have to clear the camp, then the 2 waves from the"; 
		GREY.."ocean, then he comes. He’s "..PURP.."lvl 19 "..GREY.."If you have trouble with him just kite him.";
		GREY.."55) Grind over to 32,80 and get "..ORNG.."Beached Sea Creature";
		GREY.."56) "..GREN.."Hearth "..GREY.."back to ".._RED.."Auberdine "..GREY.."and turn in:";
		GREY.."57) Turn in all "..ORNG.."beached creature quests "..GREY.."at the hippograph dock";
		GREY.."58) Go under the dock grab "..ORNG.."Fruit of the Sea";
		GREY.."59) Turn in "..ORNG.."Cave Mushrooms "..GREY.."in front of the Inn Accept "..ORNG.."Onu";
		GREY.."60) Turn in "..ORNG.."The Fragments Within "..GREY.."in front of the Inn";
		GREY.."61) Accept "..ORNG.."The Absent Minded Prospector "..GREY.."at 37,41";
		GREY.."62) Go to the merchant house turn in "..ORNG.."The Cliffspring River"..GREY..".";
		GREY.."63) You should be "..PURP.."15 "..GREY.."by now so you can accept: "..ORNG.."The Blackwood Corrupted";
		GREY.."64) "..ORNG.."Cleansing the Infected "..GREY.."at the first house accept "..ORNG.."Tharnariun's Hope";
		GREY.."65) Turn in "..ORNG.."How Big a Threat? Pt.2 "..GREY.."accept "..ORNG.."A Lost Master";
		GREY.."66) Fill the "..GREN.."Cleansing Bowl "..GREY.."at the "..BLUE.."Moonwell"..GREY..".";
		GREY.."67) You should be "..PURP.."Level 16 "..GREY.."now, fly to ".._RED.."Darnassus "..GREY.."get new skills.";
		GREY.."68) Do "..ORNG.."The Blackwood Corrupted "..GREY.."at 50,34("..GREN.."grains"..GREY..") clear b4 all 3 pick ups or the spawn will give adds.";
		GREY.."If so just run.";
		GREY.."69) Go do "..ORNG.."Tharnariun's Hope "..GREY.."at 51,37 ("..BLUE.."den mother"..GREY..") If you can’t kill her with the "..PURP.."lvl "..GREY.."9 adds, kill"; 
		GREY.."them off and run till she’s alone. Immolate trap her and shoot first so you get the adds, not the pet.";
		GREY.."70) Do "..ORNG.."The Blackwood Corrupted "..GREY.."51,33("..GREN.."nuts"..GREY..") 52,33("..GREN.."fruit"..GREY..")";
		GREY.."71) Clear around the Bonfire at 52,33 place the food. Don’t worry they turn good.When "..BLUE.."Xabraxxis"; 
		GREY.."appears kill him. "..GREN.."Talisman "..GREY.."falls beside.";
		GREY.."72) Go to 54,24 turn in "..ORNG.."The Tower of Althalaxx pt.1 "..GREY.."Accept "..ORNG.."The Tower of Althalaxx pt.2 "..GREY.."do it. Kill"; 
		GREY.."any mob around the tower, NOT in it";
};

		l4 = {
		ZoneName = "14-17 (Part 2)";
		Location = "Darkshore";	
		GREY.."73) Hand in "..ORNG.."The Tower of Althalaxx pt.2 "..GREY.."accept "..ORNG.."The Tower of Althalaxx pt.3"..GREY..".";
		GREY.."74) Run to 53,18 and grab "..ORNG.."Beached Sea Creature"..GREY..".";
		GREY.."75) Do "..ORNG.."Fruit of the Sea "..GREY.."from "..BLUE.."crawlers "..GREY.."around here.";
		GREY.."77) "..GREN.."Hearth "..GREY.."back to ".._RED.."Auberdine "..GREY.."(if you’re not "..PURP.."17 "..GREY.."yet you will be) turn in:";
		GREY.."78) "..ORNG.."Beached Sea Creature "..GREY.."on the dock";
		GREY.."79) Turn in "..ORNG.."Fruit of the Sea "..GREY.."under the dock";
		GREY.."80) Turn in "..ORNG.."The Blackwood Corrupted "..GREY.."in the merchant house";
		GREY.."81) Turn in "..ORNG.."Tharnariun's Hope "..GREY.."at the last house";
		GREY.."82) Get on boat to ".._RED.."Menethil Harbor"..GREY..". Follow attached run to ".._RED.."IF"..GREY..".";		
};

		l5 = {
		ZoneName = "17-18";
		Location = "Loch Modan";	
		GREY.."1) Stop right in ".._RED.."Loch Modan "..GREY.."tower at 24,18 and accept "..ORNG.."Filthy Paws "..GREY.."and "..ORNG.."Stormpike's Order";
		GREY.."2) Run in the Cave at 35,18 and do "..ORNG.."Filthy Paws "..GREN.."Boxes "..GREY.."are on the ground. Then turn it back in at 24,18";
		GREY.."3) Arrive at ".._RED.."Thelsamar "..GREY.."get "..GREN.."Flight Point "..GREY.."at 33,50";
		GREY.."4) Grab "..ORNG.."Ironband's Excavation "..GREY.."in the last house on the right.";
		GREY.."5) Turn in "..ORNG.."Ironband's Excavation "..GREY.."at 64,66 Accept "..ORNG.."Gathering Idols";
		GREY.."6) Grab "..ORNG.."Excavation Progress Report "..GREY.."at 65,65";
		GREY.."7) Do "..ORNG.."Gathering Idols "..GREY.."behind here then turn it back in.";
		GREY.."8) Go behind the ".._RED.."excavation site "..GREY.."to the house at 82,62. If you’re "..PURP.."18 "..GREY.."now or close get skills.";
		GREY.."9) Turn right when you enter and get "..ORNG.."Crocolisk Hunting "..GREY.."(behind "..BLUE.."hunter trainer"..GREY..") then go to the other"; 
		GREY.."side and grab "..ORNG.."A Hunter's Boast"..GREY..".";
		GREY.."10) Go do "..ORNG.."A Hunter's Boast "..BLUE.."birds "..GREY.."in front of the house.";
		GREY.."11) Turn in "..ORNG.."A Hunter's Boast "..GREY.."accept "..ORNG.."A Hunter's Challenge "..GREY.."do it,mobs are around 75,41.";
		GREY.."12) Turn in "..ORNG.."A Hunter's Challenge "..GREY.."Accept "..ORNG.."Vyrin's Revenge pt.1";
		GREY.."13) Go to 63,47 and accept "..ORNG.."Bingles' Missing Supplies";
		GREY.."14) Do "..ORNG.."Crocolisk Hunting "..GREY.."here on the shore and the island at 54,38";
		GREY.."15) Grab all the parts for "..ORNG.."Bingles' Missing Supplies "..GREY.."at (54,27 "..GREN.."blastencapper"..GREY.."), (48,30 "..GREN.."wrench"..GREY.."),"; 
		GREY.."(51,23 "..GREN.."hammer"..GREY.."), (48,20 "..GREN.."screwdriver"..GREY..")";
		GREY.."16) Run up to the dam from the west side and accept "..ORNG.."A Dark Threat Looms pt.1 "..GREY.."at 45,13 then run out"; 
		GREY.."the east entrance and turn it in on the barrel guarded by "..BLUE.."2 sappers "..GREY.."accept "..ORNG.."A Dark Threat Looms pt.2";
		GREY.."17) Turn in "..ORNG.."A Dark Threat Looms pt.2 "..GREY.."at 45,13";
		GREY.."18) Run down the west coast "..ORNG.."Turn in Excavation Progress Report "..GREY.."in ".._RED.."Thelsamar"..GREY..", accept "..ORNG.."Report to Ironforge";
		GREY.."19) Go to 38,61 and do "..ORNG.."Vyrin's Revenge pt.1 "..GREY.."use Immolation trap and fear.";
		GREY.."20) Run back to the house at 83,62 turn in "..ORNG.."Crocolisk Hunting "..GREY.."and "..ORNG.."Vyrin's Revenge pt.1 "..GREY.."accept"; 
		ORNG.."Wyrin’s Revenge pt.2"..GREY..".";
		GREY.."21) Turn in "..ORNG.."Wyrin’s Revenge pt.2 "..GREY.."behind you.";
		GREY.."22) Go to 63,47 Turn in "..ORNG.."Bingles' Missing Supplies";
		GREY.."23) Run down to 22,70 and follow the path North into ".._RED.."Dun Morogh"..GREY..".";
};

		l6 = {
		ZoneName = "17-18 (Part 2)";
		Location = "Loch Modan";	
		GREY.."24) Run along the road to "..ORNG.."IronForge "..GREY.."at 53,35";
		GREY.."25) Get ".._RED.."IF "..GREY.."weapon training at 61,89 Get "..GREN.."Flight Path "..GREY.."at 55,38 inside then turn in "..ORNG.."Report to Ironforge"; 
		GREY.."at 74,12 skip "..ORNG.."Powder to Ironband"..GREY..".";
		GREY.."26) Get on the ".._RED.."tram "..GREY.."at 76,51";
		GREY.."27) Turn in "..ORNG.."Stormpike's Order "..GREY.."at 58,16 in ".._RED.."Stormwind"..GREY..".";
		GREY.."28) Get ".._RED.."SW "..GREY.."weapons training at 57,57 and "..GREN.."FP "..GREY.."at 66,62";
		GREY.."29) Run towards 91,73 in ".._RED.."Elwynn Forest "..GREY.."and enter ".._RED.."Redridge Mountains"..GREY..".";
};

		l7 = {
		ZoneName = "18-20";
		Location = "Redredge Mountains";	
		GREY.."1) Accept "..ORNG.."Encroaching Gnolls "..GREY.."from the "..BLUE.."patrol "..GREY.."around 15,71";
		GREY.."2) Turn in "..ORNG.."Encroaching Gnolls "..GREY.."at 30,60 Accept "..ORNG.."Assessing the Threat";
		GREY.."3) Get "..GREN.."Flight Point"..GREY..".";
		GREY.."4) Cross the bridge, on the right accept "..ORNG.."Blackrock Menace "..GREY.."on the left accept "..ORNG.."The Lost Tools";
		GREY.."5) ".._RED.."SKIP: "..ORNG.."Elmore's Task ".._RED.."SKIP: "..ORNG.."The Price of Shoes"..GREY..".";
		GREY.."6) Accept "..ORNG.."Hilary's Necklace "..GREY.."on the dock";
		GREY.."7) Accept "..ORNG.."Selling Fish "..GREY.."near the shed out front";
		GREY.."8) Go in the Inn and accept "..ORNG.."A Free Lunch"..GREY..", ".._RED.."SKIP: "..ORNG.."Dry Times"..GREY..".";
		GREY.."9) Go west of ".._RED.."Lakeshire "..GREY.."and accept "..ORNG.."Redridge Goulash"..GREY..".";
		GREY.."10) Get "..GREN.."Great Goretusk Snouts "..GREY.."just west of the houses (watch out for "..BLUE.."bellygrub "..GREY.."we’ll get him later)"; 
		GREY.."for "..ORNG.."Redridge Goulash"..GREY..".";
		GREY.."11) Then head toward 41,54 to do "..ORNG.."The Lost Tools "..GREY.."and do "..ORNG.."Selling Fish "..GREY.."by killing "..BLUE.."murlocs"..GREY..", keep an eye"; 
		GREY.."out for a glinting mud pile underwater for "..GREN.."Hilary's Necklace "..GREY.."Save at least "..BLUE.."8 murloc fins "..GREY.."for a later"; 
		GREY.."quest";
		GREY.."12) Turn in "..ORNG.."The Lost Tools "..GREY.."by the bridge accept "..ORNG.."The Everstill Bridge";
		GREY.."13) Turn in "..ORNG.."Hilary's Necklace "..GREY.."on the dock";
		GREY.."14) Turn in "..ORNG.."Selling Fish "..GREY.."by the shed in front of the houses.";
		GREY.."15) You should be half way to "..PURP.."Level 20 "..GREY.."at this point.";
		GREY.."16) Turn in "..ORNG.."A Free Lunch around "..GREY.."14,70 accept "..ORNG.."Visit the Herbalist";
		GREY.."17) Kill "..BLUE.."spiders "..GREY.."for "..ORNG.."Redridge Goulash "..GREY.."between 14,70 and 29,83";
		GREY.."18) Do "..ORNG.."Assessing the Threat "..GREY.."at 29,83 and 41,73";
		GREY.."19) Kill "..BLUE.."condors "..GREY.."for "..ORNG.."Redridge Goulash "..GREY.."around 57,73";
		GREY.."20) Turn in "..ORNG.."Assessing the Threat "..GREY.."near the "..GREN.."FP"..GREY..".";
		GREY.."21) Accept "..ORNG.."Murloc Poachers "..GREY.."in front of the shed.";
		GREY.."22) Stop at the house just west of ".._RED.."Lakeshire"..GREY..", turn in "..ORNG.."Visit the Herbalist "..GREY.."accept "..ORNG.."Delivering Daffodils";
		GREY.."23) Go to the next house, turn in "..ORNG.."Redridge Goulash"..GREY..".";
		GREY.."24) Go in the Inn and turn in "..ORNG.."Delivering Daffodils"..GREY..".";
};
		l8 = {
		ZoneName = "18-20 (Part 2)";
		Location = "Redredge Mountains";	
		GREY.."25) Kill "..BLUE.."Murlocs "..GREY.."east of the bridge for "..ORNG.."Murloc Poachers"..GREY..".";
		GREY.."26) Kill "..BLUE.."Gnolls "..GREY.."north of ".._RED.."Lakeshire "..GREY.."for "..ORNG.."The Everstill Bridge"..GREY..".";
		GREY.."27) Turn in "..ORNG.."The Everstill Bridge "..GREY.."next to the Bridge.";
		GREY.."28) Turn in "..ORNG.."Murloc Poachers "..GREY.."in front of the shed.";
		GREY.."29) "..GREN.."Hearth "..GREY.."back to "..ORNG.."Auberdine"..GREY..". You should definitely be "..PURP.."20 "..GREY.."by this point and at least half way to "..PURP.."21";
};

		l9 = {
		ZoneName = "20-21";
		Location = "Darkshore";	
		GREY.."1) First thing, fly to ".._RED.."Darnassus "..GREY.."and get your new Skills";
		GREY.."2) Turn in "..ORNG.."Onu "..GREY.."at 43,76 accept "..ORNG.."The Master's Glaive";
		GREY.."3) Go to 39,85 it should say you found Master’s Glaive(complete) now use the "..GREN.."phial of scrying"..GREY..". Click"; 
		GREY.."it turn in "..ORNG.."The Master's Glaive "..GREY.."accept "..ORNG.."The Twilight Camp";
		GREY.."4) Click the "..GREN.."Book "..GREY.."at 38,86 turn in "..ORNG.."The Twilight Camp "..GREY.."accept "..ORNG.."Return to Onu";
		GREY.."5) Accept "..ORNG.."Therylune's Escape "..GREY.."(escort) at 38,87 and do it.";
		GREY.."6) Turn in "..ORNG.."The Absent Minded Prospector "..GREY.."at 35,83 accept "..ORNG.."The Absent Minded Prospector pt.2 "..GREY.."and do it.";
		GREY.."7) Go west to 31,83 and 31,85 and accept "..ORNG.."Beached Sea Turtle "..GREY.."at both";
		GREY.."8) Go back to 43,76 and turn in "..ORNG.."Return to Onu "..GREY.."accept "..ORNG.."Mathystra Relics";
		GREY.."9) Accept "..ORNG.."The Sleeper Has Awakened "..GREY.."(escort) the "..BLUE.."sleeping bear "..GREY.."behind "..BLUE.."Onu"..GREY..". Hotbar his "..GREN.."horn "..GREY.."because he"; 
		GREY.."falls asleep every minute or so. This quest will bring you into ".._RED.."Ashenvale"..GREY..". "..GREN.."Horn "..GREY.."is in the box beside"; 
		GREY.."him. Note: since he follows you, with aspect of the cheetah on you can skip mobs by running down the"; 
		GREY.."road or taking the offroad.";
};

		m1 = {
		ZoneName = "21-22";
		Location = "Ashenvale";	
		GREY.."1) Run to 26,36 ".._RED.."Maestra’s Post"..GREY..", and this will complete "..ORNG.."The Sleeper Has Awakened "..GREY.."Go turn it in straight";
		GREY.."ahead in the house.";
		GREY.."2) Go to 26,38 turn in "..ORNG.."The Tower of Althalaxx pt.3 "..GREY.."accept "..ORNG.."The Tower of Althalaxx pt.4";
		GREY.."3) Accept "..ORNG.."Bathran's Hair";
		GREY.."4) Kill mobs around 31,31 in ".._RED.."ruins of Ordil’Aran "..GREY.."for "..ORNG.."The Tower of Althalaxx pt.4 "..GREY.."I then clear the"; 
		GREY.."camp a total of 4 times. If I find it early I still clear it 4 times total. I am then half way to "..PURP.."22"..GREY..".";
		GREY.."5) Grab "..GREN.."plant bundles "..GREY.."for "..ORNG.."Bathran's Hair "..GREY.."at 31,21 in ".._RED.."Bathran’s Haunt";
		GREY.."6) Go back to ".._RED.."Maestra’s Post "..GREY.."at 26,38 and turn in "..ORNG.."The Tower of Althalaxx pt.4 "..GREY.."Accept"; 
		ORNG.."The Tower of Althalaxx pt.5"..GREY..".";
		GREY.."7) Turn in "..ORNG.."Bathran's Hair "..GREY.."accept "..ORNG.."Orendil's Cure";
		GREY.."8) Go to 22,51 turn in "..ORNG.."Therylune's Escape";
		GREY.."9) Run into ".._RED.."Astranaar "..GREY.."at 33,48 and get "..GREN.."FP";
		GREY.."10) Accept "..ORNG.."The Zoram Strand "..GREY.."right as you enter town";
		GREY.."11) Accept "..ORNG.."On Guard in Stonetalon pt.1 "..GREY.."on the house to the right.";
		GREY.."12) Cross the road near the gazebo accept "..ORNG.."Journey to Stonetalon Peak";
		GREY.."13) In the Inn accept "..ORNG.."Raene's Cleansing pt.1 "..GREY.."and "..ORNG.."Culling the Threat";
		GREY.."14) Make ".._RED.."Astranaar "..GREY.."your home, then stable your pet";
		GREY.."15) Turn in "..ORNG.."Orendil's Cure "..GREY.."at the last house accept "..ORNG.."Elune's Tear";
		GREY.."16) Go to ".._RED.."The Zoram Strand"..GREY..". Stop at 14,31 accept "..ORNG.."The Ancient Statuette";
		_RED.."17) "..GREY.."Tame a "..BLUE.."Clattering Crawler "..PURP.."lvl 20 "..GREY.."to get Claw Rank 3 give it Growl 3";
		GREY.."18) Use it to do "..ORNG.."The Zoram Strand "..BLUE.."Naga "..GREY.."all around here.";
		GREY.."19) And "..ORNG.."The Ancient Statuette "..GREY.."at 14,20 it’s on the ground.";
		GREY.."20) Turn in "..ORNG.."The Ancient Statuette "..GREY.."at 14,31 accept "..ORNG.."Ruuzel";
		GREY.."21) Do "..ORNG.."Ruuzel "..GREY.."at 9,15 You don’t actually have to kill "..BLUE.."Ruuzel"..GREY..". Kill "..BLUE.."Lady Vespia"..GREY..". A 22 weak elite and"; 
		GREY.."doesn’t have guards like "..BLUE.."Ruuzel";
		GREY.."22) Turn in "..ORNG.."Ruuzel "..GREY.."at 14,20";
};

		m2 = {
		ZoneName = "21-22 (Part 2)";
		Location = "Ashenvale";	
		GREY.."23) Turn in "..ORNG.."Raene's Cleansing pt.1 "..GREY.."at 20,42 accept "..ORNG.."Raene’s Cleansing pt.2 "..GREY.."Kill "..BLUE.."murlocs "..GREY.."for the "..GREN.."gem";
		GREY.."24) "..GREN.."Hearth "..GREY.."back to ".._RED.."Astranaar";
		GREY.."25) Turn in "..ORNG.."The Zoram Strand "..GREY.."right as you enter town accept "..ORNG.."Pridewings of Stonetalon";
		GREY.."26) Go to the Inn Turn in "..ORNG.."Raene’s Cleansing pt.2 "..GREY.."accept "..ORNG.."Raene’s Cleansing pt.3 "..GREY.."and "..ORNG.."An Aggressive Defense";
		_RED.."27) "..GREY.."Get "..BLUE.."cat "..GREY.."back out";
		GREY.."28) Grind to 46,46 and grab "..ORNG.."Elune's Tear";
		GREY.."29) Go to 49,56 then grind north to 53,46 turn in "..ORNG.."Raene’s Cleansing pt.3 "..GREY.."accept "..ORNG.."Raene’s Cleansing pt.4";
		GREY.."30) You should already be "..PURP.."Level 22"..GREY..". Grind down to 50,67 and get new Skills.";
		GREY.."31) ".._RED.."SKIP:  "..ORNG.."Elemental Bracers "..GREY.."for now";
		GREY.."32) Then back north all around 55,61 and do "..ORNG.."An Aggressive Defense"..GREY..".";
		GREY.."33) "..GREN.."Hearth "..GREY.."to ".._RED.."Astranaar"..GREY..".";
		GREY.."34) Turn in "..ORNG.."An Aggressive Defense"..GREY..".";
		GREY.."35) Go to the east exit house, turn in "..ORNG.."Elune's Tear "..GREY.."accept "..ORNG.."The Ruins of Stardust";
		GREY.."36) Exit ".._RED.."Astranaar "..GREY.."out the east exit follow the south path till you are at 33,66 and grab"; 
		GREN.."stardust covered bushes for "..ORNG.."The Ruins of Stardust";
		GREY.."37) Grind east to ".._RED.."Talondeep path "..GREY.."at 42,71";
};

		m3 = {
		ZoneName = "22-23";
		Location = "Stonetalon Mountains";	
		GREY.."1) Run down to the hut at 58,62 accept Super Reaper 6000";
		GREY.."2) Then go to 59,66 and turn in On Guard in Stonetalon pt.1 accept On Guard in Stonetalon pt.2";
		GREY.."3) Turn it in right behind you accept A Gnome’s Respite";
		GREY.."4) Kill Loggers and Deforesters for A Gnome’s Respite and Operators for Super Reaper 6000 all around ";
		GREY.."Windshear Crag. Operators hang out around buildings only.";
		GREY.."5) Turn in Super Reaper 6000 at the hut 58,62 SKIP Further Instructions Unless you want to goto Ratchet.";
		GREY.."6) Then go to 59,66 and turn in A Gnome’s Respite accept An Old Colleague and A Scroll From Mauren ";
		GREY.."We’ll do these later.";
		GREY.."7) Stop at Mirkfallon Lake at 48,40 and kill Pridewings for Pridewings of Stonetalon South East of it.";
		GREY.."8) Run to 37,8 turn in Journey to Stonetalon Peak SKIP Reclaiming The Charred Vale for now";
		GREY.."9) Grab FP at 36,7 and Fly to Auberdine";
};

		m4 = {
		ZoneName = "23-24";
		Location = "Darkshore";	
		GREY.."1) Turn in Both Beached Sea Turtle on the dock";
		GREY.."2) Make Auberdine your home";
		GREY.."3) Turn in The Absent Minded Prospector pt.2 just outside the merchant house accept ";
		ORNG.."The Absent Minded Prospector pt.3";
		GREY.."4) Go in the last house accept A Lost Master";
		GREY.."5) Fly to Darnassus and turn in The Absent Minded Prospector pt.3 outside the Temple of the Moon at ";
		GREY.."31,84 accept The Absent Minded Prospector pt.4 Get talents if you need them.";
		GREY.."6) Fly back to Auberdine.";
		GREY.."7) Go to around 58,21 for Mathystra Relics The relics are all over";
		GREY.."8) Stop at 56,13 accept Gyromast's Retrieval Kill raging reef crawlers around here and Murlocs north ";
		GREY.."near the ship at 55,12";
		GREY.."9) Run north of Ruins of Mathystra killing sire’s and matriach’s for A Lost Master Also kill ";
		BLUE.."Foreststriders for Gyromast's Retrieval";
		GREY.."10) Turn in Gyromast's Retrieval at 56,13 accept Gyromast's Revenge";
		GREY.."11) Turn the key on The First Mate at 55,18 somewhere in the middle he’s gonna attack you. You have ";
		GREY.."to kill him. Then turn it in at 56,13";
		GREY.."12) Run back to Auberdine";
		GREY.."13) Turn in A Lost Master pt.1 at the first house in town. Accept A Lost Master pt.2";
		GREY.."14) Run down to 43,76 turn in Mathystra Relics";
		GREY.."15) Run down to 41,81 and do /wave at Grimclaw He’ll point southwest at the cave. Go to it at 45,85 ";
		GREY.."and turn in A Lost Master pt.2 accept Escape Through Force Run him back to Grimclaw at 41,81.";
		GREY.."16) If you’re not 24 yet or 1750 xp to 24, grind to 1750 until you level";
		GREY.."17) Hearth to Auberdine";
		GREY.."18) Turn in Escape Through Force at the house before exiting town. Accept Trek to Ashenvale";
		GREY.."19) Fly to Darnassus and get new skills then Fly to Astranaar";
};

		m5 = {
		ZoneName = "24-25";
		Location = "Ashenvale";	
		GREY.."1) Turn in Trek to Ashenvale right in front of you when you hearth.";
		GREY.."2) Run to the house on the East side, turn in The Ruins of Stardust accept Fallen Sky Lake";
		GREY.."3) Run to the West side of town, turn in Pridewings of Stonetalon accept Kayneth Stillwind";
		GREY.."4) Grind every mob down into Fire Scar Shrine and kill Ilkruk Mathrull at 25,61 for ";
		ORNG.."The Tower of Althalaxx pt.5 Take him out as fast. He summons 2 voidwalkers if you take too long.";
		GREY.."5) Grind a path up to between 35,33 and 36,36 and kill Dal Bloodclaw for Culling the Threat";
		GREY.."6) I then grind furbolg’s until I’m half way to 25";
		GREY.."7) Then run to Maestra’s Post at 26,38 turn in The Tower of Althalaxx pt.5 accept ";
		ORNG.."The Tower of Althalaxx pt.6";
		GREY.."8) Accept Supplies to Auberdine (escort) may seem out of the way, you run into a fight of 4, and 2 ";
		GREY.."fights of 3. You only go to the darkshore border and it completes. Easy 2900 xp, not far out of the ";
		GREY.."way. Turn it back in at 26,38";
		GREY.."9) Run to Astranaar";
		GREY.."10) Turn in Culling the Threat at the inn";
		GREY.."11) Run down to Silverwing Refuge at 49,67 and accept Elemental Bracers do it in the lake here.";
		GREY.."12) Once you have all 5 inact bracers, use the scroll on them and then hand it back in at 49,67 ";
		GREY.."13) I’m usually about 1 bar from 25 so I grind to 25 on the elementals";
		GREY.."14) Hearth to Auberdine";
		GREY.."15) Get on the boat to Menethil Harbor.";
};

		m6 = {
		ZoneName = "25-27";
		Location = "Wetlands";	
		GREY.."1) Stop at the end of the docks, accept Claws From the Deep";
		GREY.."2) On the west side of town accept Young Crocolisk Skins";
		GREY.."3) Go to the top of the castle, accept War Banners";
		GREY.."4) On the east side of town accept Digging Through the Ooze";
		GREY.."5) In front of the Inn accept The Third Fleet and The Greenwarden";
		GREY.."6) Make Menethil Harbor your home";
		GREY.."7) Go upstairs in the inn, turn in The Absent Minded Prospector pt.4 accept ";
		ORNG.."The Absent Minded Prospector pt.5";
		GREY.."8) Buy a Flagon of Mead from the bartender for The Third Fleet and give it to the guy outside the inn.";
		GREY.."Accept The Cursed Crew";
		GREY.."9) On the bridge accept In Search of the Excavation Team pt.1";
		GREY.."10) Kill Young Crocolisks just east of the bridge around 14,52 and north on the land of the lake also";
		GREY.."along the road to the greenwarden for Young Crocolisk Skins";
		GREY.."11) Kill Bluegill Murlocs and Gobbler at 18,40 for Claws From the Deep";
		GREY.."12) Kill Mottled Raptors and Screechers around 25,46 for The Absent Minded Prospector pt.5";
		GREY.."13) Enter the Excavation Site at 34,40";
		GREY.."14) Run up the path on the left and grab the fossil near the 2 npc’s at 38,52 for ";
		ORNG.."The Absent Minded Prospector pt.5";
		GREY.."15) Turn in In Search of the Excavation Team pt.1 accept In Search of the Excavation Team pt.2";
		GREY.."16) Accept Uncovering the Past";
		GREY.."17) Outside the cave accept Ormer's Revenge pt.1";
		GREY.."18) Go back to where you killed the raptors a few minutes ago at 25,46 and do Ormer's Revenge pt.1 by";
		GREY.."killing mottled raptors and screechers";
		GREY.."19) Run back up to the cave at 38,52 and turn in Ormer's Revenge pt.1 accept Ormer’s Revenge pt.2";
};

		m7 = {
		ZoneName = "25-27 (Part 2)";
		Location = "Wetlands";	
		GREY.."20) Now do both Ormer’s Revenge pt.2 by killing Scythclaw and Razormaw Raptors below, and";
		ORNG.."Uncovering the Past relics for this are all around the raptors. There are 4 different ones that ";
		GREY.."randomly spawn but each is in it’s own shape which are: (Modr=Thin Red Vase) (Golm=Fat Yellow Vase) ";
		GREY.."(Neru=Dirt Pile) (Ados=Tomb)";
		GREY.."21) Go back up to 38,52 and turn in Ormer’s Revenge pt.2 accept Ormer’s Revenge pt.3";
		GREY.."22) Turn in Uncovering the Past";
		GREY.."23) Do Ormer’s Revenge pt.3 atop the hill at 32,51 Sarltooth is a 29 But he’s as easy as the others. ";
		GREY.."Go turn it back in at 38,52";
		GREY.."24) Go in to Angerfang Encampment at 43,40 and do War Banners";
		GREY.."25) Stop at 49,39 accept Daily Delivery";
		GREY.."26) Run straight East from here to 56,40 and turn in The Greenwarden accept Tramping Paws";
		GREY.."27) Kill Mosshide around 56,74 for Tramping Paws at the camp. They respawn fast I couldn’t kill em ";
		GREY.."fast enough. Turn it in at 56,40 and accept Fire Taboo You should be 26 by now, if not you will be ";
		GREY.."28) Do Fire Taboo by killing any mosshides but the ones you just killed, The flints are easily dropped";
		GREY.."by the ones around 44,33 there is a few.";
		GREY.."29) Turn in Fire Taboo at 56,40 accept Blisters on the Land Now this is one of those quests you just ";
		GREY.."do as you go. Fen Creepers are stealthed elementals that lurk in the water. If you see one, kill it.";
		GREY.."30) Hearth back to Menethil Harbor";
		GREY.."31) Turn in The Absent Minded Prospector pt.5 2nd floor of the Inn";
		GREY.."32) Go inside the castle upstairs, turn in War Banners accept Nek'Rosh's Gambit";
		GREY.."33) On the west side of town hand in Daily Delivery and Young Crocolisk Skins accept ";
		ORNG.."Apprentice's Duties";
		GREY.."34) Go on the dock and turn in Claws From the Deep accept Reclaiming Goods";
		GREY.."35) On the bridge hand in In Search of the Excavation Team pt.2";
		GREY.."36) You should definitely be 26 by this point and near ½ way to 27. You can either wait till you fly ";
		GREY.."through IF to get talents or do it now.";
		GREY.."37) Touch the damaged crate at 13,41 turn in Reclaiming Goods accept The Search Continues";
};

		m8 = {
		ZoneName = "25-27 (Part 3)";
		Location = "Wetlands";	
		GREY.."38) Go just north to the next camp Touch the sealed barrel at 13,38 turn in The Search Continues ";
		GREY.."accept Search More Hovels";
		GREY.."39) Go north again touch the half-burried barrel at 13,34 turn in Search More Hovels accept ";
		ORNG.."Return the Statuette";
		GREY.."40) Stop at the sunken ships around 14,28 14,25 and kill the unded on either ship for The Cursed Crew";
		GREY.."Try to stay on top of the ships. Kill Snellig in the broken part of the first ship in the rear near ";
		GREY.."the shore for the box.";
		GREY.."41) From here north you should be able to find Giant crocolisks for Apprentice's Duties as well as the";
		GREY.."fen dwellers (track hidden) in the waters all over this area while you head toward Ironbeard’s Tomb ";
		GREY.."at 44,25 for Digging Through the Ooze Kill oozes for the bag.";
		GREY.."42) Now once all your fen creepers are dead head back to the greenwarden at 56,40 and hand it in";
		GREY.."43) Hearth Back to Menethil Harbor";
		GREY.."44) Just outside hand in The Cursed Crew accept Lifting the Curse";
		GREY.."45) Go north a little bit and hand in Digging Through the Ooze";
		GREY.."46) Go to the west side of town, turn in Apprentice's Duties";
		GREY.."47) Next down to the docks, hand in Return the Statuette";
		GREY.."48) You should be 27 now.";
		GREY.."49) Fly to IF, get new skills, hand in An Old Colleague at 71,51 SKIP the next part";
		GREY.."50) Fly to SW, hand in A Gnome’s Respite at 43,80 SKIP the next part";
		GREY.."51) Fly to Lakeshire";
};

		m9 = {
		ZoneName = "27-28";
		Location = "Lakeshire";	
		GREY.."1) Accept Blackrock Bounty right in front of FP near bridge";
		GREY.."2) Accept Blackrock Menace just over bridge on right.";
		GREY.."3) Go in the town hall, accept Solomon's Law";
		GREY.."4) Accept Wanted: Lieutenant Fangore Outside the Inn on the wall";
		GREY.."5) Make Lakeshire your home";
		GREY.."6) Just west of town at the house past the inn, accept An Unwelcome Guest now go do it just west of ";
		GREY.."this house at 16,49 (Bellygrub) kill him then hand it back in.";
		GREY.."7) Go to Render’s Camp at 44,19 and kill the orcs here for Blackrock Menace while you head NW to 34,7";
		GREY.."for Blackrock Bounty";
		GREY.."8) I tore the camps up 4 and 5 at a time while heading to the cave easy with a crossbow.";
		GREY.."9) Once at the cave kill for the axes and champions Go left when you go in towards the down area with";
		GREY.."water, there is an escort quest here.";
		GREY.."10) You should have your axes and champions killed by the time you get to the escort. If not you can ";
		GREY.."kill them on your way out.";
		GREY.."11) Get the escort quest Missing In Action at 28,12 in the cave and escort him out. He’s a 25 elite ";
		GREY.."so he won’t die easy. Once you’re out of the camp he starts running back to Lakeshire, turn the quest";
		GREY.."in right where you stop as well as Blackrock Menace SKIP Tharil'Zun";
		GREY.."12) Run over the Bridge near the FP turn in, Blackrock Bounty";
		GREY.."13) Kill the Gnolls all around 74,42 for Solomon's Law and Keep an eye out for ";
		ORNG.."Wanted: Lieutenant Fangore he is at 80,40 Make sure you clear the mobs around him or they come ";
		GREY.."running in";
		GREY.."14) Once you got those both done, grind on these shadowhide until youre about 4k or 2 bars from 28";
		GREY.."15) Hearth to Lakeshire";
		GREY.."16) Go in the town hall and turn in both Solomon's Law and Wanted: Lieutenant Fangore";
		GREY.."17) You should have hit 28 after that.";
		GREY.."18) Run down to the SW corner of Redredge Mountains, and take the path that forks south into Duskwood";
};

		n1 = {
		ZoneName = "28-29";
		Location = "Duskwood";	
		GREY.."1) Note on Duskwood, it has a few long, pointless chains that you only do a few parts of, then SKIP ";
		GREY.."the rest";
		GREY.."2) Follow the road until you get to Darkshire and get FP at 72,44";
		GREY.."3) Go to the houst just south of FP at 79,47 accept Look to the Stars pt.1 Buy a bronze tube from the";
		GREY.."gnome engineer just south of here at 78,48 and hand it back in, accept Look to the Stars pt.2";
		GREY.."4) Go towards town and the first big house on the left outside accept Worgen in the Woods pt.1";
		GREY.."5) Go in the house and accept Raven Hill The Hermit and Deliveries to Sven";
		GREY.."6) Exit the house and go straight to the house across the street and accept The Legend of Stalvan pt.1";
		GREY.."and The Totem of Infliction";
		GREY.."7) Run out the door straight across to the Inn and make it your home";
		GREY.."8) Exit and go to the right, accept The Night Watch pt.1";
		GREY.."9) Turn in The Legend of Stalvan pt.1 SKIP the rest";
		GREY.."10) Start off doing Worgen in the Woods pt.1 to the east of Duskwood around 64,46 by killing ";
		BLUE.."Nightbane Shadow Weaver";
		GREY.."11) Turn in Worgen in the Woods pt.1 back in the center of town, accept Worgen in the Woods pt.2";
		GREY.."12) Go back to around 64,46 and kill Nightbane Dark Runners now for Worgen in the Woods pt.2 There ";
		GREY.."are a lot in the camps";
		GREY.."13) Go turn in Worgen in the Woods pt.2 in the center of town and accept Worgen in the Woods pt.3";
		GREY.."14) Run to the house at 81,59 turn in Look to the Stars pt.2 accept Look to the Stars pt.3";
		GREY.."15) Do The Night Watch pt.1 and the skeleton finger part of The Totem of Infliction at ";
		_RED.."Tranquil Garden Cemetary around 79,70";
		GREY.."16) Ger Mary’s Looking Glass for Look to the Stars pt.3 inside the chapel here from the insane ghoul";
		GREY.."17) Kill the mobs around 73,73 inside and out of the cave for Worgen in the Woods pt.3";
		GREY.."18) Hearth back to Darkshire";
		GREY.."19) Just outside the Inn, hand in The Night Watch pt.1 accept The Night Watch pt.2";
		GREY.."20) Go east from here and hand in Worgen in the Woods pt.3 accept Worgen in the Woods pt.4 go in the ";
		GREY.."house and turn that in";
};

		n2 = {
		ZoneName = "28-29 (Part 2)";
		Location = "Duskwood";	
		GREY.."21) Go just south of the FP to 79,47 turn in Look to the Stars pt.3 accept Look to the Stars pt.4";
		GREY.."22) You should be over half way to 29, more near ¾ the way";
		GREY.."23) Stop at the ogre mound cave at 33,75 and kill Zzarc' Vul for Look to the Stars pt.4 Stay left ";
		GREY.."inside the cave";
		GREY.."24) Stop at the front of Raven Hill at 18,56 and turn in Raven Hill SKIP the rest since they’re grey";
		GREY.."25) Run north into the cemetery and kill skeletons for The Night Watch pt.2 and spiders in here for ";
		ORNG.."The Totem of Infliction";
		GREY.."26) Kill ghouls in the northern part of the cemetery at 22,38 to get ghoul fangs for ";
		ORNG.."The Totem of Infliction";
		GREY.."28) Kill black widow’s east of the graveyard for the last part of The Totem of Infliction";
		GREY.."29) Go to the shack NE of Raven Hill at 28,31 and turn in The Hermit accept Supplies From Darkshire";
		GREY.."30) Go to 17,29 at the grave and get The Weathered Grave";
		GREY.."31) Run to 7,34 and turn in Deliveries to Sven accept Sven's Revenge";
		GREY.."32) Hearth to Darkshire";
		GREY.."33) Right in front of the inn, turn in The Night Watch pt.2 accept The Night Watch pt.3";
		GREY.."34) Go in town hall, turn in The Weathered Grave accept Morgan Ladimore Turn it in just out front of ";
		GREY.."the town hall SKIP Mor'Ladim";
		GREY.."35) Go in the house east of the Inn, turn in The Totem of Infliction and Supplies From Darkshire ";
		GREY.."accept Ghost Hair Thread";
		GREY.."36) Go in the last house to the east, turn in Look to the Stars pt.4";
		GREY.."37) Go to Blind Mary in the house at 81,59 turn in Ghost Hair Thread accept Return the Comb Go turn ";
		GREY.."it in at the house east of the Inn, accept Deliver the Thread";
		GREY.."38) Go to 49,77 (you can sneak around everything to here by going towards STV and then to this ";
		GREY.."location) and turn in Sven's Revenge accept Sven’s Camp";
		GREY.."39) Run up to the shack NE of Raven Hill and hand in Deliver the Thread accept Zombie Juice";
		GREY.."40) Go to the underground at 23,35 kill plagued spreaders just around here and down inside for ";
		ORNG.."The Night Watch pt.3 you probably won’t get them all in 1 pass.";
};

		n3 = {
		ZoneName = "28-29 (Part 3)";
		Location = "Duskwood";	
		GREY.."41) Grind your way back out then over to Sven at 7,34 hand in Sven's Revenge accept The Shadowy Figure";
		GREY.."42) Hearth back to Darkshire";
		GREY.."43) Turn in Zombie Juice right in front of you, SKIP the rest";
		GREY.."44) Turn in The Night Watch pt.3 right outside the Inn";
		GREY.."44) Turn in The Shadowy Figure at the house east of the Inn accept The Shadowy Search Continues";
		GREY.."45) Turn it in at the town hall, accept Inquire at the Inn SKIP the rest";
		GREY.."46) If you happened to find An Old History Book (drops off all mobs in Duskwood) start the quest ";
		ORNG.."An Old History Book and Fly to SW and turn it in at 74,7 and accept Southshore";
		GREY.."47) Fly to Menethil Harbor and get on the boat to Auberdine, Fly to Ashenvale";
};

		n4 = {
		ZoneName = "29-30";
		Location = "Ashenvale";	
		GREY.."1) Stable your pet then head out East";
		GREY.."2) Make Astranaar your home.";
		GREY.."3) Tame an Elder Ashenvale Bear to the east of Raynewood Retreat, Give it growl and use it for the ";
		GREY.."following:";
		GREY.."4) Stop at 66,56 and touch the crystal for the first part of The Tower of Althalaxx pt.6";
		GREY.."5) Kill Withered Ancients for the Wooden Key for Raene’s Cleansing pt.4 around 55,35 then use the key";
		GREY.."on the chest at 54,35";
		GREY.."6) Run to 53,46 turn in Raene’s Cleansing pt.4 accept Raene’s Cleansing pt.5";
		GREY.."7) Go to 85,44 and turn in Kayneth Stillwind accept Forsaken Diseases";
		GREY.."8) Go to 81,48 and get the second part of The Tower of Althalaxx pt.6";
		GREY.."9) Go to 66,81 and do Fallen Sky Lake the mob is in the center";
		GREY.."10) Kill rotting slimes until a chest falls east of the road near the lake for Raene’s Cleansing pt.5";
		GREY.."11) Go to 75,71and do Forsaken Diseases the bottle is on the table";
		GREY.."12) Hand in Forsaken Diseases at 85,44 SKIP the next part";
		GREY.."13) Hearth back to Astranaar";
		GREY.."14) Turn in Fallen Sky Lake at the last house on the east side of town";
		GREY.."15) Go to 53,46 turn in Raene’s Cleansing pt.5 accept Raene's Cleansingpt.5 Go turn it in at the ";
		GREY.."shrine inside the tree at 56,49 accept Raene’s Cleansing pt.6  Turn it back in at the moonwell at ";
		GREY.."53,46 accept Raene’s Cleansing pt.7 die so you end up near town";
		GREY.."16) Hand in Raene’s Cleansing pt.7 at the Inn, SKIP the rest but keep the rod, you can use it forever";
		GREY.."to transform for fun =P";
		GREY.."17) Go to 26,38 turn in The Tower of Althalaxx pt.6 SKIP the rest";
		GREY.."18) Fly to Darnassus and get your level 30 talents";
		GREY.."19) Fly to Auberdine then get on the boat to Menethil Harbor";
};


		n5 = {
		ZoneName = "30-30";
		Location = "Wetlands";	
		GREY.."1) Make Menethil Harbor your home";
		GREY.."2) Go to 14,25 and kill Captain Halyndor for his key on top of the ship, the chest is in the bottom ";
		GREY.."of the ship. Send your pet in to grab all the aggro, then send it out to attack a murloc so it trains";
		GREY.."them all out. If some go for you just feign death and resume. Touch the chest and turn in ";
		ORNG.."Lifting the Curse accept The Eye of Paleth";
		GREY.."3) Touch the catapult at 47,47, hand in Nek'Rosh's Gambit accept Defeat Nek’Rosh";
		GREY.."4) Go to 53,55 and clear the left side, walk up and around the back, to do Defeat Nek’Rosh clear ";
		GREY.."anything he might aggro, die doing so if you must. I first laid immolation trap, pulled him into it ";
		GREY.."with scorpid sting, he’s kinda weak, I had him to 30% before my pet needed a heal. Pet died with him ";
		GREY.."at 12% and he was running so I kept firing away and he died. Pretty easy for a 32 elite.";
		GREY.."5) Hearth back to Menethil Harbor";
		GREY.."6) Turn in The Eye of Paleth right in front of you, accept Cleansing the Eye";
		GREY.."7) Go up top of the castle, hand in Defeat Nek’Rosh";
		GREY.."8) Accept Fall of Dun Modr just outside the inn";
		GREY.."9) Turn in Fall of Dun Modr at 49,18 accept The Thandol Span pt.1";
		GREY.."10) Go half way across the bridge to 51,8 and go in the door that leads down, look for the dead dwarf";
		GREY.."body, hand in The Thandol Span pt.1 accept The Thandol Span pt.2 turn that back in at the camp at ";
		GREY.."49,18 accept The Thandol Span pt.3";
		GREY.."11) Go back over the bridge, just to the right is a tinier bridge. Cross it and destroy the ";
		GREY.."explosives cart for The Thandol Span pt.3 at 48,88 accept Plea to the Alliance";
		GREY.."12) Run into Arathi Highlands to Refuge Point at 45,47 and hand in Plea to the Alliance";
		GREY.."13) Grab the FP";
		GREY.."14) You should be half way to 31 or more by now.";
		GREY.."15) Run towards Hillsbrad Foothills";
		GREY.."16) Stop at 27,49 and run south into Stormgarde Keep, at the first intersection go right and hug the ";
		GREY.."wall around over the bridge, buy all 3 first aid books at 26,58";
		GREY.."17) Continue heading to Hillsbrad";
};
	};
	
	AtlasLWB = {	
	
		n6 = {
		ZoneName = "30-31";
		Location = "Hillsbrad Foothills";	
		GREY.."1) Run into southshore at 49,52 and grab the FP";
		GREY.."2) Stop at the barn east of the FP, accept Costly Menace";
		GREY.."3) Go to the house in front of the barn, turn in Southshore SKIP the next part";
		GREY.."4) Go in front of the Inn, accept Hints of a New Plague";
		GREY.."5) Go in the Inn, make it your home, then accept Down the Coast";
		GREY.."6) In front of the town hall, accept Crushridge Bounty";
		GREY.."7) Go in the town hall, accept Syndicate Assassins";
		GREY.."8) Go just SW of Southshore and do Down the Coast on the shore, killing murlocs. Turn it in at the";
		GREY.."Inn when you’re done, accept Farren's Proof pt.1";
		GREY.."9) Do Farren's Proof pt.1 again on the shore, if I’m not 31 by the time I’m done getting heads, I ";
		GREY.."grind till I am.";
		GREY.."10) Go back to the Inn, turn in Farren's Proof pt.1 accept Farren’s Proof pt.2 hand that in just ";
		GREY.."out front of the Inn, accept Farren’s Proof pt.3 Go back into the Inn, hand it in accept Stormwind ho!";
		GREY.."11) Go do Stormwind ho! just SE of the dock now, kill the naga along the shore.";
		GREY.."12) Go back to the Inn hand in Stormwind ho!, accept Reassignment";	

};
		n7 = {
		ZoneName = "31-31";
		Location = "Alterac Mountains";	
		GREY.."1) Run up into Alterac Mountains near the AV entrance around 64,38 and kill lions for Costly Menace ";
		GREY.."They’re all along the southern border near AV. I usually get all mine in front and West of AV";
		GREY.."2) Go east of AV and do Syndicate Assassins at the camp around 55,67. There is a camp close to AV but";
		GREY.."this one has a quest you can grab near the tents on the table. Clear the camp and touch the ";
		GREY.."syndicate document, accept Foreboding Plans and Encrypted Letter";
		GREY.."3) Hearth to Southshore";
		GREY.."4) Go into the town hall, turn in Syndicate Assassins and Foreboding Plans accept Noble Deaths";
		GREY.."5) Stop at the house North of the Inn, turn in Encrypted Letter accept Letter to Stormpike";
		GREY.."6) Go to the barn and turn in Costly Menace";
		GREY.."7) Fly to Refuge Point";

};
		n8 = {
		ZoneName = "31-32";
		Location = "Arathi Highlands";	
		GREY.."1) Accept Northfold Manor grind to it at 33,27 I grind here until I’m 32.";
		GREY.."2) Hearth to Southshore, stable pet, go to Alterac and tame a level 32 Mountain Lion ( the ones you ";
		GREY.."killed before) for Prowl rank 1 (stealth)";
		GREY.."3) Die on purpose so you end up in Southshore";
		GREY.."4) Fly to Refuge point, turn in Northfold Manor Fly to IF";
		GREY.."5) Go to the hall of explorers at 69,20 in IF accept Reclaimers' Business in Desolace then go turn in";
		GREY.."Letter to Stormpike accept Further Mysteries";
		GREY.."6) Accept The Brassbolts Brothers in The Hall of Arms at 72,93 then get new Skills";
		GREY.."7) Make IF your home at 18,51 Buy some Bloodstone Ore for a quest later in STV. If there is none check";
		GREY.."the AH in Booty Bay";
		GREY.."8) Fly to SW";
		GREY.."9) Go to the Keep at 72,15 and hand in Reassignment";
		GREY.."10) Go to 39,27 in the Cathedral and hand in Cleansing the Eye";
		GREY.."11) Fly to Duskwood, then run to 44,66 and go south into STV";

};
		n9 = {
		ZoneName = "32-32";
		Location = "Stranglethorn Vale";	
		GREY.."1) You should still have the mountain lion out.";
		GREY.."2) Run to the Rebel Camp at 37,3 its just west after you enter.";
		GREY.."3) Accept The Second Rebellion and Bad Medicine";
		GREY.."4) Then Accept Krazek's Cookery";
		GREY.."5) Go to Nessingway’s at 35,10 and accept Welcome to the Jungle then turn it in behind you. This opens";
		GREY.."the 3 quest givers here.";
		GREY.."6) Now Accept Raptor Mastery pt.1 Panther Mastery pt.1 Tiger Mastery pt.1 Don’t accept the page-collecting ";
		GREY.."quest until you have all the pages.";
		GREY.."7) Go to 29,8 just West of Nessingway’s and tame a Stranglethorn Tiger for Dash Rank 1. Use this pet until ";
		GREY.."you get to Booty Bay";
		GREY.."8) Do Panther Mastery pt.1 & Tiger Mastery pt.1 Tigers are just behind Nessingway’s, and the Panthers are ";
		GREY.."to the east some but centralized around 41,9";

};
	};

	AtlasLWC = {	
	
		q2 = {
		ZoneName = "40-50";
		Location = "Coming Soon";	

};
	};

	AtlasLWD = {	
	
		s8 = {
		ZoneName = "50-60";
		Location = "Coming Soon";	

};
	};	