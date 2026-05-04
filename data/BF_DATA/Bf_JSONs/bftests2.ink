// Phase 2 - Story 2 (revised)
// Nodes: ~200 | Target BF: 2.0 | Target Edges: ~400


VAR has_torch = false

-> START

=== START ===
You land on a rocky island. A lighthouse stands at its highest point.
* [Head towards the lighthouse]
    -> lighthouse_path
* [Explore the shoreline]
    -> shoreline
* [Return to START]
    -> START


=== lighthouse_path ===
A winding path up to the lighthouse. Scrubby vegetation lines the way.
* [Continue up]
    -> lighthouse_base
* [Check the outbuilding]
    -> path_outbuilding
* [Return to lighthouse path]
    -> lighthouse_path


=== shoreline ===
A rocky shoreline. Tidal pools and sea caves.
* [Explore the pools]
    -> tidal_pools
* [Check the sea cave]
    -> sea_cave_entrance
* [Return to shoreline]
    -> shoreline


=== lighthouse_base ===
The base of the lighthouse. A door and several outbuildings.
* [Enter the lighthouse]
    -> lighthouse_ground_floor
* [Check the outbuildings]
    -> lighthouse_outbuildings
* [Return to lighthouse base]
    -> lighthouse_base


=== path_outbuilding ===
A small storage shed. Mostly empty.
* [Search it]
    -> outbuilding_search
* [Continue to the lighthouse]
    -> lighthouse_base
* [Return to path outbuilding]
    -> path_outbuilding


=== tidal_pools ===
Fascinating rock pools full of life.
* [Explore further along the shore]
    -> far_shore
* [Go back]
    -> shoreline
* [Return to tidal pools]
    -> tidal_pools


=== sea_cave_entrance ===
A cave accessible at low tide. Dark inside.
* [Enter with the torch] { has_torch }
    -> sea_cave_interior
* [Try without a torch]
    -> sea_cave_dark
* [Go back]
    -> shoreline

=== lighthouse_ground_floor ===
The ground floor of the lighthouse. Equipment and storage.
* [Search the storage]
    -> ground_floor_search
* [Climb the stairs]
    -> lighthouse_first_floor
* [Return to sea cave entrance]
    -> sea_cave_entrance


=== lighthouse_outbuildings ===
Several small outbuildings. One has a light in the window.
* [Check the lit building]
    -> keepers_quarters
* [Check the dark building]
    -> dark_outbuilding
* [Return to lighthouse ground floor]
    -> lighthouse_ground_floor


=== outbuilding_search ===
You find a torch in good condition.
* [Take it]
    ~ has_torch = true
    -> path_outbuilding
* [Leave]
    -> path_outbuilding
* [Return to lighthouse outbuildings]
    -> lighthouse_outbuildings


=== far_shore ===
The far side of the island. Cliffs drop into churning water.
* [Look for a path down]
    -> cliff_descent
* [Go back]
    -> tidal_pools
* [Return to outbuilding search]
    -> outbuilding_search


=== sea_cave_interior ===
The cave opens into a wide chamber. Ancient markings on the walls.
* [Study the markings]
    -> cave_markings
* [Explore deeper]
    -> cave_deeper
* [Return to START]
    -> START


=== sea_cave_dark ===
Too dark to see. You turn back.
* [Try again with a torch]
    -> sea_cave_entrance
* [Give up]
    -> shoreline
* [Return to lighthouse path]
    -> lighthouse_path


=== ground_floor_search ===
Equipment and supplies.
* [Leave]
    -> lighthouse_ground_floor
* [Return to shoreline]
    -> shoreline


=== lighthouse_first_floor ===
The first floor. More equipment and a log book.
* [Read the log book]
    -> log_book
* [Climb higher]
    -> lighthouse_second_floor
* [Return to lighthouse base]
    -> lighthouse_base


=== keepers_quarters ===
The lighthouse keeper's living space. Neat and organised.
* [Talk to the keeper]
    -> keeper_conversation
* [Search the room]
    -> keepers_search
* [Return to path outbuilding]
    -> path_outbuilding


=== dark_outbuilding ===
A workshop. Tools hang on every surface.
* [Search the workshop]
    -> workshop_search
* [Leave]
    -> lighthouse_outbuildings
* [Return to tidal pools]
    -> tidal_pools


=== cliff_descent ===
You find a path down to a small beach.
* [Explore the beach]
    -> hidden_beach
* [Go back up]
    -> far_shore
* [Return to sea cave entrance]
    -> sea_cave_entrance


