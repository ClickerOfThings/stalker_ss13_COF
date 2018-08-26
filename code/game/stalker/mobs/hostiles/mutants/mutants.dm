/mob/living/simple_animal/hostile/mutant
	stat_attack = 2
	stat_exclusive = 0
	fearless = 0
	var/gib_targets = 1 //������
	icon = 'icons/stalker/stalker.dmi'
	var/deletable = 1 //Self-deletable dead bodies
	speak_chance = 1.5
	var/rating_add = 10

/*
/mob/living/simple_animal/hostile/mutant/death(gibbed)
	..()
	if(deletable)
		spawn(300)
			qdel(src)
*/

/mob/living/simple_animal/hostile/mutant/Move(atom/NewLoc, direct)
	var/area/B = get_area(NewLoc)
	if(B.safezone)
		if(src.client && (src.client.prefs.chat_toggles & CHAT_LANGUAGE))
			src << "<span class='warning'>You can't be here!</span>"
		else
			src << "<span class='warning'>�� �� ������ ��������c&#255; � ���� ����!</span>"
		return 0
	. = ..()

/mob/living/simple_animal/hostile/mutant/AttackingTarget()
	..()
	if(istype(target, /mob/living))
		var/mob/living/L = target
		if (L.stat == DEAD && gib_targets)
			if(ishuman(L))
				var/mob/living/carbon/human/H = L
				if(prob(50))
					H.unEquip(H.ears)
				if(prob(50))
					H.unEquip(H.gloves)
				if(prob(50))
					H.unEquip(H.glasses)
				if(prob(50))
					H.unEquip(H.head)
				if(prob(50))
					H.unEquip(H.shoes)
				if(prob(100))
					H.unEquip(H.back)
				H.unEquip(H.back)
				H.unEquip(H.wear_id)
			L.gib()
			visible_message("<span class='danger'>[src] ��������� [L] �� �������!</span>")
			src << "<span class='userdanger'>�� ��������� [L] � ��������������� ���� ��������!</span>"
			src.revive()

/mob/living/simple_animal/hostile/mutant/mrspooky
	name = "Mr.Spooky"
	desc = "���&#255;��&#255; ����� ������, 3spooky5u"
	icon = 'icons/mob/human.dmi'
	icon_state = "skeleton_s"
	icon_living = "skeleton_s"
	icon_dead = "skeleton_dead"
	turns_per_move = 5
	speak_emote = list("spooks")
	emote_see = list("spooks")
	a_intent = "harm"
	maxHealth = 100
	fearborder = 30
	health = 40
	speed = 1
	harm_intent_damage = 5
	melee_damage_lower = 15
	melee_damage_upper = 15
	minbodytemp = 0
	maxbodytemp = 1500
	healable = 0 //they're skeletons how would bruise packs help them??
	attacktext = "spooks"
	attack_sound = 'sound/hallucinations/wail.ogg'
	atmos_requirements = list("min_oxy" = 0, "max_oxy" = 0, "min_tox" = 0, "max_tox" = 0, "min_co2" = 0, "max_co2" = 0, "min_n2" = 0, "max_n2" = 0)
	unsuitable_atmos_damage = 10
	environment_smash = 1
	robust_searching = 1
	search_objects = 1
	gold_core_spawnable = 1
	faction = list("skeleton")
	see_invisible = SEE_INVISIBLE_MINIMUM
	see_in_dark = 8
	layer = MOB_LAYER - 0.1
	deathmessage = "Mr.Spooky is too spooky for himself!"
	del_on_death = 1
	loot = list(/obj/effect/decal/remains/human)

