// Phase 2 - Story 3 (revised)
// Nodes: ~200 | Target BF: 2.5 | Target Edges: ~500

VAR has_rope = false

-> START

=== START ===
You stand at the entrance to an ancient pyramid complex buried in jungle.
* [Enter through the main entrance]
    -> grand_entrance
* [Explore the exterior]
    -> exterior_grounds
* [Check the side entrance]
    -> side_entrance

=== grand_entrance ===
A vast entrance hall. Columns stretch to the ceiling. Three passages ahead.
* [Take the left passage]
    -> left_passage
* [Take the central passage]
    -> central_passage
* [Take the right passage]
    -> right_passage

=== exterior_grounds ===
Overgrown grounds surrounding the pyramid. Stone blocks everywhere.
* [Search the grounds]
    -> grounds_search
* [Find the side entrance]
    -> side_entrance
* [Go back]
    -> START

=== side_entrance ===
A smaller entrance on the pyramid's south face.
* [Enter]
    -> south_corridor
* [Go back]
    -> exterior_grounds
* [Return to START]
    -> START


=== left_passage ===
The left passage leads to a series of chambers.
* [Enter the first chamber]
    -> chamber_one
* [Continue to the end]
    -> left_passage_end
* [Go back]
    -> grand_entrance

=== central_passage ===
The central passage is wider and more decorated.
* [Examine the decorations]
    -> decoration_study
* [Continue forward]
    -> central_hall
* [Go back]
    -> grand_entrance

=== right_passage ===
The right passage slopes downward.
* [Follow the slope]
    -> lower_corridor
* [Check the alcove]
    -> right_alcove
* [Go back]
    -> grand_entrance

=== grounds_search ===
You find old tools and a rope.
* [Take the rope]
    ~ has_rope = true
    -> exterior_grounds
* [Leave]
    -> exterior_grounds
* [Head to the rope bridge exit]
    -> bridge_descent
=== south_corridor ===
A narrow corridor running along the south face.
* [Follow it east]
    -> south_east_junction
* [Follow it west]
    -> south_west_junction
* [Go back]
    -> side_entrance

=== chamber_one ===
A chamber with relief carvings on every wall.
* [Study the carvings]
    -> carving_study
* [Try the door at the back]
    -> chamber_one_back
* [Go back]
    -> left_passage

=== left_passage_end ===
The passage ends at a shaft going down.
* [Descend carefully]
    -> shaft_antechamber
* [Go back]
    -> left_passage

=== shaft_antechamber ===
A narrow ledge just above the shaft floor. Your eyes adjust to the darkness.
* [Drop down to the bottom]
    -> shaft_bottom
* [Climb back up]
    -> left_passage_end

=== decoration_study ===
The decorations depict a ritual requiring offerings and a sacred sigil.
* [Note the information]
    -> central_passage
* [Keep studying]
    -> central_passage
* [Return to grand entrance]
    -> grand_entrance


=== central_hall ===
A grand hall at the centre of the pyramid. An altar stands at the far end.
* [Approach the altar]
    -> central_altar
* [Try the north door]
    -> north_chamber
* [Try the south door]
    -> south_chamber

=== lower_corridor ===
The corridor slopes deep underground. The air grows warmer.
* [Continue down]
    -> deep_level
* [Try the side room]
    -> lower_side_room
* [Go back]
    -> right_passage

=== right_alcove ===
A small alcove with an offering bowl.
* [Examine the bowl]
    -> right_passage
* [Leave]
    -> right_passage
* [Return to exterior grounds]
    -> exterior_grounds


=== south_east_junction ===
A junction. Passages lead east and south.
* [Go east]
    -> east_wing
* [Go south]
    -> south_exterior_room
* [Go back]
    -> south_corridor

=== south_west_junction ===
A junction. Passages lead west and to a staircase.
* [Go west]
    -> west_wing
* [Take the staircase]
    -> upper_level_west
* [Go back]
    -> south_corridor

=== carving_study ===
The carvings describe the pyramid's original purpose — a place of communication with ancestors.
* [Continue]
    -> chamber_one
* [Return to side entrance]
    -> side_entrance


=== chamber_one_back ===
A smaller chamber with a spirit vessel on a pedestal.
* [Examine the vessel]
    -> vessel_examination
* [Leave]
    -> chamber_one
* [Return to left passage]
    -> left_passage


=== shaft_bottom ===
The bottom of the shaft opens into a large underground chamber.
* [Explore the chamber]
    -> underground_chamber
* [Try the passage north]
    -> underground_north
* [Go back up]
    -> left_passage_end

=== central_altar ===
The altar has a slot for a sigil and a bowl for an offering.
* [Examine the altar]
    -> altar_study
* [Proceed to the inner sanctum]
    -> inner_sanctum
* [Leave]
    -> central_hall

=== north_chamber ===
A chamber to the north of the central hall.
* [Search it]
    -> north_chamber_search
* [Try the door at the back]
    -> offering_room
