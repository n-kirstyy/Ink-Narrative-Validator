// Phase 2 - Story 1 (revised)
// Nodes: ~200 | Target BF: 1.5 | Target Edges: ~300


VAR has_rope = false

-> START

=== START ===
You arrive at a remote mountain monastery. The path behind you has crumbled away.
* [Enter through the main gate]
    -> gate_entrance
* [Return to START]
    -> START


=== gate_entrance ===
The gate opens into a long courtyard. A covered walkway runs along one side.
* [Follow the walkway]
    -> walkway_start
* [Cross to the building ahead]
    -> main_building_front
* [Try the back passage]
    -> barrier_approach

=== walkway_start ===
The walkway is cool and shaded. Doors open off it at intervals.
* [Try the first door]
    -> walkway_room_one
* [Continue to the end]
    -> walkway_end

=== walkway_room_one ===
A small room with a single window. A rope hangs on the wall.
* [Take the rope]
    ~ has_rope = true
    -> walkway_start
* [Leave]
    -> walkway_start

=== walkway_end ===
The walkway ends at a heavy door leading deeper into the monastery.
* [Go through]
    -> inner_courtyard
* [Return to gate entrance]
    -> gate_entrance


=== main_building_front ===
The main building facade is imposing. Steps lead up to double doors.
* [Climb the steps]
    -> main_building_entrance
* [Return to walkway start]
    -> walkway_start


=== main_building_entrance ===
A grand entrance hall. Staircases lead up on both sides.
* [Take the left staircase]
    -> left_upper_hall
* [Take the right staircase]
    -> right_upper_hall

=== left_upper_hall ===
A long hall with portraits. Doors line the left side.
* [Try the first door]
    -> portrait_room
* [Continue to the end]
    -> left_hall_end

=== portrait_room ===
Portraits of former abbots hang here. One has a key around their neck.
* [Study it carefully]
    -> portrait_study
* [Leave]
    -> left_upper_hall

=== portrait_study ===
The painting is signed with a cipher. You note it down.
* [Leave]
    -> left_upper_hall
* [Return to walkway room one]
    -> walkway_room_one


=== left_hall_end ===
The hall ends at a locked door. Beyond it you can hear wind.
* [Try to open it]
    -> locked_hall_door
* [Go back]
    -> left_upper_hall

=== locked_hall_door ===
The door will not move. You need something to open it.
* [Give up]
    -> left_upper_hall
* [Return to walkway end]
    -> walkway_end


=== right_upper_hall ===
A narrower hall. A single door at the far end.
* [Try the door]
    -> wardens_room
* [Return to main building front]
    -> main_building_front


=== wardens_room ===
The warden's quarters. Sparse but personal. Someone lived here recently.
* [Search the room]
    -> wardens_search
* [Read the journal on the desk]
    -> wardens_journal

=== wardens_search ===
You find some matches but nothing else of use.
* [Return to main building entrance]
    -> main_building_entrance


=== wardens_journal ===
The journal speaks of the monastery's history.
* [Note the information]
    -> wardens_room
* [Leave]
    -> wardens_room

=== inner_courtyard ===
A smaller inner courtyard. A well sits at the centre.
* [Examine the well]
    -> inner_well
* [Try the north door]
    -> north_cloister

=== inner_well ===
The well is deep. Something glints at the bottom.
* [Descend carefully]
    -> well_bottom
* [Leave]
    -> inner_courtyard

=== well_bottom ===
At the bottom you find an old seal.
* [Take it]
    -> inner_courtyard
* [Return to left upper hall]
    -> left_upper_hall


=== north_cloister ===
A covered cloister running around a garden.
* [Walk the cloister]
    -> cloister_walk
* [Enter the garden]
    -> cloister_garden

* [Try the monastery exit path]
    -> barrier_approach
=== cloister_walk ===
The cloister has carved stonework. Doors open into the building.
* [Try a door]
    -> cloister_room_one
* [Continue walking]
    -> cloister_far_end

