/obj/machinery/stalker
	icon = 'icons/stalker/decor.dmi'

/obj/machinery/stalker/sidormat
	name = "SIDORMAT 3000"
	desc = "An equipment vendor for beginning stalkers. Insert money - buy stuff."
	icon_state = "radio"
	density = 1
	anchored = 1
	var/itemloc = null
	var/itemloc2 = null
	var/balance = 0
	var/rating = 0
	var/list/weapon_list = list(
		///////////////////////////////  ������  /////////////////////////////////////////

		///////////////////////////// **���������** /////////////////////////////////////
		new /datum/data/stalker_equipment("PMm", 			"���",				/obj/item/weapon/gun/projectile/automatic/pistol/pm,				3000, NEWBIE),
		new /datum/data/stalker_equipment("TT", 			"��",				/obj/item/weapon/gun/projectile/automatic/pistol/tt,				3000, NEWBIE),
		new /datum/data/stalker_equipment("Fort-12",		"����-12",			/obj/item/weapon/gun/projectile/automatic/pistol/fort12,			6500, NEWBIE),
		new /datum/data/stalker_equipment("PB1s",			"���1�",			/obj/item/weapon/gun/projectile/automatic/pistol/pb1s,				4500, NEWBIE),
		new /datum/data/stalker_equipment("SIG-Sauer P220",	"�-220",			/obj/item/weapon/gun/projectile/automatic/pistol/sip,				12500, EXPERT),
		new /datum/data/stalker_equipment("Colt M1911",		"�����",			/obj/item/weapon/gun/projectile/automatic/pistol/cora,				9000, EXPERT),
		new /datum/data/stalker_equipment("Beretta 92FS",	"�������",			/obj/item/weapon/gun/projectile/automatic/pistol/marta,				9000, EXPERT),
		new /datum/data/stalker_equipment("USP-match",		"���-����",			/obj/item/weapon/gun/projectile/automatic/pistol/usp_match, 		16000, EXPERT),
		new /datum/data/stalker_equipment("Colt Anaconda",	"����� ��������",	/obj/item/weapon/gun/projectile/revolver/anaconda, 	            	25000, EXPERT,	assortment_level = 1),
		new /datum/data/stalker_equipment("Desert Eagle",	"ĸ���� ���",		/obj/item/weapon/gun/projectile/automatic/pistol/desert, 	    	30000, EXPERT,	assortment_level = 1),

		///////////////////////////// **��������, ��** /////////////////////////////////////
		new /datum/data/stalker_equipment("PPSh",			"���",				/obj/item/weapon/gun/projectile/automatic/ppsh,						13000, NEWBIE),
		new /datum/data/stalker_equipment("MP-5", 			"��-5",				/obj/item/weapon/gun/projectile/automatic/mp5,						18000, NEWBIE),
		new /datum/data/stalker_equipment("AK-74S",			"��-74�",			/obj/item/weapon/gun/projectile/automatic/aksu74 ,					20000, NEWBIE),
		new /datum/data/stalker_equipment("AK-74",			"��-74",			/obj/item/weapon/gun/projectile/automatic/ak74,						25000, NEWBIE),
		new /datum/data/stalker_equipment("AS-96",			"��-96",			/obj/item/weapon/gun/projectile/automatic/abakan,					40000, EXPERT,	assortment_level = 1),
		new /datum/data/stalker_equipment("LR-300",			"��-300",			/obj/item/weapon/gun/projectile/automatic/tpc301,					40000, EXPERT),
		new /datum/data/stalker_equipment("L85",			"�85",				/obj/item/weapon/gun/projectile/automatic/il86,						40000, EXPERT,	assortment_level = 1),
		new /datum/data/stalker_equipment("Tunder OTs-14", 	"��-14 �����",		/obj/item/weapon/gun/projectile/automatic/groza,					35000, EXPERT,	assortment_level = 1),
		new /datum/data/stalker_equipment("AS \"Val\"", 	"�� \"���\"",		/obj/item/weapon/gun/projectile/automatic/val,						50000, VETERAN),
		new /datum/data/stalker_equipment("SIG SG 550",		"��� �� 550",		/obj/item/weapon/gun/projectile/automatic/sigsg550,					50000, VETERAN),
		new /datum/data/stalker_equipment("Vintorez", 		"��������",			/obj/item/weapon/gun/projectile/automatic/vintorez,					60000, MASTER, 	assortment_level = 1),
		new /datum/data/stalker_equipment("FN F2000", 		"�� �2000",			/obj/item/weapon/gun/projectile/automatic/fnf2000,					60000, MASTER,	assortment_level = 1),
		new /datum/data/stalker_equipment("GP 37", 	    	"�� 37",			/obj/item/weapon/gun/projectile/automatic/gp37,				    	75000, MASTER,	assortment_level = 1),
		new /datum/data/stalker_equipment("FN F2000S", 		"�� �2000�",		/obj/item/weapon/gun/projectile/automatic/fnf2000s,					100000, MASTER,	assortment_level = 1),
		new /datum/data/stalker_equipment("PKM", 			"���",				/obj/item/weapon/gun/projectile/automatic/l6_saw/pkm,				200000, MASTER,	assortment_level = 1),

		/////////////////////////////// **���������** /////////////////////////////////////
		new /datum/data/stalker_equipment("Sawn off", 		"�����",			/obj/item/weapon/gun/projectile/revolver/bm16/sawnoff,				6000, NEWBIE),
		new /datum/data/stalker_equipment("BM-16", 			"��-16",			/obj/item/weapon/gun/projectile/revolver/bm16,						12000, NEWBIE),
		new /datum/data/stalker_equipment("TOZ-34", 		"���-34", 			/obj/item/weapon/gun/projectile/revolver/bm16/toz34, 				18000, EXPERT),
		new /datum/data/stalker_equipment("Wincheaster-1300","���������-1300",	/obj/item/weapon/gun/projectile/shotgun/chaser,						25000, EXPERT),
		new /datum/data/stalker_equipment("SPAS-12", 		"����-12",			/obj/item/weapon/gun/projectile/shotgun/spsa, 						50000, VETERAN),
		/////////////////////////////// **������** /////////////////////////////////////
		new /datum/data/stalker_equipment("Knife",			 "���",				/obj/item/weapon/stalker/knife,										3500, NEWBIE)
		)

	var/list/ammo_list = list(
		////////////////////////////////  �������  /////////////////////////////////////////
		new /datum/data/stalker_equipment("9x18mm Box", 			"������� 9�18��",							/obj/item/ammo_box/stalker/b9x18,						3500, NEWBIE),
		new /datum/data/stalker_equipment("9x18mm AP Box", 			"������� 9x18�� �����������",				/obj/item/ammo_box/stalker/b9x18P,						4500, EXPERT),
		new /datum/data/stalker_equipment("7.62x25mm Box", 			"������� 7.62x25��",						/obj/item/ammo_box/stalker/b762x25,						3000, NEWBIE),
		new /datum/data/stalker_equipment("9x19mm Box", 			"������� 9x19��",							/obj/item/ammo_box/stalker/b9x19,						4000, NEWBIE),
		new /datum/data/stalker_equipment("9x19mm AP Box", 			"������� 9x19�� �����������",				/obj/item/ammo_box/stalker/b9x19P,						6000, EXPERT),
		new /datum/data/stalker_equipment(".45 ACP Box", 			"������� .45 ACP",							/obj/item/ammo_box/stalker/bacp45,						5000, NEWBIE),
		new /datum/data/stalker_equipment(".45 ACP Hydroshock Box", "������� .45 ACP Hydroshock",				/obj/item/ammo_box/stalker/bacp45ap,					7500, EXPERT),
		new /datum/data/stalker_equipment(".44 Magnum Box",			"������� .44 ������",						/obj/item/ammo_box/stalker/bmag44,						10000, EXPERT),
		new /datum/data/stalker_equipment(".44 Magnum FMJ Box",		"������� .44 ������ ���������. ��������",	/obj/item/ammo_box/stalker/bmag44fmj,					13500, EXPERT),
		new /datum/data/stalker_equipment("12x70 Buckshot Box",		"������� ����� 12x70",						/obj/item/ammo_box/stalker/b12x70,						3000, NEWBIE),
		new /datum/data/stalker_equipment("12x70 Slug Box", 		"������� ����� 12x70 �����������",			/obj/item/ammo_box/stalker/b12x70P,						4000, EXPERT),
		new /datum/data/stalker_equipment("12x70 Dart Box", 		"������� 12x70 ������",						/obj/item/ammo_box/stalker/b12x70D,						5000, EXPERT),
		new /datum/data/stalker_equipment("5.45x39mm Box", 			"������� 5.45�39��",						/obj/item/ammo_box/stalker/b545,						7500, NEWBIE),
		new /datum/data/stalker_equipment("5.45x39mm AP Box",		"������� 5.45�39�� �����������",    		/obj/item/ammo_box/stalker/b545ap,						9000, VETERAN),
		new /datum/data/stalker_equipment("5.56x45mm Box",			"������� 5.56x45��",						/obj/item/ammo_box/stalker/b55645,						9000, NEWBIE),
		new /datum/data/stalker_equipment("5.56x45mm AP Box", 		"������� 5.56x45�� �����������",			/obj/item/ammo_box/stalker/b55645ap,					12000, VETERAN),
		new /datum/data/stalker_equipment("9x39 PAB-9 Box",			"������� 9x39�� ���-9",						/obj/item/ammo_box/stalker/b939,						8500, EXPERT),
		new /datum/data/stalker_equipment("PMm; PB1s Magazine",		"������� � ���; ��1�",						/obj/item/ammo_box/magazine/stalker/m9x18pm,			700, NEWBIE),
		new /datum/data/stalker_equipment("TT Magazine",	     	"������� � ��",				        		/obj/item/ammo_box/magazine/stalker/tt,		         	600, NEWBIE),
		new /datum/data/stalker_equipment("Fort-12 Magazine", 		"������� � ����-12",		 				/obj/item/ammo_box/magazine/stalker/m9x18fort,			1000, NEWBIE),
		new /datum/data/stalker_equipment("MP-5 Magazine", 			"������� � ��-5",							/obj/item/ammo_box/magazine/stalker/m9x19mp5,			2000, NEWBIE),
		new /datum/data/stalker_equipment("5.45x39mm Magazine",     "������� 5.45x39��",	        			/obj/item/ammo_box/magazine/stalker/m545,				2250, NEWBIE),
		new /datum/data/stalker_equipment("5.56x45mm Magazine", 	"������� 5.56x45��",			     		/obj/item/ammo_box/magazine/stalker/m556x45,			3500, NEWBIE),
		new /datum/data/stalker_equipment("AS \"Val\" Magazine", 	"������� � �� \"���\"",						/obj/item/ammo_box/magazine/stalker/sp9x39val,			3000, VETERAN),
		new /datum/data/stalker_equipment("Tunder S14 Magazine", 	"������� � ��-14 �����",					/obj/item/ammo_box/magazine/stalker/sp9x39groza,		3500, EXPERT),
		new /datum/data/stalker_equipment("Vintorez Magazine", 		"������� � ���������",						/obj/item/ammo_box/magazine/stalker/sp9x39vint,			3000, VETERAN),
		new /datum/data/stalker_equipment("Colt M1911; SIG-Sauer P220 Magazine", "������� � ������; �-220",		/obj/item/ammo_box/magazine/stalker/sc45,				1400, NEWBIE),
		new /datum/data/stalker_equipment("Beretta Magazine", 		"������� � �������",						/obj/item/ammo_box/magazine/stalker/m9x19marta,			1500, NEWBIE),
		new /datum/data/stalker_equipment("USP-match Magazine", 	"������� � ���-����",						/obj/item/ammo_box/magazine/stalker/usp45,				2500, NEWBIE),
		new /datum/data/stalker_equipment("Desert Eagle Magazine", 	"������� � Desert Eagle",					/obj/item/ammo_box/magazine/stalker/desert,				2000, EXPERT),
		new /datum/data/stalker_equipment("PPSh Magazine", 	        "������� � ���",							/obj/item/ammo_box/magazine/stalker/ppsh,				5000, NEWBIE),
		new /datum/data/stalker_equipment("PKM ammo belt box", 	    "�������� � ������ � ���",				 	/obj/item/ammo_box/magazine/stalker/pkm,				20000, EXPERT),
		)

	var/list/armor_list = list(
		///////////////////////////////  �����  /////////////////////////////////////////

		new /datum/data/stalker_equipment("Leather jacket", 		"�������",						/obj/item/clothing/suit/hooded/kozhanka,					5000, NEWBIE),
		new /datum/data/stalker_equipment("White leather jacket",	"����&#x44F; �������",			/obj/item/clothing/suit/hooded/kozhanka/white,				5000, NEWBIE),
		new	/datum/data/stalker_equipment("Bandit jacket",			"���������&#x44F; �������",		/obj/item/clothing/suit/hooded/kozhanka/banditka,			6000, NEWBIE,	"Bandits"),
		new	/datum/data/stalker_equipment("Army suit",				"��������� ����������",			/obj/item/clothing/suit/army,								15000, NEWBIE,	"Army"),
		new /datum/data/stalker_equipment("\"Sunrize\"",			"���������� \"���&#x44F;\"",	/obj/item/clothing/suit/hooded/kombez,						33000, NEWBIE,	"Loners"),
		new /datum/data/stalker_equipment("Merc suit", 				"���������� ��������",			/obj/item/clothing/suit/hooded/kombez/mercenary,			25000, NEWBIE,	"Mercenaries"),
		new /datum/data/stalker_equipment("Bandit suit",			"���������� ��������",			/obj/item/clothing/suit/hooded/kombez/kombez_bandit,		25000, NEWBIE,	"Bandits"),
		new /datum/data/stalker_equipment("Black trenchcoat",		"Ҹ���� ����",					/obj/item/clothing/suit/hooded/kozhanka/banditka/coat,		12500, NEWBIE,	"Bandits"),
		new /datum/data/stalker_equipment("Brown trenchcoat",		"����",							/obj/item/clothing/suit/hooded/kozhanka/banditka/coat/brown,12500, NEWBIE),
		new /datum/data/stalker_equipment("Berill-5M",				"������-5�",					/obj/item/clothing/suit/berill,								50000, EXPERT,	"Loners"),
		new /datum/data/stalker_equipment("Wind of Freedom",	    "����� �������",				/obj/item/clothing/suit/hooded/kombez/veter,				25000, NEWBIE,	"Freedom"),
		new /datum/data/stalker_equipment("Guardian of Freedom",	"����� �������",				/obj/item/clothing/suit/strazh,								40000, EXPERT,	"Freedom"),
		new /datum/data/stalker_equipment("PZ-1	",					"��-1",							/obj/item/clothing/suit/hooded/kombez/monolith,				25000, NEWBIE,	"Monolith"),
		new /datum/data/stalker_equipment("PS5-M",					"��5-�",						/obj/item/clothing/suit/hooded/kombez/ps5m,				    25000, NEWBIE,	"Duty"),
		new /datum/data/stalker_equipment("Heavy merc armor",		"������� ����� ��������",		/obj/item/clothing/suit/assaultmerc,						50000, EXPERT,	"Mercenaries"),
		new /datum/data/stalker_equipment("PSZ-9D",		    		"���-9�",						/obj/item/clothing/suit/psz9d,								60000, VETERAN,	"Duty"),
		new /datum/data/stalker_equipment("SKAT-9M",				"����-9�",						/obj/item/clothing/suit/skat,								75000, VETERAN),
		new	/datum/data/stalker_equipment("PSZ-9Md",				"���-9��",						/obj/item/clothing/suit/hooded/kombez/psz9md,				75000, VETERAN,	"Duty"),
		new	/datum/data/stalker_equipment("SSP-99 Ecologist",		"���-99 ������",				/obj/item/clothing/suit/hooded/kombez/ecolog,				75000, MASTER),
		new	/datum/data/stalker_equipment("SSP-99M Ecologist",		"���-99� ������",				/obj/item/clothing/suit/hooded/kombez/ecologm,			    100000, MASTER),
		new	/datum/data/stalker_equipment("SEVA",					"����",							/obj/item/clothing/suit/hooded/kombez/seva,					125000, MASTER),
		new	/datum/data/stalker_equipment("Exoskeleton",			"����������",					/obj/item/clothing/suit/hooded/kombez/exoskelet,			150000, MASTER),
		)

	var/list/helmet_list = list(
		////////////////////////////	�����, �����	/////////////////////////////////////
		new /datum/data/stalker_equipment("Gasmask",				"����������",					/obj/item/clothing/mask/gas/stalker,						7500, NEWBIE),
		new /datum/data/stalker_equipment("Merc gasmask",			"���������� ���������",			/obj/item/clothing/mask/gas/stalker/mercenary,				7500, NEWBIE),
		new /datum/data/stalker_equipment("Steel helmet",			"�������� �����",				/obj/item/clothing/head/steelhelmet,						7500, NEWBIE),
		new /datum/data/stalker_equipment("Light tactical helmet",	"������ ����������� ����",		/obj/item/clothing/head/hardhat/tacticalhelmet/light,		12500, EXPERT),
		new /datum/data/stalker_equipment("Tactical helmet",		"����������� ����",				/obj/item/clothing/head/hardhat/tacticalhelmet,				20000, EXPERT),
		new /datum/data/stalker_equipment("Assault helmet",	    	"��������� ����",				/obj/item/clothing/head/assaultmerc        ,				25000, EXPERT, "Mercenaries", assortment_level = 2),
		new /datum/data/stalker_equipment("Sphera-M12",			 	"�����-�12",					/obj/item/clothing/head/spherahelmet,						25000, EXPERT),
		new /datum/data/stalker_equipment("SKAT-9M (helmet)",		"����-9� (����)",				/obj/item/clothing/head/skathelmet,							35000, VETERAN),
		)

	var/list/med_list = list(
		///////////////////////////////	�����������	/////////////////////////////////////////
		new /datum/data/stalker_equipment("Medkit",				"�������",							/obj/item/weapon/reagent_containers/pill/stalker/aptechka/civilian,			1000, NEWBIE),
		new /datum/data/stalker_equipment("Army medkit",		"��������&#x44F; �������",			/obj/item/weapon/reagent_containers/pill/stalker/aptechka/army,				2000, EXPERT),
		new /datum/data/stalker_equipment("Scientific medkit",	"������&#x44F; �������",			/obj/item/weapon/reagent_containers/pill/stalker/aptechka/scientific,		4000, VETERAN),
		new /datum/data/stalker_equipment("Bandage",			"����",								/obj/item/stack/medical/gauze/bint,											500, NEWBIE),
		new /datum/data/stalker_equipment("Anti-rad",			"����-��� ���������",				/obj/item/weapon/reagent_containers/hypospray/medipen/stalker/antirad,		3000, NEWBIE)
		)

	var/list/food_list = list(
		/////////////////////////////////	���	///////////////////////////////////////////
		new /datum/data/stalker_equipment("Canned stew",		"�������",							/obj/item/weapon/reagent_containers/food/snacks/stalker/konserva,				500, NEWBIE),
		new /datum/data/stalker_equipment("Canned fish",		"������",							/obj/item/weapon/reagent_containers/food/snacks/stalker/konserva/shproti,		800, NEWBIE),
		new /datum/data/stalker_equipment("Vodka \"Kazaki\"",	"����� \"������\"",					/obj/item/weapon/reagent_containers/food/drinks/bottle/vodka/kazaki,			1000, NEWBIE),
		new /datum/data/stalker_equipment("Energy drink \"NonStop\"","��������� \"NonStop\"",		/obj/item/weapon/reagent_containers/food/drinks/soda_cans/energetic,			500, NEWBIE),
		new /datum/data/stalker_equipment("Snickers",			"�������",							/obj/item/weapon/reagent_containers/food/snacks/stalker/konserva/snack/snikers,	300, EXPERT),
		new /datum/data/stalker_equipment("Salami",				"�������",							/obj/item/weapon/reagent_containers/food/snacks/stalker/kolbasa,				400, NEWBIE),
		new /datum/data/stalker_equipment("Bread",				"�����",							/obj/item/weapon/reagent_containers/food/snacks/stalker/baton,					300, NEWBIE),
		//new /datum/data/stalker_equipment("��������� ���",			/obj/item/weapon/reagent_containers/food/snacks/stalker/konserva/snack/sirok,	400)
		)

	var/list/misc_list = list(
		/////////////////////////////////	������	/////////////////////////////////////////////
		new /datum/data/stalker_equipment("Repair-kit for suits and helmets",	"���. �������� ��&#x44F; ������������� � ������",	/obj/item/device/repair_kit/clothing,										30000, NEWBIE),
		new /datum/data/stalker_equipment("Repair-kit for guns",				"���. �������� ��&#x44F; �������������� �����&#x44F;",/obj/item/device/repair_kit/gun,											10000, NEWBIE),
		new /datum/data/stalker_equipment("Guitar",								"������",											/obj/item/device/instrument/guitar,											1500, NEWBIE),
		new /datum/data/stalker_equipment("Geiger counter",						"��������",											/obj/item/device/geiger_counter,											1500, NEWBIE),
		new /datum/data/stalker_equipment("Flashlight",							"�������",											/obj/item/device/flashlight/seclite,										1000, NEWBIE),
		new /datum/data/stalker_equipment("Big Artifact belt",					"������� ��&#x44F;� ��&#x44F; ����������",			/obj/item/weapon/storage/belt/stalker/artifact_belt,						50000, EXPERT, assortment_level = 3),
		new /datum/data/stalker_equipment("Artifact belt",						"��������� ��&#x44F;� ��&#x44F; ����������",		/obj/item/weapon/storage/belt/stalker/artifact_belt/small,					20000, NEWBIE),
		new /datum/data/stalker_equipment("Matches",							"������",											/obj/item/weapon/storage/box/matches,										500, NEWBIE),
		new /datum/data/stalker_equipment("Cigarettes",							"��������",											/obj/item/weapon/storage/fancy/cigarettes/cigpack_maxim,					1000, NEWBIE),
		new /datum/data/stalker_equipment("Cigars",								"������",											/obj/item/weapon/storage/fancy/cigarettes/cigars,							5000, NEWBIE),
		)

	var/list/detector_list = list(
		/////////////////////////////////	���������	///////////////////////////////////////////
		new /datum/data/stalker_equipment("Blink", 	"������",							/obj/item/device/detector/blink,				4000, 	NEWBIE),
		new /datum/data/stalker_equipment("Bear",	"�������",							/obj/item/device/detector/bear,					12000, 	EXPERT),
		new /datum/data/stalker_equipment("Veles",	"�����",							/obj/item/device/detector/veles,				36000, 	VETERAN),
		)
	var/list/loot_list = list(
	/////////////////////////////////	��� � ��������	///////////////////////////////////////////
		new /datum/data/stalker_equipment("����� �����",	"����� �����",										/obj/item/weapon/stalker/loot/dog_tail,		3000, NEWBIE, sale_price = 1500),
		new /datum/data/stalker_equipment("������ ����",	"������ ����",										/obj/item/weapon/stalker/loot/flesh_eye,	3000, NEWBIE, sale_price = 1500),
		new /datum/data/stalker_equipment("������� ���",	"������� ���",										/obj/item/weapon/stalker/loot/boar_leg,		6000, NEWBIE, sale_price = 3000),

		)

	var/list/artifact_list = list(
		/////////////////////////////////	���������	///////////////////////////////////////////
		new /datum/data/stalker_equipment("������",				"������",									/obj/item/weapon/artifact/meduza,					5000,	NEWBIE,	sale_price = 2500),
		new /datum/data/stalker_equipment("�������� ������",	"�������� ������",							/obj/item/weapon/artifact/stoneflower,				10000,	NEWBIE,	sale_price = 5000),
		new /datum/data/stalker_equipment("������ ������",		"������ ������",							/obj/item/weapon/artifact/nightstar,				30000,	NEWBIE,	sale_price = 15000),
		new /datum/data/stalker_equipment("����",				"����",										/obj/item/weapon/artifact/soul,						80000,	NEWBIE,	sale_price = 35000),
		///////////////////////////////////////////////////////////////////////////////////////////
		new /datum/data/stalker_equipment("�������",			"�������",									/obj/item/weapon/artifact/flash,					6000,	NEWBIE,	sale_price = 3000),
		new /datum/data/stalker_equipment("������ ����",		"������ ����",								/obj/item/weapon/artifact/moonlight,				12000,	NEWBIE,	sale_price = 6000),
		new /datum/data/stalker_equipment("��������",			"��������",									/obj/item/weapon/artifact/pustishka,				40000,	NEWBIE,	sale_price = 20000),
		new /datum/data/stalker_equipment("���������",			"���������",								/obj/item/weapon/artifact/battery,					70000,	NEWBIE,	sale_price = 35000),
		///////////////////////////////////////////////////////////////////////////////////////////
		new /datum/data/stalker_equipment("����&#x44F;",		"����&#x44F;",								/obj/item/weapon/artifact/droplet,					7000,	NEWBIE,	sale_price = 3500),
		new /datum/data/stalker_equipment("�������� ���",		"�������� ���",								/obj/item/weapon/artifact/fireball,					15000,	NEWBIE,	sale_price = 7500),
		new /datum/data/stalker_equipment("��������",			"��������",									/obj/item/weapon/artifact/crystal,					60000,	NEWBIE,	sale_price = 30000),
		new /datum/data/stalker_equipment("������ ����",		"������ ����",								/obj/item/weapon/artifact/maminibusi,				80000,	NEWBIE,	sale_price = 40000),
		///////////////////////////////////////////////////////////////////////////////////////////
		new /datum/data/stalker_equipment("����� ����&#x44F;",	"����� ����&#x44F;",						/obj/item/weapon/artifact/stone_blood,				4000,	NEWBIE,	sale_price = 2000),
		new /datum/data/stalker_equipment("������",				"������",									/obj/item/weapon/artifact/bubble,					8000,	NEWBIE,	sale_price = 4000),
		new /datum/data/stalker_equipment("�����",				"�����",									/obj/item/weapon/artifact/mica,						20000,	NEWBIE,	sale_price = 10000),
		new /datum/data/stalker_equipment("�����&#x44F;�",		"�����&#x44F;�",							/obj/item/weapon/artifact/firefly,					50000,	NEWBIE,	sale_price = 25000),
		///////////////////////////////////////////////////////////////////////////////////////////
		)

	var/attachment_list = list(
		/////////////////////////////////	����������	///////////////////////////////////////////
		new /datum/data/stalker_equipment("SUSAT",				"�����",							/obj/item/weapon/attachment/scope/SUSAT,			8000,	EXPERT),
		new /datum/data/stalker_equipment("PSU-1",				"���-1",							/obj/item/weapon/attachment/scope/PS/U1,			6000,	EXPERT),
		new /datum/data/stalker_equipment("PSO-1",				"���-1",							/obj/item/weapon/attachment/scope/PS/O1,			10000,	EXPERT, assortment_level = 2),
		new /datum/data/stalker_equipment("Universl suppressor","������������� ���������",			/obj/item/weapon/attachment/suppressor,				2000,	NEWBIE),

		)