/mob/living/simple_animal/hostile/mutant/dog
	name = "dog mutant"
	desc = "�����������&#255; �����&#255; ����&#255; ������."
	eng_desc = "This dog became blind because of the radiation, allowing him to develop a more precise sense of smell. Its skin is of a maroon color, and the lack of food shows the bones of its ribcage.His tail is edible and so taking it would be a good idea to make a soup or sell it."
	turns_per_move = 5
	speed = 1
	a_intent = "harm"
	harm_intent_damage = 5
	icon_state = "stalker_dog"
	icon_living = "stalker_dog"
	icon_dead = "stalker_dog_dead"
	attacktext = "bites"
	search_objects = 1
	speak_emote = list("whines", "roars")
	emote_see = list("barks!")
	faction = list("stalker_mutants1")
	attack_sound = 'sound/stalker/mobs/mutants/attack/dog_attack.ogg'
	idle_sounds = list('sound/stalker/mobs/mutants/idle/bdog_idle_1.ogg',
						'sound/stalker/mobs/mutants/idle/bdog_idle_2.ogg',
						'sound/stalker/mobs/mutants/idle/bdog_idle_3.ogg',
						'sound/stalker/mobs/mutants/idle/bdog_idle_4.ogg')
	death_sound = 'sound/stalker/mobs/mutants/death/dog_death.ogg'
	melee_damage_lower = 10
	melee_damage_upper = 15
	maxHealth = 25
	fearborder = 10
	atmos_requirements = list("min_oxy" = 0, "max_oxy" = 0, "min_tox" = 0, "max_tox" = 0, "min_co2" = 0, "max_co2" = 0, "min_n2" = 0, "max_n2" = 0)
	healable = 1
	robust_searching = 1
	see_invisible = SEE_INVISIBLE_MINIMUM
	see_in_dark = 4
	deathmessage = "The dog makes a sinister howl!"
	del_on_death = 0
	minbodytemp = 0
	maxbodytemp = 1500
	environment_smash = 0
	layer = MOB_LAYER - 0.1
	loot = list(/obj/item/weapon/stalker/loot/dog_tail, /obj/nothing, /obj/nothing)
	random_loot = 1
	attack_type = "bite"
	move_to_delay = 1.2 //Real speed of a mob
	rating_add = 15

/mob/living/simple_animal/hostile/mutant/dog/AttackingTarget()
	..()
	if(istype(target, /mob/living/carbon))
		var/mob/living/carbon/C = target
		if(C.health > 25)
			var/anydir = pick(alldirs)
			target_last_loc = target.loc
			walk_away(src, get_step(src, anydir), 7, move_to_delay)

/mob/living/simple_animal/hostile/mutant/snork
	name = "snork"
	desc = "�����-�� ��� ���� ���������."
	eng_desc = "The Snork is wearing remains of military clothes and a broken gas mask with a hanging breathing tube.His lips have been shredded, probably by himself, and his skin has a greenish hue. He moves on all fours and his physique allows him to jump up to 10 meters.His nails are sharp and as sharp as claws. The glasses of his gas mask do not allow us to say whether he is blind or not."
	turns_per_move = 5
	speed = 3
	a_intent = "harm"
	search_objects = 1
	icon_state = "snork"
	icon_living = "snork"
	icon_dead = "snork_dead"
	attacktext = "claws at"
	speak_emote = list("growls", "roars")
	emote_see = list("growls!", "roars!")
	maxHealth = 70
	healable = 1
	melee_damage_lower = 20
	attack_sound = 'sound/stalker/mobs/mutants/attack/snork_attack.ogg'
	idle_sounds = list('sound/stalker/mobs/mutants/idle/snork_idle_1.ogg',
						'sound/stalker/mobs/mutants/idle/snork_idle_2.ogg',
						'sound/stalker/mobs/mutants/idle/snork_idle_3.ogg')
	death_sound = 'sound/stalker/mobs/mutants/death/snork_death.ogg'
	melee_damage_upper = 30
	fearborder = 10
	see_invisible = SEE_INVISIBLE_MINIMUM
	see_in_dark = 4
	minbodytemp = 0
	maxbodytemp = 1500
	faction = list("stalker_mutants1")
	del_on_death = 0
	//environment_smash = 1
	robust_searching = 1
	deathmessage = "The snork seizes up and falls limp!"
	layer = MOB_LAYER - 0.1
	loot = list(/obj/item/weapon/stalker/loot/snork_leg, /obj/nothing, /obj/nothing)
	random_loot = 1
	atmos_requirements = list("min_oxy" = 0, "max_oxy" = 0, "min_tox" = 0, "max_tox" = 0, "min_co2" = 0, "max_co2" = 0, "min_n2" = 0, "max_n2" = 0)
	ranged = 1
	ranged_cooldown = 1 //By default, start the Goliath with his cooldown off so that people can run away quickly on first sight
	ranged_cooldown_cap = 4

	attack_type = "claw"
	var/leaping = 0
	move_to_delay = 2
	rating_add = 50