=== cave_markings ===
Ancient navigation charts carved into the stone.
* [Study them]
    -> sea_cave_interior
* [Leave]
    -> sea_cave_interior
* [Return to lighthouse ground floor]
    -> lighthouse_ground_floor


=== cave_deeper ===
The cave goes much deeper than expected.
* [Continue]
    -> cave_deep_chamber
* [Turn back]
    -> sea_cave_interior
* [Return to lighthouse outbuildings]
    -> lighthouse_outbuildings


=== log_book ===
Records of ships passing and weather observations.
* [Read more]
    -> lighthouse_first_floor
* [Leave]
    -> lighthouse_first_floor
* [Return to outbuilding search]
    -> outbuilding_search


=== lighthouse_second_floor ===
The second floor. The lens mechanism is visible above.
* [Examine the mechanism]
    -> lens_mechanism
* [Climb to the top]
    -> lighthouse_top
* [Return to START]
    -> START


=== keeper_conversation ===
The keeper speaks of strange occurrences on the island.
* [Listen carefully]
    -> keeper_story
* [Leave]
    -> keepers_quarters
* [Return to lighthouse path]
    -> lighthouse_path


=== keepers_search ===
You find personal items and a map of the island.
* [Take the map]
    -> keepers_quarters
* [Leave]
    -> keepers_quarters
* [Return to shoreline]
    -> shoreline


=== workshop_search ===
Tools and spare parts for the lighthouse mechanism.
* [Take some tools]
    -> dark_outbuilding
* [Leave]
    -> dark_outbuilding
* [Return to lighthouse base]
    -> lighthouse_base


=== hidden_beach ===
A beautiful hidden beach. Sheltered and calm.
* [Explore the beach]
    -> beach_exploration
* [Go back]
    -> cliff_descent
* [Return to path outbuilding]
    -> path_outbuilding


=== cave_deep_chamber ===
A large underground chamber. A vault door is visible.
* [Try the vault door]
    -> deep_vault
* [Explore the chamber]
    -> chamber_exploration
* [Go back]
    -> cave_deeper

=== lens_mechanism ===
The Fresnel lens mechanism. Beautifully engineered.
* [Examine it]
    -> lighthouse_second_floor
* [Leave]
    -> lighthouse_second_floor
* [Return to tidal pools]
    -> tidal_pools


=== lighthouse_top ===
The top of the lighthouse. The beacon controls are here.
* [Operate the beacon]
    -> beacon_controls
* [Look out over the sea]
    -> lighthouse_view
* [Return to sea cave entrance]
    -> sea_cave_entrance


=== keeper_story ===
The keeper describes a vault beneath the island.
* [Ask more]
    -> keepers_quarters
* [Leave]
    -> keepers_quarters
* [Return to lighthouse ground floor]
    -> lighthouse_ground_floor


=== beach_exploration ===
You find driftwood and old wreckage.
* [Search the wreckage]
    -> wreckage_search
* [Leave]
    -> hidden_beach

* [Head to the lighthouse exit]
    -> dark_passage
=== deep_vault ===
The vault contains old navigational equipment.
* [Examine the equipment]
    -> vault_equipment
* [Leave]
    -> cave_deep_chamber

=== chamber_exploration ===
The chamber has old carvings and offerings.
* [Study them]
    -> cave_deep_chamber
* [Leave]
    -> cave_deep_chamber
* [Return to lighthouse outbuildings]
    -> lighthouse_outbuildings


=== lighthouse_view ===
An extraordinary view of the surrounding sea.
* [Go back inside]
    -> lighthouse_top
* [Return to outbuilding search]
    -> outbuilding_search


=== beacon_controls ===
Complex controls for the lighthouse beacon.
* [Try to activate it manually]
    -> beacon_manual
* [Return to START]
    -> START


=== beacon_activated ===
The beacon blazes to life. A rescue ship responds in the distance.
* [Signal the ship]
    -> island_rescue
* [Return to lighthouse path]
    -> lighthouse_path


=== beacon_manual ===
The manual controls are too complex without the signal stone.
* [Give up]
    -> lighthouse_top
* [Return to shoreline]
    -> shoreline


=== wreckage_search ===
You find some useful salvage.
* [Take it]
    -> beach_exploration
* [Leave]
    -> beach_exploration
* [Return to lighthouse base]
    -> lighthouse_base


=== vault_equipment ===
Old navigational instruments in perfect condition.
* [Leave]
    -> deep_vault
* [Return to path outbuilding]
    -> path_outbuilding


=== island_rescue ===
The ship arrives. You are taken off the island safely.
-> END

