return {
	[0] = { -- Players Title
		[1] = '^([0-9]+:[0-9]+:[0-9]+:)(.+) title: (.+)',
		[2] = '\\cs('..style_templates['title_person']..')%1\\cr[%2 title] = \\cs('..style_templates['title_person']..')%3\\cr'
	},
	[1] = { -- Say
		[1] = '^([0-9]+:[0-9]+:[0-9]+:)(%a+)%s:(.*)', --Addon log message
		[2] = '\\cs('..style_templates['say_time']..')%1\\cr[\\cs('..style_templates['say_person']..')%2\\cr]\\cs('..style_templates['say_text']..')%3\\cr',
	},
	[2] = {
		[1] = '^([0-9]+:[0-9]+:[0-9]+)([^%[]+)%[([^%]]+)%](.*)',
		[2] = '\\cs('..style_templates['shout_time']..')%1\\cr%2[\\cs('..style_templates['shout_person']..')%3\\cr]\\cs('..style_templates['shout_text']..')%4\\cr',
		[3] = '(.+)\n(.+)\\cr',
		[4] = '%1\\cr\n\\cs('..style_templates['shout_text']..')%2\\cr',
		},
	[3] = {
		[1] = '^([0-9]+:[0-9]+:[0-9]+)([^%[]+)%[([^%]]+)%](.*)',
		[2] = '\\cs('..style_templates['yell_time']..')%1\\cr%2[\\cs('..style_templates['yell_person']..')%3\\cr]\\cs('..style_templates['yell_text']..')%4\\cr',
		[3] = '(.+)\n(.+)\\cr',
		[4] = '%1\\cr\n\\cs('..style_templates['yell_text']..')%2\\cr',
		},
	[4] = {
		[1] = '^([0-9]+:[0-9]+:[0-9]+):>>([^:]+):(.*)$',
		[2] = '\\cs('..style_templates['timestamp']..')%1\\cr>>\\cs('..style_templates['outgoing_tell_name']..')%2\\cr:\\cs('..style_templates['outgoing_tell_text']..')%3\\cr'
		},
	[5] = {
		[1] = '^([0-9]+:[0-9]+:[0-9]+)[^%(]+%(([^%)]+)%)(.*)',
		[2] = '\\cs('..style_templates['timestamp']..')%1\\cr<\\cs('..style_templates['party_name']..')%2\\cr>\\cs('..style_templates['party_text']..')%3\\cr'
		},
	[6] = {
		[1] = '^([0-9]+:[0-9]+:[0-9]+)[^<]+<([^>]+)>(.*)',
		[2] = '\\cs('..style_templates['linkshell1_time']..')%1\\cr<\\cs('..style_templates['linkshell1_name']..')%2\\cr>\\cs('..style_templates['linkshell1_text']..')%3\\cr'
		},
	[7] = { -- outgoing emote
		[1] = '^([0-9]+:[0-9]+:[0-9]+:)(.+)( '..windower.ffxi.get_player().name..' )(.*)', --Someone Emoting you
		[2] = '\\cs('..style_templates['emote_time']..')%1\\cr * \\cs('..style_templates['emote_text']..')%2\\cr\\cs('..style_templates['emote_person']..')%3\\cr\\cs('..style_templates['emote_text']..')%4\\cr',
		[3] = '^([0-9]+:[0-9]+:[0-9]+:)(.?'..windower.ffxi.get_player().name..')(.*)', --You Emoting
		[4] = '\\cs('..style_templates['emote_time']..')%1\\cr * \\cs('..style_templates['emote_person']..')%2\\cr\\cs('..style_templates['emote_text']..')%3\\cr',
		[5] = '^([0-9]+:[0-9]+:[0-9]+:)(.+)', --Two assholes emoting solo/eachother.
		[6] = '\\cs('..style_templates['emote_time']..')%1\\cr * \\cs('..style_templates['emote_text']..')%2\\cr',
		},
	[9] = { -- Say
		[1] = '^([0-9]+:[0-9]+:[0-9]+:)(%a+)%s:(.*)', --Addon log message
		[2] = '\\cs('..style_templates['say_time']..')%1\\cr[\\cs('..style_templates['say_person']..')%2\\cr]\\cs('..style_templates['say_text']..')%3\\cr',
	},
	[10] = {
		[1] = '^([0-9]+:[0-9]+:[0-9]+)([^%[]+)%[([^%]]+)%](.*)',
		[2] = '\\cs('..style_templates['shout_time']..')%1\\cr%2[\\cs('..style_templates['shout_person']..')%3\\cr]\\cs('..style_templates['shout_text']..')%4\\cr',
		[3] = '(.+)\n(.+)\\cr',
		[4] = '%1\\cr\n\\cs('..style_templates['shout_text']..')%2\\cr',
		},
	[11] = {
		[1] = '^([0-9]+:[0-9]+:[0-9]+)([^%[]+)%[([^%]]+)%](.*)',
		[2] = '\\cs('..style_templates['yell_time']..')%1\\cr%2[\\cs('..style_templates['yell_person']..')%3\\cr]\\cs('..style_templates['yell_text']..')%4\\cr',
		[3] = '(.+)\n(.+)\\cr',
		[4] = '%1\\cr\n\\cs('..style_templates['yell_text']..')%2\\cr',
		},
	[12] = {
		[1] = '^([0-9]+:[0-9]+:[0-9]+)([^>]+)>>(.*)$',
		[2] = '\\cs('..style_templates['timestamp']..')%1\\cr\\cs('..style_templates['incoming_tell_name']..')%2\\cr>>\\cs('..style_templates['incoming_tell_text']..')%3\\cr'
		},
	[13] = {
		[1] = '^([0-9]+:[0-9]+:[0-9]+)[^%(]+%(([^%)]+)%)(.*)',
		[2] = '\\cs('..style_templates['timestamp']..')%1\\cr<\\cs('..style_templates['party_name']..')%2\\cr>\\cs('..style_templates['party_text']..')%3\\cr'
		},
	[14] = {
		[1] = '^([0-9]+:[0-9]+:[0-9]+)[^<]+<([^>]+)>(.*)',
		[2] = '\\cs('..style_templates['linkshell1_time']..')%1\\cr<\\cs('..style_templates['linkshell1_name']..')%2\\cr>\\cs('..style_templates['linkshell1_text']..')%3\\cr'
		},
	[15] = { -- incoming emote
		[1] = '^([0-9]+:[0-9]+:[0-9]+:)(.+)( '..windower.ffxi.get_player().name..' )(.*)', --Someone Emoting you
		[2] = '\\cs('..style_templates['emote_time']..')%1\\cr * \\cs('..style_templates['emote_text']..')%2\\cr\\cs('..style_templates['emote_person']..')%3\\cr\\cs('..style_templates['emote_text']..')%4\\cr',
		[3] = '^([0-9]+:[0-9]+:[0-9]+:)(.?'..windower.ffxi.get_player().name..')(.*)', --You Emoting
		[4] = '\\cs('..style_templates['emote_time']..')%1\\cr * \\cs('..style_templates['emote_person']..')%2\\cr\\cs('..style_templates['emote_text']..')%3\\cr',
		[5] = '^([0-9]+:[0-9]+:[0-9]+:)(.+)', --Two assholes emoting solo/eachother.
		[6] = '\\cs('..style_templates['emote_time']..')%1\\cr * \\cs('..style_templates['emote_text']..')%2\\cr',
		},
	[20] = { -- battle
		[1] = '^([0-9]+:[0-9]+:[0-9]+:)(.*)',
		[2] = '\\cs('..style_templates['timestamp']..')%1\\cr%2',
		[3] = '^(.+[0-9]+:[0-9]+:[0-9]+[^%[]+)%[?('..windower.ffxi.get_player().name..'\'?s?)%]?(.+)',
		[4] = '%1[\\cs('..style_templates['battle_name_1']..')%2\\cr]%3',
		[5] = '(.-)%s?([0-9]+%s)(.*)',
		[6] = '%1\\cr\\cs('..style_templates['battle_dmg_1']..')%2\\cr%3',
		[7] = '^(.+[0-9]+:[0-9]+:[0-9]+.+)%[([^%]]+)%](.+)',--
		[8] = '%1[\\cs('..style_templates['battle_name_2']..')%2\\cr] %3',--
		[9] = '(.*)%s%s(.*)',
		[10] = '%1 ->\\cs('..style_templates['battle_name_2']..') %2\\cr',
		[11] = '(.*)%[('..windower.ffxi.get_player().name..')(%].*)',
		[12] = '%1[\\cs('..style_templates['battle_name_1']..')%2\\cr%3',
		[13] = '^(.+[0-9]+:[0-9]+:[0-9]+.+%[)([A-Za-z0-9%s]+)(%].*)',
		[14] = '%1\\cs('..style_templates['battle_name_2']..')%2\\cr%3',
	},
	[21] = { -- battle
		[1] = '^([0-9]+:[0-9]+:[0-9]+:)(.*)',
		[2] = '\\cs('..style_templates['timestamp']..')%1\\cr%2',
		[3] = '^(.+[0-9]+:[0-9]+:[0-9]+.+)%s?('..windower.ffxi.get_player().name..'\'?s?)%]?(.+)',
		[4] = '%1\\cs('..style_templates['battle_text_1']..')%2\\cr]%3',
		[5] = '^(.+[0-9]+:[0-9]+:[0-9]+.+)%[([^%]]+)%] (.+)',
		[6] = '%1[\\cs('..style_templates['battle_name_2']..')%2\\cr] %3',
		[7] = '(.*)%s%s(.*)',
		[8] = '%1 ->\\cs('..style_templates['battle_name_2']..') %2\\cr',
	},
	[22] = { --Party Members casting spell
		[1] = '^([0-9]+:[0-9]+:[0-9]+:)(.*)',
		[2] = '\\cs('..style_templates['timestamp']..')%1\\cr%2',
		[3] = '^(.+[0-9]+:[0-9]+:[0-9]+.+)%[('..windower.ffxi.get_player().name..'\'?s?)%] ([0-9]+)(.*)',
		[4] = '%1[\\cs('..style_templates['battle_text_1']..')%2\\cr]\\cs('..style_templates['battle_dmg_1']..')%3\\cr%4',
		[5] = '^(.+[0-9]+:[0-9]+:[0-9]+.+)%[('..windower.ffxi.get_player().name..'\'?s?)%] (.+)',
		[6] = '%1[\\cs('..style_templates['battle_text_1']..')%2\\cr]%3',
		[7] = '^(.+[0-9]+:[0-9]+:[0-9]+.+)%[([^%]]+)%] ([^%(,]-[0-9]+)(.*)',
		[8] = '%1[\\cs('..style_templates['battle_text_1']..')%2\\cr]\\cs('..style_templates['battle_dmg_1']..')%3\\cr%4',
		[9] = '^(.+[0-9]+:[0-9]+:[0-9]+.+)%[([^%]]+)%](.+)',
		[10] = '%1[\\cs('..style_templates['battle_text_1']..')%2\\cr] %3',
		[11] = '(.*)%s%s(.*)',
		[12] = '%1 ->\\cs('..style_templates['battle_name_2']..') %2\\cr',
	},
	[23] = { --casting spell on trust?
		[1] = '^([0-9]+:[0-9]+:[0-9]+:)(.*)',
		[2] = '\\cs('..style_templates['timestamp']..')%1\\cr%2',
		[3] = '^(.+[0-9]+:[0-9]+:[0-9]+.+)('..windower.ffxi.get_player().name..'\'?s?)%]?(.+)',
		[4] = '%1[\\cs('..style_templates['battle_text_1']..')%2\\cr] %3',
		[5] = '^(.+[0-9]+:[0-9]+:[0-9]+.+)%[?('..windower.ffxi.get_player().name..'\'?s?.-)([0-9]+)(.*)',
		[6] = '%1%2\\cs('..style_templates['battle_dmg_1']..')%3\\cr%4',
		[7] = '^(.+[0-9]+:[0-9]+:[0-9]+.+)%[([^%]]+)%] (.-[0-9]+)(.*)',
		[8] = '%1[\\cs('..style_templates['battle_text_1']..')%2\\cr]\\cs('..style_templates['battle_dmg_1']..')%3\\cr%4',
		[9] = '^(.+[0-9]+:[0-9]+:[0-9]+.+)%[([^%]]+)%](.+)',
		[10] = '%1[\\cs('..style_templates['battle_text_1']..')%2\\cr] %3',
		[11] = '(.*)%s%s(.*)',
		[12] = '%1 ->\\cs('..style_templates['battle_name_2']..') %2\\cr',
	},
	[28] = { --battle
		[1] = '^([0-9]+:[0-9]+:[0-9]+:)(.*)',
		[2] = '\\cs('..style_templates['timestamp']..')%1\\cr%2',
		[3] = '^(.+[0-9]+:[0-9]+:[0-9]+.*)%[([^%]]+)%](.*) ('..windower.ffxi.get_player().name..').*$',
		[4] = '%1[\\cs('..style_templates['battle_name_2']..')%2\\cr]%3\\cs('..style_templates['battle_text_1']..')%4\\cr',
		[5] = '([^>]+)>.+('..windower.ffxi.get_player().name..')',
		[6] = '%1> \\cs('..style_templates['battle_text_1']..')%2\\cr',
		[7] = '^(.+[0-9]+:[0-9]+:[0-9]+.*)%[([^%]]+)%](.*) ('..windower.ffxi.get_player().name..').*$',
		[8] = '%1[\\cs('..style_templates['battle_name_2']..')%2\\cr]%3\\cs('..style_templates['battle_text_1']..')%4\\cr',
		[9] = '(.*)%s?(%s[0-9]+%s)(.*)',
		[10] = '%1\\cr\\cs('..style_templates['battle_dmg_1']..')%2\\cr%3',
		[11] ='(.*)%[([1-9]+)%](.*)',
		[12] ='%1[\\cs('..style_templates['battle_name_2']..')%2\\cr]%3',
	},
	[29] = { --battle
		[1] = '^([0-9]+:[0-9]+:[0-9]+:)(.*)',
		[2] = '\\cs('..style_templates['timestamp']..')%1\\cr%2',
		[3] = '^(.+[0-9]+:[0-9]+:[0-9]+.*)%[([^%]]+)%](.*)('..windower.ffxi.get_player().name..').*$',
		[4] = '%1[\\cs('..style_templates['battle_name_2']..')%2\\cr]%3\\cs('..style_templates['battle_text_1']..')%4\\cr',
		[5] = '([^>]+)>.+('..windower.ffxi.get_player().name..')',
		[6] = '%1> \\cs('..style_templates['battle_text_1']..')%2\\cr',
		[7] = '^(.+[0-9]+:[0-9]+:[0-9]+.+)%[([^%]]+)%] (.+)',
		[8] = '%1[\\cs('..style_templates['battle_name_2']..')%2\\cr] %3',
		[9] = '(.*)%s%s(.*)',
		[10] = '%1 -> %2',
		[11] ='(.*)%[([1-9]+)%](.*)',
		[12] ='%1[\\cs('..style_templates['battle_name_2']..')%2\\cr]%3',
	},
	[30] = {
		[1] = '^([0-9]+:[0-9]+:[0-9]+:)(.*)',
		[2] = '\\cs('..style_templates['timestamp']..')%1\\cr%2',
		[3] = '^(.+[0-9]+:[0-9]+:[0-9]+.+)%[('..windower.ffxi.get_player().name..'\'?s?)%]?(.*)',
		[4] = '%1[\\cs('..style_templates['battle_text_1']..')%2\\cr] %3',
		[3] = '^(.+[0-9]+:[0-9]+:[0-9]+.*)%[([^%]]+)%](.*) ('..windower.ffxi.get_player().name..').*$',
		[4] = '%1[\\cs('..style_templates['battle_name_2']..')%2\\cr] %3 \\cs('..style_templates['battle_text_1']..')%4\\cr',
		[5] = '^(.+[0-9]+:[0-9]+:[0-9]+.+)%[('..windower.ffxi.get_player().name..'\'?s?.-)([0-9]+)(.*)',
		[6] = '%1%2\\cr\\cs('..style_templates['battle_dmg_1']..')%3\\cr%4',
		[7] = '^(.+[0-9]+:[0-9]+:[0-9]+.+)%[([^%]\\]+)%] (.-[0-9]+)(.*)',
		[8] = '%1[\\cs('..style_templates['battle_text_1']..')%2\\cr]\\cs('..style_templates['battle_dmg_1']..')%3\\cr%4',
		[9] = '^(.+[0-9]+:[0-9]+:[0-9]+.+)%[([^%]]+)%]%s?(.+)',
		[10] = '%1[\\cs('..style_templates['battle_text_1']..')%2\\cr]%3',
		[11] = '(.*)%s%s(.*)',
		[12] = '%1 ->\\cs('..style_templates['battle_name_2']..') %2\\cr',
	},
	[31] = {
		[1] = '^([0-9]+:[0-9]+:[0-9]+:)(.*)',
		[2] = '\\cs('..style_templates['timestamp']..')%1\\cr%2',
		[3] = '(.*)'..string.char(129,168)..'(.*)',
		[4] = '%1->\\cs(240,230,140) %2\\cr',
		[5] = '([^>]+)>.+('..windower.ffxi.get_player().name..')',
		[6] = '%1> \\cs(0,255,255)%2\\cr',
	},
	[36] = { -- defeats
		[1] = '^([0-9]+:[0-9]+:[0-9]+:)(.*)',
		[2] = '\\cs('..style_templates['timestamp']..')%1\\cr%2',
		[3] = '^(.+[0-9]+:[0-9]+:[0-9]+.+)('..windower.ffxi.get_player().name..'\'?s?)%]? defeats (.+)',
		[4] = '%1[\\cs('..style_templates['player_name_1']..')%2\\cr] defeats \\cs(240,230,140)%3\\cr',
		[5] = '^(.+[0-9]+:[0-9]+:[0-9]+.*)%[([^%]]+)%](.*) ('..windower.ffxi.get_player().name..').*$',
		[6] = '%1[\\cs('..style_templates['battle_name_2']..')%2\\cr]%3\\cs('..style_templates['player_name_1']..')%4\\cr',
	},
	[50] = {
		[1] = '^([0-9]+:[0-9]+:[0-9]+:)(.*)',
		[2] = '\\cs('..style_templates['timestamp']..')%1\\cr%2',
		[3] = '^(.+[0-9]+:[0-9]+:[0-9]+:.-)%[('..windower.ffxi.get_player().name..'\'?s?)%] (.+)',
		[4] = '%1[\\cs('..style_templates['battle_text_1']..')%2\\cr] %3',
		[5] = '^(.+[0-9]+:[0-9]+:[0-9]+:.-%[)([^%]\\]+)%]? (.+)',
		[6] = '%1\\cs('..style_templates['battle_text_1']..')%2\\cr] %3',
		[7] = '(.*)%s%s(.*)',
		[8] = '%1 ->\\cs('..style_templates['battle_name_2']..') %2\\cr',
	},
	[56] = { -- Party member casting spell
		[1] = '^([0-9]+:[0-9]+:[0-9]+:)(.*)',
		[2] = '\\cs('..style_templates['timestamp']..')%1\\cr%2',
		[3] = '(.*)%s%s(.*)',
		[4] = '%1 ->\\cs('..style_templates['battle_name_2']..') %2\\cr',
		[5] = '([^>]+)>.+('..windower.ffxi.get_player().name..')',
		[6] = '%1 -> \\cs('..style_templates['battle_text_1']..')%2\\cr',
	},
	[57] = { -- Landed spell
		[1] = '^([0-9]+:[0-9]+:[0-9]+:)(.*)',
		[2] = '\\cs('..style_templates['timestamp']..')%1\\cr%2',
		[3] = '^(.+[0-9]+:[0-9]+:[0-9]+.+)('..windower.ffxi.get_player().name..'\'?s?)%]?(.+)',
		[4] = '%1[\\cs('..style_templates['battle_text_1']..')%2\\cr]%3',
		[5] = '(.*)%s%s(.*)',
		[6] = '%1 ->\\cs('..style_templates['battle_name_2']..') %2\\cr',
		[7] = '^(.+[0-9]+:[0-9]+:[0-9]+.-)('..windower.ffxi.get_player().name..') ([A-Za-z]+) .-([^%(]+)%(([^%)]+)%)',
		[8] = '%1[\\cs('..style_templates['battle_text_1']..')%2\\cr] %3 ->\\cs('..style_templates['battle_name_2']..')%4\\cr(%5)',
	},
	[63] = { -- No effect spell
		[1] = '^([0-9]+:[0-9]+:[0-9]+:)(.*)',
		[2] = '\\cs('..style_templates['timestamp']..')%1\\cr%2',
		[3] = '^(.+[0-9]+:[0-9]+:[0-9]+.-)('..windower.ffxi.get_player().name..') ([A-Za-z]+) .-([^%(]+)%(([^%)]+)%)',
		[4] = '%1[\\cs('..style_templates['battle_text_1']..')%2\\cr] %3 ->\\cs('..style_templates['battle_name_2']..')%4\\cr(%5)',
	},
	[90] = { -- Use item
		[1] = '^([0-9]+:[0-9]+:[0-9]+.+)%[('..windower.ffxi.get_player().name..')%](.+)',
		[2] = '\\cs('..style_templates['timestamp']..')%1\\cr[\\cs('..style_templates['battle_text_1']..')%2\\cr] %3',
		[3] = '^([0-9]+:[0-9]+:[0-9]+.+)%[([^%]]+)%](.+)',
		[4] = '\\cs('..style_templates['timestamp']..')%1\\cr[\\cs('..style_templates['battle_name_2']..')%2\\cr] %3',
		[5] = '(.*)%s%s(.*)',
		[6] = '%1 ->\\cs('..style_templates['battle_name_2']..') %2\\cr',
	},
	[101] = { -- job ability
		[1] = '^([0-9]+:[0-9]+:[0-9]+:)(.*)',
		[2] = '\\cs('..style_templates['timestamp']..')%1\\cr%2',
		[3] = '^(.+[0-9]+:[0-9]+:[0-9]+.-)%[?('..windower.ffxi.get_player().name..'\'?s?)%]?(.+)',
		[4] = '%1[\\cs('..style_templates['battle_text_1']..')%2\\cr]%3',
		[5] = '^(.+[0-9]+:[0-9]+:[0-9]+[^%[%(]-)%[([^%]]+)%](.+)',
		[6] = '%1[\\cs('..style_templates['battle_text_1']..')%2\\cr]%3',
		[7] = '(.*)%s%s(.*)',
		[8] = '%1 ->\\cs('..style_templates['battle_name_2']..') %2\\cr',
	},
	[110] = { --ws mob
		[1] = '^([0-9]+:[0-9]+:[0-9]+.+)('..windower.ffxi.get_player().name..'\'?s?)%]?%s?(.+)',
		[2] = '\\cs('..style_templates['timestamp']..')%1\\cr\\cs('..style_templates['battle_text_1']..')%2\\cr] %3',
		[3] = '^([0-9]+:[0-9]+:[0-9]+.+)%[([^%]]+)%]?%s?(.+)',
		[4] = '\\cs('..style_templates['timestamp']..')%1\\cr[\\cs('..style_templates['battle_name_2']..')%2\\cr] %3',
		[5] = '(.*)%s%s(.*)',
		[6] = '%1 ->\\cs('..style_templates['battle_name_2']..') %2\\cr',
	},
	[121] = { --AH / Search / DI evals / Synthesis
		[1] = '^([0-9]+:[0-9]+:[0-9]+:)Your (.+) sold',
		[2] = '\\cs('..style_templates['timestamp']..')%1\\crYour \\cs('..style_templates['ah_item']..')%2 \\cr\\cs('..style_templates['ah_text']..')sold.\\cr',
		[3] = '^([0-9]+:[0-9]+:[0-9]+:)You take the (.+) out(.+)',
		[4] = '\\cs('..style_templates['timestamp']..')%1\\cr\\cs('..style_templates['ah_text']..')You take the \\cs('..style_templates['ah_item']..')%2 \\cr\\cs('..style_templates['ah_text']..')out %3\\cr',
		[5] = '^([0-9]+:[0-9]+:[0-9]+:)(Slot [0-9]+).+buyer paid for the.?(.+).?you put on auction,.?(.+)',
		[6] = '\\cs('..style_templates['timestamp']..')%1\\cr\\cs('..style_templates['ah_text']..')%2 \\cr[\\cs('..style_templates['ah_item']..')%3\\cr] From AuctionHouse For: \\cs('..style_templates['ah_text']..')%4\\cr',
		[7] = '^([0-9]+:[0-9]+:[0-9]+:)(.+):(.*)', --Addon log message
		[8] = '\\cs('..style_templates['timestamp']..')%1\\cr[\\cs('..style_templates['addon_log_header']..')%2\\cr] \\cs('..style_templates['addon_log']..')%3\\cr',
		[9] = '^([0-9]+:[0-9]+:[0-9]+:)(.-)([0-9,]+)(.*)',
		[10] = '\\cs('..style_templates['timestamp']..')%1\\cr\\cs('..style_templates['ah_text']..')%2\\cr[\\cs('..style_templates['ah_highlight']..')%3\\cr]\\cs('..style_templates['ah_text']..')%4\\cr',
		[11] = '^([0-9]+:[0-9]+:[0-9]+:)(.*)',
		[12] = '\\cs('..style_templates['timestamp']..')%1\\cr\\cs('..style_templates['ah_text']..')%2\\cr',
		[13] = '(.*)%[.*%),.*cr%](.*)',
		[14] = '%1%2',
		[15] = '(.*)(%+).*%[.*%)([0-9]+).*cr%](.*)',
		[16] = '%1%2%3%4',
	},
	[122] = { -- Unable to see
		[1] = '^([0-9]+:[0-9]+:[0-9]+:)(.+) to see (.+).',
		[2] = '\\cs('..style_templates['timestamp']..')%1\\cr\\cs('..style_templates['battle_unable_see']..')%2 to see \\cr-> \\cs('..style_templates['battle_name_2']..')%3\\cr',
		[3] = '^([0-9]+:[0-9]+:[0-9]+:)(.+) is out of range.*$',
		[4] = '\\cs('..style_templates['timestamp']..')%1\\cr\\cs('..style_templates['battle_name_2']..')%2\\cr is out of range.',
		[5] = '^([0-9]+:[0-9]+:[0-9]+:)(.+) lose sight of (.+).',
		[6] = '\\cs('..style_templates['timestamp']..')%1\\cr%2 lose sight of \\cs('..style_templates['battle_name_2']..')%3\\cr.',
	},
	[123] = { -- Level of difficulty
		[1] = '^([0-9]+:[0-9]+:[0-9]+:)(.-)([0-9]+)(.*)',
		[2] = '\\cs('..style_templates['ilvl_message_time']..')%1\\cr\\cs('..style_templates['ilvl_message_text']..')%2\\cr[\\cs('..style_templates['ilvl_message_level']..')%3\\cr]\\cs('..style_templates['ilvl_message_text']..')%4\\cr',
		[3] = '^([0-9]+:[0-9]+:[0-9]+:)(.*)',
		[4] = '\\cs('..style_templates['ilvl_message_time']..')%1\\cr\\cs('..style_templates['ilvl_message_text']..')%2\\cr',
	},
	[127] = { -- ROE / Obtains
		[1] = '^([0-9]+:[0-9]+:[0-9]+:)(.-)([0-9]+)(.-)([0-9]+)%!',
		[2] = '\\cs('..style_templates['timestamp']..')%1\\cr\\cs('..style_templates['obtains_text']..')%2\\cr%3\\cs('..style_templates['obtains_text']..')%4\\cr%5!',
		[3] = '^([0-9]+:[0-9]+:[0-9]+:)(%a+):(.*)', --Addon log message
		[4] = '\\cs('..style_templates['timestamp']..')%1\\cr[\\cs('..style_templates['addon_log_header']..')%2\\cr]\\cs('..style_templates['addon_log']..')%3\\cr',
		[5] = '^([0-9]+:[0-9]+:[0-9]+:)([^:]+): (.*)',
		[6] = '\\cs('..style_templates['timestamp']..')%1\\cr\\cs('..style_templates['addon_log_header']..')%2\\cr -> %3',
		[7] = '^(.+[0-9]+:[0-9]+:[0-9]+.+)('..windower.ffxi.get_player().name..'\'?s?)%]? obtains an?(.+)',
		[8] = '\\cs('..style_templates['timestamp']..')%1\\cr[\\cs('..style_templates['player_name_1']..')%2\\cr] obtains a\\cs('..style_templates['obtains_item']..')%3\\cr',
		[9] = '^([0-9]+:[0-9]+:[0-9]+:)(.+)%.',
		[10] = '\\cs('..style_templates['timestamp']..')%1\\cr\\cs('..style_templates['obtains_text']..')%2\\cr.',
	},
	[129] = { -- Skillup
		[1] = '^([0-9]+:[0-9]+:[0-9]+:)(.*)',
		[2] = '\\cs('..style_templates['timestamp']..')%1\\cr\\cs('..style_templates['skillup_text']..')%2\\cr',
	},
	[131] = { -- XP
		[1] = '^([0-9]+:[0-9]+:[0-9]+:)(.-)([0-9]+)(.-)([0-9]+)%.',
		[2] = '\\cs('..style_templates['timestamp']..')%1\\cr\\cs('..style_templates['xp_text']..')%2\\cr%3\\cs('..style_templates['xp_text']..')%4\\cr%5.',
		[3] = '^([0-9]+:[0-9]+:[0-9]+:)(.*)',
		[4] = '\\cs('..style_templates['timestamp']..')%1\\cr\\cs('..style_templates['xp_text']..')%2\\cr',
		[5] = '(.-)([0-9]+) (.+)',
		[6] = '%1\\cr%2 \\cs('..style_templates['xp_text']..')%3\\cr',
		[7] = '(.*!).-('..windower.ffxi.get_player().name..')(.*)',
		[8] = '%1 %2%3',
	},
	[144] = { -- npc chat
		[1] = '^([0-9]+:[0-9]+:[0-9]+:)([^:]+) :(.*)',
		[2] = '\\cs('..style_templates['timestamp']..')%1\\cr**[\\cs('..style_templates['npc_name']..')%2\\cr]**\\cs('..style_templates['npc_text']..')%3\\cr'	
	},
	[148] = { -- instance queue / DI Finish Messages
		[1] = '^([0-9]+:[0-9]+:[0-9]+:)(.-)([0-9]+)(.-)%(GMT%).?$',
		[2] = '\\cs('..style_templates['timestamp']..')%1\\cr\\cs('..style_templates['instance_queue']..')%2\\cr[\\cs('..style_templates['instance_queue_highlight']..')%3\\cr]\\cs('..style_templates['instance_queue']..')%4\\cr',
		[3] = '^([0-9]+:[0-9]+:[0-9]+:)(.-)([0-9]+)([^0-9]+)([0-9]+)(.*)',
		[4] = '\\cs('..style_templates['timestamp']..')%1\\cr\\cs('..style_templates['instance_queue']..')%2\\cr[\\cs('..style_templates['instance_queue_highlight']..')%3\\cr]\\cs('..style_templates['instance_queue']..')%4\\cr[\\cs('..style_templates['instance_queue_highlight']..')%5\\cr]\\cs('..style_templates['instance_queue']..')%6\\cr',
		[5] = '^([0-9]+:[0-9]+:[0-9]+:)(.-)([0-9]+)(.*)',
		[6] = '\\cs('..style_templates['timestamp']..')%1\\cr\\cs('..style_templates['instance_queue']..')%2\\cr[\\cs('..style_templates['instance_queue_highlight']..')%3\\cr]\\cs('..style_templates['instance_queue']..')%4\\cr',
		[7] = '^([0-9]+:[0-9]+:[0-9]+:)(.*)',
		[8] = '\\cs('..style_templates['timestamp']..')%1\\cr\\cs('..style_templates['instance_queue']..')%2\\cr',
		
	},
	[150] = { -- npc chat
		[1] = '^([0-9]+:[0-9]+:[0-9]+:)([^:]+) :(.*)',
		[2] = '\\cs('..style_templates['timestamp']..')%1\\cr**[\\cs('..style_templates['npc_name']..')%2\\cr]**\\cs('..style_templates['npc_text']..')%3\\cr'	
	},
	[160] = { -- /checkparam
		[1] = '^([0-9]+:[0-9]+:[0-9]+:)(.*)',
		[2] = '\\cs('..style_templates['timestamp']..')%1\\cr%2',
		[3] = '^(.+[0-9]+:[0-9]+:[0-9]+:[^%[]+)%[([^%]]+)%] (.+)',
		[4] = '%1[\\cs('..style_templates['checkparam']..')%2\\cr] = %3',
	},
	[161] = { -- instance queue
		[1] = '^([0-9]+:[0-9]+:[0-9]+:)(.-)([0-9]+)(.*)',
		[2] = '\\cs('..style_templates['timestamp']..')%1\\cr\\cs('..style_templates['instance_queue']..')%2\\cr[\\cs('..style_templates['instance_queue_highlight']..')%3\\cr]\\cs('..style_templates['instance_queue']..')%4\\cr',
		[3] = '^([0-9]+:[0-9]+:[0-9]+:)(.*)',
		[4] = '\\cs('..style_templates['timestamp']..')%1\\cr\\cs('..style_templates['instance_queue']..')%2\\cr',
	},
	[190] = { -- npc chat
		[1] = '^([0-9]+:[0-9]+:[0-9]+:)(.*)',
		[2] = '\\cs('..style_templates['timestamp']..')%1\\cr\\cs('..style_templates['npc_text']..')%2\\cr'	
	},
	[191] = { --buff wear
		[1] = '^([0-9]+:[0-9]+:[0-9]+:)(.*) is no longer afflicted with (.*)',
		[2] = '\\cs('..style_templates['timestamp']..')%1\\cr[\\cs('..style_templates['battle_name_2']..')%2\\cr] is no longer afflicted with \\cs('..style_templates['battle_name_2']..')%3\\cr',
		[3] = '^([0-9]+:[0-9]+:[0-9]+:)(.*)',
		[4] = '\\cs('..style_templates['timestamp']..')%1\\cr%2',
		[5] = '^(.+[0-9]+:[0-9]+:[0-9]+.+)('..windower.ffxi.get_player().name..'\'?s?)%]? (.+)',
		[6] = '%1[\\cs('..style_templates['battle_name_1']..')%2\\cr] %3',
		[7] = '^(.+[0-9]+:[0-9]+:[0-9]+.+%[)([A-Za-z0-9%s]+)(%].*)',
		[8] = '%1\\cs('..style_templates['battle_name_2']..')%2\\cr%3',
		[9] = '^(.+[0-9]+:[0-9]+:[0-9]+:[^A-Z]+)([A-Za-z%s]+):? ([0-9]+) / ([A-Za-z%s]+):? ([0-9]+)',
		[10] = '%1[\\cs('..style_templates['checkparam']..')%2\\cr] = %3 [\\cs('..style_templates['checkparam']..')%4\\cr] = %5',
		[11] = '^(.+[0-9]+:[0-9]+:[0-9]+:[^A-Z]+)([A-Za-z%s]+):? ([0-9]+)',
		[12] = '%1[\\cs('..style_templates['checkparam']..')%2\\cr] = %3',
	},
	[207] = { -- Addon
		[1] = '^([0-9]+:[0-9]+:[0-9]+:)(%a+):(.*)', --Addon log message
		[2] = '\\cs('..style_templates['timestamp']..')%1\\cr[\\cs('..style_templates['addon_log_header']..')%2\\cr]\\cs('..style_templates['addon_log']..')%3\\cr',
	},
	[208] = { -- /checked
		[1] = '^([0-9]+:[0-9]+:[0-9]+:)(.*)',
		[2] = '\\cs('..style_templates['timestamp']..')%1\\cr\\cs('..style_templates['checked']..')%2\\cr',
	},
	[210] = { -- Trust Chat
		[1] = '^([0-9]+:[0-9]+:[0-9]+:)%(([^%)]+)%)(.*)',
		[2] = '\\cs('..style_templates['timestamp']..')%1\\cr(\\cs('..style_templates['trust_chat_highlight']..')%2\\cr)\\cs('..style_templates['trust_chat']..')%3\\cr',
	},
	[212] = { -- Unity
		[1] = '^([0-9]+:[0-9]+:[0-9]+:)(.*)',
		[2] = '\\cs('..style_templates['timestamp']..')%1\\cr\\cs('..style_templates['unity_chat']..')%2\\cr',
	},
	[213] = {
		[1] = '^([0-9]+:[0-9]+:[0-9]+)[^<]+<([^>]+)>(.*)',
		[2] = '\\cs('..style_templates['linkshell2_time']..')%1\\cr<\\cs('..style_templates['linkshell2_name']..')%2\\cr>\\cs('..style_templates['linkshell2_text']..')%3\\cr'
		},
	[214] = {
		[1] = '^([0-9]+:[0-9]+:[0-9]+)[^<]+<([^>]+)>(.*)',
		[2] = '\\cs('..style_templates['linkshell2_time']..')%1\\cr<\\cs('..style_templates['linkshell2_name']..')%2\\cr>\\cs('..style_templates['linkshell2_text']..')%3\\cr'
		},
	['default'] = {  --failsafe's if no id checks out it'll try to use these.
		[1] = '^([0-9]+:[0-9]+:[0-9]+:)(%a+):(.*)', --Addon log message
		[2] = '\\cs('..style_templates['timestamp']..')%1\\cr[\\cs('..style_templates['addon_log_header']..')%2\\cr]\\cs('..style_templates['addon_log']..')%3\\cr',
		[3] = '^([0-9]+:[0-9]+:[0-9]+)(.*)',
		[4] = '\\cs('..style_templates['timestamp']..')%1\\cr\\cs(255,250,250)%2\\cr',
	},
	['battle'] = { -- Initial Battle Filters, these shouldn't trigger, have most ID's mapped now.
		[1] = '^([0-9]+:[0-9]+:[0-9]+:)(.*)',
		[2] = '\\cs('..style_templates['timestamp']..')%1\\cr%2',
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