/mob/living/simple_animal/hostile/mutant/snork/New()
	..()
	if(prob(50))
		icon_state = "snork2"
		icon_living = "snork2"
		icon_dead = "snork2_dead"

/mob/living/simple_animal/hostile/mutant/snork/OpenFire()
	if(get_dist(src, target) <= 4)
		leaping = 1
		//throw_at_fast(target, 7, 1)
		throw_at(target, 7, 1, spin=1, diagonals_first = 1)
		leaping = 0
		ranged_cooldown = ranged_cooldown_cap
	return
				//sleep(10)

/mob/living/simple_animal/hostile/mutant/snork/throw_impact(atom/A)

	if(!leaping)
		return ..()

	if(A)
		if(istype(A, /mob/living))
			var/mob/living/L = A
			var/blocked = 0
			if(ishuman(A))
				var/mob/living/carbon/human/H = A
				if(H.check_shields(90, "the [name]", src, attack_type = THROWN_PROJECTILE_ATTACK))
					blocked = 1
			if(!blocked)
				L.visible_message("<span class ='danger'>[src] pounces on [L]!</span>", "<span class ='userdanger'>[src] pounces on you!</span>")
				L.Weaken(1)
				sleep(2)//Runtime prevention (infinite bump() calls on hulks)
				step_towards(src,L)
		else if(A.density && !A.CanPass(src))
			visible_message("<span class ='danger'>[src] smashes into [A]!</span>", "<span class ='alertalien'>[src] smashes into [A]!</span>")
			weakened = 2

		if(leaping)
			leaping = 0
			update_icons()
			update_canmove()

/mob/living/simple_animal/hostile/mutant/flesh
	name = "flesh"
	desc = "�����������&#255; �����&#255;."
	eng_desc = "This abomination is a horribly mutated pig affected by radiation.His three eyes have lost all the vigor of life and his eyes are empty.Despite his large, heavy legs, he seems to be able to move at a decent speed, and is apparently able to catch up with a running human."
	turns_per_move = 5
	speed = 5
	a_intent = "harm"
	search_objects = 1
	icon_state = "plot"
	icon_living = "plot"
	icon_dead = "plot_dead"
	attacktext = "crashes into"
	speak_emote = list("grunts")
	emote_see = list("shrieks aggressively!")
	maxHealth = 40
	healable = 5
	melee_damage_lower = 10
	attack_sound = 'sound/stalker/mobs/mutants/attack/flesh_attack.ogg'
	idle_sounds = list('sound/stalker/mobs/mutants/idle/flesh_idle_1.ogg',
						'sound/stalker/mobs/mutants/idle/flesh_idle_2.ogg')
	death_sound = 'sound/stalker/mobs/mutants/death/flesh_death.ogg'
	melee_damage_upper = 25
	fearborder = 18
	see_invisible = SEE_INVISIBLE_MINIMUM
	see_in_dark = 4
	minbodytemp = 0
	maxbodytemp = 1500
	faction = list("stalker_mutants1")
	del_on_death = 0
	environment_smash = 1
	robust_searching = 1
	deathmessage = "The flesh makes a death scream!"
	layer = MOB_LAYER - 0.1
	loot = list(/obj/item/weapon/stalker/loot/flesh_eye, /obj/nothing)
	random_loot = 1
	atmos_requirements = list("min_oxy" = 0, "max_oxy" = 0, "min_tox" = 0, "max_tox" = 0, "min_co2" = 0, "max_co2" = 0, "min_n2" = 0, "max_n2" = 0)
	attack_type = "smash"
	move_to_delay = 3
	rating_add = 10

