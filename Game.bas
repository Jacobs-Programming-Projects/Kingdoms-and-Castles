'initialize variables
COMMON SHARED specificbuy$
COMMON SHARED name$
COMMON SHARED class
COMMON SHARED class1
COMMON SHARED class2
COMMON SHARED level
COMMON SHARED levelup
COMMON SHARED experience
COMMON SHARED maxhealth
COMMON SHARED health
COMMON SHARED maxmana
COMMON SHARED mana
COMMON SHARED class2r
COMMON SHARED switch
COMMON SHARED drop$
COMMON SHARED mageq1
COMMON SHARED thiefq1
COMMON SHARED warq1
COMMON SHARED add
COMMON SHARED maxspeed
COMMON SHARED speed
COMMON SHARED wander1
COMMON SHARED meleeattack
COMMON SHARED tempmeleeattack
COMMON SHARED tempmeleedefense
COMMON SHARED tempspellattack
COMMON SHARED tempspelldefense
COMMON SHARED spellattack
COMMON SHARED meleedefense
COMMON SHARED spelldefense
COMMON SHARED omaxhealth
COMMON SHARED ohealth
COMMON SHARED omaxmana
COMMON SHARED omana
COMMON SHARED omaxspeed
COMMON SHARED ospeed
COMMON SHARED omeleeattack
COMMON SHARED otempmeleeattack
COMMON SHARED otempmeleedefense
COMMON SHARED otempspellattack
COMMON SHARED otempspelldefense
COMMON SHARED ospellattack
COMMON SHARED omeleedefense
COMMON SHARED ospelldefense
COMMON SHARED money
COMMON SHARED buy
COMMON SHARED eweapon1
COMMON SHARED eweapon2
COMMON SHARED weapon1
COMMON SHARED weapon2
COMMON SHARED weapon3
COMMON SHARED weapon4
COMMON SHARED weapon5
COMMON SHARED earmor
COMMON SHARED armor1
COMMON SHARED armor2
COMMON SHARED s1
COMMON SHARED s2
COMMON SHARED s3
COMMON SHARED s4
COMMON SHARED s5
COMMON SHARED s6
COMMON SHARED s7
COMMON SHARED s8
COMMON SHARED s9
COMMON SHARED s10
COMMON SHARED os1
COMMON SHARED answer
COMMON SHARED os2
COMMON SHARED os3
COMMON SHARED oarmor
COMMON SHARED oweapon1
COMMON SHARED oweapon2
COMMON SHARED timesham
COMMON SHARED timesvil
COMMON SHARED timestown
COMMON SHARED timescity
COMMON SHARED timescap
COMMON SHARED civ
COMMON SHARED civilization$
COMMON SHARED quest
COMMON SHARED q1
COMMON SHARED cost
COMMON SHARED questscompleted
COMMON SHARED talkto
COMMON SHARED answer$
COMMON SHARED totalexperience
COMMON SHARED rand1
COMMON SHARED rand2
RANDOMIZE TIMER
COLOR 2, 0
_FULLSCREEN
class2r = 0
CLS
SLEEP
PLAY "MB O3 ML T90 L8 E2<AB>CDE4.CE4.CE4.<A>C<AE>C<A2"
'Initialize Weapons
PRINT "Kingdoms & Castles"
timesham = 0
timesvil = 0
timestown = 0
timescity = 0
timescap = 0
civ = 1
mageq1 = 0
thiefq1 = 0
warq1 = 0
item1 = 0
item2 = 0
item3 = 0
item4 = 0
item5 = 0
PRINT "A turn-based role-playing game"
PRINT "(Use space for continue and enter for input)"
SLEEP
CLS
INPUT "What is your name: ", name$
class:
INPUT "What is your class: 1 = Mage, 2 = Warrior, 3 = Thief, 4 = Help ", class
CLS
IF class = 1 THEN GOTO mage
IF class = 2 THEN GOTO warrior
IF class = 3 THEN GOTO thief
PRINT "Help Guide"
PRINT "Castles and Kingdoms is a Turn-Based RPG"
PRINT "You start out as a beginner in one of three guilds: Mage, Warrior, and Thief"
PRINT "There are other guilds too in the game"
PRINT "Eventually, you may join another guild in addition to your primary guild"
PRINT "Each guild starts with a basic weapon and armor and two or three skills or spells"
PRINT "Be careful because you can have a max of 10 spells and/or skills"
SLEEP
PRINT "Your stats are:"
PRINT "Experience, Level,"
PRINT "Max Health, Current Health"
PRINT "Max Mana, Current Mana"
PRINT "Max Speed, Current Speed"
PRINT "Melee Attack, Spell Attack,"
PRINT "Melee Defense and Spell Defense"
PRINT "Everyone also has money"
PRINT "To use a spell, you must have a hand free or use a magical weapon"
PRINT "Unless otherwise noted, all weapons are 1 handed"
PRINT "You can use both hands each turn"
PRINT "In a battle, the faster person goes first"
startstat:
INPUT "What class do you want to learn about: 1 = Mage, 2 = Warrior, 3 = Thief, 4 = Quit ", class
CLS
IF class = 1 THEN GOTO magestart
IF class = 2 THEN GOTO warriorstart
IF class = 3 THEN GOTO thiefstart
GOTO class
magestart:
PRINT "Mage"
PRINT "Health: 250"
PRINT "Mana: 75"
PRINT "Speed: 50"
PRINT "Melee Attack: 25"
PRINT "Spell Attack: 75"
PRINT "Melee Defense: 25"
PRINT "Spell Defense: 75"
PRINT "Money: 50-100"
SLEEP
PRINT "Weapons:"
PRINT "Amateur's Staff - Melee Damage: +5-10, Spell Damage: +10-15"
PRINT "Armor:"
PRINT "Amateur's Cloak - Melee Defense: +1-2, Spell Defense: +2-5"
PRINT "Spells:"
PRINT "Fire Ball: +25 Spell Attack,  Chance of light Burning (lose 5% of health per turn) Opponent, -5 Mana"
PRINT "Basic Heal: +50 Health, -5 Mana"
PRINT "Skill:"
PRINT "Mana Restore: -100 Health +10 Mana, Chance of light Poisoning (lose 5% of health per turn) Self"
SLEEP
GOTO startstat
warriorstart:
PRINT "Warrior"
PRINT "Health: 250"
PRINT "Mana: 25"
PRINT "Speed: 45"
PRINT "Melee Attack: 75"
PRINT "Spell Attack: 25"
PRINT "Melee Defense: 25"
PRINT "Spell Defense: 75"
PRINT "Money: 40-90"
SLEEP
PRINT "Weapons:"
PRINT "Basic Iron Sword - (Hand and a Half), If two-handed, +20-35 Melee Attack"
PRINT "If One Handed, +15-25 Melee Attack"
PRINT "Armor:"
PRINT "Light Bronze Armor - +10 Melee Defense"
PRINT "Skills:"
PRINT "Berserker: Melee Damage given, plus all Damage received, doubles for five turns"
PRINT "(cannot be used for next 10 turns)"
PRINT "Charge: Additional 1/2 Damage this Turn"
PRINT "(cannot be used for next 5 turns)"
PRINT "War Dance: -25 Health, +5 Melee Attack"
SLEEP
GOTO startstat
thiefstart:
PRINT "Thief"
PRINT "Health: 250"
PRINT "Mana: 50"
PRINT "Speed: 55"
PRINT "Melee Attack: 50"
PRINT "Spell Attack: 50"
PRINT "Melee Defense: 50"
PRINT "Spell Defense: 50"
PRINT "Money: 60-110"
SLEEP
PRINT "Weapons:"
PRINT "Iron Dagger - +15-25"
PRINT "Armor:"
PRINT "Stealth Cloak - Confrontation 50% less likely"
PRINT "Spell:"
PRINT "Dark Cloud - 50% Chance of Opponent Miss Next 5 Turns -5 Mana"
PRINT "Skills:"
PRINT "Sneak Attack - On First Turn, If You Move First and Attack with a Dagger, +75 Melee Attack"
PRINT "Run Away - Can Leave any non-Boss Battle"
SLEEP
GOTO startstat
mage:
class1 = 2
class2 = 0
level = 1
levelup = 1
experience = 0
totalexperience = experience
maxhealth = 250
health = 250
maxmana = 75
mana = 75
maxspeed = 50
speed = 50
meleeattack = 25
spellattack = 75
meleedefense = 25
spelldefense = 75
money = CINT(RND * (100 - 50)) + 50
eweapon1 = 1
eweapon2 = 0
weapon1 = 1
weapon2 = 0
weapon3 = 0
weapon4 = 0
weapon5 = 0
earmor = 1
armor1 = 1
armor2 = 0
s1 = 1
s2 = 2
s3 = 3
s4 = 0
s5 = 0
s6 = 0
s7 = 0
s8 = 0
s9 = 0
s10 = 0
GOTO start
warrior:
class1 = 2
class2 = 0
level = 1
levelup = 1
experience = 0
totalexperience = experience
maxhealth = 250
health = 250
maxmana = 25
mana = 25
maxspeed = 45
speed = 45
meleeattack = 75
spellattack = 25
meleedefense = 75
spelldefense = 25
money = CINT(RND * (90 - 40)) + 40
eweapon1 = 2
eweapon2 = 2
weapon1 = 2
weapon2 = 0
weapon3 = 0
weapon4 = 0
weapon5 = 0
earmor = 2
armor1 = 2
armor2 = 0
s1 = 4
s2 = 5
s3 = 6
s4 = 0
s5 = 0
s6 = 0
s7 = 0
s8 = 0
s9 = 0
s10 = 0
GOTO start
thief:
class1 = 3
class2 = 0
level = 1
levelup = 1
experience = 0
totalexperience = experience
maxhealth = 250
health = 250
maxmana = 50
mana = 50
maxspeed = 55
speed = 55
meleeattack = 50
spellattack = 50
meleedefense = 50
spelldefense = 50
money = CINT(RND * (110 - 60)) + 60
eweapon1 = 3
eweapon2 = 0
weapon1 = 3
weapon2 = 0
weapon3 = 0
weapon4 = 0
weapon5 = 0
earmor = 3
armor1 = 3
armor2 = 0
s1 = 7
s2 = 8
s3 = 9
s4 = 0
s5 = 0
s6 = 0
s7 = 0
s8 = 0
s9 = 0
s10 = 0
GOTO start
start:
IF civ = 1 THEN GOTO hamlet
IF civ = 2 THEN GOTO village
IF civ = 3 THEN GOTO town
IF civ = 4 THEN GOTO city
IF civ = 5 THEN GOTO capital
hamlet:
PLAY "mb t236 l6 o2 ddd l2 ml g o3 dd mn l6 c o2 ba l2 o3 ml gdd"
PLAY "mb mn l6 c o2 ba ml l2 o3 gdd mn l6 c o2 b o3 c l2 ml o2 a1a4 p4 mn"
PLAY "mb t236 l6 o2 ddd l2 ml g o3 dd mn l6 c o2 ba l2 o3 ml gdd"
PLAY "mb mn l6 c o2 ba ml l2 o3 gdd mn l6 c o2 b o3 c l2 ml o2 a1a4 p4 mn"
PLAY "mb t136 mn o3 l8"
PLAY "mb p4 mn o2 l8 d4 e4.e o3c o2 bag l12 gab l8 a8. e16f+4d8. d"
PLAY "mb e4.e o3 c o2 bag o3 d8.o2   a16 ml a4a4 mn d4 e4.e O3 c o2 bag "
PLAY "mb l12 gaba8. e16 f+4 o3 d8. d16 l16   g8. fe-8. d c8. o2 b-a8. g"
PLAY "mb o3 d2"
PLAY "mb t236 l6 o2 ddd l2 ml g o3 dd mn l6 c o2 ba l2 o3 ml gdd"
PLAY "mb mn l6 c o2 ba ml l2 o3 gdd mn l6 co2 b o3c l2 ml o2a1a4 p4 mn"
PLAY "mb t236 l6 o2 ddd l2 ml g o3 dd mn l6 c o2 ba l2 o3 ml gdd"
PLAY "mb mn l6 c o2ba ml l2 o3gdd mn l6 co2bo3c l2 ml o2a1a4 p4 mn"
PLAY "mb l6 o3 mn ddd ml l1 gggg4 p4 p4 mn l12 dddg2"
CLS
timesham = timesham + 1
civ = 1
civilization$ = "hamlet"
inham:
CLS
PRINT "Would you like to:"
PRINT "1 = Just Talk to People"
PRINT "2 = View Your Stats & Inventory"
PRINT "3 = Visit the Market"
PRINT "4 = Visit the Guild"
PRINT "5 = Go Wandering"
IF q1 = 1 THEN PRINT "6 = Rank up in a civilization"
INPUT ": ", todo
IF todo = 1 THEN CALL talk
IF todo = 2 THEN CALL inventory
IF todo = 3 THEN CALL market
IF todo = 4 THEN CALL guilds
IF todo = 5 THEN CALL Woods
IF todo = 6 AND q1 = 1 THEN CALL continued
IF todo = 7 THEN CALL die
GOTO inham
village:

invillage:

town:

intown:

city:

incity:

capital:

incapital:





'start of subs


SUB talk
CLS
IF civ = 1 THEN CALL talkham
END SUB

SUB talkham
talkto = CINT(RND * (2 - 1)) + 1
IF talkto = 1 THEN CALL talk11
IF talkto = 2 THEN CALL talk12
END SUB

SUB talk11
PRINT "Hi, I'm Fred the Butcher"
PRINT "I have a knife for sale"
knife:
PRINT "It Costs 20"
PRINT "You have ", money
INPUT "Wanna buy it: (y/n) ", answer$
specificbuy$ = "w4"
IF answer$ = "y" OR answer$ = "Y" OR answer$ = "yes" OR answer$ = "Yes" THEN
    buy = 4
    cost = 20
    CALL purchaseweapon
END IF
IF answer$ = "specs" OR answer$ = "Specs" THEN
    PRINT "One Handed"
    PRINT "Melee Damage: +10-20"
END IF
IF answer$ = "specs" OR answer$ = "Specs" THEN GOTO knife
PRINT "Nice doing Business with you"
SLEEP
CALL inventoryweapon
PRINT "Money: ", money
SLEEP
END SUB

SUB talk12
PRINT "There is an old man"
PRINT "(Muttering) North West South West North North East"
SLEEP
END SUB