=== north_cliffs ===
The northern cliffs. Steep and dangerous.
* [Look for a path]
    -> north_cliff_path
* [Go back]
    -> far_shore
* [Return to tidal pools]
    -> tidal_pools


=== north_cliff_path ===
A precarious path along the cliff face.
* [Continue]
    -> cliff_shelter
* [Go back]
    -> north_cliffs
* [Return to sea cave entrance]
    -> sea_cave_entrance


=== cliff_shelter ===
A natural shelter in the cliff face. Someone camped here once.
* [Search it]
    -> shelter_search
* [Leave]
    -> north_cliff_path
* [Return to lighthouse ground floor]
    -> lighthouse_ground_floor


=== shelter_search ===
Old camping equipment and a journal.
* [Read the journal]
    -> cliff_shelter
* [Leave]
    -> cliff_shelter
* [Return to lighthouse outbuildings]
    -> lighthouse_outbuildings


=== lighthouse_cellar ===
A cellar beneath the lighthouse. Damp and cold.
* [Search it]
    -> cellar_search
* [Leave]
    -> lighthouse_ground_floor
* [Return to outbuilding search]
    -> outbuilding_search


=== cellar_search ===
Old equipment and supplies.
* [Leave]
    -> lighthouse_cellar
* [Return to START]
    -> START


=== signal_room ===
A room dedicated to signalling equipment.
* [Examine the equipment]
    -> signal_examination
* [Leave]
    -> lighthouse_first_floor
* [Return to lighthouse path]
    -> lighthouse_path


=== signal_examination ===
Complex signalling apparatus. Most is broken.
* [Leave]
    -> signal_room
* [Return to shoreline]
    -> shoreline


=== fuel_store ===
The fuel store for the lighthouse lamp.
* [Check the supply]
    -> fuel_check
* [Leave]
    -> lighthouse_outbuildings
* [Return to lighthouse base]
    -> lighthouse_base


=== fuel_check ===
Ample fuel remains.
* [Leave]
    -> fuel_store
* [Return to path outbuilding]
    -> path_outbuilding


=== island_interior ===
The interior of the island. Scrubby grassland.
* [Explore north]
    -> interior_north
* [Explore south]
    -> interior_south
* [Return to tidal pools]
    -> tidal_pools


=== interior_north ===
The northern interior. Wind-blasted and bare.
* [Continue]
    -> standing_stone
* [Go back]
    -> island_interior
* [Return to sea cave entrance]
    -> sea_cave_entrance


=== standing_stone ===
An ancient standing stone. Carvings on its surface.
* [Study the carvings]
    -> stone_study
* [Leave]
    -> interior_north
* [Return to lighthouse ground floor]
    -> lighthouse_ground_floor


=== stone_study ===
The carvings match those in the sea cave.
* [Leave]
    -> standing_stone
* [Return to lighthouse outbuildings]
    -> lighthouse_outbuildings


=== interior_south ===
The southern interior. A small pond sits here.
* [Examine the pond]
    -> pond_examination
* [Go back]
    -> island_interior
* [Return to outbuilding search]
    -> outbuilding_search


=== pond_examination ===
A freshwater pond. Clean and cold.
* [Leave]
    -> interior_south
* [Return to START]
    -> START


=== ruined_cottage ===
A ruined cottage, long abandoned.
* [Search the ruins]
    -> cottage_ruins_search
* [Leave]
    -> island_interior
* [Return to lighthouse path]
    -> lighthouse_path


=== cottage_ruins_search ===
Old household items. Nothing useful.
* [Leave]
    -> ruined_cottage
* [Return to shoreline]
    -> shoreline


=== boat_shed ===
A boat shed near the harbour. Empty now.
* [Search it]
    -> boat_shed_search
* [Leave]
    -> shoreline
* [Return to lighthouse base]
    -> lighthouse_base


=== boat_shed_search ===
Tools and mooring equipment.
* [Leave]
    -> boat_shed
* [Return to path outbuilding]
    -> path_outbuilding


=== harbour_wall ===
The old harbour wall. Fishing boats once moored here.
* [Walk along it]
    -> harbour_walk
* [Go back]
    -> shoreline
* [Return to tidal pools]
    -> tidal_pools


=== harbour_walk ===
The harbour wall stretches out to sea.
* [Look around]
    -> harbour_view
* [Go back]
    -> harbour_wall
* [Return to sea cave entrance]
    -> sea_cave_entrance


=== harbour_view ===
A clear view of the shipping lanes.
* [Go back]
    -> harbour_walk