* [Go back]
    -> central_hall

=== north_chamber_search ===
Old ritual objects and dust. Nothing immediately useful.
* [Leave]
    -> north_chamber
* [Return to right passage]
    -> right_passage


=== south_chamber ===
A chamber to the south. Cooler than the rest.
* [Explore it]
    -> south_chamber_explore
* [Try the connecting passage]
    -> south_connecting
* [Go back]
    -> central_hall

=== deep_level ===
The deepest accessible level. Ancient and intact.
* [Explore west]
    -> deep_west
* [Explore east]
    -> deep_east
* [Go back up]
    -> lower_corridor

=== lower_side_room ===
A small room off the lower corridor.
* [Search it]
    -> lower_side_search
* [Leave]
    -> lower_corridor
* [Return to grounds search]
    -> grounds_search


=== east_wing ===
The east wing of the pyramid. Multiple rooms.
* [Try the first room]
    -> east_room_one
* [Try the second room]
    -> east_room_two
* [Continue to the end]
    -> east_wing_end

=== south_exterior_room ===
A room opening onto the south exterior.
* [Look outside]
    -> south_exterior
* [Search the room]
    -> exterior_room_search
* [Go back]
    -> south_east_junction

=== west_wing ===
The west wing. Darker than the east.
* [Explore]
    -> west_wing_explore
* [Try the chamber at the end]
    -> west_end_chamber
* [Go back]
    -> south_west_junction

=== upper_level_west ===
The upper west level. Light filters through cracks in the ceiling.
* [Explore the rooms]
    -> upper_west_rooms
* [Try the passage east]
    -> upper_east_passage
* [Go back]
    -> south_west_junction

=== vessel_examination ===
The vessel is empty but beautiful. Ancient craftsmanship.
* [Leave]
    -> chamber_one_back
* [Return to south corridor]
    -> south_corridor


=== underground_chamber ===
A vast underground chamber. Columns and carvings everywhere.
* [Explore north]
    -> underground_north
* [Explore south]
    -> underground_south
* [Try the central structure]
    -> underground_central

=== underground_north ===
The northern part of the underground level.
* [Search]
    -> underground_north_search
* [Try the passage]
    -> underground_north_passage
* [Go back]
    -> underground_chamber

=== altar_study ===
The altar is finely crafted. The slot and bowl are clearly designed for specific items.
* [Leave]
    -> central_altar
* [Return to chamber one]
    -> chamber_one


=== offering_room ===
A room dedicated to ritual offerings. A carved bowl sits on a pedestal.
* [Examine the room]
    -> offering_room_study
* [Leave]
    -> north_chamber

=== offering_room_study ===
The room depicts the proper ritual for the central altar.
* [Leave]
    -> offering_room
* [Return to START]
    -> START


=== south_chamber_explore ===
Carvings and old ritual objects.
* [Study them]
    -> south_chamber
* [Leave]
    -> south_chamber
* [Return to grand entrance]
    -> grand_entrance


=== south_connecting ===
A connecting passage to the south wing.
* [Follow it]
    -> south_wing_end
* [Go back]
    -> south_chamber
* [Return to exterior grounds]
    -> exterior_grounds


=== deep_west ===
The western deep level. A sigil chamber lies ahead.
* [Enter the sigil chamber]
    -> sigil_chamber
* [Search the surrounding area]
    -> deep_west_search
* [Go back]
    -> deep_level

=== deep_east ===
The eastern deep level. Very old structures here.
* [Explore]
    -> deep_east_explore
* [Try the passage]
    -> deep_east_passage
* [Go back]
    -> deep_level

=== lower_side_search ===
Old ritual objects and dust.
* [Leave]
    -> lower_side_room
* [Return to side entrance]
    -> side_entrance


=== east_room_one ===
A storage room. Old crates and jars.
* [Search]
    -> east_room_one_search
* [Leave]
    -> east_wing
* [Return to left passage]
    -> left_passage


=== east_room_two ===
A smaller ritual room. An offering on a pedestal.
* [Take the offering]
    -> east_wing
* [Leave]
    -> east_wing
* [Return to central passage]
    -> central_passage


=== east_wing_end ===
The end of the east wing. A collapsed doorway.
* [Search the rubble]
    -> rubble_search
* [Go back]
    -> east_wing
* [Return to right passage]
    -> right_passage


=== south_exterior ===
The south exterior of the pyramid. Jungle presses close.
* [Look around]
    -> south_exterior
* [Go back inside]
    -> south_exterior_room
* [Return to grounds search]
    -> grounds_search


=== exterior_room_search ===
Debris and old equipment.
* [Leave]
    -> south_exterior_room
* [Return to south corridor]
    -> south_corridor


=== west_wing_explore ===
Old rooms, mostly collapsed.
* [Search]
    -> west_wing_search
* [Continue]
    -> west_wing
* [Return to chamber one]
    -> chamber_one


