BEGIN {
	FS=","

	max = 0
	line = 0

	maxNorm = 0
	maxFire = 0
	maxWater = 0
	maxGrass = 0
	maxElectric = 0
	maxIce = 0
	maxFighting = 0
	maxPoison = 0
	maxGround = 0
	maxFlying = 0
	maxPsychic = 0
	maxBug = 0
	maxRock = 0
	maxGhost = 0
	maxDark = 0
	maxDragon = 0
	maxSteel = 0
	maxFairy = 0

	lineNorm = 0
	lineFire = 0
	lineWater = 0
	lineGrass = 0
	lineElectric = 0
	lineIce = 0
	lineFighting = 0
	linePoison = 0
	lineGround = 0
	lineFlying = 0
	linePsychic = 0
	lineBug = 0
	lineRock = 0
	lineGhost = 0
	lineDark = 0
	lineDragon = 0
	lineSteel = 0
	lineFairy = 0


	TotalSum = 0
	HPSum = 0
	AttackSum = 0
	DefenseSum = 0
	SPAtkSum = 0
	SPDefSum = 0
	SpeedSum = 0
	count = 0

	NormTotalSum = 0
	NormHPSum = 0
	NormAttackSum = 0
	NormDefenseSum = 0
	NormSPAtkSum = 0
	NormSPDefSum = 0
	NormSpeedSum = 0
	Normcount = 0

	FireTotalSum = 0
	FireHPSum = 0
	FireAttackSum = 0
	FireDefenseSum = 0
	FireSPAtkSum = 0
	FireSPDefSum = 0
	FireSpeedSum = 0
	Firecount = 0

	WaterTotalSum = 0
	WaterHPSum = 0
	WaterAttackSum = 0
	WaterDefenseSum = 0
	WaterSPAtkSum = 0
	WaterSPDefSum = 0
	WaterSpeedSum = 0
	Watercount = 0

	GrassTotalSum = 0
	GrassHPSum = 0
	GrassAttackSum = 0
	GrassDefenseSum = 0
	GrassSPAtkSum = 0
	GrassSPDefSum = 0
	GrassSpeedSum = 0	
	Grasscount = 0

	ElectricTotalSum = 0
	ElectricHPSum = 0
	ElectricAttackSum = 0
	ElectricDefenseSum = 0
	ElectricSPAtkSum = 0
	ElectricSPDefSum = 0
	ElectricSpeedSum = 0
	Electriccount = 0

	IceTotalSum = 0
	IceHPSum = 0
	IceAttackSum = 0
	IceDefenseSum = 0
	IceSPAtkSum = 0
	IceSPDefSum = 0
	IceSpeedSum = 0
	Icecount = 0

	FightingTotalSum = 0
	FightingHPSum = 0
	FightingAttackSum = 0
	FightingDefenseSum = 0
	FightingSPAtkSum = 0
	FightingSPDefSum = 0
	FightingSpeedSum = 0
	Fightingcount = 0

	PoisonTotalSum = 0
	PoisonHPSum = 0
	PoisonAttackSum = 0
	PoisonDefenseSum = 0
	PoisonSPAtkSum = 0
	PoisonSPDefSum = 0
	PoisonSpeedSum = 0
	Poisoncount = 0

	GroundTotalSum = 0
	GroundHPSum = 0
	GroundAttackSum = 0
	GroundDefenseSum = 0
	GroundSPAtkSum = 0
	GroundSPDefSum = 0
	GroundSpeedSum = 0
	Groundcount = 0

	FlyingTotalSum = 0
	FlyingHPSum = 0
	FlyingAttackSum = 0
	FlyingDefenseSum = 0
	FlyingSPAtkSum = 0
	FlyingSPDefSum = 0
	FlyingSpeedSum = 0
	Flyingcount = 0

	PsychicTotalSum = 0
	PsychicHPSum = 0
	PsychicAttackSum = 0
	PsychicDefenseSum = 0
	PsychicSPAtkSum = 0
	PsychicSPDefSum = 0
	PsychicSpeedSum = 0
	Psychiccount = 0

	BugTotalSum = 0
	BugHPSum = 0
	BugAttackSum = 0
	BugDefenseSum = 0
	BugSPAtkSum = 0
	BugSPDefSum = 0
	BugSpeedSum = 0
	Bugcount = 0

	RockTotalSum = 0
	RockHPSum = 0
	RockAttackSum = 0
	RockDefenseSum = 0
	RockSPAtkSum = 0
	RockSPDefSum = 0
	RockSpeedSum = 0
	Rockcount = 0

	GhostTotalSum = 0
	GhostHPSum = 0
	GhostAttackSum = 0
	GhostDefenseSum = 0
	GhostSPAtkSum = 0
	GhostSPDefSum = 0
	GhostSpeedSum = 0
	Ghostcount = 0

	DarkTotalSum = 0
	DarkHPSum = 0
	DarkAttackSum = 0
	DarkDefenseSum = 0
	DarkSPAtkSum = 0
	DarkSPDefSum = 0
	DarkSpeedSum = 0
	Darkcount = 0

	DragonTotalSum = 0
	DragonHPSum = 0
	DragonAttackSum = 0
	DragonDefenseSum = 0
	DragonSPAtkSum = 0
	DragonSPDefSum = 0
	DragonSpeedSum = 0
	Dragoncount = 0

	SteelTotalSum = 0
	SteelHPSum = 0
	SteelAttackSum = 0
	SteelDefenseSum = 0
	SteelSPAtkSum = 0
	SteelSPDefSum = 0
	SteelSpeedSum = 0
	Steelcount = 0

	FairyTotalSum = 0
	FairyHPSum = 0
	FairyAttackSum = 0
	FairyDefenseSum = 0
	FairySPAtkSum = 0
	FairySPDefSum = 0
	FairySpeedSum = 0
	Fairycount = 0

	tankDef = 0
	tankSPDef = 0
	tankSum = 0
	tankLine = 0
	tankMax = 0
}