* [Return to lighthouse ground floor]
    -> lighthouse_ground_floor


=== east_cliffs ===
The eastern cliffs. More sheltered than the north.
* [Explore]
    -> east_cliff_walk
* [Go back]
    -> tidal_pools
* [Return to lighthouse outbuildings]
    -> lighthouse_outbuildings


=== east_cliff_walk ===
A walk along the eastern edge.
* [Continue]
    -> east_cliff_end
* [Go back]
    -> east_cliffs
* [Return to outbuilding search]
    -> outbuilding_search


=== east_cliff_end ===
The end of the eastern cliffs. A narrow ledge looks down to the sea.
* [Go back]
    -> east_cliff_walk
* [Return to START]
    -> START


=== island_summit ===
The highest point of the island. The lighthouse stands here.
* [Enter the lighthouse]
    -> lighthouse_base
* [Look around]
    -> summit_view
* [Return to lighthouse path]
    -> lighthouse_path


=== summit_view ===
A 360-degree view of the ocean.
* [Go back]
    -> island_summit
* [Return to shoreline]
    -> shoreline


=== old_well ===
An old well near the lighthouse.
* [Look inside]
    -> well_examination
* [Leave]
    -> lighthouse_base
* [Return to lighthouse base]
    -> lighthouse_base


=== well_examination ===
The well is dry. Nothing inside.
* [Leave]
    -> old_well
* [Return to path outbuilding]
    -> path_outbuilding


=== equipment_shed ===
A shed full of maintenance equipment.
* [Search it]
    -> equipment_search
* [Leave]
    -> lighthouse_outbuildings
* [Return to tidal pools]
    -> tidal_pools


=== equipment_search ===
Spare parts and tools.
* [Leave]
    -> equipment_shed
* [Return to sea cave entrance]
    -> sea_cave_entrance


=== kitchen_building ===
A small separate kitchen building.
* [Search for food]
    -> kitchen_search
* [Leave]
    -> lighthouse_outbuildings
* [Return to lighthouse ground floor]
    -> lighthouse_ground_floor


=== kitchen_search ===
Preserved foods and cooking equipment.
* [Take some food]
    -> kitchen_building
* [Leave]
    -> kitchen_building
* [Return to lighthouse outbuildings]
    -> lighthouse_outbuildings


=== records_room ===
A room dedicated to lighthouse records.
* [Search the records]
    -> records_search
* [Leave]
    -> lighthouse_first_floor
* [Return to outbuilding search]
    -> outbuilding_search


=== records_search ===
Detailed records of the lighthouse's operation.
* [Leave]
    -> records_room
* [Return to START]
    -> START


=== observation_platform ===
An external observation platform on the lighthouse.
* [Look out]
    -> platform_view
* [Go back inside]
    -> lighthouse_second_floor

=== platform_view ===
An incredible view in all directions.
* [Go back]
    -> observation_platform

=== mirror_vault ===
A vault lined entirely with mirrors. Completely disorienting.
* [Try to find the exit]
    -> mirror_vault
* [Search the walls]
    -> mirror_vault

// STRUCTURAL DEAD END

=== tide_trap ===
You are caught by a rising tide. The cave fills with water.
* [Search for an exit]
    -> tide_trap
* [Tread water]
    -> tide_trap

// STRUCTURAL DEAD END

=== hidden_grotto ===
// UNREACHABLE: nothing diverts here
A beautiful hidden grotto on the island's western side.
* [Explore it]
    -> island_rescue
* [Leave]
    -> shoreline

=== collapsed_wing ===
// UNREACHABLE: nothing diverts here
A collapsed section of an old building near the lighthouse.
* [Search the rubble]
    -> island_rescue
* [Leave]
    -> lighthouse_outbuildings

// === EXPANSION: additional nodes to reach 200, BF ~2.0 ===

=== harbour_north ===
The northern end of the harbour. Fishing nets hang from poles.
* [Examine the nets]
    -> exp_net_examination