=== west_end_chamber ===
A large chamber at the end of the west wing. A spirit presence is felt.
* [Approach the presence]
    -> spirit_meeting
* [Leave]
    -> west_wing
* [Return to START]
    -> START


=== upper_west_rooms ===
Several rooms on the upper west level.
* [Search them]
    -> upper_west_search
* [Leave]
    -> upper_level_west
* [Return to grand entrance]
    -> grand_entrance


=== upper_east_passage ===
A passage connecting the upper west to the upper east.
* [Follow it]
    -> upper_east_level
* [Go back]
    -> upper_level_west
* [Return to exterior grounds]
    -> exterior_grounds


=== underground_south ===
The southern underground. Older construction.
* [Search]
    -> underground_south_search
* [Go back]
    -> underground_chamber
* [Return to side entrance]
    -> side_entrance


=== underground_central ===
The central structure underground. An old mechanism.
* [Examine it]
    -> mechanism_examination
* [Leave]
    -> underground_chamber
* [Return to left passage]
    -> left_passage


=== underground_north_search ===
Old ritual deposits and offerings.
* [Leave]
    -> underground_north
* [Return to central passage]
    -> central_passage


=== underground_north_passage ===
A passage leading even deeper.
* [Follow it]
    -> deepest_level
* [Go back]
    -> underground_north
* [Return to right passage]
    -> right_passage


=== sigil_chamber ===
A chamber with a large sigil carved into the floor.
* [Study the full sigil]
    -> sigil_study
* [Leave]
    -> deep_west

=== deep_west_search ===
Ancient deposits and ritual objects.
* [Leave]
    -> deep_west
* [Return to grounds search]
    -> grounds_search


=== deep_east_explore ===
Very ancient structures. Pre-dating the rest of the pyramid.
* [Study them]
    -> deep_east
* [Leave]
    -> deep_east
* [Return to south corridor]
    -> south_corridor


=== deep_east_passage ===
A passage leading to an underground pool.
* [Approach the pool]
    -> underground_pool
* [Go back]
    -> deep_east
* [Return to chamber one]
    -> chamber_one


=== east_room_one_search ===
Old food stores, long since decayed.
* [Leave]
    -> east_room_one
* [Return to START]
    -> START


=== rubble_search ===
Nothing retrievable from the collapse.
* [Leave]
    -> east_wing_end
* [Return to grand entrance]
    -> grand_entrance


=== west_wing_search ===
Fragments of ritual objects.
* [Leave]
    -> west_wing_explore
* [Return to exterior grounds]
    -> exterior_grounds


=== spirit_meeting ===
A spirit speaks, describing the ritual needed to open the inner sanctum.
* [Listen]
    -> spirit_guidance
* [Leave]
    -> west_end_chamber
* [Return to side entrance]
    -> side_entrance


=== spirit_guidance ===
The spirit confirms: sigil and offering, placed on the central altar.
* [Thank the spirit]
    -> west_end_chamber
* [Return to left passage]
    -> left_passage


=== upper_west_search ===
Old administrative rooms. Records and ledgers.
* [Leave]
    -> upper_west_rooms
* [Return to central passage]
    -> central_passage


=== upper_east_level ===
The upper east level. Views down into the central hall.
* [Look down]
    -> upper_east_level
* [Explore the rooms]
    -> upper_east_rooms
* [Go back]
    -> upper_east_passage

=== underground_south_search ===
The oldest deposits in the pyramid.
* [Leave]
    -> underground_south
* [Return to right passage]
    -> right_passage


=== mechanism_examination ===
A water-powered mechanism, long since inactive.
* [Leave]
    -> underground_central
* [Return to grounds search]
    -> grounds_search


=== deepest_level ===
The absolute deepest point. Ancient beyond imagining.
* [Explore]
    -> deepest_exploration
* [Go back]
    -> underground_north_passage
* [Return to south corridor]
    -> south_corridor


=== sigil_study ===
The sigil represents the connection between living and dead.
* [Leave]
    -> sigil_chamber
* [Return to chamber one]
    -> chamber_one


=== underground_pool ===
A still underground pool. Reflections on the ceiling.
* [Look into the pool]
    -> pool_reflection
* [Leave]
    -> deep_east_passage
* [Return to START]
    -> START


=== south_wing_end ===
The end of the south wing. A staircase leads up.
* [Climb up]
    -> upper_south_level
* [Go back]
    -> south_connecting
* [Return to grand entrance]
    -> grand_entrance


=== upper_east_rooms ===
Storage and administrative rooms.
* [Search]
    -> upper_east_search
* [Leave]
    -> upper_east_level
* [Return to exterior grounds]
    -> exterior_grounds


=== deepest_exploration ===
Primordial carvings. The earliest inhabitants left their mark here.
* [Leave]
    -> deepest_level
* [Return to side entrance]
    -> side_entrance


=== pool_reflection ===
The reflections show images of the past. Unsettling.
* [Leave]
    -> underground_pool