{
	line = (NR==2 || $5>max ? $0 : line)
	max = (NR==2 || $5>max ? $5 : max)
	
	TotalSum += $5
	HPSum += $6
	AttackSum += $7
	DefenseSum += $8
	SPAtkSum += $9
	SPDefSum += $10
	SpeedSum += $11
	count++


	
	tankDef = $8
	tankSPDef = $10
	tankSum = tankDef + tankSPDef
	tankLine = (NR==2 || tankSum>tankMax ? $0 : tankLine)
	tankMax = (NR==2 || tankSum>tankMax ? tankSum : tankMax)
}

$0 ~ "Normal" {
	lineNorm = ($5>maxNorm ? $0 : lineNorm)
	maxNorm = ($5>maxNorm ? $5 : maxNorm)	
	
	NormTotalSum += $5
	NormHPSum += $6
	NormAttackSum += $7
	NormDefenseSum += $8
	NormSPAtkSum += $9
	NormSPDefSum += $10
	NormSpeedSum += $11
	Normcount++
}

$0 ~ "Fire" {
	lineFire = ($5>maxFire ? $0 : lineFire)
	maxFire = ($5>maxFire ? $5 : maxFire)
	
	FireTotalSum += $5
	FireHPSum += $6
	FireAttackSum += $7
	FireDefenseSum += $8
	FireSPAtkSum += $9
	FireSPDefSum += $10
	FireSpeedSum += $11
	Firecount++
}

$0 ~ "Water" {
	lineWater = ($5>maxWater ? $0 : lineWater)
	maxWater = ($5>maxWater ? $5 : maxWater)
	
	WaterTotalSum += $5
	WaterHPSum += $6
	WaterAttackSum += $7
	WaterDefenseSum += $8
	WaterSPAtkSum += $9
	WaterSPDefSum += $10
	WaterSpeedSum += $11
	Watercount++
}

$0 ~ "Grass" {
	lineGrass = ($5>maxGrass ? $0 : lineGrass)
	maxGrass = ($5>maxGrass ? $5 : maxGrass)

	GrassTotalSum += $5
	GrassHPSum += $6
	GrassAttackSum += $7
	GrassDefenseSum += $8
	GrassSPAtkSum += $9
	GrassSPDefSum += $10
	GrassSpeedSum += $11
	Grasscount++
}