* [Walk to the water's edge]
    -> exp_waters_edge

=== exp_net_examination ===
The nets are old but well-maintained. No fish remain.
* [Leave]
    -> harbour_north

=== exp_waters_edge ===
The water laps at the rocky shore. Cold and clear.
* [Look along the coast]
    -> harbour_north
* [Go back]
    -> harbour_north

=== exp_lh_base ===
The base of the lighthouse. Massive stone foundations.
* [Circle around]
    -> exp_lh_east_side
* [Try the door]
    -> exp_lh_door
* [Check the dark side passage]
    -> dark_passage

=== exp_lh_east_side ===
The eastern face of the lighthouse. An old mooring ring in the stone.
* [Examine it]
    -> exp_lh_base
* [Continue around]
    -> exp_lh_base

=== exp_lh_door ===
The lighthouse door — heavy iron. A keypad beside it.
* [Try the keypad]
    -> exp_keypad_attempt
* [Leave]
    -> exp_lh_base

=== exp_keypad_attempt ===
The keypad requires a code. You do not have it.
* [Give up]
    -> exp_lh_base

=== exp_sea_wall ===
A long sea wall protecting the harbour.
* [Walk along it]
    -> exp_sea_wall_middle
* [Look out to sea]
    -> exp_sea_wall_view

=== exp_sea_wall_middle ===
The middle section of the sea wall. Spray hits you.
* [Continue to the end]
    -> exp_sea_wall_end
* [Go back]
    -> exp_sea_wall

=== exp_sea_wall_end ===
The end of the sea wall. Open ocean stretches away.
* [Go back]
    -> exp_sea_wall_middle

=== exp_sea_wall_view ===
Nothing but water to the horizon.
* [Leave]
    -> exp_sea_wall

=== exp_island_north ===
The northern interior of the island. Scrubland and rock.
* [Explore]
    -> exp_north_scrubland
* [Head to the hill]
    -> exp_interior_hill

=== exp_north_scrubland ===
Tough coastal plants and loose stones.
* [Search]
    -> exp_scrubland_search
* [Leave]
    -> exp_island_north

=== exp_scrubland_search ===
You find some shelter among the rocks but nothing useful.
* [Leave]
    -> exp_north_scrubland

=== exp_interior_hill ===
A low hill at the island's centre.
* [Climb to the top]
    -> exp_hill_top
* [Circle around]
    -> exp_hill_base_east

=== exp_hill_top ===
The highest point on the island. Good visibility in all directions.
* [Look around]
    -> exp_island_north

=== exp_hill_base_east ===
The eastern base of the hill. Sheep tracks in the ground.
* [Follow the tracks]
    -> exp_island_north
* [Go back]
    -> exp_interior_hill

=== exp_keeper_cottage ===
An old keeper's cottage near the lighthouse.
* [Search it]
    -> exp_cottage_search
* [Check the outbuilding]
    -> exp_keeper_outbuilding

=== exp_cottage_search ===
Personal effects and old furniture. A photograph on the wall.
* [Examine the photo]
    -> exp_keeper_photo
* [Leave]
    -> exp_keeper_cottage

=== exp_keeper_photo ===
A keeper and their family. Happy faces from long ago.
* [Leave]
    -> exp_cottage_search

=== exp_keeper_outbuilding ===
A small outbuilding. Tools and spare parts.
* [Search]
    -> exp_outbuilding_search
* [Leave]
    -> exp_keeper_cottage

=== exp_outbuilding_search ===
Maintenance tools and some old rope.
* [Take the rope]
    -> exp_keeper_cottage
* [Leave]
    -> exp_keeper_cottage

=== exp_south_coast ===
The southern coast. The sea here is rougher.
* [Walk the shoreline]
    -> exp_south_shoreline
* [Find shelter from the wind]
    -> exp_coastal_shelter

=== exp_south_shoreline ===
Rocky outcrops and tidal pools.
* [Examine the pools]
    -> exp_tidal_pool_search
* [Continue]
    -> exp_south_coast

=== exp_tidal_pool_search ===
Sea anemones and small crabs. Nothing useful.
* [Leave]
    -> exp_south_shoreline

=== exp_coastal_shelter ===
A natural hollow in the rock face providing shelter.
* [Rest here]
    -> exp_south_coast
* [Search the hollow]
    -> exp_hollow_search

=== exp_hollow_search ===
Someone camped here before. Ash and old tins.
* [Leave]
    -> exp_coastal_shelter

=== exp_watch_room ===
The watch room where keepers once monitored ships.
* [Look through the telescope]
    -> exp_telescope_view
* [Check the logs]
    -> exp_watch_logs

=== exp_telescope_view ===
You can see the mainland faintly on the horizon.
* [Leave]
    -> exp_watch_room

=== exp_watch_logs ===
Logs of ships and weather going back decades.
* [Read the last entries]
    -> exp_last_log_entries
* [Leave]
    -> exp_watch_room

=== exp_last_log_entries ===
The final entries grow brief and then stop suddenly.
* [Leave]
    -> exp_watch_logs

=== exp_signal_room ===
A room for sending and receiving signals.
* [Check the equipment]
    -> exp_signal_equipment
* [Look out the window]
    -> exp_signal_room_view

=== exp_signal_equipment ===
Old signal lamps and mirrors. Long unused.
* [Leave]
    -> exp_signal_room

=== exp_signal_room_view ===
A clear view of the approaches to the island.
* [Leave]
    -> exp_signal_room

=== exp_lamp_room ===
The lamp room at the top of the lighthouse.
* [Examine the lens]
    -> exp_lens_examination
* [Look out]
    -> exp_lamp_room_view

=== exp_lens_examination ===
A massive Fresnel lens. Dusty but undamaged.
* [Leave]
    -> exp_lamp_room

=== exp_lamp_room_view ===
The entire island spread out below. Remarkable.
* [Leave]
    -> exp_lamp_room

=== exp_lh_cellar ===
A cellar beneath the lighthouse. Storage and supplies.
* [Search]
    -> exp_cellar_search
* [Check the far corner]
    -> exp_cellar_corner

=== exp_cellar_search ===
Preserved food and fuel for the lamp. Old but intact.
* [Leave]
    -> exp_lh_cellar

=== exp_cellar_corner ===
A corner with locked boxes stacked to the ceiling.
* [Try to open one]
    -> exp_locked_box_attempt
* [Leave]
    -> exp_lh_cellar

=== exp_locked_box_attempt ===
The boxes are sealed with combination locks.
* [Give up]
    -> exp_cellar_corner

=== exp_east_cliffs ===
High cliffs on the eastern side of the island.
* [Look over the edge carefully]
    -> exp_cliff_edge_view
* [Walk along the top]
    -> exp_cliff_top_walk

=== exp_cliff_edge_view ===
The sea crashes far below. Gulls nest in the rock face.
* [Step back]
    -> exp_east_cliffs

=== exp_cliff_top_walk ===
The clifftop path. Windswept and exposed.
* [Continue]
    -> exp_north_cliffs
* [Go back]
    -> exp_east_cliffs

=== exp_north_cliffs ===
The northern cliffs. Less sheer than the east.
* [Look for a way down]
    -> exp_cliff_descent_attempt
* [Go back]
    -> exp_cliff_top_walk

=== exp_cliff_descent_attempt ===
There are handholds but it looks dangerous without a rope.
* [Go back]
    -> exp_north_cliffs

=== exp_west_beach ===
A small pebbly beach on the western side.
* [Search the beach]
    -> exp_beach_search
* [Check the rock pools]
    -> exp_rock_pool_check

=== exp_beach_search ===
Driftwood and old rope. Nothing of use.
* [Leave]
    -> exp_west_beach

=== exp_rock_pool_check ===
Clear rock pools full of sea life.
* [Leave]
    -> exp_west_beach

=== exp_generator_room ===
The generator room for the lighthouse electrics.
* [Examine the generator]
    -> exp_generator_examination
* [Check the fuel supply]
    -> exp_fuel_supply_check

=== exp_generator_examination ===
A diesel generator. Out of fuel.
* [Leave]
    -> exp_generator_room

=== exp_fuel_supply_check ===
Empty fuel drums. None remain.
* [Leave]
    -> exp_generator_room

=== exp_boathouse ===
A boathouse at the harbour. No boats remain.
* [Search it]
    -> exp_boathouse_search
* [Check the launch ramp]
    -> exp_launch_ramp

=== exp_boathouse_search ===
Life rings, old rope, and rusted tools.
* [Leave]
    -> exp_boathouse

=== exp_launch_ramp ===
A concrete ramp leading into the water. Empty.
* [Leave]
    -> exp_boathouse

=== exp_harbour_office ===
A small harbour office for managing vessel arrivals.
* [Search the desk]
    -> exp_harbour_office_desk
* [Check the filing cabinet]
    -> exp_harbour_filing

=== exp_harbour_office_desk ===
Arrival and departure logs. The last vessel was years ago.
* [Leave]
    -> exp_harbour_office

=== exp_harbour_filing ===
Vessel registrations and customs records.
* [Leave]
    -> exp_harbour_office

=== exp_south_pier ===
A secondary pier on the south side of the harbour.
* [Walk to the end]
    -> exp_south_pier_end
* [Check underneath]
    -> exp_south_pier_under

=== exp_south_pier_end ===
The end of the south pier. Mooring rings but no boats.
* [Go back]
    -> exp_south_pier

=== exp_south_pier_under ===
Old storage lashed to the structure.
* [Leave]
    -> exp_south_pier

=== exp_chapel ===
A small island chapel for mariners.
* [Enter]
    -> exp_chapel_interior
* [Read the memorial board]
    -> exp_memorial_board

=== exp_chapel_interior ===
Simple benches and a plain altar. Peaceful.
* [Leave]
    -> exp_chapel

=== exp_memorial_board ===
Names of sailors lost at sea. A long list.
* [Leave]
    -> exp_chapel

=== exp_old_jetty ===
An old wooden jetty, mostly rotted.
* [Try the newer section]
    -> exp_jetty_new_section
* [Go back]
    -> harbour_north

=== exp_jetty_new_section ===
The newer planking holds your weight.
* [Go back]
    -> exp_old_jetty

// === GENUINE CONTRADICTION (validator-detectable) ===
// lantern_gate requires has_torch=true.
// dark_passage sets has_torch=false before diverting there.

=== dark_passage ===
A dark passage to the lighthouse exit. Your torch sputters and dies.
* [Continue to the gate]
    ~ has_torch = false
    -> lantern_gate
* [Go back]
    -> exp_lh_base

=== lantern_gate ===
A gate requiring a lit lantern to signal the keeper.
* [Signal with your torch] { has_torch }
    -> island_rescue
* [Try to signal another way]
    -> dark_passage

// CONTRADICTION: has_torch set false in dark_passage, required true here.

=== exp_weather_station ===
A small weather monitoring station on the island.
* [Read the instruments]
    -> exp_instrument_reading
* [Check the log]
    -> exp_weather_log

=== exp_instrument_reading ===
Wind speed, pressure, temperature. All normal for this coast.
* [Leave]
    -> exp_weather_station

=== exp_weather_log ===
Decades of weather data. Meticulous records.
* [Leave]
    -> exp_weather_station

=== exp_radio_room ===
A radio room for communication with the mainland.
* [Try the radio]
    -> exp_radio_attempt
* [Check the log]
    -> exp_radio_log

=== exp_radio_attempt ===
No power. The radio is silent.
* [Leave]
    -> exp_radio_room

=== exp_radio_log ===
The last transmissions recorded here are years old.
* [Leave]
    -> exp_radio_room

=== exp_foghorn_room ===
The foghorn room. A massive horn mounted through the wall.
* [Examine it]
    -> exp_foghorn_examination
* [Try to activate it]
    -> exp_foghorn_attempt

=== exp_foghorn_examination ===
The mechanism is intact but needs power to function.
* [Leave]
    -> exp_foghorn_room

=== exp_foghorn_attempt ===
Without power nothing happens.
* [Leave]
    -> exp_foghorn_room

=== exp_store_annex ===
An annex off the main store room.
* [Search it]
    -> exp_store_annex_search
* [Leave]
    -> exp_lh_cellar

=== exp_store_annex_search ===
Matches and candles still usable.
* [Take some]
    -> exp_store_annex
* [Leave]
    -> exp_store_annex

=== exp_maintenance_corridor ===
A maintenance corridor running around the lighthouse interior.
* [Follow it]
    -> exp_maintenance_end
* [Go back]
    -> exp_lh_base

=== exp_maintenance_end ===
The corridor ends at a service hatch.
* [Open the hatch]
    -> exp_service_hatch
* [Go back]
    -> exp_maintenance_corridor

=== exp_service_hatch ===
A cramped space with pipe work and wiring.
* [Leave]
    -> exp_maintenance_end

=== exp_island_south ===
The southern interior. More sheltered than the north.
* [Explore]
    -> exp_south_meadow
* [Check the ruins]
    -> exp_old_ruins

=== exp_south_meadow ===
A small sheltered meadow. Wildflowers grow here.
* [Rest in the grass]
    -> exp_island_south
* [Search the edges]
    -> exp_meadow_edge_search

=== exp_meadow_edge_search ===
Wild herbs and insects. Peaceful but not useful.
* [Leave]
    -> exp_south_meadow

=== exp_old_ruins ===
The ruins of an older building, pre-dating the lighthouse.
* [Explore them]
    -> exp_ruin_interior
* [Check the well]
    -> exp_old_ruin_well

=== exp_ruin_interior ===
Collapsed walls and old hearth stones.
* [Search]
    -> exp_ruin_search
* [Leave]
    -> exp_old_ruins

=== exp_ruin_search ===
Pottery shards and old coins. Archaeological interest only.
* [Leave]
    -> exp_ruin_interior

=== exp_old_ruin_well ===
An old stone well, possibly pre-lighthouse.
* [Look down it]
    -> exp_old_ruins

=== exp_asst_keeper_quarters ===
Quarters for the assistant keeper.
* [Search]
    -> exp_asst_keeper_search
* [Check the wardrobe]
    -> exp_asst_keeper_wardrobe

=== exp_asst_keeper_search ===
Personal effects and work uniforms.
* [Leave]
    -> exp_asst_keeper_quarters

=== exp_asst_keeper_wardrobe ===
A wardrobe with spare uniforms and a locked box on the shelf.
* [Try the box]
    -> exp_locked_personal_box
* [Leave]
    -> exp_asst_keeper_quarters

=== exp_locked_personal_box ===
The box is locked with a small padlock. Personal.
* [Leave]
    -> exp_asst_keeper_wardrobe

=== exp_lh_kitchen ===
The keeper's kitchen. Small but functional.
* [Search for food]
    -> exp_kitchen_search
* [Check the pantry]
    -> exp_lh_pantry

=== exp_kitchen_search ===
Old tins and preserved goods. Some still usable.
* [Leave]
    -> exp_lh_kitchen

=== exp_lh_pantry ===
A cool pantry. Shelves of jars, mostly empty.
* [Leave]
    -> exp_lh_kitchen

=== exp_sitting_room ===
A sitting room for the keepers' leisure time.
* [Look around]
    -> exp_sitting_room_search
* [Check the bookshelf]
    -> exp_sitting_room_books

=== exp_sitting_room_search ===
Old magazines and board games.
* [Leave]
    -> exp_sitting_room

=== exp_sitting_room_books ===
A small library of novels and reference books.
* [Browse]
    -> exp_sitting_room
* [Leave]
    -> exp_sitting_room

=== exp_equipment_store ===
A dedicated store for lighthouse equipment.
* [Search it]
    -> exp_equipment_store_search
* [Check the back]
    -> exp_equipment_store_back

=== exp_equipment_store_search ===
Spare lamps, bulbs and cleaning supplies.
* [Leave]
    -> exp_equipment_store

=== exp_equipment_store_back ===
A partition at the back with locked cabinets.
* [Try a cabinet]
    -> exp_equipment_cabinet
* [Leave]
    -> exp_equipment_store

=== exp_equipment_cabinet ===
Locked. Requires a key you don't have.
* [Leave]
    -> exp_equipment_store_back

=== exp_north_path ===
A path leading around the northern coast.
* [Follow it east]
    -> exp_north_cliffs
* [Follow it west]
    -> exp_west_beach

=== exp_crosspath ===
A junction of paths at the island's centre.
* [Head north]
    -> exp_island_north
* [Head south]
    -> exp_island_south

=== exp_fuel_depot ===
A fuel depot for the lighthouse generator.
* [Check the tanks]
    -> exp_fuel_tank_check
* [Check the supply log]
    -> exp_fuel_supply_log

=== exp_fuel_tank_check ===
All tanks are empty.
* [Leave]
    -> exp_fuel_depot

=== exp_fuel_supply_log ===
Records of fuel deliveries. The last one was years ago.
* [Leave]
    -> exp_fuel_depot


=== exp_signal_tower_old ===
The ruins of an older signal tower, pre-lighthouse.
* [Explore]
    -> exp_signal_tower_search
* [Climb what remains]
    -> exp_signal_tower_climb

=== exp_signal_tower_search ===
Old stonework and fallen timbers.
* [Leave]
    -> exp_signal_tower_old

=== exp_signal_tower_climb ===
The remaining walls are too unstable to climb.
* [Leave]
    -> exp_signal_tower_old

=== exp_north_pier ===
The main pier extending into the northern harbour.
* [Walk to the end]
    -> exp_north_pier_end
* [Check the mooring posts]
    -> exp_mooring_posts

=== exp_north_pier_end ===
The end of the pier. Deep water below.
* [Go back]
    -> exp_north_pier

=== exp_mooring_posts ===
Heavy iron mooring posts. Rope still tied to some.
* [Leave]
    -> exp_north_pier

=== exp_storage_shed ===
A storage shed for outdoor equipment.
* [Search it]
    -> exp_storage_shed_search
* [Check the locked chest]
    -> exp_shed_chest

=== exp_storage_shed_search ===
Outdoor gear and maintenance equipment.
* [Leave]
    -> exp_storage_shed

=== exp_shed_chest ===
A heavy wooden chest, padlocked.
* [Try to open it]
    -> exp_storage_shed
* [Leave]
    -> exp_storage_shed


=== exp_island_east_path ===
A path along the eastern edge of the island.
* [Follow north]
    -> exp_east_cliffs
* [Follow south]
    -> exp_island_south