* [Return to left passage]
    -> left_passage


=== upper_south_level ===
The upper south level. Connects to the upper west.
* [Explore]
    -> upper_south_explore
* [Go back]
    -> south_wing_end
* [Return to central passage]
    -> central_passage


=== upper_east_search ===
Administrative records and seals.
* [Leave]
    -> upper_east_rooms
* [Return to right passage]
    -> right_passage


=== upper_south_explore ===
A series of rooms with painted walls.
* [Study the paintings]
    -> upper_south_paintings
* [Leave]
    -> upper_south_level
* [Return to grounds search]
    -> grounds_search


=== upper_south_paintings ===
Vibrant paintings depicting daily life in the ancient complex.
* [Leave]
    -> upper_south_explore
* [Return to south corridor]
    -> south_corridor


=== inner_sanctum ===
The innermost sanctum. The heart of the pyramid.
* [Explore it]
    -> sanctum_exploration
* [Leave]
    -> central_altar
* [Return to chamber one]
    -> chamber_one


=== sanctum_exploration ===
Ancient artefacts and the preserved remains of the pyramid's last occupants.
* [Continue]
    -> pyramid_exit
* [Return to START]
    -> START


=== pyramid_exit ===
A passage leads out of the pyramid into the jungle beyond.
-> END

=== obsidian_maze ===
A maze of obsidian walls. Every passage looks identical.
* [Go left]
    -> obsidian_maze
* [Go right]
    -> obsidian_maze
* [Go straight]
    -> obsidian_maze

// STRUCTURAL DEAD END

=== flooded_shaft ===
A shaft completely filled with water. No way through.
* [Search for an air pocket]
    -> flooded_shaft
* [Try to swim]
    -> flooded_shaft

// STRUCTURAL DEAD END

=== sunken_temple ===
// UNREACHABLE: nothing diverts here
A sunken temple beneath the pyramid complex.
* [Explore it]
    -> pyramid_exit
* [Leave]
    -> underground_chamber

=== hidden_barracks ===
// UNREACHABLE: nothing diverts here
Hidden barracks for the pyramid's ancient guards.
* [Search them]
    -> pyramid_exit
* [Leave]
    -> east_wing

// === EXPANSION: additional nodes to reach 200, BF ~2.5 (avg ~2-3 choices) ===

=== outer_temple_ring ===
A ring of standing stones surrounding the temple complex.
* [Walk around the ring]
    -> stone_ring_east
* [Examine a stone closely]
    -> stone_examination
* [Head back to the entrance]
    -> START

=== stone_ring_east ===
The eastern section of the stone ring. Carvings face sunrise.
* [Study the carvings]
    -> ring_carvings_east
* [Continue around]
    -> stone_ring_north
* [Return to grand entrance]
    -> grand_entrance


=== ring_carvings_east ===
Astronomical markings tracking the sun's path.
* [Leave]
    -> stone_ring_east
* [Return to exterior grounds]
    -> exterior_grounds


=== stone_ring_north ===
The northern section. These stones are taller.
* [Examine the tallest stone]
    -> tall_stone_study
* [Go back]
    -> outer_temple_ring
* [Return to side entrance]
    -> side_entrance


=== tall_stone_study ===
A faint inscription winds around the stone. Untranslatable but clearly significant.
* [Note it]
    -> stone_ring_north
* [Leave]
    -> stone_ring_north
* [Return to left passage]
    -> left_passage


=== stone_examination ===
The stone is warm to the touch despite the cool air.
* [Press your hand flat against it]
    -> stone_warmth
* [Leave]
    -> outer_temple_ring
* [Return to central passage]
    -> central_passage


=== stone_warmth ===
A faint vibration, almost inaudible. Ancient energy.
* [Step back]
    -> outer_temple_ring
* [Return to right passage]
    -> right_passage


=== offering_terrace ===
A broad terrace outside the temple where offerings were made.
* [Search the terrace]
    -> terrace_search
* [Examine the fire pit]
    -> fire_pit_examination
* [Check the altar stone]
    -> terrace_altar
* [Head to the bridge descent]
    -> bridge_descent

=== terrace_search ===
Stone vessels and offering fragments. Ancient remnants.
* [Leave]
    -> offering_terrace
* [Search more carefully]
    -> terrace_deep_search
* [Return to grounds search]
    -> grounds_search


=== terrace_deep_search ===
Beneath some fragments you find a small carved token.
* [Take it]
    -> offering_terrace
* [Leave it]
    -> offering_terrace
* [Return to south corridor]
    -> south_corridor


=== fire_pit_examination ===
A large circular fire pit. Cold ash, centuries old.
* [Sift through the ash]
    -> ash_search
* [Leave]
    -> offering_terrace
* [Return to chamber one]
    -> chamber_one


=== ash_search ===
Charred bone and old coins. Votive offerings burned long ago.
* [Leave]
    -> fire_pit_examination
* [Return to START]
    -> START