$0 ~ "Electric" {
	lineElectric = ($5>maxElectric ? $0 : lineElectric)
	maxElectric = ($5>maxElectric ? $5 : maxElectric)
	
	ElectricTotalSum += $5
	ElectricHPSum += $6
	ElectricAttackSum += $7
	ElectricDefenseSum += $8
	ElectricSPAtkSum += $9
	ElectricSPDefSum += $10
	ElectricSpeedSum += $11
	Electriccount++
}

$0 ~ "Ice" {
	lineIce = ($5>maxIce ? $0 : lineIce)
	maxIce = ($5>maxIce ? $5 : maxIce)
	
	IceTotalSum += $5
	IceHPSum += $6
	IceAttackSum += $7
	IceDefenseSum += $8
	IceSPAtkSum += $9
	IceSPDefSum += $10
	IceSpeedSum += $11
	Icecount++
}

$0 ~ "Fighting" {
	lineFighting = ($5>maxFighting ? $0 : lineFighting)
	maxFighting = ($5>maxFighting ? $5 : maxFighting)
	
	FightingTotalSum += $5
	FightingHPSum += $6
	FightingAttackSum += $7
	FightingDefenseSum += $8
	FightingSPAtkSum += $9
	FightingSPDefSum += $10
	FightingSpeedSum += $11
	Fightingcount++
}

$0 ~ "Poison" {
	linePoison = ($5>maxPoison ? $0 : linePoison)
	maxPoison = ($5>maxPoison ? $5 : maxPoison)
}	
	PoisonTotalSum += $5
	PoisonHPSum += $6
	PoisonAttackSum += $7
	PoisonDefenseSum += $8
	PoisonSPAtkSum += $9
	PoisonSPDefSum += $10
	PoisonSpeedSum += $11
	Poisoncount++

$0 ~ "Ground" {
	lineGround = ($5>maxGround ? $0 : lineGround)
	maxGround = ($5>maxGround ? $5 : maxGround)
	
	GroundTotalSum += $5
	GroundHPSum += $6
	GroundAttackSum += $7
	GroundDefenseSum += $8
	GroundSPAtkSum += $9
	GroundSPDefSum += $10
	GroundSpeedSum += $11
	Groundcount++
}

$0 ~ "Flying" {
	lineFlying = ($5>maxFlying ? $0 : lineFlying)
	maxFlying = ($5>maxFlying ? $5 : maxFlying)
	
	FlyingTotalSum += $5
	FlyingHPSum += $6
	FlyingAttackSum += $7
	FlyingDefenseSum += $8
	FlyingSPAtkSum += $9
	FlyingSPDefSum += $10
	FlyingSpeedSum += $11
	Flyingcount++
}

$0 ~ "Psychic" {
	linePsychic = ($5>maxPsychic ? $0 : linePsychic)
	maxPsychic = ($5>maxPsychic ? $5 : maxPsychic)
	
	PsychicTotalSum += $5
	PsychicHPSum += $6
	PsychicAttackSum += $7
	PsychicDefenseSum += $8
	PsychicSPAtkSum += $9
	PsychicSPDefSum += $10
	PsychicSpeedSum += $11
	Psychiccount++
}

$0 ~ "Bug" {
	lineBug = ($5>maxBug ? $0 : lineBug)
	maxBug = ($5>maxBug ? $5 : maxBug)
	
	BugTotalSum += $5
	BugHPSum += $6
	BugAttackSum += $7
	BugDefenseSum += $8
	BugSPAtkSum += $9
	BugSPDefSum += $10
	BugSpeedSum += $11
	Bugcount++
}

$0 ~ "Rock" {
	lineRock = ($5>maxRock ? $0 : lineRock)
	maxRock = ($5>maxRock ? $5 : maxRock)
	
	RockTotalSum += $5
	RockHPSum += $6
	RockAttackSum += $7
	RockDefenseSum += $8
	RockSPAtkSum += $9
	RockSPDefSum += $10
	RockSpeedSum += $11
	Rockcount++
}

$0 ~ "Ghost" {
	lineGhost = ($5>maxGhost ? $0 : lineGhost)
	maxGhost = ($5>maxGhost ? $5 : maxGhost)
	
	GhostTotalSum += $5
	GhostHPSum += $6
	GhostAttackSum += $7
	GhostDefenseSum += $8
	GhostSPAtkSum += $9
	GhostSPDefSum += $10
	GhostSpeedSum += $11
	Ghostcount++
}

