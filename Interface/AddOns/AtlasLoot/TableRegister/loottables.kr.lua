if (GetLocale() == "koKR") then
-- Translated by acemage
-- Last Updated: 6/28/2007
-- missing some boss names. 
-- names with the fuction 'BabbleFaction' cause problem if I change the name
-- so I left those in english.

--Invoke libraries
local BabbleFaction = LibStub("LibBabble-Faction-3.0"):GetLookupTable();

--Table of loot titles

    --Auch: Mana-Tombs
    AtlasLoot_TableNames["AuchManaPandemonius"][1] = "ÆÒ´õ¸ð´Ï¿ì½º";
    AtlasLoot_TableNames["AuchManaPandemoniusHEROIC"][1] = "ÆÒ´õ¸ð´Ï¿ì½º (¿µ¿õ)";
    AtlasLoot_TableNames["AuchManaTavarok"][1] = "Å¸¹Ù·ÎÅ©";
    AtlasLoot_TableNames["AuchManaTavarokHEROIC"][1] = "Å¸¹Ù·ÎÅ© (¿µ¿õ)";
    AtlasLoot_TableNames["AuchManaNexusPrince"][1] = "¿¬ÇÕ¿ÕÀÚ »þÆÄ¸£ ";
    AtlasLoot_TableNames["AuchManaNexusPrinceHEROIC"][1] = "¿¬ÇÕ¿ÕÀÚ »þÆÄ¸£ (¿µ¿õ)";
    AtlasLoot_TableNames["AuchManaYor"][1] = "Yor";
    AtlasLoot_TableNames["AuchManaTrash"][1] = "ÀÏ¹Ý¸÷ (¸¶³ª¹«´ý)";
    --Auch: Auchenai Crypts
    AtlasLoot_TableNames["AuchCryptsShirrak"][1] = "½¯¶óÅ©";
    AtlasLoot_TableNames["AuchCryptsShirrakHEROIC"][1] = "½¯¶óÅ© (¿µ¿õ)";
    AtlasLoot_TableNames["AuchCryptsExarch"][1] = "¸»¶ó´Ù¸£";
    AtlasLoot_TableNames["AuchCryptsExarchHEROIC"][1] = "¸»¶ó´Ù¸£ (¿µ¿õ)";
    AtlasLoot_TableNames["AuchCryptsAvatar"][1] = "¼ø±³ÀÚÀÇ È­½Å";
    AtlasLoot_TableNames["AuchCryptsTrash"][1] = "ÀÏ¹Ý¸÷ (¾ÆÅ°³ªÀÌ ³³°ñ´ç)";
    --Auch: Sethekk Halls
    AtlasLoot_TableNames["AuchSethekkDarkweaver"][1] = "Èæ¸¶¼ú»ç ½Ã½º";
    AtlasLoot_TableNames["AuchSethekkDarkweaverHEROIC"][1] = "Èæ¸¶¼ú»ç ½Ã½º (¿µ¿õ)";
    AtlasLoot_TableNames["AuchSethekkTalonKing"][1] = "Ä®Äû´ë¿Õ ÀÌÅ°½º";
    AtlasLoot_TableNames["AuchSethekkTalonKingHEROIC"][1] = "Ä®Äû´ë¿Õ ÀÌÅ°½º (¿µ¿õ)";
    AtlasLoot_TableNames["AuchSethekkRavenGod"][1] = "Raven God Anzu";
    AtlasLoot_TableNames["AuchSethekkTrash"][1] = "ÀÏ¹Ý¸÷ (¼¼µ¥Å© Àü´ç)";
    --Auch: Shadow Labyrinth
    AtlasLoot_TableNames["AuchShadowHellmaw"][1] = "»çÀÚ Áö¿Á¾Æ±Í";
    AtlasLoot_TableNames["AuchShadowHellmawHEROIC"][1] = "»çÀÚ Áö¿Á¾Æ±Í (¿µ¿õ)";
    AtlasLoot_TableNames["AuchShadowBlackheart"][1] = "¼±µ¿ÀÚ °ËÀº½ÉÀå";
    AtlasLoot_TableNames["AuchShadowBlackheartHEROIC"][1] = "¼±µ¿ÀÚ °ËÀº½ÉÀå (¿µ¿õ)";
    AtlasLoot_TableNames["AuchShadowGrandmaster"][1] = "´ÜÀå º¸¸£ÇÊ";
    AtlasLoot_TableNames["AuchShadowGrandmasterHEROIC"][1] = "´ÜÀå º¸¸£ÇÊ (¿µ¿õ)";
    AtlasLoot_TableNames["AuchShadowMurmur"][1] = "¿ï¸²";
    AtlasLoot_TableNames["AuchShadowMurmurHEROIC"][1] = "¿ï¸² (¿µ¿õ)";
    AtlasLoot_TableNames["AuchShadowTrash"][1] = "ÀÏ¹Ý¸÷ (¾îµÒÀÇ ¹Ì±Ã)";
    --Blackfathom Deeps
    AtlasLoot_TableNames["BFDGhamoora"][1] = "°¡¹«¶ó";
    AtlasLoot_TableNames["BFDLadySarevess"][1] = "¿©¿Õ »ç·¹º£½º";
    AtlasLoot_TableNames["BFDGelihast"][1] = "°Ö¸®ÇÏ½ºÆ®";
    AtlasLoot_TableNames["BFDBaronAquanis"][1] = "±ºÁÖ ¾ÆÄí¾Æ´Ï½º";
    AtlasLoot_TableNames["BFDTwilightLordKelris"][1] = "È²È¥ÀÇ ±ºÁÖ ÄÌ¸®½º";
    AtlasLoot_TableNames["BFDOldSerrakis"][1] = "´ÄÀº ¼¼¶óÅ°½º";
    AtlasLoot_TableNames["BFDAkumai"][1] = "¾ÆÄí¸¶ÀÌ";
    AtlasLoot_TableNames["BFDTrash"][1] = "ÀÏ¹Ý¸÷ (°ËÀº ½É¿¬ÀÇ ³ª¶ô)";
    --Blackrock Depths
    AtlasLoot_TableNames["BRDLordRoccor"][1] = "ºÒÀÇ ±ºÁÖ ·ÏÄÚ¸£";
    AtlasLoot_TableNames["BRDHighInterrogatorGerstahn"][1] = "´ë½É¹®°ü °Ô¸£½ºÅº";
    AtlasLoot_TableNames["BRDArena"][1] = "¹ýÀÇ ½ÉÆÇÀå";
    AtlasLoot_TableNames["BRDTheldren"][1] = "ÅÚµå·»";
    AtlasLoot_TableNames["BRDHoundmaster"][1] = "»ç³É°³Á¶·Ã»ç ±×·¾¸¶¸£";
    AtlasLoot_TableNames["BRDForgewright"][1] = "ÇÁ¶ûÅ¬·Ð Æ÷Áö¶óÀÌÆ®ÀÇ ±â³äºñ";
    AtlasLoot_TableNames["BRDPyromantLoregrain"][1] = "È­¿°¼ú»ç ·Î¾î±×·¹ÀÎ";
    AtlasLoot_TableNames["BRDWarderStilgiss"][1] = "°ËÀº ±Ý°í";
    AtlasLoot_TableNames["BRDFineousDarkvire"][1] = "ÆÄÀÌ³Ê½º ´ÙÅ©¹ÙÀÌ¾î";
    AtlasLoot_TableNames["BRDLordIncendius"][1] = "ºÒÀÇ±ºÁÖ ÀÎ¼¾µð¿ì½º";
    AtlasLoot_TableNames["BRDBaelGar"][1] = "º§°¡¸£";
    AtlasLoot_TableNames["BRDGeneralAngerforge"][1] = "»ç·É°ü ¾Þ°ÅÆ÷Áö";
    AtlasLoot_TableNames["BRDGolemLordArgelmach"][1] = "°ñ·½±ºÁÖ ¾ÆÁ©¸¶Å©";
    AtlasLoot_TableNames["BRDGuzzler"][1] = "Çè»ó±ÄÀº ÁÖÁ¤¹ðÀÌ";
    AtlasLoot_TableNames["BRDFlamelash"][1] = "»çÀÚ È­¿°Ã¤Âï";
    AtlasLoot_TableNames["BRDPanzor"][1] = "¹«ÀûÀÇ ÆÇÀú (Èñ±Í)";
    AtlasLoot_TableNames["BRDTomb"][1] = "¼ÒÈ¯»çÀÇ ¹«´ý";
    AtlasLoot_TableNames["BRDLyceum"][1] = "¾îµÒ±«Ã¶·Î´Ü ºÒ²ÉÁö±â";
    AtlasLoot_TableNames["BRDMagmus"][1] = "¸¶±×¹«½º";
    AtlasLoot_TableNames["BRDImperatorDagranThaurissan"][1] = "Á¦¿Õ ´Ù±×¶õ Å¸¿ì¸´»ê";
    AtlasLoot_TableNames["BRDPrincess"][1] = "°øÁÖ ¸ðÀÌ¶ó ºê·ÐÁîºñ¾îµå";
    AtlasLoot_TableNames["BRDPyron"][1] = "¸ê¸ÁÀÇ ÆÄÀÌ·Ð";
    AtlasLoot_TableNames["BRDTrash"][1] = "ÀÏ¹Ý¸÷ (°ËÀº¹ÙÀ§ ³ª¶ô)";
    --Lower Blackrock Spire
    AtlasLoot_TableNames["LBRSQuestItems"][1] = "°ËÀº¹ÙÀ§»ê ÇÏÃþ Äù½ºÆ® ¾ÆÀÌÅÛ";
    AtlasLoot_TableNames["LBRSSpirestoneButcher"][1] = "»ÏÁ·¹ÙÀ§ÀÏÁ· µµ»ìÀÚ (Èñ±Í)";
    AtlasLoot_TableNames["LBRSOmokk"][1] = "´ë±ºÁÖ ¿À¸ðÅ©";
    AtlasLoot_TableNames["LBRSSpirestoneLord"][1] = "»ÏÁ·¹ÙÀ§ÀÏÁ· ÀüÅõ ÁöÈÖ°ü (Èñ±Í)";
    AtlasLoot_TableNames["LBRSLordMagus"][1] = "»ÇÁ·¹ÙÀ§ÀÏÁ· ±ºÁÖ ¸¶±¸½º (Èñ±Í)";
    AtlasLoot_TableNames["LBRSVosh"][1] = "¾îµÒ»ç³É²Û º¸½¬°¡Áø";
    AtlasLoot_TableNames["LBRSVoone"][1] = "´ëÀå±º ºÎ³×";
    AtlasLoot_TableNames["LBRSGrayhoof"][1] = "¸ð¸£ ±×·¹ÀÌÈÄÇÁ (¼ÒÈ¯)";
    AtlasLoot_TableNames["LBRSGrimaxe"][1] = "¹Ý³ëÅ© ±×¸²¿¢½º (Èñ±Í)";
    AtlasLoot_TableNames["LBRSSmolderweb"][1] = "¿©¿Õ ºÒ±×¹°°Å¹Ì";
    AtlasLoot_TableNames["LBRSCrystalFang"][1] = "¼öÁ¤ ¸Íµ¶ °Å¹Ì";
    AtlasLoot_TableNames["LBRSDoomhowl"][1] = "¿ì·ÎÅ© µÒÇÏ¿ï (¼ÒÈ¯)";
    AtlasLoot_TableNames["LBRSZigris"][1] = "º´ÂüÀå±³ Áö±×¸®½º";
    AtlasLoot_TableNames["LBRSHalycon"][1] = "ÇÒ¸®ÄÜ";
    AtlasLoot_TableNames["LBRSSlavener"][1] = "ÈäÆøÇÑ ±âÁî·Ñ";
    AtlasLoot_TableNames["LBRSBashguud"][1] = "°íÅ© ¹è½Ã±¸µå (Èñ±Í)";
    AtlasLoot_TableNames["LBRSWyrmthalak"][1] = "´ë±ºÁÖ ¿úÅ¸¶óÅ©";
    AtlasLoot_TableNames["LBRSFelguard"][1] = "ºÒÅ¸´Â Áö¿Á¼öÈ£º´ (Èñ±Í, ·»´ý)";
    AtlasLoot_TableNames["LBRSTrash"][1] = "ÀÏ¹Ý¸÷ (°ËÀº¹ÙÀ§ Ã·Å¾ ÇÏÃþ)";
    --Upper Blackrock Spire
    AtlasLoot_TableNames["UBRSEmberseer"][1] = "ºÒÀÇ ¼öÈ£ÀÚ ¿¥¹ö½Ã¾î";
    AtlasLoot_TableNames["UBRSSolakar"][1] = "È­¿°°í¸® ¼Ö¶óÄ«¸£";
    AtlasLoot_TableNames["UBRSFLAME"][1] = "ÅÂÃÊÀÇ ºÒ²É";
    AtlasLoot_TableNames["UBRSRunewatcher"][1] = "Á¦µå ·é¿ÍÃÄ";
    AtlasLoot_TableNames["UBRSAnvilcrack"][1] = "°í¶ö·çÅ© ¾ØºôÅ©·¢";
    AtlasLoot_TableNames["UBRSRend"][1] = "´ëÁ·Àå ·£µå ºí·¢ÇÚµå";
    AtlasLoot_TableNames["UBRSGyth"][1] = "±â½º";
    AtlasLoot_TableNames["UBRSBeast"][1] = "±«¼ö";
    AtlasLoot_TableNames["UBRSValthalak"][1] = "±ºÁÖ ¹ßÅ¸¶óÅ© (¼ÒÈ¯)";
    AtlasLoot_TableNames["UBRSDrakkisath"][1] = "»ç·É°ü µå¶óÅ°»ç½º";
    AtlasLoot_TableNames["UBRSTrash"][1] = "ÀÏ¹Ý¸÷ (°ËÀº¹ÙÀ§»ê)";
    --The Black Temple
    AtlasLoot_TableNames["BTNajentus"][1] = "³ªÁ¨Åõ½º";
    AtlasLoot_TableNames["BTSupremus"][1] = "¼öÇÁ·¹¸Ó½º";
    AtlasLoot_TableNames["BTGorefiend"][1] = "Å×·Ð °í¾îÇÉµå";
    AtlasLoot_TableNames["BTBloodboil"][1] = "²ú´Â ÇÇÀÇ ±¸¸£ÅäÅ©";
    AtlasLoot_TableNames["BTAkama"][1] = "Shade of Akama";
    AtlasLoot_TableNames["BTEssencofSouls"][1] = "Essence of Souls";
    AtlasLoot_TableNames["BTShahraz"][1] = "´ë¸ð »þ¶óÁî";
    AtlasLoot_TableNames["BTCouncil"][1] = "Illidari Council";
    AtlasLoot_TableNames["BTIllidanStormrage"][1] = "ÀÏ¸®´Ü ½ºÅè·¹ÀÌÁö";
    AtlasLoot_TableNames["BTTrash"][1] = "ÀÏ¹Ý¸÷ (°ËÀº »ç¿ø)";
    --Blackwing Lair
    AtlasLoot_TableNames["BWLRazorgore"][1] = "Æø±º ¼­½½¼Û°÷´Ï";
    AtlasLoot_TableNames["BWLVaelastrasz"][1] = "Å¸¶ôÀÇ ¹ë¶ó½ºÆ®¶óÁî";
    AtlasLoot_TableNames["BWLLashlayer"][1] = "¿ë±â´ëÀå ·¹½¬·¹ÀÌ¾î";
    AtlasLoot_TableNames["BWLFiremaw"][1] = "È­¿°¾Æ±Í";
    AtlasLoot_TableNames["BWLEbonroc"][1] = "¿¡º»·ÎÅ©";
    AtlasLoot_TableNames["BWLFlamegor"][1] = "ÇÃ·¹ÀÓ°í¸£";
    AtlasLoot_TableNames["BWLChromaggus"][1] = "Å©·Î¸¶±¸½º";
    AtlasLoot_TableNames["BWLNefarian"][1] = "³×ÆÄ¸®¾È";
    AtlasLoot_TableNames["BWLTrashMobs"][1] = "ÀÏ¹Ý¸÷ (°ËÀº³¯°³µÕÁö)";
    --CFR: Slave Pens
    AtlasLoot_TableNames["CFRSlaveMennu"][1] = "¹è¹ÝÀÚ ¸à´©";
    AtlasLoot_TableNames["CFRSlaveMennuHEROIC"][1] = "¹è¹ÝÀÚ ¸à´© (¿µ¿õ)";
    AtlasLoot_TableNames["CFRSlaveRokmar"][1] = "µüµüÀÌ ·ÎÅ©¸¶¸£";
    AtlasLoot_TableNames["CFRSlaveRokmarHEROIC"][1] = "µüµüÀÌ ·ÎÅ©¸¶¸£ (¿µ¿õ)";
    AtlasLoot_TableNames["CFRSlaveQuagmirran"][1] = "Äí¾Æ±×¹Ì¶õ";
    AtlasLoot_TableNames["CFRSlaveQuagmirranHEROIC"][1] = "Äí¾Æ±×¹Ì¶õ (¿µ¿õ)";
    --CFR: The Steamvault
    AtlasLoot_TableNames["CFRSteamThespia"][1] = "Ç³¼ö»ç ¼¼½ºÇÇ¾Æ";
    AtlasLoot_TableNames["CFRSteamThespiaHEROIC"][1] = "Ç³¼ö»ç ¼¼½ºÇÇ¾Æ (¿µ¿õ)";
    AtlasLoot_TableNames["CFRSteamSteamrigger"][1] = "±â°è°øÇÐÀÚ ½ºÆÀ¸®°Å";
    AtlasLoot_TableNames["CFRSteamSteamriggerHEROIC"][1] = "±â°è°øÇÐÀÚ ½ºÆÀ¸®°Å (¿µ¿õ)";
    AtlasLoot_TableNames["CFRSteamWarlord"][1] = "Àå±º Ä®¸®½º·¹½¬";
    AtlasLoot_TableNames["CFRSteamWarlordHEROIC"][1] = "Àå±º Ä®¸®½º·¹½¬ (¿µ¿õ)";
    AtlasLoot_TableNames["CFRSteamTrash"][1] = "ÀÏ¹Ý¸÷ (Áõ±â ÀúÀå°í)";
    --CFR: The Underbog
    AtlasLoot_TableNames["CFRUnderHungarfen"][1] = "Çë°¡¸£Ææ";
    AtlasLoot_TableNames["CFRUnderHungarfenHEROIC"][1] = "Çë°¡¸£Ææ (¿µ¿õ)";
    AtlasLoot_TableNames["CFRUnderGhazan"][1] = "°¡Áî¾È";
    AtlasLoot_TableNames["CFRUnderGhazanHEROIC"][1] = "°¡Áî¾È (¿µ¿õ)";
    AtlasLoot_TableNames["CFRUnderSwamplord"][1] = "´Ë±ºÁÖ ¹ÂÁñ·¹Å©";
    AtlasLoot_TableNames["CFRUnderSwamplordHEROIC"][1] = "´Ë±ºÁÖ ¹ÂÁñ·¹Å© (¿µ¿õ)";
    AtlasLoot_TableNames["CFRUnderStalker"][1] = "°ËÀº ÃßÀûÀÚ";
    AtlasLoot_TableNames["CFRUnderStalkerHEROIC"][1] = "°ËÀº ÃßÀûÀÚ (¿µ¿õ)";
    --CFR: Serpentshrine Cavern
    AtlasLoot_TableNames["CFRSerpentHydross"][1] = "ºÒ¾ÈÁ¤ÇÑ È÷µå·Î½º";
    AtlasLoot_TableNames["CFRSerpentKarathress"][1] = "½É¿¬ÀÇ ±ºÁÖ Ä«¶óµå·¹½º";
    AtlasLoot_TableNames["CFRSerpentMorogrim"][1] = "°ÏµÕÆÄµµ ¸ð·Î±×¸²";
    AtlasLoot_TableNames["CFRSerpentLeotheras"][1] = "´«¸Õ ·¹¿ÀÅ×¶ó½º";
    AtlasLoot_TableNames["CFRSerpentLurker"][1] = "½É¿¬ÀÇ Àáº¹²Û";
    AtlasLoot_TableNames["CFRSerpentVashj"][1] = "¿©±ºÁÖ ¹Ù½¬";
    AtlasLoot_TableNames["CFRSerpentTrash"][1] = "ÀÏ¹Ý¸÷ (ºÒ¹ì Á¦´Ü)";
    --CoT: Old Hillsbrad Foothills
    AtlasLoot_TableNames["CoTHillsbradDrake"][1] = "ºÎ°ü µå·¹ÀÌÅ©";
    AtlasLoot_TableNames["CoTHillsbradDrakeHEROIC"][1] = "ºÎ°ü µå·¹ÀÌÅ© (¿µ¿õ)";
    AtlasLoot_TableNames["CoTHillsbradSkarloc"][1] = "°æºñ´ëÀå ½ºÄ®·Ï";
    AtlasLoot_TableNames["CoTHillsbradSkarlocHEROIC"][1] = "°æºñ´ëÀå ½ºÄ®·Ï (¿µ¿õ)";
    AtlasLoot_TableNames["CoTHillsbradHunter"][1] = "½Ã´ëÀÇ »ç³É²Û";
    AtlasLoot_TableNames["CoTHillsbradHunterHEROIC"][1] = "½Ã´ëÀÇ »ç³É²Û (¿µ¿õ)";
    AtlasLoot_TableNames["CoTHillsbradTrash"][1] = "ÀÏ¹Ý¸÷ (¿¾ Èú½ººê·¡µå ±¸¸ªÁö)";
    --CoT: Black Morass
    AtlasLoot_TableNames["CoTMorassDeja"][1] = "½Ã°£ÀÇ ±ºÁÖ µ¥ÀÚ";
    AtlasLoot_TableNames["CoTMorassDejaHEROIC"][1] = "½Ã°£ÀÇ ±ºÁÖ µ¥ÀÚ (¿µ¿õ)";
    AtlasLoot_TableNames["CoTMorassTemporus"][1] = "ÅÛÆÛ·ç½º";
    AtlasLoot_TableNames["CoTMorassTemporusHEROIC"][1] = "ÅÛÆÛ·ç½º (¿µ¿õ)";
    AtlasLoot_TableNames["CoTMorassAeonus"][1] = "¾Æ¿¡´©½º";
    AtlasLoot_TableNames["CoTMorassAeonusHEROIC"][1] = "¾Æ¿¡´©½º (¿µ¿õ)";
    AtlasLoot_TableNames["CoTMorassTrash"][1] = "ÀÏ¹Ý¸÷ (°ËÀº´Ë)";
    --CoT: Hyjal Summit
    AtlasLoot_TableNames["MountHyjalWinterchill"][1] = "¸®Ä¡ À©ÅÍÄ¥";
    AtlasLoot_TableNames["MountHyjalAnetheron"][1] = "¾Æ³×Å×·Ð";
    AtlasLoot_TableNames["MountHyjalKazrogal"][1] = "Ä«Áî·Î°¥";
    AtlasLoot_TableNames["MountHyjalAzgalor"][1] = "¾ÆÁîÄ®·Î";
    AtlasLoot_TableNames["MountHyjalArchimonde"][1] = "¾ÆÅ°¸óµå";
    --The Deadmines
    AtlasLoot_TableNames["VCRhahkZor"][1] = "¶óÅ©Á¶¸£";
    AtlasLoot_TableNames["VCMinerJohnson"][1] = "±¤ºÎ Á¸½¼ (Èñ±Í)";
    AtlasLoot_TableNames["VCSneed"][1] = "½º´Ïµå";
    AtlasLoot_TableNames["VCGilnid"][1] = "±æ´Ïµå";
    AtlasLoot_TableNames["VCCaptainGreenskin"][1] = "¼±Àå ±×¸°½ºÅ²";
    AtlasLoot_TableNames["VCVanCleef"][1] = "¿¡µåÀ© ¹êÅ¬¸®ÇÁ";
    AtlasLoot_TableNames["VCMrSmite"][1] = "¹Ì½ºÅÍ ½º¸¶ÀÌÆ®";
    AtlasLoot_TableNames["VCCookie"][1] = "ÁÖ¹æÀå ÄíÅ°";
    --Dire Maul East
    AtlasLoot_TableNames["DMEPusillin"][1] = "Çª½Ç¸°";
    AtlasLoot_TableNames["DMEZevrimThornhoof"][1] = "Á¦ºê¸² ½ðÈÄÇÁ";
    AtlasLoot_TableNames["DMEHydro"][1] = "È÷µå·Î½ºÆù";
    AtlasLoot_TableNames["DMELethtendris"][1] = "·¹½ºÅÙµå¸®½º";
    AtlasLoot_TableNames["DMEPimgib"][1] = "ÇË±âºê";
    AtlasLoot_TableNames["DMEAlzzin"][1] = "Ä®³¯¹Ù¶÷ ¾ËÁø";
    AtlasLoot_TableNames["DMEIsalien"][1] = "ÀÌ»ì¸®¿£";
    AtlasLoot_TableNames["DMETrash"][1] = "ÀÏ¹Ý¸÷ (Ç÷ÅõÀÇ ÀüÀå - µ¿ÂÊ)";
    AtlasLoot_TableNames["DMBooks"][1] = "Ç÷Àå Ã¥";
    --Dire Maul North
    AtlasLoot_TableNames["DMNGuardMoldar"][1] = "°æºñº´ ¸ô´Ù¸£";
    AtlasLoot_TableNames["DMNStomperKreeg"][1] = "ÃµµÕ¹ß Å©¸®±×";
    AtlasLoot_TableNames["DMNGuardFengus"][1] = "°æºñº´ Ææ±¸½º";
    AtlasLoot_TableNames["DMNThimblejack"][1] = "³ëÆ® ÆÀºíÁ§";
    AtlasLoot_TableNames["DMNGuardSlipkik"][1] = "°æºñº´ ½½¸³Å±";
    AtlasLoot_TableNames["DMNCaptainKromcrush"][1] = "´ëÀå Å©·ÒÅ©·¯½¬";
    AtlasLoot_TableNames["DMNKingGordok"][1] = "¿Õ °í¸£µ¶";
    AtlasLoot_TableNames["DMNChoRush"][1] = "Á¤Âûº´ ÃÊ·ç½¬";
    AtlasLoot_TableNames["DMNTRIBUTERUN"][1] = "°ø¹°ÇÔ";
    --Dire Maul West
    AtlasLoot_TableNames["DMWTendrisWarpwood"][1] = "±ÁÀÌ³ª¹« ÅÙµå¸®½º";
    AtlasLoot_TableNames["DMWIllyannaRavenoak"][1] = "ÀÏ¼¢³ª ·¹ÀÌºì¿ÀÅ©";
    AtlasLoot_TableNames["DMWMagisterKalendris"][1] = "¸¶¹ý»ç Ä®·»µå¸®½º";
    AtlasLoot_TableNames["DMWTsuzee"][1] = "ÃòÁö";
    AtlasLoot_TableNames["DMWImmolthar"][1] = "ÀÌ¸ôÅ¸¸£";
    AtlasLoot_TableNames["DMWHelnurath"][1] = "±ºÁÖ Çï´©¶ó½º";
    AtlasLoot_TableNames["DMWPrinceTortheldrin"][1] = "¿ÕÀÚ Åä¸£ÅÚµå¸°";
    AtlasLoot_TableNames["DMWTrash"][1] = "ÀÏ¹Ý¸÷ (Ç÷ÅõÀÇ ÀüÀå - ¼­ÂÊ)";
    --Gnomeregan
    AtlasLoot_TableNames["GnViscousFallout"][1] = "»ó»ç¼º Æó±â¹°";
    AtlasLoot_TableNames["GnGrubbis"][1] = "±×·çºñ½º";
    AtlasLoot_TableNames["GnElectrocutioner6000"][1] = "»ß±î»·Â½¼¼Ã´±â 6000";
    AtlasLoot_TableNames["GnMekgineerThermaplugg"][1] = "¸ß±â´Ï¾î ÅÚ¸¶ÇÃ·¯±×";
    AtlasLoot_TableNames["GnDIAmbassador"][1] = "°ËÀº¹«¼è´Ü »çÀý";
    AtlasLoot_TableNames["GnCrowdPummeler960"][1] = "°íÃ¶¾ÐÃà±â 9-60";
    AtlasLoot_TableNames["GnTrash"][1] = "ÀÏ¹Ý¸÷ (³ð¸®°Ç)";
    --Gruul's Lair
    AtlasLoot_TableNames["GruulsLairHighKingMaulgar"][1] = "¿ÕÁß¿Õ ¸¶¿ï°¡¸£";
    AtlasLoot_TableNames["GruulGruul"][1] = "¿ë ÇÐ»ìÀÚ ±×·ê";
    --HC: Blood Furnace
    AtlasLoot_TableNames["HCFurnaceMaker"][1] = "Àç¾ÓÀÇ Ã¢Á¶ÀÚ";
    AtlasLoot_TableNames["HCFurnaceMakerHEROIC"][1] = "Àç¾ÓÀÇ Ã¢Á¶ÀÚ (¿µ¿õ)";
    AtlasLoot_TableNames["HCFurnaceBroggok"][1] = "ºê·Î°íÅ©";
    AtlasLoot_TableNames["HCFurnaceBroggokHEROIC"][1] = "ºê·Î°íÅ© (¿µ¿õ)";
    AtlasLoot_TableNames["HCFurnaceBreaker"][1] = "ÆÄ±«ÀÚ ÄÌ¸®´Ü";
    AtlasLoot_TableNames["HCFurnaceBreakerHEROIC"][1] = "ÆÄ±«ÀÚ ÄÌ¸®´Ü (¿µ¿õ)";
    --HC: Magtheridon's Lair
    AtlasLoot_TableNames["HCMagtheridon"][1] = "¸¶±×Å×¸®µ·";
    --HC: Ramparts
    AtlasLoot_TableNames["HCRampWatchkeeper"][1] = "°¨½ÃÀÚ °¡¸£°ñ¸¶¸£";
    AtlasLoot_TableNames["HCRampWatchkeeperHEROIC"][1] = "°¨½ÃÀÚ °¡¸£°ñ¸¶¸£ (¿µ¿õ)";
    AtlasLoot_TableNames["HCRampOmor"][1] = "¹«ÀûÀÇ ¿À¸ð¸£";
    AtlasLoot_TableNames["HCRampOmorHEROIC"][1] = "¹«ÀûÀÇ ¿À¸ð¸£ (¿µ¿õ)";
    AtlasLoot_TableNames["HCRampVazruden"][1] = "¹ÙÁî·çµ§";
    AtlasLoot_TableNames["HCRampNazan"][1] = "³ªÀÜ";
    AtlasLoot_TableNames["HCRampFelIronChest"][1] = "Reinforced Fel Iron Chest";
    AtlasLoot_TableNames["HCRampFelIronChestHEROIC"][1] = "Reinforced Fel Iron Chest (¿µ¿õ)";
    --HC: Shattered Halls
    AtlasLoot_TableNames["HCHallsNethekurse"][1] = "´ëÈæ¸¶¹ý»ç ³×´õÄí¸£½º";
    AtlasLoot_TableNames["HCHallsNethekurseHEROIC"][1] = "´ëÈæ¸¶¹ý»ç ³×´õÄí¸£½º (¿µ¿õ)";
    AtlasLoot_TableNames["HCHallsPorung"][1] = "Ç÷Åõ»ç Æ÷·î";
    AtlasLoot_TableNames["HCHallsOmrogg"][1] = "µ¹°Ý´ëÀå ¿À¹Ç·Î±×";
    AtlasLoot_TableNames["HCHallsOmroggHEROIC"][1] = "µ¹°Ý´ëÀå ¿À¹Ç·Î±× (¿µ¿õ)";
    AtlasLoot_TableNames["HCHallsKargath"][1] = "´ëÁ·Àå Ä«¸£°¡½º ºí·¹ÀÌµåÇÇ½ºÆ®";
    AtlasLoot_TableNames["HCHallsKargathHEROIC"][1] = "´ëÁ·Àå Ä«¸£°¡½º ºí·¹ÀÌµåÇÇ½ºÆ® (¿µ¿õ)";
    AtlasLoot_TableNames["HCHallsTrash"][1] = "ÀÏ¹Ý¸÷ (À¸½º·¯Áø ¼ÕÀÇ Àü´ç)";
    --Karazhan
    AtlasLoot_TableNames["KaraAttumen"][1] = "»ç³É²Û ¾îÆ©¸à";
    AtlasLoot_TableNames["KaraNamed"][1] = "·»´ý µ¿¹° º¸½º";
    AtlasLoot_TableNames["KaraMoroes"][1] = "¸ð·Î½º";
    AtlasLoot_TableNames["KaraMaiden"][1] = "°í°áÀÇ ¿©½Å";
    AtlasLoot_TableNames["KaraOperaEvent"][1] = "¿ÀÆä¶ó ±ØÀå ÀÌº¥Æ®";
    AtlasLoot_TableNames["KaraCurator"][1] = "Àü½Ã °ü¸®ÀÎ";
    AtlasLoot_TableNames["KaraIllhoof"][1] = "Å×·¹½ºÆ¼¾È ÀÏÈÄÇÁ";
    AtlasLoot_TableNames["KaraAran"][1] = "¾Æ¶õÀÇ ¸Á·É";
    AtlasLoot_TableNames["KaraNetherspite"][1] = "È²ÃµÀÇ ¿ø·É";
    AtlasLoot_TableNames["KaraNightbane"][1] = "ÆÄ¸êÀÇ ¾îµÒ";
    AtlasLoot_TableNames["KaraChess"][1] = "Ã¼½º ÀÌº¥Æ®";
    AtlasLoot_TableNames["KaraPrince"][1] = "°øÀÛ ¸»Ã¼ÀÚ¸£";
    AtlasLoot_TableNames["KaraTrash"][1] = "ÀÏ¹Ý¸÷ (Ä«¶óÀÜ)";
    --Maraudon
    AtlasLoot_TableNames["MaraNoxxion"][1] = "³ì½Ã¿Â";
    AtlasLoot_TableNames["MaraRazorlash"][1] = "Ä®³¯Ã¤Âï";
    AtlasLoot_TableNames["MaraLordVyletongue"][1] = "±ºÁÖ ¹ÙÀÏÅÖ";
    AtlasLoot_TableNames["MaraMeshlok"][1] = "Á¤¿ø»ç ¸Þ½½·ÎÅ©";
    AtlasLoot_TableNames["MaraCelebras"][1] = "ÀúÁÖ¹ÞÀº ¼¿·¹ºê¶ó½º";
    AtlasLoot_TableNames["MaraLandslide"][1] = "»ê»çÅÂ";
    AtlasLoot_TableNames["MaraTinkererGizlock"][1] = "¶«ÀåÀÌ ±âÁñ·Ï";
    AtlasLoot_TableNames["MaraRotgrip"][1] = "½âÀº ¾Æ±Í";
    AtlasLoot_TableNames["MaraPrincessTheradras"][1] = "°øÁÖ Å×¶óµå¶ó½º";
    --Molten Core
    AtlasLoot_TableNames["MCLucifron"][1] = "·ç½ÃÇÁ·Ð";
    AtlasLoot_TableNames["MCMagmadar"][1] = "¸¶±×¸¶´Ù¸£";
    AtlasLoot_TableNames["MCGehennas"][1] = "°ÔÇî³ª½º";
    AtlasLoot_TableNames["MCGarr"][1] = "°¡¸£";
    AtlasLoot_TableNames["MCShazzrah"][1] = "»þÁî¶ó";
    AtlasLoot_TableNames["MCGeddon"][1] = "³²ÀÛ °Ôµ·";
    AtlasLoot_TableNames["MCGolemagg"][1] = "ÃÊ¿­ÀÇ °ñ·¹¸¶±×";
    AtlasLoot_TableNames["MCSulfuron"][1] = "¼³ÆÛ·Ð »çÀÚ";
    AtlasLoot_TableNames["MCMajordomo"][1] = "Ã»Áö±â ÀÌ±×Á§Å¥Åõ½º";
    AtlasLoot_TableNames["MCRagnaros"][1] = "¶ó±×³ª·Î½º";
    AtlasLoot_TableNames["MCTrashMobs"][1] = "ÀÏ¹Ý¸÷";
    AtlasLoot_TableNames["MCRANDOMBOSSDROPPS"][1] = "·»´ý º¸½º ·çÆÃ";
    --Naxxramas
    AtlasLoot_TableNames["NAXPatchwerk"][1] = "ÆÐÄ¡¿öÅ©";
    AtlasLoot_TableNames["NAXGrobbulus"][1] = "±×¶óºÒ·ç½º";
    AtlasLoot_TableNames["NAXGluth"][1] = "±Û·ç½º";
    AtlasLoot_TableNames["NAXThaddius"][1] = "Å¸µð¿ì½º";
    AtlasLoot_TableNames["NAXAnubRekhan"][1] = "¾Æ´¯·¹Ä­";
    AtlasLoot_TableNames["NAXGrandWidowFaerlina"][1] = "¿©±ºÁÖ Æç¸®³ª";
    AtlasLoot_TableNames["NAXMaexxna"][1] = "¸Æ½º³ª";
    AtlasLoot_TableNames["NAXInstructorRazuvious"][1] = "ÈÆ·Ã±³°ü ¶óÁÖºñ¾î½º";
    AtlasLoot_TableNames["NAXGothikderHarvester"][1] = "¿µÈ¥ÀÇ ÂøÃëÀÚ °íµñ";
    AtlasLoot_TableNames["NAXTheFourHorsemen"][1] = "4¸íÀÇ ±â»ç´Ü";
    AtlasLoot_TableNames["NAXNothderPlaguebringer"][1] = "¿ªº´¼ú»ç ³ë½º";
    AtlasLoot_TableNames["NAXHeiganderUnclean"][1] = "ºÎÁ¤ÀÇ ÇìÀÌ°Ç";
    AtlasLoot_TableNames["NAXLoatheb"][1] = "·Îµ¥ºê";
    AtlasLoot_TableNames["NAXSapphiron"][1] = "»çÇÇ·Ð";
    AtlasLoot_TableNames["NAXKelThuzard"][1] = "ÄÌÅõÀÚµå";
    AtlasLoot_TableNames["NAXTrash"][1] = "ÀÏ¹Ý¸÷ (³«½º¶ó¸¶½º)";
    --Onyxia's Lair
    AtlasLoot_TableNames["Onyxia"][1] = "¿À´Ð½Ã¾Æ";
    --Ragefire Chasm
    AtlasLoot_TableNames["RFCTaragaman"][1] = "¿ë¸ÁÀÇ Å¸¶ó°¡¸¸";
    AtlasLoot_TableNames["RFCJergosh"][1] = "±â¿ø»ç Á¦·Î½¬";
    --Razorfen Downs
    AtlasLoot_TableNames["RFDTutenkash"][1] = "°Å¹Ì¿Õ ÅõÅÙÄ«½¬";
    AtlasLoot_TableNames["RFDHenryStern"][1] = "Çî¸® ½ºÅÏ";
    AtlasLoot_TableNames["RFDMordreshFireEye"][1] = "ºÒ²É´« ¸ðµå·¹½¬";
    AtlasLoot_TableNames["RFDGlutton"][1] = "°³°É¸Ôº¸";
    AtlasLoot_TableNames["RFDRagglesnout"][1] = "³Ê´úÁÖµÕÀÌ";
    AtlasLoot_TableNames["RFDAmnennar"][1] = "ÈæÇÑÀÇ ¾Ï³×³ª¸£";
    AtlasLoot_TableNames["RFDPlaguemaw"][1] = "½â¾î°¡´Â ¿ªº´¾Æ±Í";
    AtlasLoot_TableNames["RFDTrash"][1] = "ÀÏ¹Ý¸÷ (°¡½Ãµ¢Äð ±¸¸ª)";
    --Razorfen Kraul
    AtlasLoot_TableNames["RFKThorncurse"][1] = "ÀúÁÖÀÇ°¡½Ã ¾Æ°×";
    AtlasLoot_TableNames["RFKDeathSpeakerJargba"][1] = "Á×À½ÀÇ ¿¹¾ðÀÚ Àß±×¹Ù";
    AtlasLoot_TableNames["RFKOverlordRamtusk"][1] = "´ë±ºÁÖ ·¥ÅÍ½ºÅ©";
    AtlasLoot_TableNames["RFKAgathelos"][1] = "ÈäÆ÷ÇÑ ¾Æ°¡Å×·Î½º";
    AtlasLoot_TableNames["RFKBlindHunter"][1] = "Àå´Ô »ç³É²Û";
    AtlasLoot_TableNames["RFKCharlgaRazorflank"][1] = "¼­½½±ê Â÷¸¦°¡";
    AtlasLoot_TableNames["RFKEarthcallerHalmgar"][1] = "´ëÁö¼ú»ç ÇÔ°¡¸£";
    AtlasLoot_TableNames["RFKTrash"][1] = "ÀÏ¹Ý¸÷ (°¡½Ãµ¢Äð ¿ì¸®)";
    --The Ruins of Ahn'Qiraj
    AtlasLoot_TableNames["AQ20Kurinnaxx"][1] = "Äí¸°³«½º";
    AtlasLoot_TableNames["AQ20Andorov"][1] = "»ç·É°ü ¾Èµµ·Îºê";
    AtlasLoot_TableNames["AQ20CAPTIAN"][1] = "¶óÀÛ½ºÀÇ Àå±ºµé";
    AtlasLoot_TableNames["AQ20Rajaxx"][1] = "Àå±º ¶óÀÛ½º";
    AtlasLoot_TableNames["AQ20Moam"][1] = "¸ð¾Ï";
    AtlasLoot_TableNames["AQ20Buru"][1] = "¸Ôº¸ ºÎ·ç";
    AtlasLoot_TableNames["AQ20Ayamiss"][1] = "»ç³É²Û ¾Æ¾ß¹Ì½º";
    AtlasLoot_TableNames["AQ20Ossirian"][1] = "¹«ÀûÀÇ ¿À½Ã¸®¾È";
    AtlasLoot_TableNames["AQ20ClassBooks"][1] =  "Á÷¾÷ Ã¥";
    AtlasLoot_TableNames["AQEnchants"][1] = "¾ÈÄû¶óÁî ¸¶¹ýºÎ¿©";
    --Scarlet Monestery - Armory
    AtlasLoot_TableNames["SMHerod"][1] = "Çì·Îµå";
    AtlasLoot_TableNames["SMTrash"][1] = "ÀÏ¹Ý¸÷ (ºÓÀº½ÊÀÚ±º)";
    --Scarlet Monestery - Cathedral
    AtlasLoot_TableNames["SMFairbanks"][1] = "Á¾±³ÀçÆÇ°ü ÆÐ¾î¹ðÅ©½º";
    AtlasLoot_TableNames["SMMograine"][1] = "ºÓÀº½ÊÀÚ±º »ç·É°ü ¸ð±×·¹ÀÎ";
    AtlasLoot_TableNames["SMWhitemane"][1] = "Á¾±³ÀçÆÇ°ü È­ÀÌÆ®¸ÞÀÎ";
    --Scarlet Monestery - Graveyard
    AtlasLoot_TableNames["SMVishas"][1] = "½É¹®°ü ºñ»þ½º";
    AtlasLoot_TableNames["SMIronspine"][1] = "¹«¼èÇØ°ñ";
    AtlasLoot_TableNames["SMAzshir"][1] = "ÀáµéÁö ¾Ê´Â ¾ÆÁî½¬¸£";
    AtlasLoot_TableNames["SMFallenChampion"][1] = "Å¸¶ôÇÑ ¿ë»ç";
    AtlasLoot_TableNames["SMBloodmageThalnos"][1] = "Ç÷¹ý»ç Å»³ë½º";
    --Scarlet Monestery - Library
    AtlasLoot_TableNames["SMHoundmasterLoksey"][1] = "»ç³É°³Á¶·Ã»ç ·Ï½Ã";
    AtlasLoot_TableNames["SMDoan"][1] = "½Åºñ¼ú»ç µµ¾È";
    --Scholomance
    AtlasLoot_TableNames["SCHOLOKirtonostheHerald"][1] = "»çÀÚ Å°¸£Åä³ë½º";
    AtlasLoot_TableNames["SCHOLOJandiceBarov"][1] = "ÀÜ´ÙÀÌ½º ¹Ù·Îºê";
    AtlasLoot_TableNames["SCHOLORattlegore"][1] = "µéÃ¢¾î±Ý´Ï";
    AtlasLoot_TableNames["SCHOLODeathKnight"][1] = "Á×À½ÀÇ ±â»ç ´ÙÅ©¸®¹ö";
    AtlasLoot_TableNames["SCHOLOMarduk"][1] = "¸¶¸£µÎÅ© ºí·¢Ç®";
    AtlasLoot_TableNames["SCHOLOVectus"][1] = "º¤Åõ½º";
    AtlasLoot_TableNames["SCHOLORasFrostwhisper"][1] = "¶ó½º ÇÁ·Î½ºÆ®À§½ºÆÛ";
    AtlasLoot_TableNames["SCHOLOKormok"][1] = "ÄÚ¸£¸ðÅ©";
    AtlasLoot_TableNames["SCHOLOInstructorMalicia"][1] = "Á¶±³ ¸»¸®½Ã¾Æ";
    AtlasLoot_TableNames["SCHOLODoctorTheolenKrastinov"][1] = "ÇÐÀÚ Å×¿Ã·» Å©¸®½ºÆ¼³ëºê";
    AtlasLoot_TableNames["SCHOLOLorekeeperPolkelt"][1] = "ÇöÀÚ ÆúÄËÆ®";
    AtlasLoot_TableNames["SCHOLOTheRavenian"][1] = "¶óº£´Ï¾È";
    AtlasLoot_TableNames["SCHOLOLordAlexeiBarov"][1] = "±ºÁÖ ¾Ë·º¼¼ÀÌ ¹Ù·Îºê";
    AtlasLoot_TableNames["SCHOLOLadyIlluciaBarov"][1] = "¿©±ºÁÖ ÀÏ·ç½Ã¾Æ ¹Ù·Îºê";
    AtlasLoot_TableNames["SCHOLODarkmasterGandling"][1] = "¾ÏÈæ½º½Â °£µé¸µ";
    AtlasLoot_TableNames["SCHOLOTrash"][1] = "ÀÏ¹Ý¸÷ (½ºÄ®·Î¸Ç½º)";
    --Shadowfang Keep
    AtlasLoot_TableNames["BSFRazorclawtheButcher"][1] = "µµ»ìÀÚ Ä®³¯¹ßÅé";
    AtlasLoot_TableNames["BSFSilverlaine"][1] = "³²ÀÛ ½Ç¹ö·¹ÀÎ";
    AtlasLoot_TableNames["BSFSpringvale"][1] = "»ç·É°ü ½ºÇÁ¸µº£ÀÏ";
    AtlasLoot_TableNames["BSFOdotheBlindwatcher"][1] = "´«¸Õ °¨½ÃÀÚ ¿Àµµ";
    AtlasLoot_TableNames["BSFFenrustheDevourer"][1] = "ÆÄ¸êÀÇ Ææ·ç½º";
    AtlasLoot_TableNames["BSFWolfMasterNandos"][1] = "´Á´ë¿Õ ³­µµ½º";
    AtlasLoot_TableNames["BSFArchmageArugal"][1] = "´ë¸¶¹ý»ç ¾Æ·ç°¥";
    AtlasLoot_TableNames["BSFTrash"][1] = "ÀÏ¹Ý¸÷ (±×¸²ÀÚ¼Û°÷´Ï ¼ºÃ¤)";
    --The Stockade
    AtlasLoot_TableNames["SWStTargor"][1] = "Èä¾Ç¹ü Å¸°í¸£";
    AtlasLoot_TableNames["SWStKamDeepfury"][1] = "Ä¯ µöÇ»¸®";
    AtlasLoot_TableNames["SWStBazilThredd"][1] = "¹ÙÁú ½º·¹µå";
    AtlasLoot_TableNames["SWStDextrenWard"][1] = "µ¦½ºÆ®·» ¿öµå";
    AtlasLoot_TableNames["SWStBruegalIronknuckle"][1] = "ºê·ç°¥ ¾ÆÀÌ¾ð³ÊÅ¬";
    --Stratholme
    AtlasLoot_TableNames["STRATSkull"][1] = "½ºÄÃ";
    AtlasLoot_TableNames["STRATStratholmeCourier"][1] = "¿ìÃ¼Åë ¿­¼è";
    AtlasLoot_TableNames["STRATFrasSiabi"][1] = "ÇÁ¶ó½º »þºñ";
    AtlasLoot_TableNames["STRATHearthsingerForresten"][1] = "ÇÏ½º½Ì¾î Æ÷·¹½ºÅÏ";
    AtlasLoot_TableNames["STRATTheUnforgiven"][1] = "¿ë¼­¹ÞÁö ¸øÇÑ ÀÚ";
    AtlasLoot_TableNames["STRATTimmytheCruel"][1] = "ÀÜÈ¤ÇÑ Æ¼¹Ì";
    AtlasLoot_TableNames["STRATCannonMasterWilley"][1] = "Æ÷º´´ëÀå Àª¸®";
    AtlasLoot_TableNames["STRATArchivistGalford"][1] = "±â·Ï°ü °¥Æ÷µå";
    AtlasLoot_TableNames["STRATBalnazzar"][1] = "¹ß³ªÀÚ¸£";
    AtlasLoot_TableNames["STRATSothosJarien"][1] = "¼Òµµ½º, ÀÚ¸®¿£";
    AtlasLoot_TableNames["STRATStonespine"][1] = "»ÏÁ·¹ÙÀ§";
    AtlasLoot_TableNames["STRATBaronessAnastari"][1] = "³²ÀÛºÎÀÎ ¾Æ³ª½ºÅ¸¸®";
    AtlasLoot_TableNames["STRATNerubenkan"][1] = "³×·ì¿£Ä­";
    AtlasLoot_TableNames["STRATMalekithePallid"][1] = "³ÃÇ÷ÇÑ ¸»·¹Å°";
    AtlasLoot_TableNames["STRATMagistrateBarthilas"][1] = "ÁýÁ¤°ü ¹Ù½Ç¶ó½º";
    AtlasLoot_TableNames["STRATRamsteintheGorger"][1] = "¸Ôº¸ ¶÷½ºÅ¸ÀÎ";
    AtlasLoot_TableNames["STRATBaronRivendare"][1] = "³²ÀÛ ¸®ºìµ¥¾î";
    AtlasLoot_TableNames["STRATTrash"][1] = "ÀÏ¹Ý¸÷ (½ºÆ®¶ó¼Ö¸§)";
    --Sunken Temple
    AtlasLoot_TableNames["STTrollMinibosses"][1] = "°á°è ¼öÈ£ÀÚ";
    AtlasLoot_TableNames["STAtalalarion"][1] = "¾ÆÅ»¾Ë¶ó¸®¿Â";
    AtlasLoot_TableNames["STDreamscythe"][1] = "µå¸²»çÀÌµå";
    AtlasLoot_TableNames["STWeaver"][1] = "À§¹ö";
    AtlasLoot_TableNames["STAvatarofHakkar"][1] = "ÇÐÄ«¸£ÀÇ È­½Å";
    AtlasLoot_TableNames["STJammalan"][1] = "¿¹¾ðÀÚ Àá¸»¶õ";
    AtlasLoot_TableNames["STOgom"][1] = "ºñ¿îÀÇ ¿À±×¿È";
    AtlasLoot_TableNames["STMorphaz"][1] = "¸ôÆÄÁî";
    AtlasLoot_TableNames["STHazzas"][1] = "ÇÏÀÚ½º";
    AtlasLoot_TableNames["STEranikus"][1] = "¿¡¶ó´ÏÄí½ºÀÇ »ç·É";
    AtlasLoot_TableNames["STTrash"][1] = "ÀÏ¹Ý¸÷ (¾ÆÅ»ÇÐÄ«¸£ ½ÅÀü)";
    --Sunwell Isle: Magister's Terrace
    AtlasLoot_TableNames["SMTFireheart"][1] = "Selin Fireheart";
    AtlasLoot_TableNames["SMTFireheartHEROIC"][1] = "Selin Fireheart (Heroic)";
	AtlasLoot_TableNames["SMTVexallus"][1] = "Vexallus";
    AtlasLoot_TableNames["SMTVexallusHEROIC"][1] = "Vexallus (Heroic)";
    AtlasLoot_TableNames["SMTDelrissa"][1] = "Priestess Delrissa";
    AtlasLoot_TableNames["SMTDelrissaHEROIC"][1] = "Priestess Delrissa (Heroic)";
    AtlasLoot_TableNames["SMTKaelthas"][1] = "Kael'thas Sunstrider";
    AtlasLoot_TableNames["SMTKaelthasHEROIC"][1] = "Kael'thas Sunstrider (Heroic)";
    AtlasLoot_TableNames["SMTTrash"][1] = "Trash Mobs (Magister's Terrace)";
  --Sunwell Plateau
    AtlasLoot_TableNames["SPKalecgos"][1] = "Kalecgos";
    AtlasLoot_TableNames["SPBrutallus"][1] = "Brutallus";
    AtlasLoot_TableNames["SPFelmyst"][1] = "Felmyst";
    AtlasLoot_TableNames["SPEredarTwins"][1] = "Eredar Twins";
    AtlasLoot_TableNames["SPMuru"][1] = "M'uru";
    AtlasLoot_TableNames["SPKiljaeden"][1] = "Kil'jaden";
    AtlasLoot_TableNames["SPTrash"][1] = "Trash Mobs (Sunwell Plateau)";
    --Temple of Ahn'Qiraj
    AtlasLoot_TableNames["AQ40Skeram"][1] = "¿¹¾ðÀÚ ½ºÄÉ¶÷";
    AtlasLoot_TableNames["AQ40Vem"][1] = "Å©¸®/¾ß¿ìÁî/º¨";
    AtlasLoot_TableNames["AQ40Sartura"][1] = "ÀüÅõ°¨½Ãº´ »ìÅõ¶ó";
    AtlasLoot_TableNames["AQ40Fankriss"][1] = "ºÒ±¼ÀÇ ÆÇÅ©¸®½º";
    AtlasLoot_TableNames["AQ40Viscidus"][1] = "ºñ½Ãµð¿ì½º";
    AtlasLoot_TableNames["AQ40Huhuran"][1] = "°øÁÖ ÈÄÈÄ¶õ";
    AtlasLoot_TableNames["AQ40Emperors"][1] = "½ÖµÕÀÌ È²Á¦";
    AtlasLoot_TableNames["AQ40Ouro"][1] = "¾Æ¿ì·Î";
    AtlasLoot_TableNames["AQ40CThun"][1] = "¾§ÀÇ ´«";
    AtlasLoot_TableNames["AQ40Trash1"][1] = "ÀÏ¹Ý¸÷ (¾ÈÄû¶óÁî »ç¿ø)";
    AtlasLoot_TableNames["AQOpening"][1] = "¾ÈÄû¶óÁî ¿ÀÇÁ´× ¿¬Äù";
    --TK: The Arcatraz
    AtlasLoot_TableNames["TKArcUnbound"][1] = "¼Ó¹ÚÀÌ Ç®¸° Á¦·¹ÄÉ½º";
    AtlasLoot_TableNames["TKArcUnboundHEROIC"][1] = "¼Ó¹ÚÀÌ Ç®¸° Á¦·¹ÄÉ½º (¿µ¿õ)";
    AtlasLoot_TableNames["TKArcScryer"][1] = "°Ý³ëÀÇ Á¡¼ú»ç ¼ÒÄÚµå¶óÅ×½º";
    AtlasLoot_TableNames["TKArcScryerHEROIC"][1] = "°Ý³ëÀÇ Á¡¼ú»ç ¼ÒÄÚµå¶óÅ×½º (¿µ¿õ)";
    AtlasLoot_TableNames["TKArcDalliah"][1] = "ÆÄ¸êÀÇ ¿¹¾ðÀÚ ´Þ¸®¾Æ";
    AtlasLoot_TableNames["TKArcDalliahHEROIC"][1] = "ÆÄ¸êÀÇ ¿¹¾ðÀÚ ´Þ¸®¾Æ (¿µ¿õ)";
    AtlasLoot_TableNames["TKArcHarbinger"][1] = "¼±±¸ÀÚ ½ºÅ°¸®½º";
    AtlasLoot_TableNames["TKArcHarbingerHEROIC"][1] = "¼±±¸ÀÚ ½ºÅ°¸®½º (¿µ¿õ)";
    AtlasLoot_TableNames["TKArcTrash"][1] = "ÀÏ¹Ý¸÷ (¾ËÄ«Æ®¶óÁî)";
    --TK: The Botanica
    AtlasLoot_TableNames["TKBotSarannis"][1] = "ÁöÈÖ°ü »õ·¡´Ï½º";
    AtlasLoot_TableNames["TKBotSarannisHEROIC"][1] = "ÁöÈÖ°ü »õ·¡´Ï½º (¿µ¿õ)";
    AtlasLoot_TableNames["TKBotFreywinn"][1] = "°íÀ§ ½Ä¹°ÇÐÀÚ ÇÁ·¹ÀÌÀ©´À";
    AtlasLoot_TableNames["TKBotFreywinnHEROIC"][1] = "°íÀ§ ½Ä¹°ÇÐÀÚ ÇÁ·¹ÀÌÀ© (¿µ¿õ)";
    AtlasLoot_TableNames["TKBotThorngrin"][1] = "°¨½ÃÀÎ ½ð±×¸°";
    AtlasLoot_TableNames["TKBotThorngrinHEROIC"][1] = "°¨½ÃÀÎ ½ð±× (¿µ¿õ)";
    AtlasLoot_TableNames["TKBotLaj"][1] = "¶óÁî";
    AtlasLoot_TableNames["TKBotLajHEROIC"][1] = "¶óÁî (¿µ¿õ)";
    AtlasLoot_TableNames["TKBotSplinter"][1] = "Â÷¿øÀÇ ºÐ¸®ÀÚ";
    AtlasLoot_TableNames["TKBotSplinterHEROIC"][1] = "Â÷¿øÀÇ ºÐ¸®ÀÚ (¿µ¿õ)";
    AtlasLoot_TableNames["TKBotTrash"][1] = "ÀÏ¹Ý¸÷ (½Å·ÏÀÇ Á¤¿ø)";
    --TK: The Eye
    AtlasLoot_TableNames["TKEyeAlar"][1] = "ºÒ»çÁ¶ÀÇ ½Å ¾Ë¾Æ¸£";
    AtlasLoot_TableNames["TKEyeVoidReaver"][1] = "°øÇãÀÇ Àý´Ü±â";
    AtlasLoot_TableNames["TKEyeSolarian"][1] = "°íÀ§ È²Ãµ¼ú»ç ¼Ö¶ó¸®¾È";
    AtlasLoot_TableNames["TKEyeKaelthas"][1] = "Ä¶Å¸½º ¼±½ºÆ®¶óÀÌ´õ";
    AtlasLoot_TableNames["TKEyeTrash"][1] = "ÀÏ¹Ý¸÷ (Ç«Ç³ÀÇ ¿ä»õ)";
    --TK: The Mechanar
    AtlasLoot_TableNames["TKMechGyro"][1] = "¹®Áö±â È¸ÀüÅé³¯";
    AtlasLoot_TableNames["TKMechIron"][1] = "¹®Áö±â ¹«¼èÁÖ¸Ô";
    AtlasLoot_TableNames["TKMechCacheoftheLegion"][1] = "±º´Ü ÀúÀå°í";
    AtlasLoot_TableNames["TKMechCapacitus"][1] = "±â°è±ºÁÖ Ä³ÆÛ½ÃÅõ½º";
    AtlasLoot_TableNames["TKMechCapacitusHEROIC"][1] = "±â°è±ºÁÖ Ä³ÆÛ½ÃÅõ½º (¿µ¿õ)";
    AtlasLoot_TableNames["TKMechSepethrea"][1] = "È²Ãµ¼ú»ç ¼¼Æä½º·¹¾Æ";
    AtlasLoot_TableNames["TKMechSepethreaHEROIC"][1] = "È²Ãµ¼ú»ç ¼¼Æä½º·¹¾Æ (¿µ¿õ)";
    AtlasLoot_TableNames["TKMechCalc"][1] = "Ã¶µÎÃ¶¹ÌÇÑ ÆÄÅ»¸®¿Â";
    AtlasLoot_TableNames["TKMechCalcHEROIC"][1] = "Ã¶µÎÃ¶¹ÌÇÑ ÆÄÅ»¸®¿Â (¿µ¿õ)";
    AtlasLoot_TableNames["TKMechTrash"][1] = "ÀÏ¹Ý¸÷ (¸ÞÄ«³ª¸£)";
    --Uldaman
    AtlasLoot_TableNames["UldRevelosh"][1] = "º§·Î±×";
    AtlasLoot_TableNames["UldIronaya"][1] = "¾ÆÀÌ·Î³ª¾ß";
    AtlasLoot_TableNames["UldAncientStoneKeeper"][1] = "°í´ë ¹ÙÀ§ ¹®Áö±â";
    AtlasLoot_TableNames["UldGalgannFirehammer"][1] = "°¥°£ ÆÄÀÌ¾îÇØ¸Ó";
    AtlasLoot_TableNames["UldGrimlok"][1] = "±×¸²·ÎÅ©";
    AtlasLoot_TableNames["UldArchaedas"][1] = "¾ÆÄ«¿¡´Ù½º";
    AtlasLoot_TableNames["UldTrash"][1] = "ÀÏ¹Ý¸÷ (¿ï´Ù¸¸)";
    --Wailing Caverns
    AtlasLoot_TableNames["WCLordCobrahn"][1] = "±ºÁÖ ÄÚºê¶õ";
    AtlasLoot_TableNames["WCLadyAnacondra"][1] = "¿©±ºÁÖ ¾Æ³ªÄÜµå¶ó";
    AtlasLoot_TableNames["WCKresh"][1] = "Å©·¹½¬";
    AtlasLoot_TableNames["WCLordPythas"][1] = "±ºÁÖ ÇÇÅ¸½º";
    AtlasLoot_TableNames["WCSkum"][1] = "½ºÄñ";
    AtlasLoot_TableNames["WCLordSerpentis"][1] = "±ºÁÖ ¼­ÆæÆ¼½º";
    AtlasLoot_TableNames["WCVerdan"][1] = "¿µ»ýÀÇ º£¸£´Ü";
    AtlasLoot_TableNames["WCMutanus"][1] = "°É½Åµé¸° ¹«Å¸´©½º";
    AtlasLoot_TableNames["WCDeviateFaerieDragon"][1] = "µ¹¿¬º¯ÀÌ ¿äÁ¤¿ë";
    --Zul'Farrak
    AtlasLoot_TableNames["ZFAntusul"][1] = "¾ÆÅõ¼ú";
    AtlasLoot_TableNames["ZFThekatheMartyr"] = { "Theka the Martyr", "AtlasLootItems" };
    AtlasLoot_TableNames["ZFWitchDoctorZumrah"][1] = "¼ø±³ÀÚ ÁÜ¶ó";
    AtlasLoot_TableNames["ZFNekrumGutchewer"] = { "Nekrum Gutchewer", "AtlasLootItems" };
    AtlasLoot_TableNames["ZFSezzziz"][1] = "¾îµÒÀÇ »çÁ¦ ¼¼Áî½ÃÁî";
    AtlasLoot_TableNames["ZFDustwraith"][1] = "´õ½ºÆ®·¹ÀÌ½º";
    AtlasLoot_TableNames["ZFSergeantBly"] = { "Sergeant Bly", "AtlasLootItems" };
    AtlasLoot_TableNames["ZFSandfury"][1] = "¼º³­¸ð·¡ºÎÁ· »çÇüÁýÇàÀÎ";
    AtlasLoot_TableNames["ZFHydromancerVelratha"] = { "Hydromancer Velratha", "AtlasLootItems" };
    AtlasLoot_TableNames["ZFGahzrilla"][1] = "°¡Áî¸±¶ó";
    AtlasLoot_TableNames["ZFChiefUkorzSandscalp"][1] = "Á·Àå ¿ìÄÚ¸£Áî »÷µå½ºÄ®ÇÁ";
    AtlasLoot_TableNames["ZFZerillis"][1] = "Á©¸®¸®½º";
    AtlasLoot_TableNames["ZFTrash"][1] = "ÀÏ¹Ý¸÷ (ÁÙÆÄ¶ô)";
    --Zul'Gurub
    AtlasLoot_TableNames["ZGJeklik"][1] = "´ë¿©»çÁ¦ Á¦Å¬¸¯";
    AtlasLoot_TableNames["ZGVenoxis"][1] = "´ë»çÁ¦ º£³ì½Ã½º";
    AtlasLoot_TableNames["ZGMarli"][1] = "´ë¿©»çÁ¦ ¸»¸®";
    AtlasLoot_TableNames["ZGMandokir"][1] = "Ç÷±ºÁÖ ¸¸µµÅ°¸£";
    AtlasLoot_TableNames["ZGGrilek"][1] = "Ã¶Ç÷ÀÇ ±×¸®·º";
    AtlasLoot_TableNames["ZGHazzarah"][1] = "¸ù¼ú»ç ÇÏÀÚ¶ó";
    AtlasLoot_TableNames["ZGRenataki"][1] = "Ãµ°ËÀÇ ·¹³ªÅ¸Å°";
    AtlasLoot_TableNames["ZGWushoolay"][1] = "ÆøÇ³¸¶³à ¿ì½¶·¹ÀÌ";
    AtlasLoot_TableNames["ZGGahzranka"][1] = "°¡Áî¶õÄ«";
    AtlasLoot_TableNames["ZGThekal"][1] = "´ë»çÁ¦ µ¥Ä®";
    AtlasLoot_TableNames["ZGArlokk"][1] = "´ë¿©»çÁ¦ ¾Ë·ÎÅ©";
    AtlasLoot_TableNames["ZGJindo"][1] = "ÁÖ¼ú»ç Áøµµ";
    AtlasLoot_TableNames["ZGHakkar"][1] = "ÇÐÄ«¸£";
    AtlasLoot_TableNames["ZGShared"][1] = "ÁÙ±¸·ì »çÁ¦ µå¶ø(°øÀ¯)";
    AtlasLoot_TableNames["ZGTrash1"][1] = "ÀÏ¹Ý¸÷ (ÁÙ±¸·ì)";
    AtlasLoot_TableNames["ZGTrash2"][1] = "ÀÏ¹Ý¸÷ (ÁÙ±¸·ì)";
    AtlasLoot_TableNames["ZGEnchants"][1] = "ÁÙ±¸·ì ¸¶¹ýºÎ¿©";
    --Arena PvP Sets, Season 1
    AtlasLoot_TableNames["ArenaDruid"][1] = "µå·çÀÌµå ÀüÀå ¼¼Æ®";
    AtlasLoot_TableNames["ArenaHunter"][1] = "»ç³É²Û ÀüÀå ¼¼Æ®";
    AtlasLoot_TableNames["ArenaMage"][1] = "¸¶¹ý»ç ÀüÀå ¼¼Æ®";
    AtlasLoot_TableNames["ArenaPaladin"][1] = "¼º±â»ç ÀüÀå ¼¼Æ®";
    AtlasLoot_TableNames["ArenaPriest"][1] = "»çÁ¦ ÀüÀå ¼¼Æ®";
    AtlasLoot_TableNames["ArenaRogue"][1] = "µµÀû ÀüÀå ¼¼Æ®";
    AtlasLoot_TableNames["ArenaShaman"][1] = "ÁÖ¼ú»ç ÀüÀå ¼¼Æ®";
    AtlasLoot_TableNames["ArenaWarlock"][1] = "Èæ¸¶¹ý»ç ÀüÀå ¼¼Æ®";
    AtlasLoot_TableNames["ArenaWarrior"][1] = "Àü»ç ÀüÀå ¼¼Æ®";
    --Arena PvP Sets, Season 2
    AtlasLoot_TableNames["Arena2Druid"][1] = "µå·çÀÌµå ÀüÀå ¼¼Æ®";
    AtlasLoot_TableNames["Arena2Hunter"][1] = "»ç³É²Û ÀüÀå ¼¼Æ®";
    AtlasLoot_TableNames["Arena2Mage"][1] = "¸¶¹ý»ç ÀüÀå ¼¼Æ®";
    AtlasLoot_TableNames["Arena2Paladin"][1] = "¼º±â»ç ÀüÀå ¼¼Æ®";
    AtlasLoot_TableNames["Arena2Priest"][1] = "»çÁ¦ ÀüÀå ¼¼Æ®";
    AtlasLoot_TableNames["Arena2Rogue"][1] = "µµÀû ÀüÀå ¼¼Æ®";
    AtlasLoot_TableNames["Arena2Shaman"][1] = "ÁÖ¼ú»ç ÀüÀå ¼¼Æ®";
    AtlasLoot_TableNames["Arena2Warlock"][1] = "Èæ¸¶¹ý»ç ÀüÀå ¼¼Æ®";
    AtlasLoot_TableNames["Arena2Warrior"][1] = "Àü»ç ÀüÀå ¼¼Æ®";
   --Arena PvP Sets, Season 3
    AtlasLoot_TableNames["Arena3Druid"][1] = "µå·çÀÌµå ÀüÀå ¼¼Æ®";
    AtlasLoot_TableNames["Arena3Hunter"][1] = "»ç³É²Û ÀüÀå ¼¼Æ®";
    AtlasLoot_TableNames["Arena3Mage"][1] = "¸¶¹ý»ç ÀüÀå ¼¼Æ®";
    AtlasLoot_TableNames["Arena3Paladin"][1] = "¼º±â»ç ÀüÀå ¼¼Æ®";
    AtlasLoot_TableNames["Arena3Priest"][1] = "»çÁ¦ ÀüÀå ¼¼Æ®";
    AtlasLoot_TableNames["Arena3Rogue"][1] = "µµÀû ÀüÀå ¼¼Æ®";
    AtlasLoot_TableNames["Arena3Shaman"][1] = "ÁÖ¼ú»ç ÀüÀå ¼¼Æ®";
    AtlasLoot_TableNames["Arena3Warlock"][1] = "Èæ¸¶¹ý»ç ÀüÀå ¼¼Æ®";
    AtlasLoot_TableNames["Arena3Warrior"][1] = "Àü»ç ÀüÀå ¼¼Æ®";
   --Arena PvP Sets, Season 4
    AtlasLoot_TableNames["Arena4Druid"][1] = "µå·çÀÌµå ÀüÀå ¼¼Æ®";
    AtlasLoot_TableNames["Arena4Hunter"][1] = "»ç³É²Û ÀüÀå ¼¼Æ®";
    AtlasLoot_TableNames["Arena4Mage"][1] = "¸¶¹ý»ç ÀüÀå ¼¼Æ®";
    AtlasLoot_TableNames["Arena4Paladin"][1] = "¼º±â»ç ÀüÀå ¼¼Æ®";
    AtlasLoot_TableNames["Arena4Priest"][1] = "»çÁ¦ ÀüÀå ¼¼Æ®";
    AtlasLoot_TableNames["Arena4Rogue"][1] = "µµÀû ÀüÀå ¼¼Æ®";
    AtlasLoot_TableNames["Arena4Shaman"][1] = "ÁÖ¼ú»ç ÀüÀå ¼¼Æ®";
    AtlasLoot_TableNames["Arena4Warlock"][1] = "Èæ¸¶¹ý»ç ÀüÀå ¼¼Æ®";
    AtlasLoot_TableNames["Arena4Warrior"][1] = "Àü»ç ÀüÀå ¼¼Æ®";
    --Level 60 PvP Sets
    AtlasLoot_TableNames["PVPDruid"][1] = "µå·çÀÌµå PvP ¼¼Æ® (Lvl 60)";
    AtlasLoot_TableNames["PVPHunter"][1] = "»ç³É²Û PvP ¼¼Æ® (Lvl 60)";
    AtlasLoot_TableNames["PVPMage"][1] = "¸¶¹ý»ç PvP ¼¼Æ® (Lvl 60)";
    AtlasLoot_TableNames["PVPPaladin"][1] = "¼º±â»ç PvP ¼¼Æ® (Lvl 60)";
    AtlasLoot_TableNames["PVPPriest"][1] = "»çÁ¦ PvP ¼¼Æ® (Lvl 60)";
    AtlasLoot_TableNames["PVPRogue"][1] = "µµÀû PvP ¼¼Æ® (Lvl 60)";
    AtlasLoot_TableNames["PVPShaman"][1] = "ÁÖ¼ú»ç PvP ¼¼Æ® (Lvl 60)";
    AtlasLoot_TableNames["PVPWarlock"][1] = "Èæ¸¶¹ý»ç PvP ¼¼Æ® (Lvl 60)";
    AtlasLoot_TableNames["PVPWarrior"][1] = "Àü»ç PvP ¼¼Æ® (Lvl 60)";
    --Level 70 PvP Sets
    AtlasLoot_TableNames["PVP70Druid1"][1] = "µå·çÀÌµå PvP ¼¼Æ® (Lvl 70)";
    AtlasLoot_TableNames["PVP70Druid2"][1] = "µå·çÀÌµå PvP ¼¼Æ® (Lvl 70)";
    AtlasLoot_TableNames["PVP70Hunter"][1] = "»ç³É²Û PvP ¼¼Æ® (Lvl 70)";
    AtlasLoot_TableNames["PVP70Mage"][1] = "¸¶¹ý»ç PvP ¼¼Æ® (Lvl 70)";
    AtlasLoot_TableNames["PVP70Paladin1"][1] = "¼º±â»ç PvP ¼¼Æ® (Lvl 70)";
    AtlasLoot_TableNames["PVP70Paladin2"][1] = "¼º±â»ç PvP ¼¼Æ® (Lvl 70)";
    AtlasLoot_TableNames["PVP70Priest"][1] = "»çÁ¦ PvP ¼¼Æ® (Lvl 70)";
    AtlasLoot_TableNames["PVP70Rogue"][1] = "µµÀû PvP ¼¼Æ® (Lvl 70)";
    AtlasLoot_TableNames["PVP70Shaman1"][1] = "ÁÖ¼ú»ç PvP ¼¼Æ® (Lvl 70)";
    AtlasLoot_TableNames["PVP70Shaman2"][1] = "ÁÖ¼ú»ç PvP ¼¼Æ® (Lvl 70)";
    AtlasLoot_TableNames["PVP70Warlock"][1] = "Èæ¸¶¹ý»ç PvP ¼¼Æ® (Lvl 70)";
    AtlasLoot_TableNames["PVP70Warrior"][1] = "Àü»ç PvP ¼¼Æ® (Lvl 70)";
    --¾ÈÄû¶óÁî »ç¿ø ¼¼Æ®
    AtlasLoot_TableNames["AQ40Druid"][1] = "µå·çÀÌµå ¾ÈÄû¶óÁî »ç¿ø ¼¼Æ®";
    AtlasLoot_TableNames["AQ40Hunter"][1] = "»ç³É²Û ¾ÈÄû¶óÁî »ç¿ø ¼¼Æ®";
    AtlasLoot_TableNames["AQ40Mage"][1] = "¸¶¹ý»ç ¾ÈÄû¶óÁî »ç¿ø ¼¼Æ®";
    AtlasLoot_TableNames["AQ40Paladin"][1] = "¼º±â»ç ¾ÈÄû¶óÁî »ç¿ø ¼¼Æ®";
    AtlasLoot_TableNames["AQ40Priest"][1] = "»çÁ¦ ¾ÈÄû¶óÁî »ç¿ø ¼¼Æ®";
    AtlasLoot_TableNames["AQ40Rogue"][1] = "µµÀû ¾ÈÄû¶óÁî »ç¿ø ¼¼Æ®";
    AtlasLoot_TableNames["AQ40Shaman"][1] = "ÁÖ¼ú»ç ¾ÈÄû¶óÁî »ç¿ø ¼¼Æ®";
    AtlasLoot_TableNames["AQ40Warlock"][1] = "Èæ¸¶¹ý»ç ¾ÈÄû¶óÁî »ç¿ø ¼¼Æ®";
    AtlasLoot_TableNames["AQ40Warrior"][1] = "Àü»ç ¾ÈÄû¶óÁî »ç¿ø ¼¼Æ®";
    --¾ÈÄû¶óÁî »ç¿ø ¼¼Æ®
    AtlasLoot_TableNames["AQ40Druid"][1] = "µå·çÀÌµå ¾ÈÄû¶óÁî »ç¿ø ¼¼Æ®";
    AtlasLoot_TableNames["AQ40Hunter"][1] = "»ç³É²Û ¾ÈÄû¶óÁî »ç¿ø ¼¼Æ®";
    AtlasLoot_TableNames["AQ40Mage"][1] = "¸¶¹ý»ç ¾ÈÄû¶óÁî »ç¿ø ¼¼Æ®";
    AtlasLoot_TableNames["AQ40Paladin"][1] = "¼º±â»ç ¾ÈÄû¶óÁî »ç¿ø ¼¼Æ®";
    AtlasLoot_TableNames["AQ40Priest"][1] = "»çÁ¦ ¾ÈÄû¶óÁî »ç¿ø ¼¼Æ®";
    AtlasLoot_TableNames["AQ40Rogue"][1] = "µµÀû ¾ÈÄû¶óÁî »ç¿ø ¼¼Æ®";
    AtlasLoot_TableNames["AQ40Shaman"][1] = "ÁÖ¼ú»ç ¾ÈÄû¶óÁî »ç¿ø ¼¼Æ®";
    AtlasLoot_TableNames["AQ40Warlock"][1] = "Èæ¸¶¹ý»ç ¾ÈÄû¶óÁî »ç¿ø ¼¼Æ®";
    AtlasLoot_TableNames["AQ40Warrior"][1] = "Àü»ç ¾ÈÄû¶óÁî »ç¿ø ¼¼Æ®";
    --Vanilla WoW Sets ¼¼Æ®
    AtlasLoot_TableNames["VWOWDeadmines"][1] = "µ¥ÇÇ¾ÆÁî´Ü";
    AtlasLoot_TableNames["VWOWWailingC"][1] = "µ¶»çÀÇ ÀºÃÑ";
    AtlasLoot_TableNames["VWOWScarletM"][1] = "ºÓÀº½ÊÀÚ±º";
    AtlasLoot_TableNames["VWOWBlackrockD"][1] = "°ËÅõ»ç";
    AtlasLoot_TableNames["VWOWIronweave"][1] = "°­Ã¶¸Åµì ÀüÅõÀåºñ";
    AtlasLoot_TableNames["VWOWScholoCloth"][1] = "½ÃÃ¼´õ¹Ì ÀÇº¹";
    AtlasLoot_TableNames["VWOWScholoLeather"][1] = "½ÃÃ¼ ¼öÀÇ";
    AtlasLoot_TableNames["VWOWScholoMail"][1] = "ÇÇ°í¸® Á¦º¹";
    AtlasLoot_TableNames["VWOWScholoPlate"][1] = "Á×À½ÀÇ »À°©¿Ê";
    AtlasLoot_TableNames["VWOWStrat"][1] = "¿ìÃ¼±¹Àå";
    AtlasLoot_TableNames["VWOWScourgeInvasion"][1] = "½ºÄÃÁö Ä§°ø";
    AtlasLoot_TableNames["VWOWShardOfGods"][1] = "½ÅÀÇ ÆÄÆí";
    AtlasLoot_TableNames["VWOWZGRings"][1] = "ÁÙ±¸·ì ¹ÝÁö";
    AtlasLoot_TableNames["VWOWSpiritofEskhandar"][1] = "¿¡½ºÄ­´Ù¸£ÀÇ ¿µÈ¥";
    AtlasLoot_TableNames["VWOWHakkariBlades"][1] = "ÇÐÄ«¸® ½Ö°Ë";
    AtlasLoot_TableNames["VWOWPrimalBlessing"][1] = "¿ø½Ã Ãàº¹";
    AtlasLoot_TableNames["VWOWDalRend"][1] = "´Þ·»µåÀÇ ¹«±â";
    AtlasLoot_TableNames["VWOWSpiderKiss"][1] = "°Å¹ÌÀÇ ÀÔ¸¶Ãã";
    --The Burning Crusade Sets ¼¼Æ®
    AtlasLoot_TableNames["TBCTwinStars"][1] = "½ÖµÕÀÌ º°";
    AtlasLoot_TableNames["TBCAzzinothBlades"][1] = "¾ÆÁö³ë½ºÀÇ ½Ö³¯°Ë";
    --Crafted ¼¼Æ® - Blacksmithing
    AtlasLoot_TableNames["ImperialPlate"][1] = "È²Á¦ÀÇ °©¿Ê";
    AtlasLoot_TableNames["TheDarksoul"][1] = "°ËÀº ¿µÈ¥ÀÇ ¼Õ¾Æ±Í";
    AtlasLoot_TableNames["FelIronPlate"][1] = "Áö¿Á¹«¼è ÆÇ±Ý ¹æ¾î±¸";
    AtlasLoot_TableNames["AdamantiteB"][1] = "¾Æ´Ù¸¸´ÙÀÌÆ® ÀüÅõÀåºñ";
    AtlasLoot_TableNames["FlameG"][1] = "È­¿°ÀÇ ¼öÈ£";
    AtlasLoot_TableNames["EnchantedAdaman"][1] = "¸¶·Â ±êµç ¾Æ´Ù¸¸´ÙÀÌÆ® °©¿Ê";
    AtlasLoot_TableNames["KhoriumWard"][1] = "ÄÚ·ý ¹æ¾î±¸";
    AtlasLoot_TableNames["FaithFelsteel"][1] = "Áö¿Á°­Ã¶ ÀüÅõÀåºñ";
    AtlasLoot_TableNames["BurningRage"][1] = "ºÒÅ¸´Â ºÐ³ë";
    AtlasLoot_TableNames["BloodsoulEmbrace"][1] = "ºÓÀº¿µÈ¥ÀÇ ¼Õ¾Æ±Í";
    AtlasLoot_TableNames["FelIronChain"][1] = "Áö¿Á¹«¼è »ç½½ ¹æ¾î±¸";
    --Crafted ¼¼Æ® - Tailoring
    AtlasLoot_TableNames["BloodvineG"][1] = "ºÓÀºµ¢±¼ ÀÇº¹";
    AtlasLoot_TableNames["NeatherVest"][1] = "È²Ãµ¸Åµì Á¦º¹";
    AtlasLoot_TableNames["ImbuedNeather"][1] = "¸¶·Â ±êµç È²Ãµ¸Åµì Á¦º¹";
    AtlasLoot_TableNames["ArcanoVest"][1] = "ºñÀü¸Åµì ÀÇº¹";
    AtlasLoot_TableNames["TheUnyielding"][1] = "ºÒ±¼ÀÇ ¹æ¾î±¸";
    AtlasLoot_TableNames["WhitemendWis"][1] = "¹é¸¶¹ýÀÇ ÁöÇý";
    AtlasLoot_TableNames["SpellstrikeInfu"][1] = "¸¶¹ý °­Å¸ÀÇ ¸¶·Â";
    AtlasLoot_TableNames["BattlecastG"][1] = "ÀüÅõ½ÃÀü¼ú ÀÇº¹";
    AtlasLoot_TableNames["SoulclothEm"][1] = "¿µÈ¥¸Åµì ¿¹º¹";
    AtlasLoot_TableNames["PrimalMoon"][1] = "ÅÂÃÊÀÇ ´Þºû¸Åµì ÀÇº¹";
    AtlasLoot_TableNames["ShadowEmbrace"][1] = "¾îµÒÀÇ ÀºÃÑ";
    AtlasLoot_TableNames["SpellfireWrath"][1] = "¸¶¹ýºÒ²ÉÀÇ °Ý³ë";
    --Crafted Sets - Leatherworking
    AtlasLoot_TableNames["VolcanicArmor"][1] = "È­»ê °©¿Ê";
    AtlasLoot_TableNames["IronfeatherArmor"][1] = "¹«¼è±êÅÐ °©¿Ê";
    AtlasLoot_TableNames["StormshroudArmor"][1] = "ÆøÇ³¾È°³ °©¿Ê";
    AtlasLoot_TableNames["DevilsaurArmor"][1] = "µ¥ºô»ç¿ì·ç½º °©¿Ê";
    AtlasLoot_TableNames["BloodTigerH"][1] = "ºÓÀºÈ£¶ûÀÌ ¹æ¾î±¸";
    AtlasLoot_TableNames["PrimalBatskin"][1] = "¿ø½Ã ¹ÚÁã°¡Á×";
    AtlasLoot_TableNames["WildDraenishA"][1] = "¾ß»ýÀÇ µå·¹³ªÀÌ ¹æ¾î±¸";
    AtlasLoot_TableNames["ThickDraenicA"][1] = "µÎ²¨¿î µå·¹³ªÀÌ ¹æ¾î±¸";
    AtlasLoot_TableNames["FelSkin"][1] = "Áö¿Á °¡Á× ¹æ¾î±¸";
    AtlasLoot_TableNames["SClefthoof"][1] = "°¥·¡¹ß±ÁÀÇ Èû";
    AtlasLoot_TableNames["GreenDragonM"][1] = "³ì»ö¿ë ¼è»ç½½ °©¿Ê";
    AtlasLoot_TableNames["BlueDragonM"][1] = "Çª¸¥¿ë ¼è»ç½½ °©¿Ê";
    AtlasLoot_TableNames["BlackDragonM"][1] = "°ËÀº¿ë ¼è»ç½½ °©¿Ê";
    AtlasLoot_TableNames["ScaledDraenicA"][1] = "µå·¹³ªÀÌ ¹Ì´Ã °©¿Ê";
    AtlasLoot_TableNames["FelscaleArmor"][1] = "Áö¿Á²®Áú °©¿Ê";
    AtlasLoot_TableNames["FelstalkerArmor"][1] = "Áö¿ÁÃßÀûÀÚ °©¿Ê";
    AtlasLoot_TableNames["NetherFury"][1] = "È²ÃµÀÇ °Ý³ë";
    AtlasLoot_TableNames["PrimalIntent"][1] = "¿ø¼Ò½û±â °©¿Ê";
    AtlasLoot_TableNames["WindhawkArmor"][1] = "¹Ù¶÷¸Å °©¿Ê";
    AtlasLoot_TableNames["NetherscaleArmor"][1] = "È²Ãµºñ´Ã °©¿Ê";
    AtlasLoot_TableNames["NetherstrikeArmor"][1] = "È²Ãµ½û±â °©¿Ê";
    --ZG Sets
    AtlasLoot_TableNames["ZGDruid"][1] = "µå·çÀÌµå ÁÙ±¸·ì ¼¼Æ®";
    AtlasLoot_TableNames["ZGHunter"][1] = "»ç³É²Û ÁÙ±¸·ì ¼¼Æ®";
    AtlasLoot_TableNames["ZGMage"][1] = "¸¶¹ý»ç ÁÙ±¸·ì ¼¼Æ®";
    AtlasLoot_TableNames["ZGPaladin"][1] = "¼º±â»ç ÁÙ±¸·ì ¼¼Æ®";
    AtlasLoot_TableNames["ZGPriest"][1] = "»çÁ¦ ÁÙ±¸·ì ¼¼Æ®";
    AtlasLoot_TableNames["ZGRogue"][1] = "µµÀû ÁÙ±¸·ì ¼¼Æ®";
    AtlasLoot_TableNames["ZGShaman"][1] = "ÁÖ¼ú»ç ÁÙ±¸·ì ¼¼Æ®";
    AtlasLoot_TableNames["ZGWarlock"][1] = "Èæ¸¶¹ý»ç ÁÙ±¸·ì ¼¼Æ®";
    AtlasLoot_TableNames["ZGWarrior"][1] = "Àü»ç ÁÙ±¸·ì ¼¼Æ®";
    --´øÀü ¼¼Æ® 1/2
    AtlasLoot_TableNames["T0Druid"][1] = "µå·çÀÌµå ´øÀü ¼¼Æ® 1/2";
    AtlasLoot_TableNames["T0Hunter"][1] = "»ç³É²Û ´øÀü ¼¼Æ® 1/2";
    AtlasLoot_TableNames["T0Mage"][1] = "¸¶¹ý»ç ´øÀü ¼¼Æ® 1/2";
    AtlasLoot_TableNames["T0Paladin"][1] = "¼º±â»ç ´øÀü ¼¼Æ® 1/2";
    AtlasLoot_TableNames["T0Priest"][1] = "»çÁ¦ ´øÀü ¼¼Æ® 1/2";
    AtlasLoot_TableNames["T0Rogue"][1] = "µµÀû ´øÀü ¼¼Æ® 1/2";
    AtlasLoot_TableNames["T0Shaman"][1] = "ÁÖ¼ú»ç ´øÀü ¼¼Æ® 1/2";
    AtlasLoot_TableNames["T0Warlock"][1] = "Èæ¸¶¹ý»ç ´øÀü ¼¼Æ® 1/2";
    AtlasLoot_TableNames["T0Warrior"][1] = "Àü»ç ´øÀü ¼¼Æ® 1/2";
    --T3 Sets
    AtlasLoot_TableNames["T3Druid"][1] = "µå·çÀÌµå T3 ¼¼Æ®";
    AtlasLoot_TableNames["T3Hunter"][1] = "»ç³É²Û T3 ¼¼Æ®";
    AtlasLoot_TableNames["T3Mage"][1] = "¸¶¹ý»ç T3 ¼¼Æ®";
    AtlasLoot_TableNames["T3Paladin"][1] = "¼º±â»ç T3 ¼¼Æ®";
    AtlasLoot_TableNames["T3Priest"][1] = "»çÁ¦ T3 ¼¼Æ®";
    AtlasLoot_TableNames["T3Rogue"][1] = "µµÀû T3 ¼¼Æ®";
    AtlasLoot_TableNames["T3Shaman"][1] = "ÁÖ¼ú»ç T3 ¼¼Æ®";
    AtlasLoot_TableNames["T3Warlock"][1] = "Èæ¸¶¹ý»ç T3 ¼¼Æ®";
    AtlasLoot_TableNames["T3Warrior"][1] = "Àü»ç T3 ¼¼Æ®";
    --T4 Sets
    AtlasLoot_TableNames["T4Druid"][1] = "µå·çÀÌµå T4 ¼¼Æ®";
    AtlasLoot_TableNames["T4Hunter"][1] = "»ç³É²Û T4 ¼¼Æ®";
    AtlasLoot_TableNames["T4Mage"][1] = "¸¶¹ý»ç T4 ¼¼Æ®";
    AtlasLoot_TableNames["T4Paladin"][1] = "¼º±â»ç T4 ¼¼Æ®";
    AtlasLoot_TableNames["T4Priest"][1] = "»çÁ¦ T4 ¼¼Æ®";
    AtlasLoot_TableNames["T4Rogue"][1] = "µµÀû T4 ¼¼Æ®";
    AtlasLoot_TableNames["T4Shaman"][1] = "ÁÖ¼ú»ç T4 ¼¼Æ®";
    AtlasLoot_TableNames["T4Warlock"][1] = "Èæ¸¶¹ý»ç T4 ¼¼Æ®";
    AtlasLoot_TableNames["T4Warrior"][1] = "Àü»ç T4 ¼¼Æ®";
    --T5 Sets
    AtlasLoot_TableNames["T5Druid"][1] = "µå·çÀÌµå T5 ¼¼Æ®";
    AtlasLoot_TableNames["T5Hunter"][1] = "»ç³É²Û T5 ¼¼Æ®";
    AtlasLoot_TableNames["T5Mage"][1] = "¸¶¹ý»ç T5 ¼¼Æ®";
    AtlasLoot_TableNames["T5Paladin"][1] = "¼º±â»ç T5 ¼¼Æ®";
    AtlasLoot_TableNames["T5Priest"][1] = "»çÁ¦ T5 ¼¼Æ®";
    AtlasLoot_TableNames["T5Rogue"][1] = "µµÀû T5 ¼¼Æ®";
    AtlasLoot_TableNames["T5Shaman"][1] = "ÁÖ¼ú»ç T5 ¼¼Æ®";
    AtlasLoot_TableNames["T5Warlock"][1] = "Èæ¸¶¹ý»ç T5 ¼¼Æ®";
    AtlasLoot_TableNames["T5Warrior"][1] = "Àü»ç T5 ¼¼Æ®";
    --T6 Sets
    AtlasLoot_TableNames["T6Druid"][1] = "µå·çÀÌµå T6 ¼¼Æ®";
	AtlasLoot_TableNames["T6Druid2"][1] = "µå·çÀÌµå T6 ¼¼Æ®";
    AtlasLoot_TableNames["T6Hunter"][1] = "»ç³É²Û T6 ¼¼Æ®";
    AtlasLoot_TableNames["T6Mage"][1] = "¸¶¹ý»ç T6 ¼¼Æ®";
    AtlasLoot_TableNames["T6Paladin"][1] = "¼º±â»ç T6 ¼¼Æ®";
	AtlasLoot_TableNames["T6Paladin2"][1] = "¼º±â»ç T6 ¼¼Æ®";
    AtlasLoot_TableNames["T6Priest"][1] = "»çÁ¦ T6 ¼¼Æ®";
    AtlasLoot_TableNames["T6Rogue"][1] = "µµÀû T6 ¼¼Æ®";
    AtlasLoot_TableNames["T6Shaman"][1] = "ÁÖ¼ú»ç T6 ¼¼Æ®";
	AtlasLoot_TableNames["T6Shaman2"][1] = "ÁÖ¼ú»ç T6 ¼¼Æ®";
    AtlasLoot_TableNames["T6Warlock"][1] = "Èæ¸¶¹ý»ç T6 ¼¼Æ®";
    AtlasLoot_TableNames["T6Warrior"][1] = "Àü»ç T6 ¼¼Æ®";
    --Misc Sets
    AtlasLoot_TableNames["Legendaries"][1] = "Àü¼³±Þ ¾ÆÀÌÅÛ";
    AtlasLoot_TableNames["RareMounts1"][1] = "Rare Mounts - Original WoW";
    AtlasLoot_TableNames["RareMounts2"][1] = "Rare Mounts - The Burning Crusade";
    AtlasLoot_TableNames["Tabards1"][1] = "°Ñ¿Ê";
    AtlasLoot_TableNames["Tabards2"][1] = "°Ñ¿Ê";
    AtlasLoot_TableNames["CraftedWeapons1"][1] = "Á¦ÀÛµÈ ¿µ¿õ ¹«±â";
    AtlasLoot_TableNames["CraftedWeapons2"][1] = "Á¦ÀÛµÈ ¿µ¿õ ¹«±â";
    --Azuregos
    AtlasLoot_TableNames["AAzuregos"][1] = "¾ÆÁÖ¾î°í½º";
    --Doom Lord Kazzak
    AtlasLoot_TableNames["DoomLordKazzak"][1] = "ÆÄ¸êÀÇ ±ºÁÖ Ä«ÀÚÅ©";
    --Doomwalker
    AtlasLoot_TableNames["DDoomwalker"][1] = "ÆÄ¸êÀÇ Àý´Ü±â";
    --Emeriss
    AtlasLoot_TableNames["DEmeriss"][1] = "¿¡¸Þ¸®½º";
    --Highlord Kruul
    AtlasLoot_TableNames["KKruul"][1] = "Highlord Kruul";
    --Lethon
    AtlasLoot_TableNames["DLethon"][1] = "·¹¼Õ";
    --Taerar
    AtlasLoot_TableNames["DTaerar"][1] = "Å¸¿¡¶ó";
    --Ysondre
    AtlasLoot_TableNames["DYsondre"][1] = "ÀÌ¼Õµå·¹";
    --Aldor
    AtlasLoot_TableNames["Aldor1"][1] = BabbleFaction["The Aldor"]..": Friendly/Honored";
    AtlasLoot_TableNames["Aldor2"][1] = BabbleFaction["The Aldor"]..": Revered/Exalted";
    --The Argent Dawn
    AtlasLoot_TableNames["Argent1"][1] = BabbleFaction["Argent Dawn"]..": Token Hand-ins";
    AtlasLoot_TableNames["Argent2"][1] = BabbleFaction["Argent Dawn"];
    --Ashtongue Deathsworn
    AtlasLoot_TableNames["Ashtongue1"][1] = BabbleFaction["Ashtongue Deathsworn"];
    AtlasLoot_TableNames["Ashtongue2"][1] = BabbleFaction["Ashtongue Deathsworn"];
    --The Bloodsail Buccaneers
    AtlasLoot_TableNames["Bloodsail1"][1] = BabbleFaction["Bloodsail Buccaneers"];
    --The Brood of Nozdormu
    AtlasLoot_TableNames["AQBroodRings"][1] = BabbleFaction["Brood of Nozdormu"];
    --The Cenarion Circle
    AtlasLoot_TableNames["Cenarion1"][1] = BabbleFaction["Cenarion Circle"]..": Friendly";
    AtlasLoot_TableNames["Cenarion2"][1] = BabbleFaction["Cenarion Circle"]..": Honored";
    AtlasLoot_TableNames["Cenarion3"][1] = BabbleFaction["Cenarion Circle"]..": Revered";
    AtlasLoot_TableNames["Cenarion4"][1] = BabbleFaction["Cenarion Circle"]..": Exalted";
    --The Cenarion Expedition
    AtlasLoot_TableNames["CExpedition1"][1] = BabbleFaction["Cenarion Expedition"]..": Friendly/Honored";
    AtlasLoot_TableNames["CExpedition2"][1] = BabbleFaction["Cenarion Expedition"]..": Revered/Exalted";
    --The Consortium
    AtlasLoot_TableNames["Consortium1"][1] = BabbleFaction["The Consortium"]..": Friendly/Honored";
    AtlasLoot_TableNames["Consortium2"][1] = BabbleFaction["The Consortium"]..": Revered/Exalted";
    --The Darkmoon Faire
    AtlasLoot_TableNames["Darkmoon1"][1] = BabbleFaction["Darkmoon Faire"];
    AtlasLoot_TableNames["Darkmoon2"][1] = "Darkmoon Faire - Trinkets";
    --The Frostwolf Clan
    AtlasLoot_TableNames["Frostwolf1"][1] = BabbleFaction["Frostwolf Clan"];
    --The Hydraxian Waterlords
    AtlasLoot_TableNames["WaterLords1"][1] = BabbleFaction["Hydraxian Waterlords"];
    --Honor Hold
    AtlasLoot_TableNames["HonorHold1"][1] = BabbleFaction["Honor Hold"]..": Friendly/Honored";
    AtlasLoot_TableNames["HonorHold2"][1] = BabbleFaction["Honor Hold"]..": Revered/Exalted";
    --The Keepers of Time
    AtlasLoot_TableNames["KeepersofTime1"][1] = BabbleFaction["Keepers of Time"];
    --The Kurenai
    AtlasLoot_TableNames["Kurenai1"][1] = BabbleFaction["Kurenai"];
    --Lower City
    AtlasLoot_TableNames["LowerCity1"][1] = BabbleFaction["Lower City"];
    --The Mag'har
    AtlasLoot_TableNames["Maghar1"][1] = BabbleFaction["The Mag'har"];
    --Netherwing
    AtlasLoot_TableNames["Netherwing1"][1] = BabbleFaction["Netherwing"];
    --Ogri'la
    AtlasLoot_TableNames["Ogrila1"][1] = BabbleFaction["Ogri'la"];
    --The Scale of the Sands
    AtlasLoot_TableNames["ScaleSands1"][1] = BabbleFaction["The Scale of the Sands"];
    AtlasLoot_TableNames["ScaleSands2"][1] = BabbleFaction["The Scale of the Sands"];
    --The Scryers
    AtlasLoot_TableNames["Scryer1"][1] = BabbleFaction["The Scryers"]..": Friendly/Honored";
    AtlasLoot_TableNames["Scryer2"][1] = BabbleFaction["The Scryers"]..": Revered/Exalted";
    --The Sha'tar
    AtlasLoot_TableNames["Shatar1"][1] = BabbleFaction["The Sha'tar"];
    --Sha'tari Skyguard
    AtlasLoot_TableNames["Skyguard1"][1] = BabbleFaction["Sha'tari Skyguard"];
    --The Sporeggar
    AtlasLoot_TableNames["Sporeggar1"][1] = BabbleFaction["Sporeggar"];
    --The Stormpike Guards
    AtlasLoot_TableNames["Stormpike1"][1] = BabbleFaction["Stormpike Guard"];
    --The Thorium Brotherhood
    AtlasLoot_TableNames["Thorium1"][1] = BabbleFaction["Thorium Brotherhood"]..": Friendly/Honored";
    AtlasLoot_TableNames["Thorium2"][1] = BabbleFaction["Thorium Brotherhood"]..": Revered/Exalted";
    --Thrallmar
    AtlasLoot_TableNames["Thrallmar1"][1] = BabbleFaction["Thrallmar"]..": Friendly/Honored";
    AtlasLoot_TableNames["Thrallmar2"][1] = BabbleFaction["Thrallmar"]..": Revered/Exalted";
    --Timbermaw Hold
    AtlasLoot_TableNames["Timbermaw"][1] = BabbleFaction["Timbermaw Hold"];
    --The Tranquillien
    AtlasLoot_TableNames["Tranquillien1"][1] = BabbleFaction["Tranquillien"];
    --The Violet Eye
    AtlasLoot_TableNames["VioletEye1"][1] = BabbleFaction["The Violet Eye"];
    --The Wintersaber Trainers
    AtlasLoot_TableNames["Wintersaber1"][1] = BabbleFaction["Wintersaber Trainers"];
    --The Zandalar Tribe
    AtlasLoot_TableNames["Zandalar1"][1] = BabbleFaction["Zandalar Tribe"]..": Friendly/Honored";
    AtlasLoot_TableNames["Zandalar2"][1] = BabbleFaction["Zandalar Tribe"]..": Revered/Exalted";
    --Battlegrounds
    AtlasLoot_TableNames["AVMisc"][1] = "¾ËÅÍ·º °è°î ";
    AtlasLoot_TableNames["AVBlue"][1] = "¾ËÅÍ·º Èñ±Í º¸»ó";
    AtlasLoot_TableNames["AVPurple"][1] = "¾ËÅÍ·º ¿µ¿õ º¸»ó";
    AtlasLoot_TableNames["ABMisc"][1] = "¾Æ¶ó½Ã ºÐÁö Àå½Å±¸·ù º¸»ó";
    AtlasLoot_TableNames["ABSets1"][1] = "¾Æ¶ó½Ã ºÐÁö ¹æ¾î±¸ ¼¼Æ® (Ãµ/°¡Á×)";
    AtlasLoot_TableNames["ABSets2"][1] = "¾Æ¶ó½Ã ºÐÁö ¹æ¾î±¸ ¼¼Æ® (»ç½½/ÆÇ±Ý)";
    AtlasLoot_TableNames["WSGMisc"][1] = "ÀüÀï ³ë·¡ Çù°î Àå½Å±¸·ù º¸»ó";
    --World PvP
    AtlasLoot_TableNames["Hellfire"][1] = "Áö¿ÁºÒ ¹Ýµµ: Áö¿ÁºÒ ¼ºÃ¤";
    AtlasLoot_TableNames["Nagrand1"][1] = "³ª±×¶õµå: ÇÒ¶ó¾Æ";
    AtlasLoot_TableNames["Nagrand2"][1] = "³ª±×¶õµå: ÇÒ¶ó¾Æ";
    AtlasLoot_TableNames["Terokkar"][1] = "Å×·ÎÄ«¸£ ½£: ¿µÈ¥ÀÇ Å¾";
    AtlasLoot_TableNames["Zangarmarsh"][1] = "Àå°¡¸£ ½ÀÁö´ë: ½ÖµÕÀÌ Ã·Å¾ ÆóÇã";
    --Misc Other PvP
    AtlasLoot_TableNames["PvP60Accessories1"][1] = "PvP Àå½Å±¸·ù (·¹º§ 60)";
    AtlasLoot_TableNames["PvP60Accessories2"][1] = "PvP Àå½Å±¸·ù (·¹º§ 60)";
    AtlasLoot_TableNames["PvP70Accessories1"][1] = "PvP Àå½Å±¸·ù (·¹º§ 70)";
    AtlasLoot_TableNames["PvP70Accessories2"][1] = "PvP Àå½Å±¸·ù (·¹º§ 70)";
    AtlasLoot_TableNames["PvP70NonSet1"][1] = "PvP Non-Set ¿µ¿õÅÛ: Àå½Å±¸·ù";
    AtlasLoot_TableNames["PvP70NonSet2"][1] = "PvP Non-Set ¿µ¿õÅÛ: Ãµ";
    AtlasLoot_TableNames["PvP70NonSet3"][1] = "PvP Non-Set ¿µ¿õÅÛ: °¡Á×";
    AtlasLoot_TableNames["PVPWeapons1"][1] = "·¹º§ 60 PvP ¹«±â";
    AtlasLoot_TableNames["PVPWeapons2"][1] = "·¹º§ 60 PvP ¹«±â";
    AtlasLoot_TableNames["PVP70Weapons1"][1] = "·¹º§ 70 PvP ¹«±â";
    AtlasLoot_TableNames["PVP70Weapons2"][1] = "·¹º§ 70 PvP ¹«±â";
    AtlasLoot_TableNames["Arena1Weapons1"][1] = "ÀüÀå ½ÃÁð 1 ¹«±â";
    AtlasLoot_TableNames["Arena2Weapons1"][1] = "ÀüÀå ½ÃÁð 2 ¹«±â";
    AtlasLoot_TableNames["Arena3Weapons1"][1] = "ÀüÀå ½ÃÁð 3 ¹«±â";
    AtlasLoot_TableNames["Arena3Weapons2"][1] = "ÀüÀå ½ÃÁð 3 ¹«±â";

end