=== cloister_room_one ===
A meditation room. Cushions on the floor. Peaceful.
* [Rest here]
    -> cloister_walk
* [Leave]
    -> cloister_walk

=== cloister_far_end ===
The cloister ends at a passage leading north.
* [Follow it]
    -> north_passage
* [Return to portrait room]
    -> portrait_room


=== cloister_garden ===
A well-tended garden. Herbs grow in neat rows.
* [Look around]
    -> garden_search
* [Leave]
    -> north_cloister

=== garden_search ===
You find some useful herbs but nothing else.
* [Leave]
    -> cloister_garden
* [Return to portrait study]
    -> portrait_study


=== north_passage ===
A long passage heading deeper into the monastery.
* [Continue]
    -> scriptorium_entrance
* [Go back]
    -> cloister_far_end

=== scriptorium_entrance ===
The scriptorium. Rows of writing desks.
* [Search the desks]
    -> scriptorium_search
* [Try the door at the back]
    -> archive_corridor

=== scriptorium_search ===
You find manuscripts but nothing useful for navigation.
* [Leave]
    -> scriptorium_entrance
* [Return to START]
    -> START


=== archive_corridor ===
A narrow corridor leading to the archive. A door blocks the way.
* [Try the archive door]
    -> archive_door
* [Go back]
    -> scriptorium_entrance

=== archive_door ===
A heavy door. It opens with some effort.
* [Push through]
    -> archive_interior
* [Go back]
    -> archive_corridor

=== archive_interior ===
The archive. Shelves of records stretching to the ceiling.
* [Search the records]
    -> archive_search
* [Try the door at the back]
    -> upper_key_corridor

=== archive_search ===
You find historical records of the monastery.
* [Read them]
    -> archive_interior
* [Leave]
    -> archive_interior

=== upper_key_corridor ===
A corridor above the archive. A small room opens off it.
* [Enter the room]
    -> key_room
* [Go back]
    -> archive_interior

=== key_room ===
A small room. A hook on the wall where a key once hung.
* [Leave]
    -> upper_key_corridor

=== chapter_house ===
The chapter house where monks once met.
* [Search the room]
    -> chapter_search
* [Try the side door]
    -> chapter_side

=== chapter_search ===
Old meeting records and minutes.
* [Leave]
    -> chapter_house
* [Return to gate entrance]
    -> gate_entrance


=== chapter_side ===
A small antechamber.
* [Search it]
    -> chapter_house
* [Leave]
    -> chapter_house

=== refectory ===
The dining hall. Long tables still set.
* [Search the kitchen]
    -> kitchen_search
* [Leave]
    -> refectory_exit

=== kitchen_search ===
You find preserved food and some tools.
* [Take what you need]
    -> refectory
* [Leave]
    -> refectory

=== refectory_exit ===
A door out of the refectory.
* [Go through]
    -> east_passage
* [Return to walkway start]
    -> walkway_start


=== east_passage ===
A passage running east.
* [Follow it]
    -> east_end
* [Go back]
    -> refectory_exit

=== east_end ===
The passage ends at a staircase going down.
* [Descend]
    -> lower_level
* [Return to walkway room one]
    -> walkway_room_one


=== lower_level ===
The lower level of the monastery. Cool and dark.
* [Explore north]
    -> lower_north
* [Explore south]
    -> lower_south

=== lower_north ===
Storage rooms and utility spaces.
* [Search]
    -> lower_north_search
* [Continue]
    -> lower_north_end

=== lower_north_search ===
Old supplies, mostly decayed.
* [Leave]
    -> lower_north
* [Return to walkway end]
    -> walkway_end


=== lower_north_end ===
The northern end of the lower level. A heavy door leads to a tomb.
* [Open the door]
    -> tomb_entrance
* [Go back]
    -> lower_north

=== lower_south ===
The southern lower level. A smell of damp.
* [Explore further]
    -> lower_south_corridor
* [Go back]
    -> lower_level

=== lower_south_corridor ===
A corridor with water on the floor. Getting deeper.
* [Continue]
    -> flooded_area