=== terrace_altar ===
A flat altar stone with a channel carved around its edge.
* [Run your finger along the channel]
    -> channel_examination
* [Leave]
    -> offering_terrace
* [Return to grand entrance]
    -> grand_entrance


=== channel_examination ===
The channel would have carried blood during sacrifices. Ancient and solemn.
* [Leave]
    -> terrace_altar
* [Return to exterior grounds]
    -> exterior_grounds


=== west_shrine ===
A small shrine set into the western hillside.
* [Approach the shrine]
    -> shrine_approach
* [Look for offerings left here]
    -> shrine_offerings
* [Check the carved panel]
    -> shrine_panel

=== shrine_approach ===
A carved niche with a faded statue inside.
* [Examine the statue]
    -> shrine_statue
* [Leave]
    -> west_shrine
* [Return to side entrance]
    -> side_entrance


=== shrine_statue ===
A deity figure, worn almost smooth. Still powerful in presence.
* [Leave]
    -> shrine_approach
* [Return to left passage]
    -> left_passage


=== shrine_offerings ===
Fresh offerings — flowers and food. Someone has been here recently.
* [Note this]
    -> west_shrine
* [Leave]
    -> west_shrine
* [Return to central passage]
    -> central_passage


=== shrine_panel ===
A carved stone panel depicting a mythological scene.
* [Study it]
    -> panel_study
* [Leave]
    -> west_shrine
* [Return to right passage]
    -> right_passage


=== panel_study ===
The scene shows a figure descending into the earth and returning with fire.
* [Leave]
    -> shrine_panel
* [Return to grounds search]
    -> grounds_search


=== eastern_annex ===
An annex on the eastern side of the temple.
* [Search the main space]
    -> annex_main_space
* [Try the inner room]
    -> annex_inner
* [Check the storage niches]
    -> annex_niches

=== annex_main_space ===
A large room, once used for preparation rituals.
* [Leave]
    -> eastern_annex
* [Search carefully]
    -> annex_main_search
* [Return to south corridor]
    -> south_corridor


=== annex_main_search ===
Ritual equipment — bowls, censers, and candle holders.
* [Leave]
    -> annex_main_space
* [Return to chamber one]
    -> chamber_one


=== annex_inner ===
A smaller inner room. Private rituals happened here.
* [Search it]
    -> annex_inner_search
* [Leave]
    -> eastern_annex
* [Return to START]
    -> START


=== annex_inner_search ===
Personal effects of a priest or priestess. A carved bone stylus.
* [Take it]
    -> eastern_annex
* [Leave]
    -> eastern_annex
* [Return to grand entrance]
    -> grand_entrance


=== annex_niches ===
Storage niches carved into the walls. Most empty.
* [Search each one]
    -> niche_search_result
* [Leave]
    -> eastern_annex
* [Return to exterior grounds]
    -> exterior_grounds


=== niche_search_result ===
You find some sealed ceramic vessels in the deepest niche.
* [Open one]
    -> ceramic_vessel
* [Leave them]
    -> eastern_annex
* [Return to side entrance]
    -> side_entrance


=== ceramic_vessel ===
Dried herbs and resin inside. Incense material.
* [Leave]
    -> annex_niches
* [Return to left passage]
    -> left_passage


=== underground_stream ===
An underground stream running beneath the temple complex.
* [Follow it upstream]
    -> stream_source
* [Follow it downstream]
    -> stream_outlet
* [Search the stream bed]
    -> stream_bed_search

=== stream_source ===
The stream emerges from a crack in the rock. Cold and clear.
* [Go back]
    -> underground_stream
* [Examine the crack]
    -> stream_crack
* [Return to central passage]
    -> central_passage


=== stream_crack ===
The crack goes deeper than you can see. A draught comes from within.
* [Leave]
    -> stream_source
* [Return to right passage]
    -> right_passage


=== stream_outlet ===
The stream disappears under a low arch. The passage continues.
* [Go back]
    -> underground_stream
* [Try to follow it]
    -> stream_arch
* [Return to grounds search]
    -> grounds_search


=== stream_arch ===
Too low to follow further without getting wet.
* [Leave]
    -> stream_outlet
* [Return to south corridor]
    -> south_corridor


=== stream_bed_search ===
Smooth stones and sand. You find some coloured pebbles.
* [Take them]
    -> underground_stream
* [Leave]
    -> underground_stream
* [Return to chamber one]
    -> chamber_one


=== ritual_preparation_hall ===
A large hall used to prepare priests for ceremonies.
* [Search the dressing alcoves]
    -> dressing_alcoves
* [Check the bathing pool]
    -> bathing_pool
* [Try the inner door]
    -> preparation_inner

=== dressing_alcoves ===
Alcoves where ritual garments were stored and donned.
* [Search for remnants]
    -> garment_remnants
* [Leave]
    -> ritual_preparation_hall
* [Return to START]
    -> START


=== garment_remnants ===
Fragments of ancient cloth and some bronze pins.
* [Leave]
    -> dressing_alcoves
