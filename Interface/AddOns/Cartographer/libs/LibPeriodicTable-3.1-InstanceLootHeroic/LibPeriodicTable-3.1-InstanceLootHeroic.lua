-- (c) 2007 Nymbia.  see LGPLv2.1.txt for full details.
--DO NOT MAKE CHANGES TO THIS FILE BEFORE READING THE WIKI PAGE REGARDING CHANGING THESE FILES
if not LibStub("LibPeriodicTable-3.1", true) then error("PT3 must be loaded before data") end
LibStub("LibPeriodicTable-3.1"):AddData("InstanceLootHeroic", "$Rev: 6 $", {
	["InstanceLootHeroic.Auchindoun"]="m,InstanceLootHeroic.Auchenai Crypts,InstanceLootHeroic.Mana-Tombs,InstanceLootHeroic.Shadow Labyrinth,InstanceLootHeroic.Sethekk Halls",
	["InstanceLootHeroic.Auchenai Crypts.Exarch Maladaar"]="29257:211,29244:192,27523:132,27871:127,27869:118,27872:104,27867:99,30586:88,30587:86,27870:85,29354:84,30588:73",
	["InstanceLootHeroic.Auchenai Crypts.Shirrak the Dead Watcher"]="27866:139,27846:133,27845:132,27493:129,27865:97,27847:95,30586:38,30588:36,30587:36",

	["InstanceLootHeroic.Magisters' Terrace.Selin Fireheart"]="34601:208,34603:204,34604:201,34602:197,35275:15",
	["InstanceLootHeroic.Magisters' Terrace.Vexallus"]="34607:194,34606:191,34608:181,34605:176,35275:14",
	["InstanceLootHeroic.Magisters' Terrace.Priestess Delrissa"]="35756:193,34471:190,34470:183,34472:180,34473:175,35275:12",
	["InstanceLootHeroic.Magisters' Terrace.Kael'thas Sunstrider"]="34609:198,34614:189,34611:189,34613:188,34612:186,34616:186,34615:183,34610:183,35504:61,35275:25,35513:24,35297:9,35309:8,35298:7,35299:7,35294:7,35308:7,35301:5,35302:5,35296:5,35295:5,35303:4,35300:4,35306:3,35310:3,35307:3,35311:2,35305:2,35304:1",

	["InstanceLootHeroic.Mana-Tombs.Nexus-Prince Shaffar"]="29240:191,30535:177,29352:150,27831:125,27844:123,27843:121,27828:117,27827:117,27840:111,27837:109,27798:108,27842:108,27835:105,28400:104,27829:102,32082:95,30583:73,30585:59,30584:55,22921:30",
	["InstanceLootHeroic.Mana-Tombs.Pandemonius"]="27817:142,27818:142,27816:135,27814:130,27813:117,27815:108,30583:83,30585:82,30584:77",
	["InstanceLootHeroic.Mana-Tombs.Tavarok"]="27825:145,27824:139,27823:130,27822:128,27821:120,27826:111,30583:71,30584:61,30585:60",

	["InstanceLootHeroic.Shadow Labyrinth.Ambassador Hellmaw"]="27885:159,27889:158,27887:154,27886:142,27884:135,27888:124,30560:64,30563:64,30559:53",
	["InstanceLootHeroic.Shadow Labyrinth.Blackheart the Inciter"]="27468:150,27892:143,27893:143,27890:130,27891:125,28134:122,30560:43,30563:42,30559:37,25728:25",
	["InstanceLootHeroic.Shadow Labyrinth.Grandmaster Vorpil"]="27900:186,27775:183,27898:172,27901:152,27897:141,30560:42,30559:38,30563:37",
	["InstanceLootHeroic.Shadow Labyrinth.Murmur"]="27902:143,28230:141,27909:135,27910:132,27903:132,27912:129,29261:126,28232:125,27778:125,30532:120,27913:120,27905:118,29357:117,27908:109,27803:101,29353:64,30560:62,30563:54,30559:47,29241:17,24309:17",
	["InstanceLootHeroic.Sethekk Halls.Darkweaver Syth"]="27919:152,27917:151,27918:140,27914:137,27915:135,27916:126,30554:59,30553:54,30552:48,24160:18",
	["InstanceLootHeroic.Sethekk Halls.Talon King Ikiss"]="29259:170,29249:169,27925:153,27936:150,27776:136,27875:130,27838:129,27946:123,27981:122,32073:118,27980:117,27948:106,27985:106,27986:100,29355:71,30553:65,30554:62,30552:52",
	["InstanceLootHeroic.Sethekk Halls.Anzu"]="32778:207,32781:182,32769:170,32779:159,32780:155,30554:84,30553:81,30552:70,32768:9",

	["InstanceLootHeroic.Caverns of Time"]="m,InstanceLootHeroic.Old Hillsbrad Foothills,InstanceLootHeroic.The Black Morass",
	["InstanceLootHeroic.Old Hillsbrad Foothills.Captain Skarloc"]="28217:103,28221:102,28219:96,28218:91,28220:87,28216:77,27430:62,27424:59,27428:56,22927:42,30590:36,30589:36,30591:32",
	["InstanceLootHeroic.Old Hillsbrad Foothills.Epoch Hunter"]="27904:117,29246:113,29250:111,28224:99,30536:97,28223:91,28191:89,28222:86,28225:85,28344:85,30534:84,27911:83,28226:79,28401:76,28227:76,28233:74,30589:72,30591:68,27434:56,27433:56,27440:54,30590:44,24173:11",
	["InstanceLootHeroic.Old Hillsbrad Foothills.Lieutenant Drake"]="28213:113,28215:113,28214:109,28211:105,28212:99,28210:97,27423:57,27417:55,30589:39,30591:38,30590:34",
	["InstanceLootHeroic.The Black Morass.Aeonus"]="28206:161,28192:157,29247:152,27509:148,27977:148,28193:142,28190:140,29253:140,28194:138,27839:133,28188:132,30531:131,28189:127,28207:127,27873:122,29356:82,30555:47,30558:43,30556:42",
	["InstanceLootHeroic.The Black Morass.Chrono Lord Deja"]="27995:149,27996:143,27993:140,27988:136,27994:125,27987:125,30556:50,30555:50,30558:42,29675:26",
	["InstanceLootHeroic.The Black Morass.Temporus"]="28034:146,28185:140,28184:128,28033:123,28186:123,28187:115,30555:49,30558:47,30556:44",

	["InstanceLootHeroic.Coilfang Reservoir"]="m,InstanceLootHeroic.The Slave Pens,InstanceLootHeroic.The Steamvault,InstanceLootHeroic.The Underbog",
	["InstanceLootHeroic.The Slave Pens.Mennu the Betrayer"]="27545:150,27543:150,27542:138,27544:137,27546:133,27541:127,30605:55,30604:52,30603:44,29674:18",
	["InstanceLootHeroic.The Slave Pens.Quagmirran"]="29242:173,30538:170,32078:136,27673:134,27742:130,27800:130,27713:125,27712:117,27796:117,27740:116,27741:113,27714:112,28337:112,27672:111,27683:102,30604:90,29349:88,30605:82,30603:69",
	["InstanceLootHeroic.The Slave Pens.Rokmar the Crackler"]="27550:144,27547:143,27551:130,28124:130,27549:130,27548:128,30605:57,30604:54,30603:49",
	["InstanceLootHeroic.The Slave Pens.Ahune"]="35494:140,35495:60,35496:120,35497:100,35514:40,35498:150,34955:19,35507:80,35508:80,35509:80,35510:80,35511:80,",
	["InstanceLootHeroic.The Steamvault.Hydromancer Thespia"]="27508:181,27783:170,27787:170,27784:155,27789:155,30550:52,30551:50,30549:45,29673:21",
	["InstanceLootHeroic.The Steamvault.Mekgineer Steamrigger"]="27791:173,27790:168,27794:164,27793:154,27792:152,30550:59,30549:52,30551:45,23887:29",
	["InstanceLootHeroic.The Steamvault.Warlord Kalithresh"]="29243:166,29463:148,27805:143,30543:142,27806:141,27799:138,27737:136,27475:131,27738:131,27795:128,28203:118,27804:117,27510:114,27801:114,27874:112,29351:93,30550:74,30551:71,30549:70,24313:18",
	["InstanceLootHeroic.The Underbog.Ghaz'an"]="27758:151,27761:141,27759:138,27757:130,27755:128,27760:124,30607:60,30606:56,30608:56",
	["InstanceLootHeroic.The Underbog.Hungarfen"]="27745:151,27743:148,27747:142,27748:128,27744:127,27746:126,30608:63,30607:60,30606:57",
	["InstanceLootHeroic.The Underbog.Swamplord Musel'ek"]="27765:144,27763:141,27766:132,27764:127,27767:124,27762:122,30607:60,30608:60,30606:57",
	["InstanceLootHeroic.The Underbog.The Black Stalker"]="29265:179,30541:171,27896:127,27781:126,29350:124,27773:118,27780:115,27779:115,27772:115,27769:113,27771:108,27768:107,27770:105,27938:104,27907:103,30607:92,30606:89,30608:79,32081:70",

	["InstanceLootHeroic.Hellfire Citadel"]="m,InstanceLootHeroic.Hellfire Ramparts,InstanceLootHeroic.Magtheridon's Lair,InstanceLootHeroic.The Blood Furnace,InstanceLootHeroic.The Shattered Halls",
	["InstanceLootHeroic.Hellfire Ramparts.Nazan"]="33833:667",
	["InstanceLootHeroic.Hellfire Ramparts.Omor the Unscarred"]="27464:140,27465:133,27477:130,27466:128,27895:128,27478:127,27906:125,27463:121,27467:118,27476:111,27462:108,27539:106,30593:67,30594:63",
	["InstanceLootHeroic.Hellfire Ramparts.Vazruden"]="23892:50",
	["InstanceLootHeroic.Hellfire Ramparts.Watchkeeper Gargolmar"]="27447:176,27451:169,27448:164,27449:150,27450:148,30594:56,30593:48",
	["InstanceLootHeroic.The Blood Furnace.Broggok"]="27492:160,27491:156,27490:146,27848:137,27489:134,30602:53,30600:48,30601:44",
	["InstanceLootHeroic.The Blood Furnace.Keli'dan the Breaker"]="29245:157,29239:157,27495:142,28121:124,27788:122,27506:121,27514:120,27507:117,27512:111,27494:109,27522:106,27505:105,32080:101,30601:99,27497:92,28264:91,30600:89,30602:74,29347:74",
	["InstanceLootHeroic.The Blood Furnace.The Maker"]="27488:186,27485:169,27487:158,27483:150,27484:148,30600:57,30602:55,30601:49",
	["InstanceLootHeroic.The Shattered Halls.Grand Warlock Nethekurse"]="27520:175,27518:172,27517:165,27519:164,27521:163,30548:53,30546:51,30547:44,24312:21",
	["InstanceLootHeroic.The Shattered Halls.Warbringer O'mrogg"]="27525:180,27526:168,27868:158,27524:156,27802:154,30546:57,30548:52,30547:45",
	["InstanceLootHeroic.The Shattered Halls.Warchief Kargath Bladefist"]="29255:172,29263:148,27528:137,27536:136,27534:132,27540:130,27527:129,27537:128,29254:123,27533:116,27529:114,27538:110,27535:109,27474:107,27531:107,29348:74,30548:69,30546:59,30547:59",
	["InstanceLootHeroic.The Shattered Halls.Blood Guard Porung"]="30709:196,30707:186,30705:171,30708:160,30710:84,30546:68,30548:66,30547:51",

	["InstanceLootHeroic.Tempest Keep"]="m,InstanceLootHeroic.The Arcatraz,InstanceLootHeroic.The Mechanar,InstanceLootHeroic.The Botanica",
	["InstanceLootHeroic.The Arcatraz.Dalliah the Doomsayer"]="28392:177,28386:169,28387:159,28391:159,28390:157,30575:81,30582:70,30581:69,24308:51",
	["InstanceLootHeroic.The Arcatraz.Harbinger Skyriss"]="29248:174,29252:161,29241:144,28414:143,28416:137,28413:135,28407:133,28406:132,28231:132,28419:129,28412:127,28403:125,28205:124,28415:124,28418:108,29360:100,30575:61,30581:59,30582:58",
	["InstanceLootHeroic.The Arcatraz.Wrath-Scryer Soccothrates"]="28398:180,28396:175,28394:171,28393:152,28397:150,30581:70,30575:66,30582:58",
	["InstanceLootHeroic.The Arcatraz.Zereketh the Unbound"]="28374:182,28373:171,28384:168,28375:144,28372:137,30575:68,30581:67,30582:62",
	["InstanceLootHeroic.The Botanica.Commander Sarannis"]="28296:190,28306:179,28304:175,28301:160,28311:156,30573:60,30574:58,30572:54",
	["InstanceLootHeroic.The Botanica.High Botanist Freywinn"]="28318:179,28317:176,28315:176,28321:164,28316:152,30573:67,30572:61,30574:58,23617:35",
	["InstanceLootHeroic.The Botanica.Laj"]="28328:176,27739:166,28338:156,28339:155,28340:154,30574:67,30573:66,30572:65",
	["InstanceLootHeroic.The Botanica.Thorngrin the Tender"]="28322:189,28327:168,28323:166,28325:152,28324:151,30573:77,30574:69,30572:68,24310:42",
	["InstanceLootHeroic.The Botanica.Warp Splinter"]="29258:210,29262:194,32072:158,28370:144,28371:139,28349:136,28343:124,28348:122,28228:120,28347:120,28367:118,28342:115,28350:115,28345:110,28341:105,28229:101,29359:83,30573:66,30572:62,30574:58,24311:31",
	["InstanceLootHeroic.The Mechanar.Mechano-Lord Capacitus"]="28254:158,28253:151,28255:143,28256:126,28257:123,35582:67,30564:63,30566:59,30565:51",
	["InstanceLootHeroic.The Mechanar.Nethermancer Sepethrea"]="28259:166,28262:159,28260:157,28258:148,28263:145,30565:69,30564:67,22920:65,30566:62",
	["InstanceLootHeroic.The Mechanar.Pathaleon the Calculator"]="30533:226,29251:217,32076:203,28202:153,28278:142,28266:137,28286:137,28204:134,28275:131,28267:126,28269:124,27899:123,28288:118,28285:118,28265:115,29362:96,21907:91,30566:69,30565:63,30564:60",
})