* [Turn back]
    -> lower_south

=== flooded_area ===
The floor is flooded. You can see a cellar door under the water.
* [Try the cellar door]
    -> drowned_cellar
* [Turn back]
    -> lower_south_corridor

=== drowned_cellar ===
The cellar is fully flooded. No way out.
* [Search desperately]
    -> drowned_cellar
* [Tread water]
    -> drowned_cellar

// STRUCTURAL DEAD END

=== tomb_entrance ===
A tomb. Stone sarcophagi line the walls.
* [Explore the tomb]
    -> tomb_interior
* [Go back]
    -> lower_north_end

=== tomb_interior ===
The tomb goes deeper than expected.
* [Continue deeper]
    -> tomb_deep
* [Go back]
    -> tomb_entrance

=== tomb_deep ===
The deepest part of the tomb. A locked iron gate bars further progress.
* [Try to open it]
    -> locked_tomb
* [Go back]
    -> tomb_interior

=== locked_tomb ===
The gate is locked tight. You are trapped inside.
* [Try to find another way]
    -> locked_tomb
* [Call for help]
    -> locked_tomb

// STRUCTURAL DEAD END

=== upper_chapel ===
A small chapel on the upper level. Stained glass and candles.
* [Pray]
    -> chapel_prayer
* [Examine the altar]
    -> altar_examination

=== chapel_prayer ===
A moment of peace.
* [Leave]
    -> upper_chapel
* [Return to main building front]
    -> main_building_front


=== altar_examination ===
The altar has a hidden compartment. Empty now.
* [Leave]
    -> upper_chapel
* [Return to main building entrance]
    -> main_building_entrance


=== bell_tower ===
A bell tower with a view of the surrounding mountains.
* [Look out]
    -> tower_view
* [Descend]
    -> main_building_entrance

=== tower_view ===
The view is extraordinary. You can see for miles.
* [Descend]
    -> bell_tower
* [Return to left upper hall]
    -> left_upper_hall


=== monastery_library ===
A smaller library separate from the archive.
* [Search the shelves]
    -> library_search
* [Try the reading alcove]
    -> reading_alcove

=== library_search ===
Books on theology and natural philosophy.
* [Leave]
    -> monastery_library
* [Return to portrait room]
    -> portrait_room


=== reading_alcove ===
A comfortable alcove with a padded bench.
* [Rest]
    -> monastery_library
* [Leave]
    -> monastery_library

=== abbots_study ===
The abbot's private study. Richly furnished.
* [Search the desk]
    -> abbots_desk
* [Read the bookshelf]
    -> abbots_books

=== abbots_desk ===
Letters and administrative records.
* [Leave]
    -> abbots_study
* [Return to portrait study]
    -> portrait_study


=== abbots_books ===
A collection of rare manuscripts.
* [Leave]
    -> abbots_study
* [Return to START]
    -> START


=== infirmary ===
The monastery infirmary. Medical equipment from another era.
* [Search for supplies]
    -> infirmary_search
* [Leave]
    -> infirmary_exit

=== infirmary_search ===
You find some useful medicines.
* [Take them]
    -> infirmary
* [Leave]
    -> infirmary

=== infirmary_exit ===
A door leading out of the infirmary.
* [Go through]
    -> central_corridor
* [Return to gate entrance]
    -> gate_entrance


=== central_corridor ===
The main corridor of the monastery running north to south.
* [Head north]
    -> north_end_corridor
* [Head south]
    -> south_end_corridor

=== north_end_corridor ===
The northern end of the main corridor. A door leads outside.
* [Go outside]
    -> north_exterior
* [Go back]
    -> central_corridor

=== north_exterior ===
The northern exterior of the monastery. Cliffs drop away sharply.
* [Look around]
    -> north_exterior_search
* [Go back inside]
    -> north_end_corridor

=== north_exterior_search ===
Nothing here but wind and stone.
* [Go back]
    -> north_exterior
* [Return to walkway start]
    -> walkway_start