$0 ~ "Dark" {
	lineDark = ($5>maxDark ? $0 : lineDark)
	maxDark = ($5>maxDark ? $5 : maxDark)
	
	DarkTotalSum += $5
	DarkHPSum += $6
	DarkAttackSum += $7
	DarkDefenseSum += $8
	DarkSPAtkSum += $9
	DarkSPDefSum += $10
	DarkSpeedSum += $11
	Darkcount++
}

$0 ~ "Dragon" {
	lineDragon = ($5>maxDragon ? $0 : lineDragon)
	maxDragon = ($5>maxDragon ? $5 : maxDragon)
	
	DragonTotalSum += $5
	DragonHPSum += $6
	DragonAttackSum += $7
	DragonDefenseSum += $8
	DragonSPAtkSum += $9
	DragonSPDefSum += $10
	DragonSpeedSum += $11
	Dragoncount++
}

$0 ~ "Steel" {
	lineSteel = ($5>maxSteel ? $0 : lineSteel)
	maxSteel = ($5>maxSteel ? $5 : maxSteel)
	
	SteelTotalSum += $5
	SteelHPSum += $6
	SteelAttackSum += $7
	SteelDefenseSum += $8
	SteelSPAtkSum += $9
	SteelSPDefSum += $10
	SteelSpeedSum += $11
	Steelcount++
}

$0 ~ "Fairy" {
	lineFairy = ($5>maxFairy ? $0 : lineFairy)
	maxFairy = ($5>maxFairy ? $5 : maxFairy)
	
	FairyTotalSum += $5
	FairyHPSum += $6
	FairyAttackSum += $7
	FairyDefenseSum += $8
	FairySPAtkSum += $9
	FairySPDefSum += $10
	FairySpeedSum += $11
	Fairycount++
}