var/list/sidormatitems = list()

/datum/data/stalker_equipment/
	var/equipment_name_eng = "generic"
	var/equipment_name = "generic"
	var/equipment_path = null
	var/cost = 0
	var/rating = 0
	var/faction = "Everyone"
	var/sale_price = 0
	var/assortment_level = 0

/datum/data/stalker_equipment/New(equipment_name_eng, name, path, cost, rating, faction = "Everyone", sale_price = 0, assortment_level = 0)
	src.equipment_name_eng = equipment_name_eng
	src.equipment_name = name
	src.equipment_path = path
	src.cost = cost
	src.rating = rating
	src.faction = faction
	if(sale_price)
		src.sale_price = sale_price
	else
		src.sale_price = cost/2
	src.assortment_level = assortment_level
	sidormatitems += src

/obj/machinery/stalker/sidormat/New()
	itemloc = locate(x - 1, y, z)
	itemloc2 = locate(x + 1, y, z)

/obj/machinery/stalker/sidormat/attack_hand(mob/user)
	balance = 0
	if(..())
		return

	if(!istype(user,/mob/living/carbon/human))
		say("You are not a human.")
		return

	var/mob/living/carbon/human/H = user

	interact(H)


/obj/machinery/stalker/sidormat/interact(mob/living/carbon/human/H)

	if(!istype(H.wear_id, /obj/item/device/stalker_pda))
		say("Put on your KPK.")
		return

	var/datum/data/record/sk = find_record("sid", H.sid, data_core.stalkers)
	var/obj/item/device/stalker_pda/KPK = H.wear_id

	if(!sk || !KPK.owner)
		say("Activate your KPK profile.")
		return

	if(KPK.owner != H)
		say("No access.")
		return

	balance = sk.fields["money"]
	rating = sk.fields["rating"]

	var/dat
	if(H.client.prefs.chat_toggles & CHAT_LANGUAGE)

	///////////////////////////////////////////////////////////���������� ���������///////////////////////////////////////////////////////////////////////

		dat +="<div class='statusDisplay'>"
		dat +="<A href='?src=\ref[src];choice=take'><b>Sell habar.</b></A><br>"

		dat += "Balance: [balance] �.<br>"
		dat += "<br><br>INSTRUCTION: Put habar for sale on the <b>left</b> table." // �������� ������ � ��������� ���� - �� <b>������</b>.
		dat += "</div>"
		dat += "<div class='lenta_scroll'>"
		dat += "<br><BR><table border='0' width='400'>" //<b>Item list:</b>
		dat += "<tr><td><center><b>Guns</b></center></td><td></td><td></td></tr>"
		for(var/datum/data/stalker_equipment/prize in weapon_list)
			if(KPK.eng_faction_s == prize.faction || prize.faction == "Everyone")
				//if(rating >= prize.rating)
				if(get_assortment_level(H) >= prize.assortment_level)
					dat += "<tr><td>[prize.equipment_name_eng]</td><td>[prize.cost]</td><td><A href='?src=\ref[src];purchase=\ref[prize]'>Buy</A></td></tr>"

		dat += "<tr><td></td><td></td><td></td></tr><tr><td><center><b>Ammo</b></center></td><td></td><td></td></tr>"
		for(var/datum/data/stalker_equipment/prize in ammo_list)
			if(KPK.eng_faction_s == prize.faction || prize.faction == "Everyone")
				//if(rating >= prize.rating)
				if(get_assortment_level(H) >= prize.assortment_level)
					dat += "<tr><td>[prize.equipment_name_eng]</td><td>[prize.cost]</td><td><A href='?src=\ref[src];purchase=\ref[prize]'>Buy</A></td></tr>"

		dat += "<tr><td></td><td></td><td></td></tr><tr><td><center><b>Armor</b></center></td><td></td><td></td></tr>"
		for(var/datum/data/stalker_equipment/prize in armor_list)
			if(KPK.eng_faction_s == prize.faction || prize.faction == "Everyone")
				//if(rating >= prize.rating)
				if(get_assortment_level(H) >= prize.assortment_level)
					dat += "<tr><td>[prize.equipment_name_eng]</td><td>[prize.cost]</td><td><A href='?src=\ref[src];purchase=\ref[prize]'>Buy</A></td></tr>"

		dat += "<tr><td></td><td></td><td></td></tr><tr><td><center><b>Helmets And Gasmasks</b></center></td><td></td><td></td></tr>"
		for(var/datum/data/stalker_equipment/prize in helmet_list)
			if(KPK.eng_faction_s == prize.faction || prize.faction == "Everyone")
				//if(rating >= prize.rating)
				if(get_assortment_level(H) >= prize.assortment_level)
					dat += "<tr><td>[prize.equipment_name_eng]</td><td>[prize.cost]</td><td><A href='?src=\ref[src];purchase=\ref[prize]'>Buy</A></td></tr>"

		dat += "<tr><td></td><td></td><td></td></tr><tr><td><center><b>Meds</b></center></td><td></td><td></td></tr>"
		for(var/datum/data/stalker_equipment/prize in med_list)
			if(KPK.eng_faction_s == prize.faction || prize.faction == "Everyone")
				//if(rating >= prize.rating)
				if(get_assortment_level(H) >= prize.assortment_level)
					dat += "<tr><td>[prize.equipment_name_eng]</td><td>[prize.cost]</td><td><A href='?src=\ref[src];purchase=\ref[prize]'>Buy</A></td></tr>"

		dat += "<tr><td></td><td></td><td></td></tr><tr><td><center><b>Food And Drinks</b></center></td><td></td><td></td></tr>"
		for(var/datum/data/stalker_equipment/prize in food_list)
			if(KPK.eng_faction_s == prize.faction || prize.faction == "Everyone")
				//if(rating >= prize.rating)
				if(get_assortment_level(H) >= prize.assortment_level)
					dat += "<tr><td>[prize.equipment_name_eng]</td><td>[prize.cost]</td><td><A href='?src=\ref[src];purchase=\ref[prize]'>Buy</A></td></tr>"

		dat += "<tr><td></td><td></td><td></td></tr><tr><td><center><b>Detectors</b></center></td><td></td><td></td></tr>"
		for(var/datum/data/stalker_equipment/prize in detector_list)
			if(KPK.eng_faction_s == prize.faction || prize.faction == "Everyone")
				//if(rating >= prize.rating)
				if(get_assortment_level(H) >= prize.assortment_level)
					dat += "<tr><td>[prize.equipment_name_eng]</td><td>[prize.cost]</td><td><A href='?src=\ref[src];purchase=\ref[prize]'>Buy</A></td></tr>"

		dat += "<tr><td></td><td></td><td></td></tr><tr><td><center><b>Misc</b></center></td><td></td><td></td></tr>"
		for(var/datum/data/stalker_equipment/prize in misc_list)
			if(KPK.eng_faction_s == prize.faction || prize.faction == "Everyone")
				//if(rating >= prize.rating)
				if(get_assortment_level(H) >= prize.assortment_level)
					dat += "<tr><td>[prize.equipment_name_eng]</td><td>[prize.cost]</td><td><A href='?src=\ref[src];purchase=\ref[prize]'>Buy</A></td></tr>"

		dat += "<tr><td></td><td></td><td></td></tr><tr><td><center><b>Gun Attachments</b></center></td><td></td><td></td></tr>"
		for(var/datum/data/stalker_equipment/prize in attachment_list)
			if(KPK.eng_faction_s == prize.faction || prize.faction == "Everyone")
				//if(rating >= prize.rating)
				if(get_assortment_level(H) >= prize.assortment_level)
					dat += "<tr><td>[prize.equipment_name_eng]</td><td>[prize.cost]</td><td><A href='?src=\ref[src];purchase=\ref[prize]'>Buy</A></td></tr>"

		dat += "</table>"
		dat += "</div>"

	else

		///////////////////////////////////////////////////////////������� ���������///////////////////////////////////////////////////////////////////////

		dat +="<div class='statusDisplay'>"
		dat +="<A href='?src=\ref[src];choice=take'><b>����� �����.</b></A><br>"
		dat += "�� �����: [balance] �.<br>"
		dat += "<br><br>����������: ����� ���������� - �� <b>�����</b> �����." //�������� ������ � ��������� ���� - �� <b>������</b>.
		dat += "</div>"
		dat += "<div class='lenta_scroll'>"
		dat += "<br><BR><table border='0' width='400'>" //<b>������ ���������:</b>
		dat += "<tr><td><center><b>������</b></center></td><td></td><td></td></tr>"
		for(var/datum/data/stalker_equipment/prize in weapon_list)
			if(KPK.eng_faction_s == prize.faction || prize.faction == "Everyone")
				//if(rating >= prize.rating)
				if(get_assortment_level(H) >= prize.assortment_level)
					dat += "<tr><td>[prize.equipment_name]</td><td>[prize.cost]</td><td><A href='?src=\ref[src];purchase=\ref[prize]'>������</A></td></tr>"

		dat += "<tr><td></td><td></td><td></td></tr><tr><td><center><b>����������</b></center></td><td></td><td></td></tr>"
		for(var/datum/data/stalker_equipment/prize in ammo_list)
			if(KPK.eng_faction_s == prize.faction || prize.faction == "Everyone")
				//if(rating >= prize.rating)
				if(get_assortment_level(H) >= prize.assortment_level)
					dat += "<tr><td>[prize.equipment_name]</td><td>[prize.cost]</td><td><A href='?src=\ref[src];purchase=\ref[prize]'>������</A></td></tr>"

		dat += "<tr><td></td><td></td><td></td></tr><tr><td><center><b>������������</b></center></td><td></td><td></td></tr>"
		for(var/datum/data/stalker_equipment/prize in armor_list)
			if(KPK.eng_faction_s == prize.faction || prize.faction == "Everyone")
				//if(rating >= prize.rating)
				if(get_assortment_level(H) >= prize.assortment_level)
					dat += "<tr><td>[prize.equipment_name]</td><td>[prize.cost]</td><td><A href='?src=\ref[src];purchase=\ref[prize]'>������</A></td></tr>"

		dat += "<tr><td></td><td></td><td></td></tr><tr><td><center><b>����� � �����������</b></center></td><td></td><td></td></tr>"
		for(var/datum/data/stalker_equipment/prize in helmet_list)
			if(KPK.eng_faction_s == prize.faction || prize.faction == "Everyone")
				//if(rating >= prize.rating)
				if(get_assortment_level(H) >= prize.assortment_level)
					dat += "<tr><td>[prize.equipment_name]</td><td>[prize.cost]</td><td><A href='?src=\ref[src];purchase=\ref[prize]'>������</A></td></tr>"

		dat += "<tr><td></td><td></td><td></td></tr><tr><td><center><b>�����������</b></center></td><td></td><td></td></tr>"
		for(var/datum/data/stalker_equipment/prize in med_list)
			if(KPK.eng_faction_s == prize.faction || prize.faction == "Everyone")
				//if(rating >= prize.rating)
				if(get_assortment_level(H) >= prize.assortment_level)
					dat += "<tr><td>[prize.equipment_name]</td><td>[prize.cost]</td><td><A href='?src=\ref[src];purchase=\ref[prize]'>������</A></td></tr>"

		dat += "<tr><td></td><td></td><td></td></tr><tr><td><center><b>���</b></center></td><td></td><td></td></tr>"
		for(var/datum/data/stalker_equipment/prize in food_list)
			if(KPK.eng_faction_s == prize.faction || prize.faction == "Everyone")
				//if(rating >= prize.rating)
				if(get_assortment_level(H) >= prize.assortment_level)
					dat += "<tr><td>[prize.equipment_name]</td><td>[prize.cost]</td><td><A href='?src=\ref[src];purchase=\ref[prize]'>������</A></td></tr>"

		dat += "<tr><td></td><td></td><td></td></tr><tr><td><center><b>���������</b></center></td><td></td><td></td></tr>"
		for(var/datum/data/stalker_equipment/prize in detector_list)
			if(KPK.eng_faction_s == prize.faction || prize.faction == "Everyone")
				//if(rating >= prize.rating)
				if(get_assortment_level(H) >= prize.assortment_level)
					dat += "<tr><td>[prize.equipment_name]</td><td>[prize.cost]</td><td><A href='?src=\ref[src];purchase=\ref[prize]'>������</A></td></tr>"

		dat += "<tr><td></td><td></td><td></td></tr><tr><td><center><b>������</b></center></td><td></td><td></td></tr>"
		for(var/datum/data/stalker_equipment/prize in misc_list)
			if(KPK.eng_faction_s == prize.faction || prize.faction == "Everyone")
				//if(rating >= prize.rating)
				if(get_assortment_level(H) >= prize.assortment_level)
					dat += "<tr><td>[prize.equipment_name]</td><td>[prize.cost]</td><td><A href='?src=\ref[src];purchase=\ref[prize]'>������</A></td></tr>"

		dat += "<tr><td></td><td></td><td></td></tr><tr><td><center><b>�����������</b></center></td><td></td><td></td></tr>"
		for(var/datum/data/stalker_equipment/prize in attachment_list)
			if(KPK.eng_faction_s == prize.faction || prize.faction == "Everyone")
				//if(rating >= prize.rating)
				if(get_assortment_level(H) >= prize.assortment_level)
					dat += "<tr><td>[prize.equipment_name]</td><td>[prize.cost]</td><td><A href='?src=\ref[src];purchase=\ref[prize]'>������</A></td></tr>"

		dat += "</table>"
		dat += "</div>"

	var/datum/browser/popup = new(H, "miningvendor", "SIDORMAT 3000", 450, 700)
	popup.set_content(dat)
	popup.open()
	return