SUB purchaseweapon
purchase:
CLS
money = money - cost
IF weapon1 <> 0 AND weapon2 <> 0 AND weapon3 <> 0 AND weapon4 <> 0 AND weapon5 <> 0 THEN CALL deletew
IF weapon1 = 0 THEN
    weapon1 = buy
ELSEIF weapon2 = 0 THEN
    weapon2 = buy
ELSEIF weapon3 = 0 THEN
    weapon3 = buy
ELSEIF weapon4 = 0 THEN
    weapon4 = buy
ELSEIF weapon5 = 0 THEN
    weapon5 = buy
END IF
END SUB

SUB inventoryweapon
CLS
IF eweapon1 = eweapon2 OR eweapon2 = 0 THEN
    PRINT "Equipped Weapon: ", eweapon1
ELSE
    PRINT "Equipped Weapon 1: ", eweapon1
    PRINT "Equipped Weapon 2: ", eweapon2
END IF
IF weapon1 <> 0 THEN PRINT "Weapon 1: ", weapon1
IF weapon2 <> 0 THEN PRINT "Weapon 2: ", weapon2
IF weapon3 <> 0 THEN PRINT "Weapon 3: ", weapon3
IF weapon4 <> 0 THEN PRINT "Weapon 4: ", weapon4
IF weapon5 <> 0 THEN PRINT "Weapon 5: ", weapon5
IF armor1 <> 0 THEN PRINT "Armor 1: ", armor1
IF armor2 <> 0 THEN PRINT "Armor 2: ", armor2
multihandcheck:
INPUT "Would you like to change the equipped weapon: (y/n) ", answer$
IF answer$ = "y" OR answer$ = "Y" OR answer$ = "yes" OR answer$ = "Yes" THEN
    INPUT "Which would you like to change to: (#) ", answer
    hand1 = checkhand1(answer)
    hand2 = checkhand2(answer)
    IF answer <> weapon1 AND answer <> weapon2 AND answer <> weapon3 AND answer <> weapon4 AND answer <> weapon5 THEN
        PRINT "You don't have that weapon"
    ELSEIF hand1 = hand2 AND hand1 = 1 AND eweapon2 = 0 AND (answer = weapon1 OR answer = weapon2 OR answer = weapon3 OR answer = weapon4 OR answer = weapon5) THEN
        eweapon2 = answer
    ELSEIF hand1 = hand2 AND hand1 = 2 THEN
        eweapon1 = answer
        eweapon2 = answer
    ELSEIF hand1 = hand2 AND hand1 = 1 AND eweapon2 <> 0 THEN
        INPUT "Which hand would you like to switch", switch
        IF switch = 1 THEN eweapon1 = answer
        IF switch = 2 THEN eweapon2 = answer
    END IF
    CALL checkhand3
    IF multiweaponcheck = 1 THEN
        eweapon1 = tempeweapon1
        eweapon2 = tempeweapon2
        GOTO multihandcheck
    END IF