* [Return to grand entrance]
    -> grand_entrance


=== bathing_pool ===
A shallow pool fed by the underground stream. Used for ritual purification.
* [Examine the pool]
    -> pool_examination
* [Leave]
    -> ritual_preparation_hall
* [Return to exterior grounds]
    -> exterior_grounds


=== pool_examination ===
The water is still fresh. The drain mechanism still functions.
* [Leave]
    -> bathing_pool
* [Return to side entrance]
    -> side_entrance


=== preparation_inner ===
An inner sanctum for the head priest's preparation.
* [Search it]
    -> preparation_inner_search
* [Leave]
    -> ritual_preparation_hall
* [Return to left passage]
    -> left_passage


=== preparation_inner_search ===
A private altar and personal ritual items. A sealed clay tablet.
* [Examine the tablet]
    -> clay_tablet
* [Leave]
    -> preparation_inner
* [Return to central passage]
    -> central_passage


=== clay_tablet ===
The tablet is inscribed with what appear to be instructions for a ceremony.
* [Leave]
    -> preparation_inner_search
* [Return to right passage]
    -> right_passage


=== north_passage_temple ===
A passage running along the northern side of the temple.
* [Follow it east]
    -> east_passage_temple
* [Try the doors along it]
    -> passage_doors_north
* [Go back]
    -> START

=== east_passage_temple ===
The eastern end of the north passage. It connects back to the main hall.
* [Go back]
    -> north_passage_temple
* [Enter the main hall]
    -> START
* [Return to grounds search]
    -> grounds_search


=== passage_doors_north ===
Three doors along the north passage. All slightly ajar.
* [Try the first]
    -> north_room_a
* [Try the second]
    -> north_room_b
* [Try the third]
    -> north_room_c

=== north_room_a ===
A small room with a single window. Empty.
* [Leave]
    -> passage_doors_north
* [Return to south corridor]
    -> south_corridor


=== north_room_b ===
A room with collapsed shelving. Books rotted away.
* [Search the debris]
    -> north_room_b_search
* [Leave]
    -> passage_doors_north
* [Return to chamber one]
    -> chamber_one


=== north_room_b_search ===
A bronze clasp from a book cover, beautifully made.
* [Take it]
    -> north_room_b
* [Leave]
    -> north_room_b
* [Return to START]
    -> START


=== north_room_c ===
A locked room. The lock is old but solid.
* [Try to pick it]
    -> passage_doors_north
* [Leave]
    -> passage_doors_north
* [Return to grand entrance]
    -> grand_entrance


=== ceremonial_courtyard ===
An inner courtyard used for open-air ceremonies.
* [Search the perimeter]
    -> courtyard_perimeter
* [Examine the central dais]
    -> central_dais
* [Try the gate at the far end]
    -> courtyard_far_gate

=== courtyard_perimeter ===
Stone benches for spectators line the walls.
* [Leave]
    -> ceremonial_courtyard
* [Return to exterior grounds]
    -> exterior_grounds


=== central_dais ===
A raised platform at the centre. The focal point of ceremonies.
* [Stand on it]
    -> dais_standing
* [Examine the carvings]
    -> dais_carvings
* [Return to side entrance]
    -> side_entrance


=== dais_standing ===
From up here the whole courtyard is visible. The sight lines are deliberate.
* [Step down]
    -> central_dais
* [Return to left passage]
    -> left_passage


=== dais_carvings ===
The platform edges are carved with repeated symbols.
* [Leave]
    -> central_dais
* [Return to central passage]
    -> central_passage


=== courtyard_far_gate ===
A gate at the far end of the courtyard. Leads deeper into the complex.
* [Go through]
    -> ritual_preparation_hall
* [Go back]
    -> ceremonial_courtyard
* [Return to right passage]
    -> right_passage


=== treasury_temple ===
The temple treasury. Shelves stripped long ago.
* [Search carefully]
    -> treasury_search_temple
* [Check the locked box]
    -> treasury_locked_box
* [Try the hidden compartment]
    -> treasury_hidden

=== treasury_search_temple ===
Empty shelves and dust. Whatever was here is long gone.
* [Leave]
    -> treasury_temple
* [Return to grounds search]
    -> grounds_search


=== treasury_locked_box ===
A heavy box bolted to the floor. No keyhole visible.
* [Try to lift it]
    -> treasury_temple
* [Examine it closely]
    -> box_examination
* [Return to south corridor]
    -> south_corridor


=== box_examination ===
A pressure mechanism — it opens when weight is applied in a specific pattern.
* [Leave]
    -> treasury_locked_box
* [Return to chamber one]
    -> chamber_one


=== treasury_hidden ===
You find a hidden compartment in the wall. Empty.
* [Leave]
    -> treasury_temple
* [Return to START]
    -> START


=== temple_exit ===
The exit from the temple complex. Daylight ahead.
-> END