=== south_end_corridor ===
The southern end. A passage leads to the guest quarters.
* [Try the guest quarters]
    -> guest_quarters
* [Go back]
    -> central_corridor

=== guest_quarters ===
Simple rooms for visiting monks.
* [Search a room]
    -> guest_room_search
* [Leave]
    -> south_end_corridor

=== guest_room_search ===
Personal effects of a former guest. Nothing useful.
* [Leave]
    -> guest_quarters
* [Return to walkway room one]
    -> walkway_room_one


=== storeroom ===
A large storeroom.
* [Search it]
    -> storeroom_search
* [Leave]
    -> storeroom_exit

=== storeroom_search ===
Old equipment and supplies.
* [Leave]
    -> storeroom
* [Return to walkway end]
    -> walkway_end


=== storeroom_exit ===
* [Go through]
    -> central_corridor
* [Return to main building front]
    -> main_building_front


=== wine_cellar ===
The monastery wine cellar. Barrels line the walls.
* [Look around]
    -> wine_cellar_search
* [Leave]
    -> lower_level

=== wine_cellar_search ===
Most barrels are empty. One still has wine.
* [Leave]
    -> wine_cellar
* [Return to main building entrance]
    -> main_building_entrance


=== garden_shed ===
A tool shed at the edge of the garden.
* [Search it]
    -> shed_search
* [Leave]
    -> cloister_garden

=== shed_search ===
Garden tools. Nothing useful.
* [Leave]
    -> garden_shed
* [Return to left upper hall]
    -> left_upper_hall


=== dormitory ===
The monks' dormitory. Rows of small beds.
* [Search]
    -> dormitory_search
* [Leave]
    -> dormitory_exit

=== dormitory_search ===
Personal effects. Nothing of value.
* [Leave]
    -> dormitory
* [Return to portrait room]
    -> portrait_room


=== dormitory_exit ===
* [Go through]
    -> central_corridor
* [Return to portrait study]
    -> portrait_study


=== washroom ===
The communal washroom. Stone basins.
* [Look around]
    -> washroom_search
* [Leave]
    -> central_corridor

=== washroom_search ===
Nothing useful here.
* [Leave]
    -> washroom
* [Return to START]
    -> START


=== gate_guardhouse ===
The guardhouse at the main gate.
* [Search it]
    -> guardhouse_search
* [Leave]
    -> gate_entrance

=== guardhouse_search ===
Old guard records and a cold hearth.
* [Leave]
    -> gate_guardhouse
* [Return to gate entrance]
    -> gate_entrance


=== herb_garden ===
A dedicated herb garden.
* [Identify the plants]
    -> herb_identification
* [Leave]
    -> cloister_garden

=== herb_identification ===
Medicinal herbs, all useful.
* [Leave]
    -> herb_garden
* [Return to walkway start]
    -> walkway_start


=== woodshed ===
A woodshed at the back of the monastery.
* [Search it]
    -> woodshed_search
* [Leave]
    -> north_exterior

=== woodshed_search ===
Stacked firewood and axes.
* [Leave]
    -> woodshed
* [Return to walkway room one]
    -> walkway_room_one


=== cistern_room ===
A room housing the monastery's water cistern.
* [Examine the cistern]
    -> cistern_examination
* [Leave]
    -> lower_level

=== cistern_examination ===
The cistern is still full of clean water.
* [Leave]
    -> cistern_room

=== monastery_exit ===
The far side of the monastery. A path leads down the mountain.
-> END

=== forgotten_vault ===
// UNREACHABLE: nothing diverts here
A vault hidden beneath the abbey floor.
* [Explore it]
    -> monastery_exit
* [Leave]
    -> lower_level

=== sealed_annex ===
// UNREACHABLE: nothing diverts here
A sealed annex on the east side of the monastery.
* [Search it]
    -> monastery_exit
* [Leave]
    -> east_passage

// === EXPANSION: additional nodes to reach 200, BF ~1.5 ===

=== outer_wall ===
The outer wall of the monastery. Weathered stone, centuries old.
* [Walk along it]
    -> outer_wall_east