/mob/living/simple_animal/hostile/mutant/kaban
	name = "boar"
	desc = "�������� ���������."
	eng_desc = "While less touched by mutation physically, as compared to other mutants, the Boars of the Zone remains ugly and loathsome.The smell coming from his mouth smells of carrion and grass.His posture shows that he is able to go at full speed towards an enemy, so staying away would be the best option to kill him. His meat is sold at a good price to Skadovsk merchants."
	turns_per_move = 5
	speed = 5
	a_intent = "harm"
	search_objects = 1
	icon_state = "kaban"
	icon_living = "kaban"
	icon_dead = "kaban_dead"
	attacktext = "crashes into"
	speak_emote = list("grunts")
	emote_see = list("grunts aggressively!")
	maxHealth = 150
	healable = 1
	melee_damage_lower = 25
	attack_sound = 'sound/stalker/mobs/mutants/attack/boar_attack.ogg'
	idle_sounds = list('sound/stalker/mobs/mutants/idle/boar_idle_1.ogg',
						'sound/stalker/mobs/mutants/idle/boar_idle_2.ogg',
						'sound/stalker/mobs/mutants/idle/boar_idle_3.ogg')
	death_sound = 'sound/stalker/mobs/mutants/death/boar_death.ogg'
	melee_damage_upper = 40
	fearborder = 18
	see_invisible = SEE_INVISIBLE_MINIMUM
	see_in_dark = 4
	minbodytemp = 0
	maxbodytemp = 1500
	faction = list("stalker_mutants1")
	del_on_death = 0
	environment_smash = 1
	robust_searching = 1
	deathmessage = "The boar makes a death scream!"
	layer = MOB_LAYER - 0.1
	loot = list(/obj/item/weapon/stalker/loot/boar_leg, /obj/nothing, /obj/nothing)
	random_loot = 1
	atmos_requirements = list("min_oxy" = 0, "max_oxy" = 0, "min_tox" = 0, "max_tox" = 0, "min_co2" = 0, "max_co2" = 0, "min_n2" = 0, "max_n2" = 0)
	attack_type = "smash"
	move_to_delay = 2
	rating_add = 50

	/*��� ������� � �������� �������
	����������� ����� � ������ � �������
	for(var/o=0, o<10, o++)
		target = get_turf(get_step(target,cur_dir))
	L.throw_at(target, 200, 100)
	*/

/mob/living/simple_animal/hostile/mutant/bloodsucker
	name = "bloodsucker"
	desc = "���� ������ ������ ������."
	eng_desc = "A rather disgusting-looking type of mutant with the same physical properties as a human besides the absence of genital organs,thus making the difference between male or female more difficult to do.Tentacles covered with blood seem to have replaced the lower part of the jaw, and sharp claws have replaced the end of the fingers.The guttural breathing of the mutant freezes your blood."
	turns_per_move = 5
	speed = 3
	a_intent = "harm"
	search_objects = 0
	icon_state = "bloodsucker"
	icon_living = "bloodsucker"
	icon_dead = "bloodsucker_dead"
	attacktext = "slashes"
	speak_emote = list("growls", "roars")
	emote_see = list("growls!", "roars!")
	maxHealth = 300
	healable = 1
	melee_damage_lower = 30
	attack_sound = 'sound/stalker/mobs/mutants/attack/bloodsucker_attack.ogg'
	idle_sounds =	list('sound/stalker/mobs/mutants/idle/bloodsucker_idle_1.ogg'
						)
	death_sound = 'sound/stalker/mobs/mutants/death/bloodsucker_death.ogg'
	melee_damage_upper = 35
	fearborder = 0
	see_invisible = SEE_INVISIBLE_MINIMUM
	see_in_dark = 4
	minbodytemp = 0
	maxbodytemp = 1500
	faction = list("stalker_mutants1")
	del_on_death = 0
	robust_searching = 1
	deathmessage = "The bloodsucker makes a death scream!"
	layer = MOB_LAYER - 0.1
	loot = list(/obj/item/weapon/stalker/loot/bloodsucker, /obj/item/weapon/stalker/loot/bloodsucker, /obj/nothing)
	random_loot = 1
	atmos_requirements = list("min_oxy" = 0, "max_oxy" = 0, "min_tox" = 0, "max_tox" = 0, "min_co2" = 0, "max_co2" = 0, "min_n2" = 0, "max_n2" = 0)
	attack_type = "claw"
	move_to_delay = 1.8
	speak_chance = 2
	rating_add = 150