/proc/get_assortment_level(var/mob/living/carbon/human/owner)
	var/datum/data/record/sk = find_record("sid", owner.sid, data_core.stalkers)
	var/assortment_level = 0


	for(var/obj/machinery/stalker/sidorpoint/cp in cps)
		if(cp.controlled_by == sk.fields["faction_s"] && cp.control_percent == 100)
			assortment_level++

	return assortment_level

/obj/machinery/stalker/sidormat/Topic(href, href_list)
	if(..())
		return

	var/mob/living/carbon/human/H = usr

	if(!istype(H.wear_id, /obj/item/device/stalker_pda))
		say("Put on your KPK.")
		updateUsrDialog()
		return

	var/datum/data/record/sk = find_record("sid", H.sid, data_core.stalkers)
	var/obj/item/device/stalker_pda/KPK = H.wear_id


	if(!sk || !KPK.owner)
		say("Activate your KPK profile.")
		updateUsrDialog()
		return

	if(KPK.sid != H.sid)
		say("No access.")
		updateUsrDialog()
		return

	if(href_list["choice"])
		if(href_list["choice"] == "take")
			SellItems()

	if(href_list["purchase"])
		var/datum/data/stalker_equipment/prize = locate(href_list["purchase"])

		if (!prize)
			updateUsrDialog()
			return

		if(prize.cost > sk.fields["money"])
			say("You don't have enough money to buy [prize.equipment_name_eng].")
			updateUsrDialog()
			return

		sk.fields["money"] -= prize.cost
		balance = sk.fields["money"]
		//PoolOrNew(prize.equipment_path, itemloc2)
		new prize.equipment_path(itemloc2)


	//updateUsrDialog()
	return