=== priests_quarters ===
The priests' residential quarters beside the temple.
* [Search the main room]
    -> priests_main_room
* [Check the sleeping area]
    -> priests_sleeping
* [Try the private altar]
    -> priests_altar

=== priests_main_room ===
A study and reception area. Books and administrative records.
* [Read the records]
    -> priests_records
* [Leave]
    -> priests_quarters
* [Return to grand entrance]
    -> grand_entrance


=== priests_records ===
Temple administration: rotas, budgets, visitor logs.
* [Leave]
    -> priests_main_room
* [Return to exterior grounds]
    -> exterior_grounds


=== priests_sleeping ===
Sleeping mats and personal effects. Simple and austere.
* [Leave]
    -> priests_quarters
* [Return to side entrance]
    -> side_entrance


=== priests_altar ===
A private altar for daily devotions.
* [Leave]
    -> priests_quarters
* [Return to left passage]
    -> left_passage


=== lower_crypt ===
A crypt below the main temple.
* [Explore the tombs]
    -> crypt_tombs
* [Check the sealed chamber]
    -> sealed_crypt_chamber
* [Try the far passage]
    -> crypt_far_passage

=== crypt_tombs ===
Stone tombs of high priests. Inscriptions name them all.
* [Read the inscriptions]
    -> tomb_inscriptions
* [Leave]
    -> lower_crypt
* [Return to central passage]
    -> central_passage


=== tomb_inscriptions ===
Names and titles going back centuries. The lineage of high priests.
* [Leave]
    -> crypt_tombs
* [Return to right passage]
    -> right_passage


=== sealed_crypt_chamber ===
A chamber sealed with wax and carved warnings.
* [Read the warnings]
    -> crypt_warnings
* [Leave]
    -> lower_crypt
* [Return to grounds search]
    -> grounds_search


=== crypt_warnings ===
The warnings describe the dangers of disturbing the dead. Standard priestly intimidation.
* [Leave]
    -> sealed_crypt_chamber
* [Return to south corridor]
    -> south_corridor


=== crypt_far_passage ===
A passage leading further under the temple.
* [Follow it]
    -> deep_crypt_passage
* [Go back]
    -> lower_crypt
* [Return to chamber one]
    -> chamber_one


=== deep_crypt_passage ===
The passage descends steeply. The air grows cold.
* [Continue]
    -> underground_stream
* [Go back]
    -> crypt_far_passage
* [Return to START]
    -> START


=== west_courtyard ===
A secondary courtyard on the western side.
* [Look around]
    -> west_courtyard_search
* [Check the well]
    -> west_courtyard_well
* [Try the door]
    -> west_courtyard_door

=== west_courtyard_search ===
Old pots and garden tools. Once a working space.
* [Leave]
    -> west_courtyard
* [Return to grand entrance]
    -> grand_entrance


=== west_courtyard_well ===
A well, still functional. Clear water.
* [Draw some water]
    -> west_courtyard
* [Leave]
    -> west_courtyard

=== west_courtyard_door ===
A door into the western section of the temple.
* [Go through]
    -> west_shrine
* [Stay]
    -> west_courtyard

=== ablution_fountain ===
A fountain for ritual hand washing at the temple entrance.
* [Examine the mechanism]
    -> fountain_mechanism
* [Use it]
    -> fountain_use
* [Leave]
    -> START

=== fountain_mechanism ===
A clever gravity-fed system. Still functional after all these centuries.
* [Leave]
    -> ablution_fountain

=== fountain_use ===
Cold water flows over your hands. Ritualistic but refreshing.
* [Leave]
    -> ablution_fountain

=== sacred_grove ===
A grove of ancient trees considered sacred. Outside the main complex.
* [Walk among the trees]
    -> grove_walk
* [Find the oldest tree]
    -> oldest_tree
* [Search for offerings]
    -> grove_offerings

=== grove_walk ===
The trees are enormous, centuries old. The light through the leaves is extraordinary.
* [Leave]
    -> sacred_grove

=== oldest_tree ===
A vast tree, clearly the oldest. Offerings hang from its branches.
* [Examine the offerings]
    -> tree_offerings
* [Leave]
    -> sacred_grove

=== tree_offerings ===
Cloth strips, carved figures, small mirrors. Diverse traditions.
* [Leave]
    -> oldest_tree

=== grove_offerings ===
Small items left at tree bases — coins, flowers, food.
* [Leave]
    -> sacred_grove


=== outer_gatehouse ===
The outer gatehouse of the temple complex.
* [Search the gatehouse]
    -> gatehouse_search_t
* [Check the guard room]
    -> guard_room_t
* [Look at the gate mechanism]
    -> gate_mechanism_t

=== gatehouse_search_t ===
Administrative records and duty rosters.
* [Leave]
    -> outer_gatehouse

=== guard_room_t ===
A room for the temple guards. Weapons racks, now empty.
* [Search]
    -> guard_room_search_t
* [Leave]
    -> outer_gatehouse