/mob/living/simple_animal/hostile/mutant/bloodsucker/Life()
	if(..())
		if(ckey)
			return
		handle_invisibility()

/mob/living/simple_animal/hostile/mutant/bloodsucker/proc/handle_invisibility()
	if(target)
		playsound(src, 'sound/stalker/mobs/mutants/idle/bloodsucker_breath.ogg', 40, 0)
		switch(get_dist(src, target))
			if(0 to 2)
				icon_state = "bloodsucker"
			else
				icon_state = "bloodsucker_invisible"
		return

	if(icon_state != initial(icon_state))
		icon_state = initial(icon_state)

/mob/living/simple_animal/hostile/mutant/bloodsucker/handle_automated_sounds()
	if(idle_sounds)
		if(rand(0,200) < speak_chance)
			var/s = safepick(idle_sounds)
			playsound(src, s, 65, 1, 15, 7)

/mob/living/simple_animal/hostile/mutant/bloodsucker/AttackingTarget()
	..()
	icon_state = "bloodsucker"
	if(istype(target, /mob/living/carbon))
		var/mob/living/carbon/C = target
		if(C.health > 35)
			icon_state = "bloodsucker_invisible"
			var/anydir = pick(alldirs)
			target_last_loc = target.loc
			walk_away(src, get_step(src, anydir), 7, move_to_delay)

/mob/living/simple_animal/hostile/mutant/pseudog
	name = "psy-dog"
	desc = "�������� ��."
	eng_desc = "Shaggy dog."
	turns_per_move = 5
	speed = 3
	a_intent = "harm"
	search_objects = 1
	icon_state = "psydog"
	icon_living = "psydog"
	icon_dead = "psydog_dead"
	attacktext = "bites"
	speak_emote = list("growls", "roars")
	emote_see = list("growls!", "roars!")
	maxHealth = 80
	healable = 1
	melee_damage_lower = 15
	attack_sound = 'sound/stalker/mobs/mutants/attack/pdog_attack.ogg'
	idle_sounds =	list('sound/stalker/mobs/mutants/idle/pdog_idle_1.ogg',
						'sound/stalker/mobs/mutants/idle/pdog_idle_2.ogg',
						'sound/stalker/mobs/mutants/idle/pdog_idle_3.ogg',
						'sound/stalker/mobs/mutants/idle/pdog_idle_4.ogg'
						)
	death_sound = 'sound/stalker/mobs/mutants/death/pdog_death.ogg'
	melee_damage_upper = 20
	fearborder = 0
	see_invisible = SEE_INVISIBLE_MINIMUM
	see_in_dark = 4
	minbodytemp = 0
	maxbodytemp = 1500
	faction = list("stalker_mutants1")
	del_on_death = 0
	robust_searching = 1
	deathmessage = "The pseudog makes a sinister howl!"
	layer = MOB_LAYER - 0.1
	loot = list(/obj/item/weapon/stalker/loot/pseudo_tail, /obj/nothing, /obj/nothing)
	random_loot = 1
	atmos_requirements = list("min_oxy" = 0, "max_oxy" = 0, "min_tox" = 0, "max_tox" = 0, "min_co2" = 0, "max_co2" = 0, "min_n2" = 0, "max_n2" = 0)
	attack_type = "bite"
	move_to_delay = 1.4
	speak_chance = 10
	rating_add = 100