/obj/machinery/stalker/sidormat/proc/SellItems()
	var/list/ontable = GetItemsOnTable()
	var/total_cost = GetOnTableCost(ontable)

	var/mob/living/carbon/human/H = usr
	if(!istype(H.wear_id, /obj/item/device/stalker_pda))
		say("Put on your KPK.")
		return

	var/datum/data/record/sk = find_record("sid", H.sid, data_core.stalkers)
	var/obj/item/device/stalker_pda/KPK = H.wear_id

	if(!sk)
		say("Activate your profile in KPK.")
		return

	if(KPK.sid != H.sid)
		say("No access.")
		return

	if(total_cost < 100)
		say("Habar was not sold.")

	for(var/atom/movable/I in ontable)
		if(I.loc != itemloc)
			continue

		if(!GetCost(I.type))
			continue

		sk.fields["money"] += GetCost(I.type)
		balance = sk.fields["money"]

		say("[I] was sold for [GetCost(I.type)].")

		PlaceInPool(I)
		CHECK_TICK

	say("HABAR WAS SUCCESSFULLY SOLD FOR [total_cost].")

	updateUsrDialog()
	return

/obj/machinery/stalker/sidormat/proc/GetItemsOnTable()
	var/list/ontable = list()
	for(var/atom/movable/AM in itemloc)
		if(!GetCost(AM.type) && !istype(AM, /obj/item/stack/spacecash))
			continue

		if(istype(AM, /obj/item/clothing))
			var/obj/item/clothing/C = AM
			if((C.durability / initial(C.durability)) * 100 < 80)
				say("[AM] is too broken for sale.")
				continue

		ontable.Add(AM)

	return ontable

/obj/machinery/stalker/sidormat/proc/GetOnTableCost(var/list/ontable)
	//var/list/ontable = GetItemsOnTable()
	var/total_cost = 0

	for(var/atom/item_on_table in ontable)
		var/obj/item/stack/spacecash/C = item_on_table
		switch(item_on_table.type)
			if(/obj/item/stack/spacecash/c50)
				total_cost += 50 * C.amount
			if(/obj/item/stack/spacecash/c100)
				total_cost += 100 * C.amount
			if(/obj/item/stack/spacecash/c500)
				total_cost += 500 * C.amount
			if(/obj/item/stack/spacecash/c1000)
				total_cost += 1000 * C.amount
			if(/obj/item/stack/spacecash/c5000)
				total_cost += 5000 * C.amount
		var/cost = GetCost(item_on_table.type)
		if(cost)
			total_cost += cost
		else
			ontable.Remove(item_on_table)
	return total_cost

/obj/machinery/stalker/sidormat/proc/GetCost(itemtype)
	for(var/datum/data/stalker_equipment/se in sidormatitems)
		if(itemtype == se.equipment_path)
			return se.sale_price
	return 0

/obj/machinery/stalker/sidormat/ex_act(severity, target)
	return