END IF
END SUB

SUB inventory
CALL inventoryweapon
CALL inventorystat
CALL inventoryother
END SUB

SUB inventorystat
IF class2 = 0 THEN
    PRINT "Class: ", class1
ELSE
    PRINT "Primary Class: ", class1
    PRINT "Secondary Class: ", class2
END IF
PRINT "Level: ", level
PRINT "Experience to next level: ", levelup
PRINT "Experience: ", experience
PRINT "Total Experience: ", totalexperience
PRINT "Max Health: ", maxhealth
PRINT "Current Health: ", health
SLEEP
CLS
PRINT "Max Mana: ", maxmana
PRINT "Current Mana: ", mana
PRINT "Max Speed: ", maxspeed
PRINT "Current Speed: ", speed
PRINT "Melee Attack: ", meleeattack
PRINT "Melee Defense: ", meleedefense
PRINT "Spell Attack: ", spellattack
PRINT "Spell Defense: ", spelldefense
maxspeed = 45
IF s1 <> 0 THEN PRINT "Skill/Spell 1: ", s1
IF s2 <> 0 THEN PRINT "Skill/Spell 2: ", s2
IF s3 <> 0 THEN PRINT "Skill/Spell 3: ", s3
IF s4 <> 0 THEN PRINT "Skill/Spell 4: ", s4
IF s5 <> 0 THEN PRINT "Skill/Spell 5: ", s5
IF s6 <> 0 THEN PRINT "Skill/Spell 6: ", s6
IF s7 <> 0 THEN PRINT "Skill/Spell 7: ", s7
IF s8 <> 0 THEN PRINT "Skill/Spell 8: ", s8
IF s9 <> 0 THEN PRINT "Skill/Spell 9: ", s9
IF s10 <> 0 THEN PRINT "Skill/Spell 10: ", s10
END SUB