/mob/living/simple_animal/hostile/mutant/controller
	name = "Controller"
	desc = "��������� ������ ������� � ��������������� �������."
	eng_desc = "A rare type of mutant with the appearance of a deformed human with ridiculous physical properties.He has barely any clothes besides torn rags displayed randomly on the chest.Looking at him sends chills down your spine."
	turns_per_move = 5
	speed = 3
	a_intent = "harm"
	search_objects = 1
	icon_state = "controller"
	icon_living = "controller"
	icon_dead = "controller_dead"
	attacktext = "slashes"
	speak_emote = list("growls", "roars")
	emote_see = list("growls!", "roars!")
	maxHealth = 200
	healable = 1
	melee_damage_lower = 25
	attack_sound = 'sound/stalker/mobs/mutants/attack/controller_attack.ogg'
	idle_sounds =	list('sound/stalker/mobs/mutants/idle/controller_idle_1.ogg',
						'sound/stalker/mobs/mutants/idle/controller_idle_2.ogg'
						)
	death_sound = 'sound/stalker/mobs/mutants/death/controller_death.ogg'
	melee_damage_upper = 30
	fearborder = 0
	see_invisible = SEE_INVISIBLE_MINIMUM
	see_in_dark = 4
	minbodytemp = 0
	maxbodytemp = 1500
	faction = list("stalker_mutants1")
	del_on_death = 0
	robust_searching = 1
	deathmessage = "Controller screams!"
	layer = MOB_LAYER - 0.1
	loot = list(/obj/item/weapon/stalker/loot/controller_brain)
	random_loot = 1
	atmos_requirements = list("min_oxy" = 0, "max_oxy" = 0, "min_tox" = 0, "max_tox" = 0, "min_co2" = 0, "max_co2" = 0, "min_n2" = 0, "max_n2" = 0)
	attack_type = "claw"
	move_to_delay = 10
	speak_chance = 10
	vision_range = 15
	aggro_vision_range = 15
	ranged_cooldown_cap = 1
	min_range_distance = 2
	ranged = 1
	var/attack_stage = 0
	var/last_attack_time = 0
	see_through_walls = 1
	rating_add = 350
	long_attack = 1

/mob/living/simple_animal/hostile/mutant/controller/Life()
	. = ..()
	if(!.)
		return 0
	for(var/mob/living/carbon/human/H in view(15, src))
		var/damage_ = 0
		switch(get_dist(src, H))
			if(0 to 2)
				damage_ = 35
			if(3 to 4)
				damage_ = 25
			if(5 to 6)
				damage_ = 15
			if(7 to 8)
				damage_ = 7
			if(8 to INFINITY)
				damage_ = 25 / get_dist(src, H)
		H.apply_damage(damage_, PSY, null, blocked = getarmor("head", "psy", 0))

/mob/living/simple_animal/hostile/mutant/controller/OpenFire(atom/A)
	if(!istype(A, /mob/living/carbon/human))
		return

	if(attack_stage && last_attack_time + (10 * attack_stage) + 5 < world.time)
		ranged_cooldown = max(0, ranged_cooldown_cap - attack_stage)
		attack_stage = 0
		return

	var/mob/living/carbon/human/H = A

	switch(attack_stage)
		if(0)
			visible_message("<span class='danger'><b>[src]</b> stares at [H]!</span>")
			last_attack_time = world.time

			if(H in view(14, src))
				H << sound('sound/stalker/mobs/mutants/attack/controller_tube_prepare.ogg', wait = 0, channel = 47, volume = 50)
				attack_stage++
			else
				ranged_cooldown = max(0, ranged_cooldown_cap - attack_stage)
				attack_stage = 0


		if(1 to 2)
			if(H in view(14, src))
				last_attack_time = world.time
				attack_stage++
			else
				ranged_cooldown = max(0, ranged_cooldown_cap - attack_stage)
				attack_stage = 0
		if(3)
			if(H in view(14, src))
				last_attack_time = world.time
				H << sound('sound/stalker/mobs/mutants/attack/controller_whoosh.ogg', wait = 0, channel = 47, volume = 50)
				visible_message("<span class='danger'><b>[src]</b> stares right into [A] eyes!</span>")
				H.apply_damage(100, PSY, null, blocked = getarmor("head", "psy", 0))

			ranged_cooldown = max(0, ranged_cooldown_cap - attack_stage)
			attack_stage = 0
	return