=== outer_wall_east ===
The eastern stretch of the outer wall. A gate leads back inside.
* [Go back in]
    -> east_passage

=== bell_rope_room ===
A small room at the base of the bell tower. The rope mechanism hangs here.
* [Examine it]
    -> bell_rope_examination

=== bell_rope_examination ===
The rope is frayed but still functional.
* [Leave]
    -> bell_tower

=== scriptorium_annex ===
An annex off the scriptorium used for drying ink.
* [Look around]
    -> scriptorium_annex_search

=== scriptorium_annex_search ===
Dried ink pots and blank vellum. Nothing useful.
* [Leave]
    -> scriptorium_entrance

=== lower_storage_east ===
An eastern storage room on the lower level.
* [Search it]
    -> lower_storage_east_search

=== lower_storage_east_search ===
Empty shelving and broken crates.
* [Leave]
    -> lower_level

=== lower_storage_west ===
A western storage room. Shelves of preserved goods.
* [Search]
    -> lower_storage_west_search

=== lower_storage_west_search ===
You find some tools and preserved food.
* [Leave]
    -> lower_level

=== cloister_east_door ===
A door off the cloister leading to a small antechamber.
* [Enter]
    -> cloister_antechamber

=== cloister_antechamber ===
A bare antechamber with a stone bench.
* [Rest briefly]
    -> cloister_walk
* [Leave]
    -> cloister_walk

=== north_tower_base ===
The base of a small north tower.
* [Climb]
    -> north_tower_top

=== north_tower_top ===
The top of the north tower. A good vantage point.
* [Look out]
    -> north_tower_view

=== north_tower_view ===
You can see the surrounding cliffs clearly from here.
* [Descend]
    -> north_tower_base

=== monks_workshop ===
A workshop where monks made candles and soap.
* [Search]
    -> monks_workshop_search

=== monks_workshop_search ===
Moulds and leftover materials. Nothing useful.
* [Leave]
    -> central_corridor

=== pilgrim_shelter ===
A simple shelter near the main gate for pilgrims.
* [Look inside]
    -> pilgrim_shelter_search

=== pilgrim_shelter_search ===
A bench and a cold firepit. Someone left a blanket.
* [Leave]
    -> gate_entrance

=== roof_access ===
A hatch giving access to the monastery roof.
* [Climb up]
    -> roof_walkway

=== roof_walkway ===
A narrow walkway along the roofline. The wind is fierce.
* [Continue carefully]
    -> roof_far_end

=== roof_far_end ===
The far end of the roof walkway. A chimney stack rises beside you.
* [Go back]
    -> roof_walkway

=== undercroft_entrance ===
Stairs leading to an undercroft beneath the main hall.
* [Descend]
    -> undercroft_main

=== undercroft_main ===
A dark undercroft. Stone vaulting overhead.
* [Explore]
    -> undercroft_far

=== undercroft_far ===
The far end of the undercroft. A sealed door.
* [Try the door]
    -> undercroft_door

=== undercroft_door ===
The door is sealed with wax. Ancient.
* [Leave]
    -> undercroft_main

=== east_tower ===
A small tower on the east side.
* [Climb]
    -> east_tower_top

=== east_tower_top ===
Views over the eastern cliffs.
* [Descend]
    -> east_tower

=== monks_cells_north ===
A row of small monks' cells on the north side.
* [Search one]
    -> monks_cell_north_search

=== monks_cell_north_search ===
Personal effects — a book and a wooden cross.
* [Leave]
    -> monks_cells_north

=== monks_cells_south ===
Another row of monks' cells on the south side.
* [Search one]
    -> monks_cell_south_search

=== monks_cell_south_search ===
Empty but tidy.
* [Leave]
    -> monks_cells_south

=== prayer_hall ===
A secondary prayer hall used for daily offices.
* [Sit quietly]
    -> prayer_hall_rest

=== prayer_hall_rest ===
A moment of stillness.
* [Leave]
    -> prayer_hall