SUB inventoryother
CLS
PRINT "Money: ", money
IF item1 = 0 AND item2 = 0 AND item3 = 0 AND item4 = 0 AND item5 = 0 THEN
    PRINT "You have no special items"
ELSE
    IF item1 <> 0 THEN PRINT "Item 1: ", item1
    IF item1 <> 0 THEN PRINT "Item 2: ", item2
    IF item1 <> 0 THEN PRINT "Item 3: ", item3
    IF item1 <> 0 THEN PRINT "Item 4: ", item4
    IF item1 <> 0 THEN PRINT "Item 5: ", item5
END IF
SLEEP
END SUB

SUB deletew
PRINT "Which weapon would you like to drop (#)?"
INPUT "(You can also check inventory) ", drop$
IF drop$ = "inventory" OR drop$ = "Inventory" THEN CALL inventory
IF drop$ = "1" THEN weapon1 = 0
IF drop$ = "2" THEN weapon2 = 0
IF drop$ = "3" THEN weapon3 = 0
IF drop$ = "4" THEN weapon4 = 0
IF drop$ = "5" THEN weapon5 = 0
END SUB

SUB guilds
IF civ = 1 THEN CALL guildsham
END SUB

SUB guildsham
rand1 = CINT(RND * (3 - 1)) + 1
rand2 = CINT(RND * (3 - 1)) + 1
IF rand1 = rand2 AND class2 = 0 THEN CALL newguild
guildham:
IF class2 = 0 THEN
    IF class1 = 1 THEN CALL mageham
    IF class1 = 2 THEN CALL warham
    IF class1 = 3 THEN CALL thiefham
ELSE
    INPUT "Which guild would you like to visit: ", answer
    IF answer = class1 OR answer = class2 THEN
        IF answer = 1 THEN CALL mageham
        IF answer = 2 THEN CALL warham
        IF answer = 3 THEN CALL thiefham
    END IF
    IF answer <> class1 AND answer <> class2 THEN
        PRINT "You don't belong to that guild!"
        GOTO guildham
    END IF
END IF
END SUB

SUB newguild
CLS
PRINT "Special offer: Join a new guild"
newguild1:
INPUT "What guild would you like to join: ", answer
IF answer = class1 THEN
    PRINT "You are already part of that guild!"
    GOTO newguild1
ELSEIF answer = 1 OR answer = 2 OR answer = 3 THEN
    class2 = answer
ELSE
    PRINT "That's not a guild number"
    GOTO newguild1
END IF
END SUB

SUB mageham
PRINT "Welcome to the Guild of the Mages."
SLEEP
IF class1 <> 1 AND class2r = 0 THEN
    PRINT "Because you have just joined"
    PRINT "Here is your staff and cloak"
    add = 1
    CALL addweapon
    add = 1
    CALL addarmor
    PRINT "We will now teach you the necessary"
    PRINT "Skills/Spells to join our guild"
    add = 1
    CALL addskill
    add = 2
    CALL addskill
    add = 3
    CALL addskill
    class2r = 1
