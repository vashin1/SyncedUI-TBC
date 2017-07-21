﻿local AceLocale = LibStub:GetLibrary("AceLocale-3.0")
local L = AceLocale:NewLocale("Recount", "zhCN")
if not L then return end

	L["Profiles"] = "配置文件"
	L["GUI"] = "图形界面"
	L["gui"] = "gui"
	L["Open Ace3 Config GUI"] = "打开 Ace3 图形界面"
	L["Sync"] = "同步"
	L["sync"] = "sync"
	L["Toggles sending synchronization messages"] = "开启/关闭发送同步信息"
	L["Reset"] = "重置"
	L["reset"] = "reset"
	L["Resets the data"] = "重置统计数据"
	L["VerChk"] = "版本检查"
	L["verChk"] = "verChk"
	L["Displays the versions of players in the raid"] = "显示团队成员安装的 Recount 版本"
	L["Displaying Versions"] = "显示版本"
	L["Show"] = "显示"
	L["show"] = "show"
	L["Shows the main window"] = "显示主窗口"
	L["Hide"] = "隐藏"
	L["Hides the main window"] = "隐藏主窗口"
	L["Toggle"] = "开启/关闭"
	L["Toggles the main window"] = "开启/关闭主窗口显示"
	L["Report"] = "报告"
	L["Allows the data of a window to be reported"] = "发送统计数据的结果报告到指定的频道"
	L["Detail"] = "详细"
	L["Report the Detail Window Data"] = "发送详细的数据报告"
	L["Main"] = "主要"
	L["Report the Main Window Data"] = "只发送主窗口中显示的统计数据报告"
	L["Config"] = "设置"
	L["Shows the config window"] = "显示插件的设置窗口"
	L["ResetPos"] = "重置位置"
	L["Resets the positions of the detail, graph, and main windows"] = "恢复各个窗口的默认显示位置"
	L["Lock"] = "锁定"
	L["Toggles windows being locked"] = "开启/关闭窗口的显示位置锁定"
	L["|cffff4040Disabled|r"] = "|cffff4040禁用|r"
	L["|cff40ff40Enabled|r"] = "|cff40ff40启用|r"
	L["Unknown Spells"] = "未知法术"
	L["Shows found unknown spells in BabbleSpell"] = "显示 BabbleSpell 库中找到的未知法术"
	L["Unknown Spells:"] = "未知法术："
	L["Realtime"] = "实时曲线图"
	L["Specialized Realtime Graphs"] = "显示指定单位的实时统计曲线图"
	L["FPS"] = "FPS"
	L["Starts a realtime window tracking your FPS"] = "开启一个实时监控画面帧数的曲线图"
	L["Lag"] = "延时"
	L["Starts a realtime window tracking your latency"] = "开启一个实时监控网络延时的曲线图"
	L["Upstream Traffic"] = "上行传输"
	L["Starts a realtime window tracking your upstream traffic"] = "开启一个实时监控网络上行传输情况的曲线图"
	L["Downstream Traffic"] = "下行传输"
	L["Starts a realtime window tracking your downstream traffic"] = "开启一个实时监控网络下行传输情况的曲线图"
	L["Available Bandwidth"] = "可用带宽"
	L["Starts a realtime window tracking amount of available AceComm bandwidth left"] = "开启一个实时监控 AceComm 可用带宽情况的曲线图"
	L["Tracks your entire raid"] = "追踪团队整体状况的曲线图"
	L["DPS"] = "伤害/秒"
	L["Tracks Raid Damage Per Second"] = "开启一个实时监控团队整体每秒伤害输出量的曲线图"
	L["DTPS"] ="承受伤害/秒"
	L["Tracks Raid Damage Taken Per Second"] ="开启一个实时监控团队整体每秒伤害承受量的曲线图"
	L["HPS"] = "治疗/秒"
	L["Tracks Raid Healing Per Second"] = "开启一个实时监控团队整体每秒治疗输出量的曲线图"
	L["HTPS"] = "接受治疗/秒"
	L["Tracks Raid Healing Taken Per Second"] = "开启一个实时监控团队整体每秒治疗承受量的曲线图"
	L["Pet"] = "宠物"
	L["Mob"] = "怪物"
	L["Title"] = "标题"
	L["Background"] = "背景"
	L["Title Text"] = "标题文本"
	L["Bar Text"] = "计量条文本"
	L["Total Bar"] = "总量条"
	L["Show previous main page"] = "显示前一个主要页面"
	L["Show next main page"] = "显示下一个主要页面"
	L["Display"] = "显示"
	L["Damage Done"] = "伤害输出"
	L["Friendly Fire"] = "队友误伤"
	L["Damage Taken"] = "承受伤害"
	L["Healing Done"] = "治疗输出"
	L["Healing Taken"] = "获得治疗"
	L["Overhealing Done"] = "过量治疗输出"
	L["Deaths"] = "死亡"
	L["DOT Uptime"] = "DOT 持续时间"
	L["HOT Uptime"] = "HOT 持续时间"
	L["Dispels"] = "驱散"
	L["Dispelled"] = "被驱散"
	L["Interrupts"] = "打断施法"
	L["Ressers"] = "复活"
	L["CC Breakers"] = "打醒控制"
	L["Activity"] = "活跃度"
	L["Threat"] = "仇恨"
	L["Mana Gained"] = "法力获取"
	L["Energy Gained"] = "能量获取"
	L["Rage Gained"] = "怒气获取"
	L["Network Traffic(by Player)"] = "网络传输（玩家排列）"
	L["Network Traffic(by Prefix)"] = "网络传输（前缀排列）"
	L["Bar Color Selection"] = "计量条颜色"
	L["Class Colors"] = "职业颜色"
	L["Reset Colors"] = "重置颜色"
	L["Is this shown in the main window?"] = "是否在主窗口已显示？"
	L["Record Data"] = "记录数据"
	L["Whether data is recorded for this type"] = "该类型的数据是否已经被记录"
	L["Record Time Data"] = "记录时间数据"
	L["Whether time data is recorded for this type (used for graphs can be a |cffff2020memory hog|r if you are concerned about memory)"] = "该类型的时间数据是否已经被记录（用于图表上会|cffff2020占用极大的内存|r，如果你比较在意内存占用的话）"
	L["Record Deaths"] = "记录死亡"
	L["Records when deaths occur and the past few actions involving this type"] = "记录该类型死亡何时发生的以及死亡前的部分动作"
	L["Record Buffs/Debuffs"] = "记录增益效果/负面影响"
	L["Records the times and applications of buff/debuffs on this type"] = "记录该类型增益效果/负面影响的应用以及时间的数据"
	L["Filters"] = "过滤器"
	L["Players"] = "玩家"
	L["Self"] = "自己"
	L["Grouped"] = "已组队"
	L["Ungrouped"] = "未组队"
	L["Pets"] = "宠物"
	L["Mobs"] = "怪物"
	L["Trivial"] = "无价值"
	L["Non-Trivial"] = "有价值"
	L["Bosses"] = "首领"
	L["Unknown"] = "未知"
	L["Bar Selection"] = "选择样式"
	L["Font Selection"] = "选择字体"
	L["General Window Options"] = "一般窗口选项"
	L["Reset Positions"] = "重置位置"
	L["Window Scaling"] = "窗口缩放"
	L["Data Deletion"] = "数据删除"
	L["Instance Based Deletion"] = "副本相关的删除"
	L["Group Based Deletion"] = "组队相关的删除"
	L["Global Realtime Windows"] = "全局实时窗口"
	L["Network"] = "网络"
	L["Latency"] = "延迟"
	L["Up Traffic"] = "上传流量"
	L["Down Traffic"] = "下载流量"
	L["Bandwidth"] = "带宽"
	L["Recount Version"] = "Recount 版本"
	L["Check Versions"] = "检查版本"
	L["Data Options"] = "数据选项"
	L["Combat Log Range"] = "战斗日志范围"
	L["Yds"] = "码"
	L["Fix Ambiguous Log Strings"] = "修正模糊日志"
	L["Merge Pets w/ Owners"] = "将宠物和主人合并"
	L["Main Window Options"] = "主窗口选项"
	L["Show Buttons"] = "显示按钮"
	L["File"] = "文件"
	L["Previous"] = "上一个"
	L["Next"] = "下一个"
	L["Row Height"] = "行高"
	L["Row Spacing"] = "行间距"
	L["Autohide On Combat"] = "战斗中隐藏"
	L["Show Scrollbar"] = "显示滚动条"
	L["Data"] = "数据"
	L["Appearance"] = "外观"
	L["Color"] = "颜色"
	L["Window"] = "窗口"
	L["Window Color Selection"] = "窗口颜色选择"
	L["Main Window"] = "主窗口"
	L["Other Windows"] = "其他窗口"
	L["Global Data Collection"] = "全局数据收集"
	L["Autoswitch Shown Fight"] = "自动切换为当前战斗"
	L["Lock Windows"] = "锁定窗口"
	L["Autodelete Time Data"] = "自动删除分时数据"
	L["Delete on Entry"] = "进入时删除"
	L["New"] = "新建"
	L["Confirmation"] = "确认"
	L["Delete on New Group"] = "新队伍时删除"
	L["Delete on New Raid"] = "新团队时删除"
	L["Sync Data"] = "同步数据"
	L["Set Combat Log Range"] = "设置战斗日志范围"
	L["Detail Window"] = "细节窗口"
	L["Death Details for"] = "详细死亡数据："
	L["Health"] = "生命"
	L["Recount"] = "Recount"
	L["Outgoing"] = "输出"
	L["Incoming"] = "承受"
	L["Damage Report for"] = "伤害报告："
	L["Damage"] = "伤害"
	L["Resisted"] = "被抵抗"
	L["Report for"] = "报告："
	L["Glancing"] = "偏斜"
	L["Hit"] = "命中"
	L["Crushing"] = "碾压"
	L["Crit"] = "爆击"
	L["Miss"] = "未击中"
	L["Dodge"] = "闪避"
	L["Parry"] = "招架"
	L["Block"] = "格挡"
	L["Resist"] = "抵抗"
	L["Tick"] = "跳"
	L["Split"] = "平分"
	L["X Gridlines Represent"] = "X 轴每格代表"
	L["Seconds"] = "秒"
	L["Graph Window"] = "图形窗口"
	L["Data Name"] = "数据名"
	L["Enabled"] = "启用"
	L["Fought"] = "对手"
	L["Start"] = "开始"
	L["End"] = "结束"
	L["Normalize"] = "标准化"
	L["Integrate"] = "整合"
	L["Stack"] = "叠加"
	L["Report Data"] = "数据报告"
	L["Report To"] = "报告给"
	L["Report Top"] = "报告人数"
	L["Reset Recount?"] = "重置 Recount？"
	L["Do you wish to reset the data?"] = "你希望重置数据么？"
	L["Yes"] = "是"
	L["No"] = "否"
	L["Show Details (Left Click)"] = "显示细节（左键点击）"
	L["Show Graph (Shift Click)"] = "显示图表（Shift 点击）"
	L["Add to Current Graph (Alt Click)"] = "添加到当前图表（Alt 点击）"
	L["Show Realtime Graph (Ctrl Click)"] = "显示实时图表（Ctrl 点击）"
	L["Delete Combatant (Ctrl-Alt Click)"] = "删除战斗人员（Ctrl-Alt 点击）"
	L[" for "] = " 为 "
	L["Overall Data"] = "所有数据"
	L["Current Fight"] = "当前战斗"
	L["Last Fight"] = "上次战斗"
	L["Fight"] = "战斗"
	L["Top Color"] = "顶端颜色"
	L["Bottom Color"] = "底端颜色"
	L["Ability Name"] = "技能名称"
	L["Type"] = "类型"
	L["Min"] = "最小"
	L["Avg"] = "平均"
	L["Max"] = "最大"
	L["Count"] = "次数"
	L["Player/Mob Name"] = "玩家/怪物名"
	L["Attack Name"] = "攻击名称"
	L["Time (s)"] = "时间"
	L["Heal Name"] = "治疗名称"
	L["Heal"] = "治疗"
	L["Healed"] = "已治疗"
	L["Overheal"] = "过量治疗"
	L["Ability"] = "技能"
	L["DOT Time"] = "DOT 时间"
	L["Ticked on"] = "每跳于"
	L["Duration"] = "持续时间"
	L["HOT Time"] = "HOT 时间"
	L["Interrupted Who"] = "打断了谁"
	L["Interrupted"] = "被打断"
	L["Ressed Who"] = "复活了谁"
	L["Times"] = "次数"
	L["Who"] = "谁"
	L["Broke"] = "打醒"
	L["Broke On"] = "打醒"
	L["Gained"] = "获得"
	L["From"] = "来自"
	L["Prefix"] = "前缀"
	L["Messages"] = "信息"
	L["Distribution"] = "分布"
	L["Bytes"] = "字节"
	L["'s Hostile Attacks"] = "的敌对攻击"
	L["Damaged Who"] = "伤害了谁"
	L["'s Partial Resists"] = "的部分抵抗"
	L["'s Time Spent Attacking"] = "攻击花费的时间"
	L["'s Friendly Fire"] = "的队友误伤"
	L["Friendly Fired On"] = "误伤于"
	L["Took Damage From"] = "承受伤害自"
	L["'s Effective Healing"] = "的有效治疗"
	L["Healed Who"] = "治疗了谁"
	L["'s Overhealing"] = "的过量治疗"
	L["'s Time Spent Healing"] = "治疗花费的时间"
	L["was Healed by"] = "被治疗自"
	L["'s DOT Uptime"] = "的 DOT 持续时间"
	L["'s HOT Uptime"] = "的 HOT 持续时间"
	L["'s Interrupts"] = "的打断次数"
	L["'s Resses"] = "的复活次数"
	L["'s Dispels"] = "的驱散次数"
	L["was Dispelled by"] = "被驱散自"
	L["'s Time Spent"] = "的时间花费"
	L["CC Breaking"] = "打醒控制"
	L["'s Mana Gained"] = "的法力获取"
	L["'s Mana Gained From"] = "的法力获取自"
	L["'s Energy Gained"] = "的能量获取"
	L["'s Energy Gained From"] = "的能量获取自"
	L["'s Rage Gained"] = "的怒气获取"
	L["'s Rage Gained From"] = "的怒气获取自"
	L["'s Network Traffic"] = "的网络流量"
	L["Top 3"] = "排行前三的"
	L["Damage Abilities"] = "伤害技能"
	L["Attacked"] = "攻击目标"
	L["Pet Damage Abilities"] = "宠物伤害技能"
	L["Pet Attacked"] = "宠物攻击目标"
	L["Click for more Details"] = "点击显示更多细节"
	L["Friendly Attacks"] = "误伤次数"
	L["Attacked by"] = "攻击来自"
	L["Heals"] = "治疗"
	L["Healed By"] = "治疗来自"
	L["Over Heals"] = "过量治疗"
	L["DOTs"] = "持续伤害"
	L["HOTs"] = "持续治疗"
	L["Dispelled By"] = "驱散来自"
	L["Attacked/Healed"] = "攻击/治疗"
	L["Time Damaging"] = "伤害时间"
	L["Time Healing"] = "治疗时间"
	L["Mana Abilities"] = "法力技能"
	L["Mana Sources"] = "法力来源"
	L["Energy Abilities"] = "能量技能"
	L["Energy Sources"] = "能量来源"
	L["Rage Abilities"] = "怒气技能"
	L["Rage Sources"] = "怒气来源"
	L["CC's Broken"] = "打醒控制"
	L["Ressed"] = "已复活"
	L["Network Traffic"] = "网络流量"
	L["'s DPS"] = "的每秒伤害"
	L["'s DTPS"] = "的每秒承受伤害"
	L["'s HPS"] = "的每秒治疗"
	L["'s HTPS"] = "的每秒接受治疗"
	L["'s TPS"] = "的每秒仇恨"
	L["Threat on"] = "仇恨于"
	L["Name of Ability"] = "技能的名称"
	L["Time"] = "时间"
	L["Killed By"] = "被谁杀"
	L["Combat Messages"] = "战斗信息"
	L["Misc"] = "其它"
	L["Show Graph"] = "显示图表"
	L["Config Recount"] = "配置 Recount"
	L["Death Graph"] = "死亡图表"
	L["Melee"] = "肉搏"
	L["Physical"] = "物理"
	L["Arcane"] = "奥术"
	L["Fire"] = "火焰"
	L["Frost"] = "冰霜"
	L["Holy"] = "神圣"
	L["Nature"] = "自然"
	L["Shadow"] = "暗影"
	L["Total"] = "总和"
	L["Taken"] = "承受"
	L["Damage Focus"] = "伤害比重"
	L["Avg. DOTs Up"] = "平均 DOT 持续"
	L["Pet Damage"] = "宠物伤害"
	L["No Pet"] = "无宠物"
	L["Pet Time"] = "宠物时间"
	L["Pet Focus"] = "宠物伤害比重"
	L["Healing"] = "治疗"
	L["Overhealing"] = "过量治疗"
	L["Heal Focus"] = "治疗比重"
	L["Avg. HOTs Up"] = "平均治疗持续"
	L["Attack Summary Outgoing (Click for Incoming)"] = "伤害输出统计（点击切换为承受）"
	L["Attack Summary Incoming (Click for Outgoing)"] = "伤害承受统计（点击切换为输出）"
	L["Summary Report for"] = "综合报表："
	L["Say"] = "说"
	L["Party"] = "队伍"
	L["Raid"] = "团队"
	L["Guild"] = "公会"
	L["Officer"] = "官员"
	L["Whisper"] = "密语"
	L["Whisper Target"] = "密语目标"
	L["Blocked"] = "被格挡"
	L["Absorbed"] = "被吸收"
	L["Guardian"] = "守护者"
	L["Click for next Pet"] = "点击切换到下个宠物"
	L["Outside Instances"] = "副本之外"
	L["Party Instances"] = "小队副本"
	L["Raid Instances"] = "团队副本"
	L["Battlegrounds"] = "战场"
	L["Arenas"] = "竞技场"
	L["Content-based Filters"] = "基于内容的过滤器"
	L["Show Total Bar"] = "显示总量条"
	L["Config Access"] = "存取设置"
	L["Window Options"] = "窗口选项"
	L["Sync Options"] = "同步选项"
	L["Hostile"] = "敌对"
	L["Rank Number"] = "排名"
	L["Bar Text Options"] = "计量条文字选项"
	L["Per Second"] = "每秒"
	L["Percent"] = "百分比"
	L["Fight Segmentation"] = "战斗分段"
	L["Keep Only Boss Segments"] = "只保留首领战分段"
	L["Click|r to toggle the Recount window"] = "点击|r切换 Recount 窗口"
	L["Right-click|r to open the options menu"] = "右击|r打开选项菜单"
	L["Number Format"] = "数字格式"
	L["Standard"] = "标准"
	L["Commas"] = "逗号"
	L["Short"] = "简短"
	L["Hide When Not Collecting"] = "不收集数据时隐藏"
	L["DoT"] = "伤害/跳"
	L["HoT"] = "治疗/跳"
	L["Recorded Fights"] = "已记录战斗"
	L["Set the maximum number of recorded fight segments"] = "设定最高数量战斗记录分段"
	L["pause"] = "暂停"
	L["Pause"] = "暂停"
	L["Toggle pause of global data collection"] = "开关全局数据收集"
	L["Data collection turned off"] = "开启数据收集"
	L["Data collection turned on"] = "关闭数据收集"

	L["Death Track"] = "死亡记录"
	L["Report the DeathTrack Window Data"] = "报告死亡记录窗口的数据"
	L["Show Death Track (Left Click)"] = "显示死亡记录（左键点击）"
	L[" dies."]="死亡。"
	
	L["Runic Power Gained"] = "获得符文能量"
	L["RunicPower Abilities"] = "符文能量技能"
	L["RunicPower Sources"] = "符文能量源"
