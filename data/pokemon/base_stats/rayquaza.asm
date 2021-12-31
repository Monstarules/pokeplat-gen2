	db 0 ; species ID placeholder

	db 105, 150,  90,  95, 150,  90
	;   hp  atk  def  spd  sat  sdf

	db DRAGON, FLYING ; type
	db 3 ; catch rate
	db 220 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_UNKNOWN ; gender ratio
	db 120 ; step cycles to hatch
	INCBIN "gfx/pokemon/rayquaza/front.dimensions"
	db GROWTH_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups
	db 0 ; happiness

	; tm/hm learnset
	tmhm DRAGON_CLAW, WATER_PULSE, ROAR, TOXIC, BULK_UP, HIDDEN_POWER, SUNNY_DAY, ICE_BEAM, BLIZZARD, HYPER_BEAM, PROTECT, RAIN_DANCE, FRUSTRATION, SOLARBEAM, IRON_TAIL, THUNDERBOLT, THUNDER, EARTHQUAKE, RETURN, BRICK_BREAK, DOUBLE_TEAM, SHOCK_WAVE, FLAMETHROWER, SANDSTORM, FIRE_BLAST, ROCK_TOMB, AERIAL_ACE, FACADE, SECRET_POWER, REST, OVERHEAT, FOCUS_BLAST, ENERGY_BALL, FLING, ENDURE, DRAGON_PULSE, SHADOW_CLAW, GIGA_IMPACT, STONE_EDGE, AVALANCHE, THUNDER_WAVE, GYRO_BALL, SWORDS_DANCE, PSYCH_UP, ROCK_SLIDE, SLEEP_TALK, NATURAL_GIFT, SWAGGER, SUBSTITUTE, FLY, SURF, STRENGTH, ROCK_SMASH, WATERFALL, ANCIENTPOWER, AQUA_TAIL, DIVE, DRACO_METEOR, EARTH_POWER, FURY_CUTTER, ICY_WIND, IRON_HEAD, MUD_SLAP, OUTRAGE, SNORE, SWIFT, TWISTER, UPROAR 
	; end