END IF
IF q1 = 0 THEN
    PRINT "In the woods, there is a cave"
    PRINT "Inside the cave there is a dreadful monster,"
    PRINT "A Fire Elemental"
    PRINT "He has kept anyone from entering the forest"
    PRINT "If you defeat him, it will free the people"
    PRINT "And increase this guilds stature in this town"
    PRINT "When you return, if you survive, we will bestow"
    PRINT "A mighty gift upon you"
    SLEEP
END IF
IF q1 = 1 AND mageq1 <> 1 THEN
    PRINT "You have bested the mighty Fire Elemental"
    PRINT "Please accept this as a token of our gratitude"
    add = 4
    CALL addarmor
    PRINT "You received the Coat of Adamant"
    SLEEP
    mageq1 = 1
END IF
END SUB

SUB warham
PRINT "Welcome to the Warriors Guild."
SLEEP
IF class1 <> 2 AND class2r = 0 THEN
    PRINT "Because you have just joined"
    PRINT "Here is your sword and armor"
    add = 2
    CALL addweapon
    add = 2
    CALL addarmor
    PRINT "We will now teach you the necessary"
    PRINT "Skills/Spells to join our guild"
    add = 4
    CALL addskill
    add = 5
    CALL addskill
    add = 6
    CALL addskill
    class2r = 1
END IF
IF q1 = 0 THEN
    PRINT "In the woods, there is a cave"
    PRINT "Inside the cave there is a dreadful monster,"
    PRINT "A Fire Elemental"
    PRINT "He has kept anyone from entering the forest"
    PRINT "If you defeat him, it will free the people"
    PRINT "And increase this guilds stature in this town"
    PRINT "When you return, if you survive, we will bestow"
    PRINT "A mighty gift upon you"
    SLEEP
END IF
IF q1 = 1 AND warq1 <> 1 THEN
    PRINT "You have bested the mighty Fire Elemental"
    PRINT "Please accept this as a token of our gratitude"
    add = 5
    CALL addweapon
    PRINT "You received the Claymore"
    SLEEP
    warq1 = 1
END IF
END SUB

SUB thiefham
PRINT "Welcome to the Thieves Guild."
SLEEP
IF class1 <> 3 AND class2r = 0 THEN
    PRINT "Because you have just joined"
    PRINT "Here is your sword and armor"
    add = 3
    CALL addweapon
    add = 3
    CALL addarmor
    PRINT "We will now teach you the necessary"
    PRINT "Skills/Spells to join our guild"
    add = 7
    CALL addskill
    add = 8
    CALL addskill
    add = 9
    CALL addskill
    class2r = 1
END IF
IF q1 = 0 THEN
    PRINT "In the woods, there is a cave"
    PRINT "Inside the cave there is a dreadful monster,"
    PRINT "A Fire Elemental"
    PRINT "He has kept anyone from entering the forest"
    PRINT "If you defeat him, it will free the people"
    PRINT "And increase this guilds stature in this town"
    PRINT "When you return, if you survive, we will bestow"
    PRINT "A mighty gift upon you"
    SLEEP
END IF
IF q1 = 1 AND thiefq1 <> 1 THEN
    PRINT "You have bested the mighty Fire Elemental"
    PRINT "Please read this as a token of our gratitude"
    add = 10
    CALL addskill
    SLEEP
    thiefq1 = 1
END IF
END SUB

FUNCTION checkhand1 (hands)
IF hands = 1 THEN checkhand1 = 1
IF hands = 2 THEN checkhand1 = 1
IF hands = 3 THEN checkhand1 = 1
IF hands = 4 THEN checkhand1 = 1
IF hands = 5 THEN checkhand1 = 2
END FUNCTION

FUNCTION checkhand2 (hands)
IF hands = 1 THEN checkhand2 = 1
IF hands = 2 THEN checkhand2 = 2
IF hands = 3 THEN checkhand2 = 1
IF hands = 4 THEN checkhand2 = 1
IF hands = 5 THEN checkhand2 = 2
END FUNCTION

