/obj/item/seeds/feracactus
	name = "pack of feracactus seeds"
	desc = "These seeds grow into feracactus."
	icon_state = "seed-feracactus"
	growing_icon = 'icons/obj/hydroponics/growing_fruits.dmi'
	icon_grow = "feracactus-grow"
	icon_dead = "feracactus-dead"
	icon_harvest = "feracactus-harvest"
	species = "feracactus"
	plantname = "Feracactus"
	product = /obj/item/reagent_containers/food/snacks/grown/feracactus
	lifespan = 60
	endurance = 20
	yield = 2
	growthstages = 2
	production = 5
	maturation = 5


/obj/item/reagent_containers/food/snacks/grown/feracactus
	seed = /obj/item/seeds/feracactus
	name = "Barrel cactus fruit"
	desc = "Barrel cactus fruit are found on barrel cactus; a spherical cacti that can be encountered while wandering the Mojave. They usually form in groups, with one large barrel cactus that contains the fruit surrounded by several smaller cacti. Like all other Mojave plants, fruit-bearing barrel cacti will eventually grow back after being picked."
	icon_state = "feracactus"
	filling_color = "#FF6347"

/obj/item/reagent_containers/food/snacks/grown/feracactus/add_juice()
	if(..())
		reagents.add_reagent("nutriment", 3 + round((seed.potency / 20), 1))
		reagents.add_reagent("calomel", 3 + round((seed.potency / 20), 1))
		reagents.add_reagent("radium", 0 + round((seed.potency / 20), 1))
		bitesize = 3 + round(reagents.total_volume / 3, 1)
