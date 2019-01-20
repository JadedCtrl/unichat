#!/bin/sh


function name_color8 {
	username="$1"

	case "$username" in
		"SonjaOfTheMoon") echo "$MAGENTA";;
		"EntropicPhantom") echo "$YELLOW";;
		"Sidhe_Trickster") echo "$GREEN";;
		"SecundaSonja") echo "$MAGENTA";;
		"CmdrCordovaOfficial") echo "$CYAN";;
		"LieutenantCordova") echo "$YELLOW";;
		"pwnz0rz") echo "$CYAN";;
		"pwnz1ing") echo "$YELLOW";;
		"pwnz2much") echo "$YELLOW";;
		"pwnz3r") echo "$CYAN";;
		"metampsychotic") echo "$YELLOW";;
		"FelisKitty") echo "$GREEN";;
		"CGoddess") echo "$CYAN";;
		"MatttheRA") echo "$MAGENTA";;
		"ReverseTheStreams") echo "$RED";;
		"Reverse_The_Streams") echo "$RED";;
		"dukerex") echo "$ORANGE";;
		"ItsDuckKingKarl") echo "$YELLOW";;
		"bloodshoes") echo "$ORANGE";;
		"AdmiralPancake") echo "$RED";;
		"Admiral_Pancake") echo "$RED";;
		"Admiral.Pancake") echo "$RED";;
		"Pancake_High_Admiral") echo "$RED";;
		"romanceconspirator") echo "$CYAN";;
		"apocalypseconspirator") echo "$CYAN";;
		"aardvarkconspirator") echo "$CYAN";;
		"silentconspirator") echo "$CYAN";;
		"Empress_Of_Silence") echo "$CYAN";;
		"banannaconspirator") echo "$CYAN";;
		"billygoatconspirator") echo "$CYAN";;
		"bobtheconspirator") echo "$CYAN";;
		"quixoticconspirator") echo "$CYAN";;
		"yellowconspirator") echo "$CYAN";;
		"lemmingconspirator") echo "$CYAN";;
		"largeconspirator") echo "$CYAN";;
		"sillyconspirator") echo "$CYAN";;
		"lackadaisicalconspirator") echo "$CYAN";;
		"bouncyconspirator") echo "$CYAN";;
		"wildfireconspirator") echo "$CYAN";;
		"zygoteconspirator") echo "$CYAN";;
		"Pancomputer") echo "$GREEN";;
		"Anarchon") echo "$YELLOW";;
		"DrHorrible") echo "$YELLOW";;
		"venemous") echo "$BLUE";;
		"m1ndh1ve1") echo "$GREEN";;
		"Bulwark") echo "$GREEN";;
		"BULWARK") echo "$GREEN";;
		"GodsOfOlympus") echo "$BLUE";;
		"OITHEOI") echo "$BLUE";;
		"TA_DAIMONIA") echo "$BLUE";;
		"Theodore_Oien") echo "$BLUE";;
		"__RSPTN__") echo "$BLUE";;
		"ThatOneVampChick") echo "$MAGENTA";;
		"MrE") echo "$ORANGE";;
		"CaptainKoreaboo") echo "$CYAN";;
		"Unus_Relicuum") echo "$BLUE";;
		"Unum_Relicuum") echo "$BLUE";;
		"HadesRealmOfficial") echo "$ORANGE";;
		"VladmirOrlovOfficial") echo "$YELLOW";;
		"BBC_Official") echo "$ORANGE";;
		"BuzzfeedOfficial") echo "$BLUE";;
		"algranon") echo "$GREEN";;
		"DOGFOODLID") echo "$YELLOW";;
		"xX_RabbitFan_Xx") echo "$YELLOW";;
		"giant_death_ferret") echo "$BROWN";;
		"WhoRemembers") echo "$BROWN";;
		"RED") echo "$RED";;
		"YELLOW") echo "$YELLOW";;
		"GREEN") echo "$GREEN";;
		"BLUE") echo "$BLUE";;
		"PURPLE") echo "$MAGENTA";;
		"WHITE") echo "$WHITE";;
		"JUPITER") echo "$RED";;
		"HERA") echo "$RED";;
		"NEPTUNE") echo "$RED";;
		"MINERVA") echo "$RED";;
		"ARES") echo "$RED";;
		"APHRODITE") echo "$RED";;
		"TheRealHannah") echo "$GREEN";;
		"not_metampsychotic") echo "$YELLOW";;
		"Do_I_know_this_guy") echo "$CYAN";;
		"EntropicKitten") echo "$YELLOW";;
		"SonjaOfTheMeow") echo "$VIOLET";;
		"purrz0rz") echo "$CYAN";;
		"meowtampsychotic") echo "$YELLOW";;
		"AdogmiralPanbark") echo "$RED";;
		"Adogmiral_Panbark") echo "$RED";;
		"Dellis") echo "$GREEN";;
		"DefinitelyNotAnUmbrella") echo "$MAGENTA";;
		"Seabiscuit") echo "$BLUE";;
		"Arbiter") echo "$BLUE";;
		"TempShoulderAngel") echo "$MAGENTA";;
		"_TempShoulderAngel") echo "$MAGENTA";;
		"HotFuzzFacts") echo "$BLUE";;
		"HotFuzzFacts2") echo "$BLUE";;
		"HotFuzzFacts3") echo "$BLUE";;
		"HotFuzzFacts4") echo "$BLUE";;
		"HotFuzzFacts5") echo "$BLUE";;
		"HotFuzzFacts6") echo "$BLUE";;
		"HotFuzzFacts7") echo "$BLUE";;
		"HotFuzzFacts8") echo "$BLUE";;
		"HotFuzzFacts9") echo "$BLUE";;
		"HotFuzzFacts413") echo "$BLUE";;
		"HotFuzzFacts414") echo "$BLUE";;
		"HotFuzzFacts415") echo "$BLUE";;
		"HotFuzzFacts416") echo "$BLUE";;
		"KittenLicks") echo "$CYAN";;
		"Xenocartographer") echo "$BROWN";;
		"GAIA") echo "$BROWN";;
		"etamnanki") echo "$BROWN";;
		"SansFinalGuardian") echo "$BLUE";;
		"SansOfTheUnderground") echo "$YELLOW";;
		"SansTheComic") echo "$GREEN";;
		"endsoftime") echo "$MAGENTA";;
		"DeepDark") echo "$YELLOW";;
		"BookOfQuantumFlux") echo "$BROWN";;
		"reddragonfall") echo "$GRAY";;
		"Turquoise") echo "$GREEN";;
		"judge_of_character") echo "$BROWN";;
		"Wildcat") echo "$RED";;
		"Wildcat2") echo "$MAGENTA";;
		"__Delta__") echo "$RED";;
		"ppDeltapp") echo "$RED";;
		"Padlock") echo "$GRAY";;
		"Mini_coopa2") echo "$GRAY";;
		"The44th") echo "$MAGENTA";;
		"Ravencorp") echo "$BLUE";;
		"CONNECT_1200") echo "$GRAY";;
		"FallenLeaves") echo "$YELLOW";;
		"Pixelknight") echo "$BLUE";;
		"SteveTheMewHunter") echo "$CYAN";;
		"Stargazer") echo "$BLUE";;
		"TheDerangedOne") echo "$BLUE";;
		"russiansoldier1") echo "$RED";;
		"russiansoldier2") echo "$ORANGE";;
	esac
}

function colorize_name8 {
	username="$1"

	echo "$(name_color8 "$username")${username}$RESET"
}
