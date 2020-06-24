return {
	[0] = { -- Players Title
		[1] = '^([0-9]+:[0-9]+:[0-9]+:)(.+) title: (.+)',
		[2] = '\\cs(255,215,0)%1\\cr[%2 title] = \\cs(255,215,0)%3\\cr'
	},
	[4] = {
		[1] = '^([0-9]+:[0-9]+:[0-9]+):>>([^:]+):(.*)$',
		[2] = '\\cs(255,215,0)%1\\cr>>\\cs(255,0,255)%2\\cr:\\cs(175,238,238)%3\\cr'
		},
	[5] = {
		[1] = '^([0-9]+:[0-9]+:[0-9]+)[^%(]+%(([^%)]+)%)(.*)',
		[2] = '\\cs(255,215,0)%1\\cr<\\cs(0,255,255)%2\\cr>\\cs(0,255,255)%3\\cr'
		},
	[6] = {
		[1] = '^([0-9]+:[0-9]+:[0-9]+)[^<]+<([^>]+)>(.*)',
		[2] = '\\cs(144,238,144)%1\\cr<\\cs(128,128,0)%2\\cr>\\cs(144,238,144)%3\\cr'
		},
	[11] = {
		[1] = '^([0-9]+:[0-9]+:[0-9]+)([^%[]+)%[([^%]]+)%](.*)',
		[2] = '\\cs(255,215,0)%1\\cr%2[\\cs(128,128,0)%3\\cr]\\cs(255,127,80)%4\\cr',
		[3] = '(.+)\n(.+)\\cr',
		[4] = '%1\\cr\n\\cs(255,127,80)%2\\cr',
		},
	[12] = {
		[1] = '^([0-9]+:[0-9]+:[0-9]+)([^>]+)>>(.*)$',
		[2] = '\\cs(255,215,0)%1\\cr\\cs(255,0,255)%2\\cr>>\\cs(175,238,238)%3\\cr'
		},
	[13] = {
		[1] = '^([0-9]+:[0-9]+:[0-9]+)[^%(]+%(([^%)]+)%)(.*)',
		[2] = '\\cs(255,215,0)%1\\cr<\\cs(0,255,255)%2\\cr>\\cs(0,255,255)%3\\cr'
		},
	[14] = {
		[1] = '^([0-9]+:[0-9]+:[0-9]+)[^<]+<([^>]+)>(.*)',
		[2] = '\\cs(144,238,144)%1\\cr<\\cs(128,128,0)%2\\cr>\\cs(144,238,144)%3\\cr'
		},
	[15] = { -- incoming emote
		[1] = '^([0-9]+:[0-9]+:[0-9]+:)(.+)( '..windower.ffxi.get_player().name..' )(.*)', --Someone Emoting you
		[2] = '\\cs(225,215,0)%1\\cr * \\cs(238,130,238)%2\\cr\\cs(0,255,255)%3\\cr\\cs(238,130,238)%4\\cr',
		[3] = '^([0-9]+:[0-9]+:[0-9]+:)(.?'..windower.ffxi.get_player().name..')(.*)', --You Emoting
		[4] = '\\cs(225,215,0)%1\\cr * \\cs(0,255,255)%2\\cr\\cs(238,130,238)%3\\cr',
		[5] = '^([0-9]+:[0-9]+:[0-9]+:)(.+)', --Two assholes emoting solo/eachother.
		[6] = '\\cs(225,215,0)%1\\cr * \\cs(238,130,238)%2\\cr',
		},
	[20] = {
		[1] = '^([0-9]+:[0-9]+:[0-9]+:)(.*)',
		[2] = '\\cs(255,215,0)%1\\cr%2',
		[3] = '^(.+[0-9]+:[0-9]+:[0-9]+[^%[]+)%[?('..windower.ffxi.get_player().name..'\'?s?)%]?(.+)',
		[4] = '%1[\\cs(0,255,255)%2\\cr]%3',
		[5] = '(.-)%s?([0-9]+%s)(.*)',
		[6] = '%1\\cr\\cs(255,0,0)%2\\cr%3',
		[7] = '^(.+[0-9]+:[0-9]+:[0-9]+.+)%[([^%]]+)%](.+)',--
		[8] = '%1[\\cs(240,230,140)%2\\cr] %3',--
		[9] = '(.*)%s%s(.*)',
		[10] = '%1 ->\\cs(240,230,140) %2\\cr',
		[11] = '(.*)%[('..windower.ffxi.get_player().name..')(%].*)',
		[12] = '%1[\\cs(0,255,255)%2\\cr%3',
		[13] = '^(.+[0-9]+:[0-9]+:[0-9]+.+%[)([A-Za-z0-9%s]+)(%].*)',
		[14] = '%1\\cs(240,230,140)%2\\cr%3',
	},
	[21] = {
		[1] = '^([0-9]+:[0-9]+:[0-9]+:)(.*)',
		[2] = '\\cs(255,215,0)%1\\cr%2',
		[3] = '^(.+[0-9]+:[0-9]+:[0-9]+.+)%s?('..windower.ffxi.get_player().name..'\'?s?)%]?(.+)',
		[4] = '%1\\cs(0,255,255)%2\\cr]%3',
		[5] = '^(.+[0-9]+:[0-9]+:[0-9]+.+)%[([^%]]+)%] (.+)',
		[6] = '%1[\\cs(240,230,140)%2\\cr] %3',
		[7] = '(.*)%s%s(.*)',
		[8] = '%1 ->\\cs(240,230,140) %2\\cr',
	},
	[22] = { --Party Members casting spell
		[1] = '^([0-9]+:[0-9]+:[0-9]+:)(.*)',
		[2] = '\\cs(255,215,0)%1\\cr%2',
		[3] = '^(.+[0-9]+:[0-9]+:[0-9]+.+)%[('..windower.ffxi.get_player().name..'\'?s?)%] ([0-9]+)(.*)',
		[4] = '%1[\\cs(0,255,255)%2\\cr]\\cs(255,0,0)%3\\cr%4',
		[5] = '^(.+[0-9]+:[0-9]+:[0-9]+.+)%[('..windower.ffxi.get_player().name..'\'?s?)%] (.+)',
		[6] = '%1[\\cs(0,255,255)%2\\cr]%3',
		[7] = '^(.+[0-9]+:[0-9]+:[0-9]+.+)%[([^%]]+)%] ([^%(,]-[0-9]+)(.*)',
		[8] = '%1[\\cs(0,255,255)%2\\cr]\\cs(255,0,0)%3\\cr%4',
		[9] = '^(.+[0-9]+:[0-9]+:[0-9]+.+)%[([^%]]+)%](.+)',
		[10] = '%1[\\cs(0,255,255)%2\\cr] %3',
		[11] = '(.*)%s%s(.*)',
		[12] = '%1 ->\\cs(240,230,140) %2\\cr',
	},
	[23] = { --casting spell on trust?
		[1] = '^([0-9]+:[0-9]+:[0-9]+:)(.*)',
		[2] = '\\cs(255,215,0)%1\\cr%2',
		[3] = '^(.+[0-9]+:[0-9]+:[0-9]+.+)('..windower.ffxi.get_player().name..'\'?s?)%]?(.+)',
		[4] = '%1[\\cs(0,255,255)%2\\cr] %3',
		[5] = '^(.+[0-9]+:[0-9]+:[0-9]+.+)%[?('..windower.ffxi.get_player().name..'\'?s?.-)([0-9]+)(.*)',
		[6] = '%1%2\\cs(255,0,0)%3\\cr%4',
		[7] = '^(.+[0-9]+:[0-9]+:[0-9]+.+)%[([^%]]+)%] (.-[0-9]+)(.*)',
		[8] = '%1[\\cs(0,255,255)%2\\cr]\\cs(255,0,0)%3\\cr%4',
		[9] = '^(.+[0-9]+:[0-9]+:[0-9]+.+)%[([^%]]+)%](.+)',
		[10] = '%1[\\cs(0,255,255)%2\\cr] %3',
		[11] = '(.*)%s%s(.*)',
		[12] = '%1 ->\\cs(240,230,140) %2\\cr',
	},
	[28] = {
		[1] = '^([0-9]+:[0-9]+:[0-9]+:)(.*)',
		[2] = '\\cs(255,215,0)%1\\cr%2',
		[3] = '^(.+[0-9]+:[0-9]+:[0-9]+.*)%[([^%]]+)%](.*) ('..windower.ffxi.get_player().name..').*$',
		[4] = '%1[\\cs(240,230,140)%2\\cr]%3\\cs(0,255,255)%4\\cr',
		[5] = '([^>]+)>.+('..windower.ffxi.get_player().name..')',
		[6] = '%1> \\cs(0,255,255)%2\\cr',
		[7] = '^(.+[0-9]+:[0-9]+:[0-9]+.*)%[([^%]]+)%](.*) ('..windower.ffxi.get_player().name..').*$',
		[8] = '%1[\\cs(240,230,140)%2\\cr]%3\\cs(0,255,255)%4\\cr',
		[9] = '(.*)%s?(%s[0-9]+%s)(.*)',
		[10] = '%1\\cr\\cs(255,0,0)%2\\cr%3',
		[11] ='(.*)%[([1-9]+)%](.*)',
		[12] ='%1[\\cs(240,230,140)%2\\cr]%3',
	},
	[29] = {
		[1] = '^([0-9]+:[0-9]+:[0-9]+:)(.*)',
		[2] = '\\cs(255,215,0)%1\\cr%2',
		[3] = '^(.+[0-9]+:[0-9]+:[0-9]+.*)%[([^%]]+)%](.*)('..windower.ffxi.get_player().name..').*$',
		[4] = '%1[\\cs(240,230,140)%2\\cr]%3\\cs(0,255,255)%4\\cr',
		[5] = '([^>]+)>.+('..windower.ffxi.get_player().name..')',
		[6] = '%1> \\cs(0,255,255)%2\\cr',
		[7] = '^(.+[0-9]+:[0-9]+:[0-9]+.+)%[([^%]]+)%] (.+)',
		[8] = '%1[\\cs(240,230,140)%2\\cr] %3',
		[9] = '(.*)%s%s(.*)',
		[10] = '%1 -> %2',
		[11] ='(.*)%[([1-9]+)%](.*)',
		[12] ='%1[\\cs(240,230,140)%2\\cr]%3',
	},
	[30] = {
		[1] = '^([0-9]+:[0-9]+:[0-9]+:)(.*)',
		[2] = '\\cs(255,215,0)%1\\cr%2',
		[3] = '^(.+[0-9]+:[0-9]+:[0-9]+.+)('..windower.ffxi.get_player().name..'\'?s?)%]?(.+)',
		[4] = '%1[\\cs(0,255,255)%2\\cr] %3',
		[5] = '^(.+[0-9]+:[0-9]+:[0-9]+.+)('..windower.ffxi.get_player().name..'\'?s?.-)([0-9]+)(.*)',
		[6] = '%1%2\\cr\\cs(255,0,0)%3\\cr%4',
		[7] = '^(.+[0-9]+:[0-9]+:[0-9]+.+)%[([^%]]+)%] (.-[0-9]+)(.*)',
		[8] = '%1[\\cs(0,255,255)%2\\cr]\\cs(255,0,0)%3\\cr%4',
		[9] = '^(.+[0-9]+:[0-9]+:[0-9]+.+)%[([^%]]+)%](.+)',
		[10] = '%1[\\cs(0,255,255)%2\\cr] %3',
--		[11] = '(.*)%s%s(.*)',
--		[12] = '%1 ->\\cs(240,230,140) %2\\cr',
	},
	[31] = {
		[1] = '^([0-9]+:[0-9]+:[0-9]+:)(.*)',
		[2] = '\\cs(255,215,0)%1\\cr%2',
		[3] = '(.*)'..string.char(129,168)..'(.*)',
		[4] = '%1->\\cs(240,230,140) %2\\cr',
		[5] = '([^>]+)>.+('..windower.ffxi.get_player().name..')',
		[6] = '%1> \\cs(0,255,255)%2\\cr',
	},
	[36] = { -- defeats
		[1] = '^([0-9]+:[0-9]+:[0-9]+:)(.*)',
		[2] = '\\cs(255,215,0)%1\\cr%2',
		[3] = '^(.+[0-9]+:[0-9]+:[0-9]+.+)('..windower.ffxi.get_player().name..'\'?s?)%]? defeats (.+)',
		[4] = '%1[\\cs(0,255,255)%2\\cr] defeats \\cs(240,230,140)%3\\cr',
		[5] = '^(.+[0-9]+:[0-9]+:[0-9]+.*)%[([^%]]+)%](.*) ('..windower.ffxi.get_player().name..').*$',
		[6] = '%1[\\cs(240,230,140)%2\\cr]%3\\cs(0,255,255)%4\\cr',
	},
	[50] = {
		[1] = '^([0-9]+:[0-9]+:[0-9]+:)(.*)',
		[2] = '\\cs(255,215,0)%1\\cr%2',
		[3] = '^(.+[0-9]+:[0-9]+:[0-9]+.-)%[?('..windower.ffxi.get_player().name..'\'?s?)%]? (.+)',
		[4] = '%1[\\cs(0,255,255)%2\\cr] %3',
		[5] = '^(.+[0-9]+:[0-9]+:[0-9]+.-)%[?([^%]]+)%]? (.+)',
		[6] = '%1[\\cs(0,255,255)%2\\cr] %3',
		[7] = '(.*)%s%s(.*)',
		[8] = '%1 ->\\cs(240,230,140) %2\\cr',
	},
	[56] = {
		[1] = '^([0-9]+:[0-9]+:[0-9]+:)(.*)',
		[2] = '\\cs(255,215,0)%1\\cr%2',
		[3] = '(.*)%s%s(.*)',
		[4] = '%1->\\cs(240,230,140) %2\\cr',
		[5] = '([^>]+)>.+('..windower.ffxi.get_player().name..')',
		[6] = '%1 -> \\cs(0,255,255)%2\\cr',
	},
	[57] = { -- Landed spell
		[1] = '^([0-9]+:[0-9]+:[0-9]+:)(.*)',
		[2] = '\\cs(255,215,0)%1\\cr%2',
		[3] = '^(.+[0-9]+:[0-9]+:[0-9]+.+)('..windower.ffxi.get_player().name..'\'?s?)%]?(.+)',
		[4] = '%1[\\cs(0,255,255)%2\\cr]%3',
		[5] = '(.*)%s%s(.*)',
		[6] = '%1 ->\\cs(240,230,140) %2\\cr',
		[7] = '^(.+[0-9]+:[0-9]+:[0-9]+.-)('..windower.ffxi.get_player().name..') ([A-Za-z]+) .-([^%(]+)%(([^%)]+)%)',
		[8] = '%1[\\cs(0,255,255)%2\\cr] %3 ->\\cs(240,230,140)%4\\cr(%5)',
	},
	[63] = { -- No effect spell
		[1] = '^([0-9]+:[0-9]+:[0-9]+:)(.*)',
		[2] = '\\cs(255,215,0)%1\\cr%2',
		[3] = '^(.+[0-9]+:[0-9]+:[0-9]+.-)('..windower.ffxi.get_player().name..') ([A-Za-z]+) .-([^%(]+)%(([^%)]+)%)',
		[4] = '%1[\\cs(0,255,255)%2\\cr] %3 ->\\cs(240,230,140)%4\\cr(%5)',
	},
	[101] = { -- job ability
		[1] = '^([0-9]+:[0-9]+:[0-9]+:)(.*)',
		[2] = '\\cs(255,215,0)%1\\cr%2',
		[3] = '^(.+[0-9]+:[0-9]+:[0-9]+.-)%[?('..windower.ffxi.get_player().name..'\'?s?)%]?(.+)',
		[4] = '%1[\\cs(0,255,255)%2\\cr]%3',
		[5] = '^(.+[0-9]+:[0-9]+:[0-9]+.+)%[([^%]]+)%](.+)',
		[6] = '%1[\\cs(0,255,255)%2\\cr]%3',
		[7] = '(.*)%s%s(.*)',
		[8] = '%1 ->\\cs(240,230,140) %2\\cr',
	},
	[110] = { --ws mob
		[1] = '^([0-9]+:[0-9]+:[0-9]+.+)('..windower.ffxi.get_player().name..'\'?s?)%]?%s?(.+)',
		[2] = '\\cs(255,215,0)%1\\cr\\cs(0,255,255)%2\\cr] %3',
		[3] = '^([0-9]+:[0-9]+:[0-9]+.+)%[([^%]]+)%]?%s?(.+)',
		[4] = '\\cs(255,215,0)%1\\cr[\\cs(240,230,140)%2\\cr] %3',
		[5] = '(.*)%s%s(.*)',
		[6] = '%1 ->\\cs(240,230,140) %2\\cr',
	},
	[121] = { --AH / Search
		[1] = '^([0-9]+:[0-9]+:[0-9]+:)Your (.+) sold',
		[2] = '\\cs(255,215,0)%1\\crYour \\cs(0,255,0)%2 \\cr\\cs(240,230,140)sold.\\cr',
		[3] = '^([0-9]+:[0-9]+:[0-9]+:)You take the (.+) out(.+)',
		[4] = '\\cs(255,215,0)%1\\cr\\cs(240,230,140)You take the \\cs(0,255,0)%2 \\cr\\cs(240,230,140)out %3\\cr',
		[5] = '^([0-9]+:[0-9]+:[0-9]+:)(Slot [0-9]+).+buyer paid for the.?(.+).?you put on auction,.?(.+)',
		[6] = '\\cs(255,215,0)%1\\cr\\cs(240,230,140)%2 \\cr[\\cs(0,255,0)%3\\cr] From AuctionHouse For: \\cs(240,230,140)%4\\cr',
		[7] = '^([0-9]+:[0-9]+:[0-9]+:)(.+):(.*)', --Addon log message
		[8] = '\\cs(255,215,0)%1\\cr[\\cs(65,105,225)%2\\cr] \\cs(0,191,255)%3\\cr',
		[9] = '^([0-9]+:[0-9]+:[0-9]+:)(.-)([0-9,]+)(.*)',
		[10] = '\\cs(255,215,0)%1\\cr\\cs(240,230,140)%2\\cr[\\cs(218,165,32)%3\\cr]\\cs(240,230,140)%4\\cr',
		[11] = '^([0-9]+:[0-9]+:[0-9]+:)(.*)',
		[12] = '\\cs(255,215,0)%1\\cr\\cs(240,230,140)%2\\cr',
	},
	[122] = { -- Unable to see
		[1] = '^([0-9]+:[0-9]+:[0-9]+:)(.+) to see (.+).',
		[2] = '\\cs(255,215,0)%1\\cr\\cs(0,255,0)%2 to see \\cr-> \\cs(240,230,140)%3\\cr',
		[3] = '^([0-9]+:[0-9]+:[0-9]+:)(.+) is out of range.*$',
		[4] = '\\cs(255,215,0)%1\\cr\\cs(240,230,140)%2\\cr is out of range.',
		[5] = '^([0-9]+:[0-9]+:[0-9]+:)(.+) lose sight of (.+).',
		[6] = '\\cs(255,215,0)%1\\cr%2 lose sight of \\cs(240,230,140)%3\\cr.',
	},
	[127] = { -- ROE / Obtains
		[1] = '^([0-9]+:[0-9]+:[0-9]+:)(.-)([0-9]+)(.-)([0-9]+)%!',
		[2] = '\\cs(255,215,0)%1\\cr\\cs(240,230,140)%2\\cr%3\\cs(240,230,140)%4\\cr%5!',
		[3] = '^([0-9]+:[0-9]+:[0-9]+:)(%a+):(.*)', --Addon log message
		[4] = '\\cs(255,215,0)%1\\cr[\\cs(65,105,225)%2\\cr]\\cs(0,191,255)%3\\cr',
		[5] = '^([0-9]+:[0-9]+:[0-9]+:)([^:]+): (.*)',
		[6] = '\\cs(255,215,0)%1\\cr\\cs(65,105,225)%2\\cr -> %3',
		[7] = '^(.+[0-9]+:[0-9]+:[0-9]+.+)('..windower.ffxi.get_player().name..'\'?s?)%]? obtains a(.+)',
		[8] = '\\cs(255,215,0)%1\\cr[\\cs(0,255,255)%2\\cr] obtains a\\cs(255,215,0)%3\\cr',
		[9] = '^([0-9]+:[0-9]+:[0-9]+:)(.+)%.',
		[10] = '\\cs(255,215,0)%1\\cr\\cs(240,230,140)%2\\cr.',
	},
	[129] = { -- Skillup
		[1] = '^([0-9]+:[0-9]+:[0-9]+:)(.*)',
		[2] = '\\cs(255,215,0)%1\\cr\\cs(240,230,140)%2\\cr',
	},
	[131] = { -- XP
		[1] = '^([0-9]+:[0-9]+:[0-9]+:)(.-)([0-9]+)(.-)([0-9]+)%.',
		[2] = '\\cs(255,215,0)%1\\cr\\cs(240,230,140)%2\\cr%3\\cs(240,230,140)%4\\cr%5.',
		[3] = '^([0-9]+:[0-9]+:[0-9]+:)(.*)',
		[4] = '\\cs(255,215,0)%1\\cr\\cs(240,230,140)%2\\cr',
		[5] = '(.-)([0-9]+) (.+)',
		[6] = '%1\\cr%2 \\cs(240,230,140)%3\\cr',
		[7] = '(.*!).-('..windower.ffxi.get_player().name..')(.*)',
		[8] = '%1 %2%3',
	},
	[144] = { -- npc chat
		[1] = '^([0-9]+:[0-9]+:[0-9]+:)([^:]+) :(.*)',
		[2] = '\\cs(255,215,0)%1\\cr**[\\cs(218,165,32)%2\\cr]**\\cs(240,230,140)%3\\cr'	
	},
	[148] = { -- instance queue
		[1] = '^([0-9]+:[0-9]+:[0-9]+:)(.-)([0-9]+)([^0-9]+)([0-9]+)(.*)',
		[2] = '\\cs(255,215,0)%1\\cr\\cs(240,230,140)%2\\cr[\\cs(218,165,32)%3\\cr]\\cs(240,230,140)%4\\cr[\\cs(218,165,32)%5\\cr]\\cs(240,230,140)%6\\cr',
		[3] = '^([0-9]+:[0-9]+:[0-9]+:)(.-)([0-9]+)(.*)',
		[4] = '\\cs(255,215,0)%1\\cr\\cs(240,230,140)%2\\cr[\\cs(218,165,32)%3\\cr]\\cs(240,230,140)%4\\cr'	
	},
	[150] = { -- npc chat
		[1] = '^([0-9]+:[0-9]+:[0-9]+:)([^:]+) :(.*)',
		[2] = '\\cs(255,215,0)%1\\cr**[\\cs(218,165,32)%2\\cr]**\\cs(240,230,140)%3\\cr'	
	},
	[160] = { -- /checkparam
		[1] = '^([0-9]+:[0-9]+:[0-9]+:)(.*)',
		[2] = '\\cs(255,215,0)%1\\cr%2',
		[3] = '^(.+[0-9]+:[0-9]+:[0-9]+:[^%[]+)%[([^%]]+)%] ([.+)',
		[4] = '%1[\\cs(128,128,0)%2\\cr] = %3',
	},
	[161] = { -- instance queue
		[1] = '^([0-9]+:[0-9]+:[0-9]+:)(.-)([0-9]+)(.*)',
		[2] = '\\cs(255,215,0)%1\\cr\\cs(240,230,140)%2\\cr[\\cs(218,165,32)%3\\cr]\\cs(240,230,140)%4\\cr',
		[3] = '^([0-9]+:[0-9]+:[0-9]+:)(.*)',
		[4] = '\\cs(255,215,0)%1\\cr\\cs(240,230,140)%2\\cr',
	},
	[190] = { -- npc chat
		[1] = '^([0-9]+:[0-9]+:[0-9]+:)(.*)',
		[2] = '\\cs(255,215,0)%1\\cr\\cs(240,230,140)%2\\cr'	
	},
	[191] = { --buff wear
		[1] = '^([0-9]+:[0-9]+:[0-9]+:)(.*) is no longer afflicted with (.*)',
		[2] = '\\cs(255,215,0)%1\\cr[\\cs(240,230,140)%2\\cr] is no longer afflicted with \\cs(240,230,140)%3\\cr',
		[3] = '^([0-9]+:[0-9]+:[0-9]+:)(.*)',
		[4] = '\\cs(255,215,0)%1\\cr%2',
		[5] = '^(.+[0-9]+:[0-9]+:[0-9]+.+)('..windower.ffxi.get_player().name..'\'?s?)%]? (.+)',
		[6] = '%1[\\cs(0,255,255)%2\\cr] %3',
		[7] = '^(.+[0-9]+:[0-9]+:[0-9]+.+%[)([A-Za-z0-9%s]+)(%].*)',
		[8] = '%1\\cs(240,230,140)%2\\cr%3',
		[9] = '^(.+[0-9]+:[0-9]+:[0-9]+:[^A-Z]+)([A-Za-z%s]+):? ([0-9]+) / ([A-Za-z%s]+):? ([0-9]+)',
		[10] = '%1[\\cs(128,128,0)%2\\cr] = %3 [\\cs(128,128,0)%4\\cr] = %5',
		[11] = '^(.+[0-9]+:[0-9]+:[0-9]+:[^A-Z]+)([A-Za-z%s]+):? ([0-9]+)',
		[12] = '%1[\\cs(128,128,0)%2\\cr] = %3',
	},
	[208] = { -- /checked
		[1] = '^([0-9]+:[0-9]+:[0-9]+:)(.*)',
		[2] = '\\cs(255,215,0)%1\\cr\\cs(240,230,140)%2\\cr',
	},
	[210] = { -- Trust Chat
		[1] = '^([0-9]+:[0-9]+:[0-9]+:)%(([^%)]+)%)(.*)',
		[2] = '\\cs(255,215,0)%1\\cr(\\cs(218,165,32)%2\\cr)\\cs(240,230,140)%3\\cr',
	},
	[212] = { -- Unity
		[1] = '^([0-9]+:[0-9]+:[0-9]+:)(.*)',
		[2] = '\\cs(255,215,0)%1\\cr\\cs(240,230,140)%2\\cr',
	},
	[213] = {
		[1] = '^([0-9]+:[0-9]+:[0-9]+)[^<]+<([^>]+)>(.*)',
		[2] = '\\cs(0,255,0)%1\\cr<\\cs(128,128,0)%2\\cr>\\cs(0,255,0)%3\\cr'
		},
	[214] = {
		[1] = '^([0-9]+:[0-9]+:[0-9]+)[^<]+<([^>]+)>(.*)',
		[2] = '\\cs(0,255,0)%1\\cr<\\cs(128,128,0)%2\\cr>\\cs(0,255,0)%3\\cr'
		},
	['default'] = {
		[1] = '^([0-9]+:[0-9]+:[0-9]+:)(%a+):(.*)', --Addon log message
		[2] = '\\cs(255,215,0)%1\\cr[\\cs(65,105,225)%2\\cr]\\cs(0,191,255)%3\\cr',
		[3] = '^([0-9]+:[0-9]+:[0-9]+)(.*)',
		[4] = '\\cs(255,215,0)%1\\cr\\cs(255,250,250)%2\\cr',
	},
	['battle'] = { -- Initial Battle Filters, these shouldn't trigger, have most ID's mapped now.
		[1] = '^([0-9]+:[0-9]+:[0-9]+:)(.*)',
		[2] = '\\cs(255,215,0)%1\\cr%2',
		[3] = '^(.+[0-9]+:[0-9]+:[0-9]+.+)('..windower.ffxi.get_player().name..'\'?s?)%]?(.+)',
		[4] = '%1[\\cs(0,255,255)%2\\cr] %3',
		[5] = '^(.+[0-9]+:[0-9]+:[0-9]+.+)('..windower.ffxi.get_player().name..'\'?s?.-)([0-9]+)(.*)',
		[6] = '%1%2\\cr\\cs(255,0,0)%3\\cr%4',
		[7] = '(.*)%[%[(.*)',
		[8] = '%1[%2',
		[9] = '(.*)'..string.char(129,168)..'(.*)',
		[10] = '%1->\\cs(240,230,140) %2\\cr',
		[11] = '(.*)'..string.char(129,170)..'(.*)',
		[12] = '%1->%2',
		[13] = '(.*)'..string.char(0x1E,0x01)..'(.*)',
		[14] = '%1 %2',
		[15] = '([^>]+)>.+('..windower.ffxi.get_player().name..')',
		[16] = '%1> \\cs(0,255,255)%2\\cr'		
	}
}