=== lay_quarters ===
Quarters for lay workers attached to the monastery.
* [Search]
    -> lay_quarters_search

=== lay_quarters_search ===
Simpler than the monks' cells. Work clothes and tools.
* [Leave]
    -> lay_quarters

=== cellar_entrance ===
Stairs down to the wine and food cellars.
* [Descend]
    -> wine_cellar

=== north_gate ===
A small north gate, rarely used.
* [Check it]
    -> north_gate_check

=== north_gate_check ===
The gate is barred from inside. You could open it.
* [Leave it]
    -> north_exterior

=== south_garden ===
A south-facing garden catching the sun.
* [Walk through]
    -> south_garden_path

=== south_garden_path ===
Overgrown paths and old benches.
* [Leave]
    -> south_end_corridor

=== meditation_courtyard ===
A small private courtyard for meditation.
* [Sit]
    -> meditation_rest

=== meditation_rest ===
You sit quietly for a moment.
* [Leave]
    -> inner_courtyard

=== music_room ===
A room where monks practised plainchant.
* [Look around]
    -> music_room_search

=== music_room_search ===
Music stands and worn song books.
* [Leave]
    -> central_corridor

=== tack_room ===
A room for storing riding equipment, long unused.
* [Search]
    -> tack_room_search

=== tack_room_search ===
Old harnesses and saddle bags. Dusty.
* [Leave]
    -> north_exterior

=== burial_ground ===
A small burial ground behind the monastery.
* [Walk among the graves]
    -> burial_ground_search

=== burial_ground_search ===
Simple stone markers. Some very old.
* [Leave]
    -> north_exterior

=== ice_house ===
An old ice house for preserving food in summer.
* [Look inside]
    -> ice_house_interior

=== ice_house_interior ===
Cold and empty. The insulation is still intact.
* [Leave]
    -> north_exterior

=== fish_pond ===
A man-made fish pond, now empty.
* [Examine it]
    -> fish_pond_search

=== fish_pond_search ===
Cracked stone and dried mud. Long abandoned.
* [Leave]
    -> cloister_garden

=== bake_house ===
The monastery bakehouse. A large cold oven dominates the room.
* [Search]
    -> bake_house_search

=== bake_house_search ===
Bread tins and flour bags, all empty.
* [Leave]
    -> refectory

=== laundry ===
A laundry room with large stone sinks.
* [Look around]
    -> laundry_search

=== laundry_search ===
Washing boards and cold water. Nothing useful.
* [Leave]
    -> washroom

=== scriptorium_gallery ===
A gallery above the scriptorium where finished works were displayed.
* [Look at the works]
    -> gallery_examination

=== gallery_examination ===
Illuminated manuscripts under glass. Beautiful.
* [Leave]
    -> scriptorium_entrance

=== infirmary_ward ===
The main ward of the infirmary. Several beds.
* [Check the beds]
    -> infirmary_ward_search

=== infirmary_ward_search ===
Clean linen and old medical notes.
* [Leave]
    -> infirmary

=== dispensary ===
A room for preparing medicines.
* [Search the shelves]
    -> dispensary_search

=== dispensary_search ===
Dried herbs and empty medicine bottles.
* [Leave]
    -> infirmary

=== porter_lodge ===
The porter's lodge beside the main gate.
* [Search]
    -> porter_lodge_search

=== porter_lodge_search ===
A log of visitors. The last entry is years old.
* [Leave]
    -> gate_entrance

=== east_cloister ===
A secondary cloister on the east side.
* [Walk it]
    -> east_cloister_walk

=== east_cloister_walk ===
Quieter than the main cloister. Moss on the stones.
* [Leave]
    -> east_passage

=== chapter_gallery ===
A gallery above the chapter house.
* [Look down into the chapter house]
    -> chapter_gallery_view

=== chapter_gallery_view ===
The chapter house looks smaller from above.
* [Descend]
    -> chapter_house

=== abbot_chapel ===
A private chapel for the abbot's use.
* [Look inside]
    -> abbot_chapel_search