SUB checkhand3
IF eweapon1 = eweapon2 AND eweapon2 <> 0 THEN
    hand1 = checkhand1(answer)
    hand2 = checkhand2(answer)
    IF hand1 <> 2 AND hand2 <> 2 THEN
        IF eweapon1 = weapon1 THEN
            IF eweapon2 = weapon2 THEN
                multiweaponcheck = 0
            END IF
            IF eweapon2 = weapon3 THEN
                multiweaponcheck = 0
            END IF
            IF eweapon2 = weapon4 THEN
                multiweaponcheck = 0
            END IF
            IF eweapon2 = weapon5 THEN
                multiweaponcheck = 0
            END IF
        ELSEIF eweapon1 = weapon2 THEN
            IF eweapon2 = weapon1 THEN
                multiweaponcheck = 0
            END IF
            IF eweapon2 = weapon3 THEN
                multiweaponcheck = 0
            END IF
            IF eweapon2 = weapon4 THEN
                multiweaponcheck = 0
            END IF
            IF eweapon2 = weapon5 THEN
                multiweaponcheck = 0
            END IF
        ELSEIF eweapon1 = weapon3 THEN
            IF eweapon2 = weapon1 THEN
                multiweaponcheck = 0
            END IF
            IF eweapon2 = weapon2 THEN
                multiweaponcheck = 0
            END IF
            IF eweapon2 = weapon4 THEN
                multiweaponcheck = 0
            END IF
            IF eweapon2 = weapon5 THEN
                multiweaponcheck = 0
            END IF
        ELSEIF eweapon1 = weapon4 THEN
            IF eweapon2 = weapon1 THEN
                multiweaponcheck = 0
            END IF
            IF eweapon2 = weapon3 THEN
                multiweaponcheck = 0
            END IF
            IF eweapon2 = weapon2 THEN
                multiweaponcheck = 0
            END IF
            IF eweapon2 = weapon5 THEN
                multiweaponcheck = 0
            END IF
        ELSEIF eweapon1 = weapon5 THEN
            IF eweapon2 = weapon1 THEN
                multiweaponcheck = 0
            END IF
            IF eweapon2 = weapon3 THEN
                multiweaponcheck = 0
            END IF
            IF eweapon2 = weapon4 THEN
                multiweaponcheck = 0
            END IF
            IF eweapon2 = weapon2 THEN
                multiweaponcheck = 0
            END IF
        ELSE
            PRINT "You only have one of that weapon"
            SLEEP
            multiweaponcheck = 1
        END IF
    END IF
END IF
END SUB

SUB addweapon
weaponadd:
IF weapon1 = 0 THEN
    weapon1 = add
ELSEIF weapon2 = 0 THEN
    weapon2 = add
ELSEIF weapon3 = 0 THEN
    weapon3 = add
ELSEIF weapon4 = 0 THEN
    weapon4 = add
ELSEIF weapon5 = 0 THEN
    weapon5 = add
ELSE
    PRINT "You have too many weapons"
    PRINT "You will have to drop 1"
    CALL deletew
    GOTO weaponadd
END IF
PRINT "You received weapon ", add
SLEEP
END SUB

SUB deletea
PRINT "Which armor would you like to drop (#)?"
INPUT "(You can also check inventory) ", drop$
IF drop$ = "inventory" OR drop$ = "Inventory" THEN CALL inventory
IF drop$ = "1" THEN armor1 = 0
IF drop$ = "2" THEN armor2 = 0
END SUB

SUB addarmor
armoradd:
IF armor1 = 0 THEN
    armor1 = add
ELSEIF armor2 = 0 THEN
    armor2 = add
ELSE
    PRINT "You have too much armor"
    PRINT "You will have to drop 1"
    CALL deletea
    GOTO armoradd
END IF
PRINT "You received armor ", add
END SUB

FUNCTION weapontype (weapon)
IF weapon = 0 THEN weapontype = 0
IF weapon = 1 THEN weapontype = 1
IF weapon = 2 THEN weapontype = 2
IF weapon = 3 THEN weapontype = 3
IF weapon = 4 THEN weapontype = 3
IF weapon = 5 THEN weapontype = 2
END FUNCTION

SUB market
IF civ = 1 THEN CALL marketham
END SUB

SUB marketham
PRINT "The market is closed today"
PRINT "Please come again another time"
SLEEP
END SUB

SUB addskill
additionalskill:
IF s1 <> 0 AND s2 <> 0 AND s3 <> 0 AND s4 <> 0 AND s5 <> 0 AND s6 <> 0 AND s7 <> 0 AND s8 <> 0 AND s9 <> 0 AND s10 <> 0 THEN
    PRINT "You know too many skills/spells"
    INPUT "You will have to forget 1: ", answer
    IF answer = 1 THEN s1 = 0
    IF answer = 2 THEN s2 = 0
    IF answer = 3 THEN s3 = 0
    IF answer = 4 THEN s4 = 0
    IF answer = 5 THEN s5 = 0
    IF answer = 6 THEN s6 = 0
    IF answer = 7 THEN s7 = 0
    IF answer = 8 THEN s8 = 0
    IF answer = 9 THEN s9 = 0
    IF answer = 10 THEN s10 = 0
    GOTO additionalskill