=== guard_room_search_t ===
You find a bronze seal in a crack in the floor.
* [Take it]
    -> outer_gatehouse
* [Leave]
    -> outer_gatehouse

=== gate_mechanism_t ===
A counterweight system for operating the heavy gates.
* [Examine it]
    -> outer_gatehouse
* [Leave]
    -> outer_gatehouse

=== pilgrim_way ===
The pilgrim approach road to the temple. Lined with stones.
* [Walk toward the temple]
    -> outer_gatehouse
* [Examine the roadside stones]
    -> pilgrim_stones
* [Check the rest station]
    -> pilgrim_rest

=== pilgrim_stones ===
Marker stones showing distance and bearing. Ancient waymarkers.
* [Leave]
    -> pilgrim_way

=== pilgrim_rest ===
A covered rest area for pilgrims on the approach road.
* [Search it]
    -> pilgrim_rest_search
* [Leave]
    -> pilgrim_way

=== pilgrim_rest_search ===
Benches and a cold hearth. Someone left a blanket.
* [Leave]
    -> pilgrim_rest

=== water_channel ===
An ancient water channel bringing water to the temple.
* [Follow it to the source]
    -> channel_source
* [Examine the channel]
    -> channel_examination_t
* [Follow it to the temple]
    -> ablution_fountain

=== channel_source ===
A spring emerging from the hillside. The source of the temple's water.
* [Drink]
    -> water_channel
* [Go back]
    -> water_channel

=== channel_examination_t ===
Precisely cut stone carrying water over a long distance. Impressive engineering.
* [Leave]
    -> water_channel

=== votive_deposit_pit ===
A pit where votive offerings were deposited.
* [Look in]
    -> pit_examination
* [Search the edges]
    -> pit_edge_search
* [Leave]
    -> offering_terrace

=== pit_examination ===
Centuries of accumulated offerings. Archaeologically invaluable.
* [Leave]
    -> votive_deposit_pit

=== pit_edge_search ===
Near the surface you find some coins and a clay figurine.
* [Take them]
    -> votive_deposit_pit
* [Leave]
    -> votive_deposit_pit


=== rock_cut_tomb ===
A tomb cut directly into the rock face near the temple.
* [Enter]
    -> rock_tomb_interior
* [Read the inscription above the door]
    -> rock_tomb_inscription
* [Go back]
    -> sacred_grove

=== rock_tomb_interior ===
A small chamber with a stone sarcophagus. Sealed and undisturbed.
* [Examine the sarcophagus]
    -> sarcophagus_exam
* [Leave]
    -> rock_cut_tomb

=== rock_tomb_inscription ===
The name and titles of a high priest from the early period of the temple.
* [Leave]
    -> rock_cut_tomb

=== sarcophagus_exam ===
The sarcophagus lid is carved with a portrait of the occupant.
* [Leave]
    -> rock_tomb_interior

=== lower_east_temple ===
The lower eastern section of the temple, partially underground.
* [Explore the rooms]
    -> lower_east_rooms
* [Check the drainage system]
    -> drainage_system
* [Go back]
    -> eastern_annex

=== lower_east_rooms ===
Several small rooms for storage and minor rituals.
* [Search them]
    -> lower_east_search
* [Leave]
    -> lower_east_temple

=== lower_east_search ===
Ritual vessels and stone tools. Everyday temple equipment.
* [Leave]
    -> lower_east_rooms

=== drainage_system ===
An elaborate drainage system running beneath the temple.
* [Examine it]
    -> lower_east_temple
* [Leave]
    -> lower_east_temple


=== high_altar_chamber ===
The main high altar chamber of the temple.
* [Approach the altar]
    -> high_altar_approach
* [Examine the side niches]
    -> altar_side_niches
* [Check the ceiling paintings]
    -> high_altar_chamber
* [Try the back passage]
    -> ritual_preparation_hall

=== high_altar_approach ===
The altar is massive and ancient. Stains from centuries of offerings.
* [Leave]
    -> high_altar_chamber

=== altar_side_niches ===
Niches containing statues of secondary deities.
* [Leave]
    -> high_altar_chamber

=== outer_enclosure ===
The outer enclosure wall of the temple complex. A boundary between sacred and profane.
* [Walk along it]
    -> outer_temple_ring
* [Find the processional gate]
    -> pilgrim_way
* [Leave]
    -> START



// rope_bridge requires has_rope=true.
// bridge_descent sets has_rope=false before diverting there.

=== bridge_descent ===
A descent to the rope bridge exit. Your rope snags on a rock and tears.
* [Continue to the bridge]
    ~ has_rope = false
    -> rope_bridge_exit
* [Go back]
    -> offering_terrace

=== rope_bridge_exit ===
A rope bridge across a ravine — the only way out.
* [Use your rope to secure the crossing] { has_rope }
    -> temple_exit
* [Cross unsecured]
    -> temple_exit

// CONTRADICTION: has_rope set false in bridge_descent, required true here.