=== abbot_chapel_search ===
A simple altar and a kneeling cushion.
* [Leave]
    -> abbots_study

=== treasury_ante ===
An antechamber before the monastery treasury.
* [Try the treasury door]
    -> treasury_door

=== treasury_door ===
The treasury door is sealed. Ancient locks.
* [Leave]
    -> treasury_ante

=== monastery_exit_path ===
The path down from the monastery begins here.
* [Start the descent]
    -> monastery_exit


=== outer_gate_passage ===
A narrow passage through the outer gate wall.
* [Walk through]
    -> outer_wall

=== lower_east_utility ===
A utility room on the lower east side.
* [Check it]
    -> lower_east_utility_search

=== lower_east_utility_search ===
Pipe fittings and old tools.
* [Leave]
    -> lower_level

=== lower_chapel ===
A small chapel in the lower level for the workers.
* [Pray]
    -> lower_chapel_prayer

=== lower_chapel_prayer ===
A brief moment of quiet.
* [Leave]
    -> lower_level

=== archive_reading_room ===
A reading room attached to the archive.
* [Browse]
    -> archive_reading_search

=== archive_reading_search ===
Reference texts and indices.
* [Leave]
    -> archive_interior

=== gatehouse_upper ===
The upper floor of the gatehouse.
* [Look around]
    -> gatehouse_upper_search

=== gatehouse_upper_search ===
A small sleeping room. A guard's quarters.
* [Leave]
    -> gate_guardhouse

=== south_tower ===
A tower on the south side of the monastery.
* [Climb]
    -> south_tower_top

=== south_tower_top ===
Views across the southern approach.
* [Descend]
    -> south_tower

=== passage_to_well ===
A short passage leading back towards the inner well.
* [Follow it]
    -> inner_courtyard

=== crypt_antechamber ===
An antechamber before the monastery crypt.
* [Enter the crypt]
    -> tomb_entrance

=== monastery_records_room ===
A room dedicated to administrative records.
* [Search]
    -> records_room_search

=== records_room_search ===
Financial ledgers and property deeds. Very old.
* [Leave]
    -> archive_interior

=== west_exterior ===
The western exterior of the monastery. Quiet and sheltered.
* [Look around]
    -> west_exterior_search

=== west_exterior_search ===
Stone walls and a small lean-to shelter.
* [Leave]
    -> north_exterior

=== lower_passage_west ===
A western passage on the lower level.
* [Follow it]
    -> lower_storage_west

=== south_exterior ===
The southern exterior. A path leads around the building.
* [Follow the path]
    -> monastery_exit_path

=== monks_recreation_room ===
A room where monks spent their limited recreation time.
* [Look around]
    -> recreation_room_search

=== recreation_room_search ===
Board games and books of permitted reading.
* [Leave]
    -> central_corridor

=== novice_classroom ===
A classroom for novice monks.
* [Look inside]
    -> classroom_search

=== classroom_search ===
Slates and chalk. Simple benches.
* [Leave]
    -> central_corridor

=== east_exterior ===
The eastern exterior. The cliff drops away sharply here.
* [Look carefully over the edge]
    -> east_exterior_view

=== east_exterior_view ===
A long drop. You step back carefully.
* [Go back inside]
    -> east_passage


=== old_mill_room ===
A room that once housed a small mill for grinding grain. The millstone is cracked but still in place.
* [Leave]
    -> lower_level


// gatehouse_barrier requires has_rope=true.
// barrier_approach sets has_rope=false before diverting there.

=== barrier_approach ===
A path to the gatehouse barrier. You discover your rope has frayed and snapped.
* [Continue to the barrier]
    ~ has_rope = false
    -> gatehouse_barrier
* [Go back]
    -> gate_entrance

=== gatehouse_barrier ===
A wooden barrier across the gatehouse exit. A rope mechanism controls it.
* [Use your rope to work the mechanism] { has_rope }
    -> monastery_exit
* [Try to lift it manually]
    -> barrier_approach

// CONTRADICTION: has_rope set false in barrier_approach, required true here.