ELSEIF s1 = 0 THEN s1 = add
ELSEIF s2 = 0 THEN s2 = add
ELSEIF s3 = 0 THEN s3 = add
ELSEIF s4 = 0 THEN s4 = add
ELSEIF s5 = 0 THEN s5 = add
ELSEIF s6 = 0 THEN s6 = add
ELSEIF s7 = 0 THEN s7 = add
ELSEIF s8 = 0 THEN s8 = add
ELSEIF s9 = 0 THEN s9 = add
ELSEIF s10 = 0 THEN s10 = add
END IF
PRINT "You learned Skill/Spell ", add
SLEEP
END SUB

SUB die
PRINT "You have Died"
PLAY "MF ML L2 C < A > E1"
SLEEP
END
END SUB

SUB continued
CLS
PRINT "To be Continued... "
PLAY "MF ML L2 C < A > E1"
SLEEP
PRINT "We hope you have enjoyed this game"
SLEEP 1
PRINT "Keep an eye out for future editions"
SLEEP 1
PRINT "Or we can teach you how to make a game like this"
SLEEP
END
END SUB

'North West South West North North East
'straight left left right right forward right
'1 2 2 3 3 1 3

SUB Woods
messupwoods:
wander1 = 0
PRINT "You are facing North"
PRINT "You are in:"
Woods:
PRINT "Wandering Woods"
PRINT "You can go Straight(1)"
PRINT "Left(2), Right(3), or Back(4)"
INPUT answer
IF answer = 4 THEN
    GOTO endofwoods
END IF
IF answer = 1 AND wander1 = 0 THEN
    wander1 = 1
ELSEIF answer = 2 AND wander1 = 1 THEN
    wander1 = 2
ELSEIF answer = 2 AND wander1 = 2 THEN
    wander1 = 3
ELSEIF answer = 3 AND wander1 = 3 THEN
    wander1 = 4
ELSEIF answer = 3 AND wander1 = 4 THEN
    wander1 = 5
ELSEIF answer = 1 AND wander1 = 5 THEN
    wander1 = 6
ELSEIF answer = 3 AND wander1 = 6 THEN
    inwoods:
    PRINT "There is a cave"
    INPUT "Would you like to Enter(1) or Go Back(2)", answer
    IF answer = 1 THEN
        CALL cave
        GOTO endofwoods
    END IF
    IF answer = 2 THEN
        GOTO endofwoods
    END IF
    GOTO inwoods
ELSE
    GOTO messupwoods
END IF
GOTO Woods
endofwoods:
END SUB

SUB cave
PRINT "The Fire Elemental is in in front of you"
SLEEP 1
PRINT "He looks at you and starts to laugh"
SLEEP 1
PRINT "Then a look of sheer terror crosses his face"
SLEEP 1
PRINT "He recoils,"
SLEEP 1
PRINT "Trips over a chest,"
SLEEP 1
PRINT "And falls into a puddle of water."
SLEEP 1
PRINT "His flame is put out, so he dies"
SLEEP 5
PRINT "Quest 1: Completed"
q1 = 1
rand1 = CINT(RND * (2 - 1)) + 1
IF rand1 = 1 THEN
    PLAY "mb t136 mn o3 l8 ddgfe-dc o2 b-ag o3 d2. l12 ddd l8 g4 p4 p2 p2"
END IF
IF rand1 = 2 THEN
    PLAY "MF MN T180"
    PLAY "O3 C8.C16 F8 C8 F8 A8 F4 F8.F16 A8 F8 A8 >C8 < A4 F8.A16 > C4"
    PLAY "< A8.F16 C4 C8.C16 F4 F8.F16 F4"
END IF
q1end:
INPUT "Would you like to open the chest or return to the hamlet: ", answer$
IF answer$ = "open" OR answer$ = "Open" THEN
    add = 6
    CALL addweapon
    GOTO q1realend
END IF
IF answer$ = "return" OR answer$ = "Return" OR answer$ = "leave" OR answer$ = "Leave" THEN
    GOTO q1realend
END IF
GOTO q1end
q1realend:
END SUB