END{
	print "\n^^^not sure why this is printing every line item 8 times^^^"

	print "\n\nThe most powerful pokemon is: "
	print line

	print "\n\nThe average for each stat is"	

	TotalSum = TotalSum / count
	print "Total Avg.: ", TotalSum
	HPSum = HPSum / count
	print "HP Avg.: ", HPSum
	AttackSum = AttackSum / count
	print "Attack Avg.: ", AttackSum
	DefenseSum = DefenseSum / count
	print "Defense Avg.: ", DefenseSum
	SPAtkSum = SPAtkSum / count
	print "SPAtk Avg.: ", SPAtkSum
	SPDefSum = SPDefSum / count
	print "SPDef Avg.: ", SPDefSum
	SpeedSum = SpeedSum / count
	print "Speed Avg.: ", SpeedSum
	
	print "\n\nThe strongest Normal pokemon is"
	print lineNorm

	print "\nThe strongest Fire pokemon is"
	print lineFire

	print "\nThe strongest Water pokemon is"
	print lineWater

	print "\nThe strongest Grass pokemon is"
	print lineGrass

	print "\nThe strongest Electric pokemon is"
	print lineElectric

	print "\nThe strongest Ice pokemon is"
	print lineIce

	print "\nThe strongest Fighting pokemon is"
	print lineFighting

	print "\nThe strongest Poison pokemon is"
	print linePoison

	print "\nThe strongest Ground pokemon is"
	print lineGround

	print "\nThe strongest Flying pokemon is"
	print lineFlying

	print "\nThe strongest Psychic pokemon is"
	print linePsychic
	  
	print "\nThe strongest Bug pokemon is"
	print lineBug
	    
	print "\nThe strongest Rock pokemon is"
	print lineRock
	     
	print "\nThe strongest Ghost pokemon is"
	print lineGhost
	       
	print "\nThe strongest Dark pokemon is"
	print lineDark
		 
	print "\nThe strongest Dragon pokemon is"
	print lineDragon
		   
	print "\nThe strongest Steel pokemon is"
	print lineSteel
		     
	print "\nThe strongest Fairy pokemon is"
	print lineFairy


	NormTotalSum = NormTotalSum / Normcount
	NormHPSum = NormHPSum / Normcount
	NormAttackSum = NormAttackSum / Normcount
	NormDefenseSum = NormDefenseSum / Normcount
	NormSPAtkSum = NormSPAtkSum / Normcount
	NormSPDefSum = NormSPDefSum / Normcount
	NormSpeedSum = NormSpeedSum / Normcount
	
	FireTotalSum = FireTotalSum / Firecount
	FireHPSum = FireHPSum / Firecount
	FireAttackSum = FireAttackSum / Firecount
	FireDefenseSum = FireDefenseSum / Firecount
	FireSPAtkSum = FireSPAtkSum / Firecount
	FireSPDefSum = FireSPDefSum / Firecount
	FireSpeedSum = FireSpeedSum / Firecount

	WaterTotalSum = WaterTotalSum / Watercount
	WaterHPSum = WaterHPSum / Watercount
	WaterAttackSum = WaterAttackSum / Watercount
	WaterDefenseSum = WaterDefenseSum / Watercount
	WaterSPAtkSum = WaterSPAtkSum / Watercount
	WaterSPDefSum = WaterSPDefSum / Watercount
	WaterSpeedSum = WaterSpeedSum / Watercount

	GrassTotalSum = GrassTotalSum / Grasscount
	GrassHPSum = GrassHPSum / Grasscount
	GrassAttackSum = GrassAttackSum / Grasscount
	GrassDefenseSum = GrassDefenseSum / Grasscount
	GrassSPAtkSum = GrassSPAtkSum / Grasscount
	GrassSPDefSum = GrassSPDefSum / Grasscount
	GrassSpeedSum = GrassSpeedSum / Grasscount

	ElectricTotalSum = ElectricTotalSum / Electriccount
	ElectricHPSum = ElectricHPSum / Electriccount
	ElectricAttackSum = ElectricAttackSum / Electriccount
	ElectricDefenseSum = ElectricDefenseSum / Electriccount
	ElectricSPAtkSum = ElectricSPAtkSum / Electriccount
	ElectricSPDefSum = ElectricSPDefSum / Electriccount
	ElectricSpeedSum = ElectricSpeedSum / Electriccount

	IceTotalSum = IceTotalSum / Icecount
	IceHPSum = IceHPSum / Icecount
	IceAttackSum = IceAttackSum / Icecount
	IceDefenseSum = IceDefenseSum / Icecount
	IceSPAtkSum = IceSPAtkSum / Icecount
	IceSPDefSum = IceSPDefSum / Icecount
	IceSpeedSum = IceSpeedSum / Icecount

	FightingTotalSum = FightingTotalSum / Fightingcount
	FightingHPSum = FightingHPSum / Fightingcount
	FightingAttackSum = FightingAttackSum / Fightingcount
	FightingDefenseSum = FightingDefenseSum / Fightingcount
	FightingSPAtkSum = FightingSPAtkSum / Fightingcount
	FightingSPDefSum = FightingSPDefSum / Fightingcount
	FightingSpeedSum = FightingSpeedSum / Fightingcount

	PoisonTotalSum = PoisonTotalSum / Poisoncount
	PoisonHPSum = PoisonHPSum / Poisoncount
	PoisonAttackSum = PoisonAttackSum / Poisoncount
	PoisonDefenseSum = PoisonDefenseSum / Poisoncount
	PoisonSPAtkSum = PoisonSPAtkSum / Poisoncount
	PoisonSPDefSum = PoisonSPDefSum / Poisoncount
	PoisonSpeedSum = PoisonSpeedSum / Poisoncount

	GroundTotalSum = GroundTotalSum / Groundcount
	GroundHPSum = GroundHPSum / Groundcount
	GroundAttackSum = GroundAttackSum / Groundcount
	GroundDefenseSum = GroundDefenseSum / Groundcount
	GroundSPAtkSum = GroundSPAtkSum / Groundcount
	GroundSPDefSum = GroundSPDefSum / Groundcount
	GroundSpeedSum = GroundSpeedSum / Groundcount

	FlyingTotalSum = FlyingTotalSum / Flyingcount
	FlyingHPSum = FlyingHPSum / Flyingcount
	FlyingAttackSum = FlyingAttackSum / Flyingcount
	FlyingDefenseSum = FlyingDefenseSum / Flyingcount
	FlyingSPAtkSum = FlyingSPAtkSum / Flyingcount
	FlyingSPDefSum = FlyingSPDefSum / Flyingcount
	FlyingSpeedSum = FlyingSpeedSum / Flyingcount

	PsychicTotalSum = PsychicTotalSum / Psychiccount
	PsychicHPSum = PsychicHPSum / Psychiccount
	PsychicAttackSum = PsychicAttackSum / Psychiccount
	PsychicDefenseSum = PsychicDefenseSum / Psychiccount
	PsychicSPAtkSum = PsychicSPAtkSum / Psychiccount
	PsychicSPDefSum = PsychicSPDefSum / Psychiccount
	PsychicSpeedSum = PsychicSpeedSum / Psychiccount

	BugTotalSum = BugTotalSum / Bugcount
	BugHPSum = BugHPSum / Bugcount
	BugAttackSum = BugAttackSum / Bugcount
	BugDefenseSum = BugDefenseSum / Bugcount
	BugSPAtkSum = BugSPAtkSum / Bugcount
	BugSPDefSum = BugSPDefSum / Bugcount
	BugSpeedSum = BugSpeedSum / Bugcount

	RockTotalSum = RockTotalSum / Rockcount
	RockHPSum = RockHPSum / Rockcount
	RockAttackSum = RockAttackSum / Rockcount
	RockDefenseSum = RockDefenseSum / Rockcount
	RockSPAtkSum = RockSPAtkSum / Rockcount
	RockSPDefSum = RockSPDefSum / Rockcount
	RockSpeedSum = RockSpeedSum / Rockcount

	GhostTotalSum = GhostTotalSum / Ghostcount
	GhostHPSum = GhostHPSum / Ghostcount
	GhostAttackSum = GhostAttackSum / Ghostcount
	GhostDefenseSum = GhostDefenseSum / Ghostcount
	GhostSPAtkSum = GhostSPAtkSum / Ghostcount
	GhostSPDefSum = GhostSPDefSum / Ghostcount
	GhostSpeedSum = GhostSpeedSum / Ghostcount

	DarkTotalSum = DarkTotalSum / Darkcount
	DarkHPSum = DarkHPSum / Darkcount
	DarkAttackSum = DarkAttackSum / Darkcount
	DarkDefenseSum = DarkDefenseSum / Darkcount
	DarkSPAtkSum = DarkSPAtkSum / Darkcount
	DarkSPDefSum = DarkSPDefSum / Darkcount
	DarkSpeedSum = DarkSpeedSum / Darkcount

	DragonTotalSum = DragonTotalSum / Dragoncount
	DragonHPSum = DragonHPSum / Dragoncount
	DragonAttackSum = DragonAttackSum / Dragoncount
	DragonDefenseSum = DragonDefenseSum / Dragoncount
	DragonSPAtkSum = DragonSPAtkSum / Dragoncount
	DragonSPDefSum = DragonSPDefSum / Dragoncount
	DragonSpeedSum = DragonSpeedSum / Dragoncount

	SteelTotalSum = SteelTotalSum / Steelcount
	SteelHPSum = SteelHPSum / Steelcount
	SteelAttackSum = SteelAttackSum / Steelcount
	SteelDefenseSum = SteelDefenseSum / Steelcount
	SteelSPAtkSum = SteelSPAtkSum / Steelcount
	SteelSPDefSum = SteelSPDefSum / Steelcount
	SteelSpeedSum = SteelSpeedSum / Steelcount

	FairyTotalSum = FairyTotalSum / Fairycount
	FairyHPSum = FairyHPSum / Fairycount
	FairyAttackSum = FairyAttackSum / Fairycount
	FairyDefenseSum = FairyDefenseSum / Fairycount
	FairySPAtkSum = FairySPAtkSum / Fairycount
	FairySPDefSum = FairySPDefSum / Fairycount
	FairySpeedSum = FairySpeedSum / Fairycount

	print "\n\nThe Average Statistics for each type are as follows:"
	print "Type	Total	HP	Attack	Defense	SpAtk	SpDef	Speed"
	print "Normal\t" NormTotalSum "\t" NormHPSum "\t" NormAttackSum "\t" NormDefenseSum "\t" NormSPAtkSum "\t" NormSPDefSum "\t" NormSpeedSum "\n"
	print "Fire\t" FireTotalSum "\t" FireHPSum "\t" FireAttackSum "\t" FireDefenseSum "\t" FireSPAtkSum "\t"Fire SPDefSum "\t" FireSpeedSum "\n"
	print "Water\t" WaterTotalSum "\t" WaterHPSum "\t" WaterAttackSum "\t" WaterDefenseSum "\t" WaterSPAtkSum "\t" WaterSPDefSum "\t" WaterSpeedSum "\n"
	print "Grass\t" GrassTotalSum "\t" GrassHPSum "\t" GrassAttackSum "\t" GrassDefenseSum "\t" GrassSPAtkSum "\t" GrassSPDefSum "\t" GrassSpeedSum "\n"
	print "Elec\t" ElectricTotalSum "\t" ElectricHPSum "\t" ElectricAttackSum "\t" ElectricDefenseSum "\t" ElectricSPAtkSum "\t" ElectricSPDefSum "\t" ElectricSpeedSum "\n"
	print "Ice\t" IceTotalSum "\t" IceHPSum "\t" IceAttackSum "\t" IceDefenseSum "\t" IceSPAtkSum "\t" IceSPDefSum "\t" IceSpeedSum "\n"
	print "Fight\t" FightingTotalSum "\t" FightingHPSum "\t" FightingAttackSum "\t" FightingDefenseSum "\t" FightingSPAtkSum "\t" FightingSPDefSum "\t" FightingSpeedSum "\n"
	print "Poison\t" PoisonTotalSum "\t" PoisonHPSum "\t" PoisonAttackSum "\t" PoisonDefenseSum "\t" PoisonSPAtkSum "\t" PoisonSPDefSum "\t" PoisonSpeedSum "\n"
	print "Ground\t" GroundTotalSum "\t" GroundHPSum "\t" GroundAttackSum "\t" GroundDefenseSum "\t" GroundSPAtkSum "\t" GroundSPDefSum "\t" GroundSpeedSum "\n"
	print "Flying\t" FlyingTotalSum "\t" FlyingHPSum "\t" FlyingAttackSum "\t" FlyingDefenseSum "\t" FlyingSPAtkSum "\t" FlyingSPDefSum "\t" FlyingSpeedSum "\n"
	print "Psychic\t" PsychicTotalSum "\t" PsychicHPSum "\t" PsychicAttackSum "\t" PsychicDefenseSum "\t" PsychicSPAtkSum "\t" PsychicSPDefSum "\t" PsychicSpeedSum "\n"
	print "Bug\t" BugTotalSum "\t" BugHPSum "\t" BugAttackSum "\t" BugDefenseSum "\t" BugSPAtkSum "\t" BugSPDefSum "\t" BugSpeedSum "\n"
	print "Rock\t" RockTotalSum "\t" RockHPSum "\t" RockAttackSum "\t" RockDefenseSum "\t" RockSPAtkSum "\t" RockSPDefSum "\t" RockSpeedSum "\n"
	print "Ghost\t" GhostTotalSum "\t" GhostHPSum "\t" GhostAttackSum "\t" GhostDefenseSum "\t" GhostSPAtkSum "\t" GhostSPDefSum "\t" GhostSpeedSum "\n"
	print "Dark\t" DarkTotalSum "\t" DarkHPSum "\t" DarkAttackSum "\t" DarkDefenseSum "\t" DarkSPAtkSum "\t" DarkSPDefSum "\t" DarkSpeedSum "\n"
	print "Dragon\t" DragonTotalSum "\t" DragonHPSum "\t" DragonAttackSum "\t" DragonDefenseSum "\t" DragonSPAtkSum "\t" DragonSPDefSum "\t" DragonSpeedSum "\n"
	print "Steel\t" SteelTotalSum "\t" SteelHPSum "\t" SteelAttackSum "\t" SteelDefenseSum "\t" SteelSPAtkSum "\t" SteelSPDefSum "\t" SteelSpeedSum "\n"
	print "Fairy\t" FairyTotalSum "\t" FairyHPSum "\t" FairyAttackSum "\t" FairyDefenseSum "\t" FairySPAtkSum "\t" FairySPDefSum "\t" FairySpeedSum "\n"
	

	print "\nRandom calculation to find the tankiest pokemon by combining Defense and Sp. Defense"
	print tankLine "\n"	
}
