// Phase 2 - Story 5
// Nodes: 200 | Target BF: 4.5 | Target Edges: ~900


VAR has_torch = false
VAR has_mirror_key = false
VAR has_amulet = false
VAR has_rope = false
VAR spoke_to_reflection = false
VAR found_journal = false
VAR opened_seal = false

-> START

=== START ===
You are in the START area of the crystal labyrinth.
* [Go to START]
    -> START
* [Go to dream room 7]
    -> dream_room_7
* [Go to dream room 5]
    -> dream_room_5
* [Go to mirror archive]
    -> mirror_archive

=== dream_hub ===
You are in the dream hub area of the crystal labyrinth.
* [Go to dream hub]
    -> dream_hub
* [Go to dream room 8]
    -> dream_room_8
* [Go to dream room 6]
    -> dream_room_6
* [Go to echo hub]
    -> echo_hub
* [Go to mirror room 1]
    -> mirror_room_1

=== dream_room_1 ===
You are in the dream room 1 area of the crystal labyrinth.
* [Go to dream room 1]
    -> dream_room_1
* [Go to dream search]
    -> dream_search
* [Go to dream room 7]
    -> dream_room_7
* [Go to echo room 1]
    -> echo_room_1

=== dream_room_2 ===
You are in the dream room 2 area of the crystal labyrinth.
* [Go to dream room 2]
    -> dream_room_2
* [Go to dream archive]
    -> dream_archive
* [Go to dream room 8]
    -> dream_room_8
* [Go to echo room 2]
    -> echo_room_2

=== dream_room_3 ===
You are in the dream room 3 area of the crystal labyrinth.
* [Go to dream room 3]
    -> dream_room_3
* [Go to mirror hub]
    -> mirror_hub
* [Go to dream search]
    -> dream_search
* [Go to echo room 3]
    -> echo_room_3

=== dream_room_4 ===
You are in the dream room 4 area of the crystal labyrinth.
* [Go to dream room 4]
    -> dream_room_4
* [Go to mirror room 1]
    -> mirror_room_1
* [Go to dream archive]
    -> dream_archive
* [Go to echo room 4]
    -> echo_room_4

=== dream_room_5 ===
You are in the dream room 5 area of the crystal labyrinth.
* [Go to dream room 5]
    -> dream_room_5
* [Go to mirror room 2]
    -> mirror_room_2
* [Go to mirror hub]
    -> mirror_hub
* [Go to echo room 5]
    -> echo_room_5
* [Go to mirror room 6]
    -> mirror_room_6

=== dream_room_6 ===
You are in the dream room 6 area of the crystal labyrinth.
* [Go to dream room 6]
    -> dream_room_6
* [Go to mirror room 3]
    -> mirror_room_3
* [Go to mirror room 1]
    -> mirror_room_1
* [Go to echo room 6]
    -> echo_room_6
* [Go to mirror room 7]
    -> mirror_room_7

=== dream_room_7 ===
You are in the dream room 7 area of the crystal labyrinth.
* [Go to dream room 7]
    -> dream_room_7
* [Go to mirror room 4]
    -> mirror_room_4
* [Go to mirror room 2]
    -> mirror_room_2
* [Go to echo room 7]
    -> echo_room_7
* [Go to START]
    -> START

=== dream_room_8 ===
You are in the dream room 8 area of the crystal labyrinth.
* [Go to dream room 8]
    -> dream_room_8
* [Go to mirror room 5]
    -> mirror_room_5
* [Go to mirror room 3]
    -> mirror_room_3
* [Go to echo room 8]
    -> echo_room_8
* [Go to dream hub]
    -> dream_hub

=== dream_search ===
You are in the dream search area of the crystal labyrinth.
* [Search and find the has rope]
    ~ has_rope = true
    -> dream_search
* [Go to mirror room 6]
    -> mirror_room_6
* [Go to mirror room 4]
    -> mirror_room_4
* [Go to echo search]
    -> echo_search

=== dream_archive ===
You are in the dream archive area of the crystal labyrinth.
* [Go to dream archive]
    -> dream_archive
* [Go to mirror room 7]
    -> mirror_room_7
* [Go to mirror room 5]
    -> mirror_room_5
* [Go to echo archive]
    -> echo_archive
* [Go to dream room 2]
    -> dream_room_2

=== mirror_hub ===
You are in the mirror hub area of the crystal labyrinth.
* [Go to mirror hub]
    -> mirror_hub
* [Go to mirror room 8]
    -> mirror_room_8
* [Go to mirror room 6]
    -> mirror_room_6
* [Go to amulet corridor]
    -> amulet_corridor

=== mirror_room_1 ===
You are in the mirror room 1 area of the crystal labyrinth.
* [Go to mirror room 1]
    -> mirror_room_1
* [Go to mirror search]
    -> mirror_search
* [Go to mirror room 7]
    -> mirror_room_7
* [Go to void room 1]
    -> void_room_1

=== mirror_room_2 ===
You are in the mirror room 2 area of the crystal labyrinth.
* [Go to mirror room 2]
    -> mirror_room_2
* [Go to mirror archive]
    -> mirror_archive
* [Go to START]
    -> START
* [Go to void room 2]
    -> void_room_2

=== mirror_room_3 ===
You are in the mirror room 3 area of the crystal labyrinth.
* [Go to mirror room 3]
    -> mirror_room_3
* [Go to echo hub]
    -> echo_hub
* [Go to dream hub]
    -> dream_hub
* [Go to void room 3]
    -> void_room_3

=== mirror_room_4 ===
You are in the mirror room 4 area of the crystal labyrinth.
* [Go to mirror room 4]
    -> mirror_room_4
* [Go to echo room 1]
    -> echo_room_1
* [Go to dream room 1]
    -> dream_room_1
* [Go to void room 4]
    -> void_room_4

=== mirror_room_5 ===
You are in the mirror room 5 area of the crystal labyrinth.
* [Go to mirror room 5]
    -> mirror_room_5
* [Go to echo room 2]
    -> echo_room_2
* [Go to dream room 2]
    -> dream_room_2
* [Go to void room 5]
    -> void_room_5
* [Go to dream room 8]
    -> dream_room_8

=== mirror_room_6 ===
You are in the mirror room 6 area of the crystal labyrinth.
* [Go to mirror room 6]
    -> mirror_room_6
* [Go to echo room 3]
    -> echo_room_3
* [Go to dream room 3]
    -> dream_room_3
* [Go to void room 6]
    -> void_room_6

=== mirror_room_7 ===
You are in the mirror room 7 area of the crystal labyrinth.
* [Go to mirror room 7]
    -> mirror_room_7
* [Go to echo room 4]
    -> echo_room_4
* [Go to dream room 4]
    -> dream_room_4
* [Go to void room 7]
    -> void_room_7

=== mirror_room_8 ===
You are in the mirror room 8 area of the crystal labyrinth.
* [Go to START]
    -> START
* [Go to echo room 5]
    -> echo_room_5
* [Go to dream room 5]
    -> dream_room_5
* [Go to void room 8]
    -> void_room_8
* [Go to mirror hub]
    -> mirror_hub

=== mirror_search ===
You are in the mirror search area of the crystal labyrinth.
* [Search and find the has torch]
    ~ has_torch = true
    -> dream_hub
* [Go to echo room 6]
    -> echo_room_6
* [Go to dream room 6]
    -> dream_room_6
* [Go to void search]
    -> void_search
* [Go to mirror room 1]
    -> mirror_room_1

=== mirror_archive ===
You are in the mirror archive area of the crystal labyrinth.
* [Go to dream room 1]
    -> dream_room_1
* [Go to echo room 7]
    -> echo_room_7
* [Go to dream room 7]
    -> dream_room_7
* [Go to void archive]
    -> void_archive
* [Go to mirror room 2]
    -> mirror_room_2

=== echo_hub ===
You are in the echo hub area of the crystal labyrinth.
* [Go to dream room 2]
    -> dream_room_2
* [Go to echo room 8]
    -> echo_room_8
* [Go to dream room 8]
    -> dream_room_8
* [Go to light hub]
    -> light_hub
* [Go to mirror room 3]
    -> mirror_room_3

=== echo_room_1 ===
You are in the echo room 1 area of the crystal labyrinth.
* [Go to dream room 3]
    -> dream_room_3
* [Go to echo search]
    -> echo_search
* [Go to dream search]
    -> dream_search
* [Go to light room 1]
    -> light_room_1
* [Go to mirror room 4]
    -> mirror_room_4

=== echo_room_2 ===
You are in the echo room 2 area of the crystal labyrinth.
* [Go to dream room 4]
    -> dream_room_4
* [Go to echo archive]
    -> echo_archive
* [Go to dream archive]
    -> dream_archive
* [Go to light room 2]
    -> light_room_2
* [Go to mirror room 5]
    -> mirror_room_5

=== echo_room_3 ===
You are in the echo room 3 area of the crystal labyrinth.
* [Go to dream room 5]
    -> dream_room_5
* [Go to void hub]
    -> void_hub
* [Go to mirror hub]
    -> mirror_hub
* [Go to light room 3]
    -> light_room_3
* [Go to mirror room 6]
    -> mirror_room_6

=== echo_room_4 ===
You are in the echo room 4 area of the crystal labyrinth.
* [Go to dream room 6]
    -> dream_room_6
* [Go to void room 1]
    -> void_room_1
* [Go to mirror room 1]
    -> mirror_room_1
* [Go to light room 4]
    -> light_room_4

=== echo_room_5 ===
You are in the echo room 5 area of the crystal labyrinth.
* [Go to dream room 7]
    -> dream_room_7
* [Go to void room 2]
    -> void_room_2
* [Go to mirror room 2]
    -> mirror_room_2
* [Go to light room 5]
    -> light_room_5
* [Go to START]
    -> START

=== echo_room_6 ===
You are in the echo room 6 area of the crystal labyrinth.
* [Go to dream room 8]
    -> dream_room_8
* [Go to void room 3]
    -> void_room_3
* [Go to mirror room 3]
    -> mirror_room_3
* [Go to light room 6]
    -> light_room_6

=== echo_room_7 ===
You are in the echo room 7 area of the crystal labyrinth.
* [Go to dream search]
    -> dream_search
* [Go to void room 4]
    -> void_room_4
* [Go to mirror room 4]
    -> mirror_room_4
* [Go to light room 7]
    -> light_room_7

=== echo_room_8 ===
You are in the echo room 8 area of the crystal labyrinth.
* [Go to dream archive]
    -> dream_archive
* [Go to void room 5]
    -> void_room_5
* [Go to mirror room 5]
    -> mirror_room_5
* [Go to light room 8]
    -> light_room_8
* [Go to dream room 2]
    -> dream_room_2

=== echo_search ===
You are in the echo search area of the crystal labyrinth.
* [Search and find the spoke to reflection]
    ~ spoke_to_reflection = true
    -> mirror_hub
* [Go to void room 6]
    -> void_room_6
* [Go to mirror room 6]
    -> mirror_room_6
* [Go to light search]
    -> light_search

=== echo_archive ===
You are in the echo archive area of the crystal labyrinth.
* [Go to mirror room 1]
    -> mirror_room_1
* [Go to void room 7]
    -> void_room_7
* [Go to mirror room 7]
    -> mirror_room_7
* [Go to light archive]
    -> light_archive

=== void_hub ===
You are in the void hub area of the crystal labyrinth.
* [Go to mirror room 2]
    -> mirror_room_2
* [Go to void room 8]
    -> void_room_8
* [Go to START]
    -> START
* [Go to shadow hub]
    -> shadow_hub
* [Go to dream room 5]
    -> dream_room_5

=== void_room_1 ===
You are in the void room 1 area of the crystal labyrinth.
* [Go to mirror room 3]
    -> mirror_room_3
* [Go to void search]
    -> void_search
* [Go to dream hub]
    -> dream_hub
* [Go to shadow room 1]
    -> shadow_room_1
* [Go to dream room 6]
    -> dream_room_6

=== void_room_2 ===
You are in the void room 2 area of the crystal labyrinth.
* [Go to mirror room 4]
    -> mirror_room_4
* [Go to void archive]
    -> void_archive
* [Go to dream room 1]
    -> dream_room_1
* [Go to shadow room 2]
    -> shadow_room_2

=== void_room_3 ===
You are in the void room 3 area of the crystal labyrinth.
* [Go to mirror room 5]
    -> mirror_room_5
* [Go to light hub]
    -> light_hub
* [Go to dream room 2]
    -> dream_room_2
* [Go to shadow room 3]
    -> shadow_room_3

=== void_room_4 ===
You are in the void room 4 area of the crystal labyrinth.
* [Go to mirror room 6]
    -> mirror_room_6
* [Go to light room 1]
    -> light_room_1
* [Go to dream room 3]
    -> dream_room_3
* [Go to shadow room 4]
    -> shadow_room_4

=== void_room_5 ===
You are in the void room 5 area of the crystal labyrinth.
* [Go to mirror room 7]
    -> mirror_room_7
* [Go to light room 2]
    -> light_room_2
* [Go to dream room 4]
    -> dream_room_4
* [Go to shadow room 5]
    -> shadow_room_5
* [Go to dream archive]
    -> dream_archive

=== void_room_6 ===
You are in the void room 6 area of the crystal labyrinth.
* [Go to START]
    -> START
* [Go to light room 3]
    -> light_room_3
* [Go to dream room 5]
    -> dream_room_5
* [Go to shadow room 6]
    -> shadow_room_6
* [Go to mirror hub]
    -> mirror_hub

=== void_room_7 ===
You are in the void room 7 area of the crystal labyrinth.
* [Go to dream hub]
    -> dream_hub
* [Go to light room 4]
    -> light_room_4
* [Go to dream room 6]
    -> dream_room_6
* [Go to shadow room 7]
    -> shadow_room_7
* [Go to mirror room 1]
    -> mirror_room_1

=== void_room_8 ===
You are in the void room 8 area of the crystal labyrinth.
* [Go to dream room 1]
    -> dream_room_1
* [Go to light room 5]
    -> light_room_5
* [Go to dream room 7]
    -> dream_room_7
* [Go to shadow room 8]
    -> shadow_room_8

=== void_search ===
You are in the void search area of the crystal labyrinth.
* [Search and find the has mirror key]
    ~ has_mirror_key = true
    -> dream_room_2
* [Go to light room 6]
    -> light_room_6
* [Go to dream room 8]
    -> dream_room_8
* [Go to shadow search]
    -> shadow_search

=== void_archive ===
You are in the void archive area of the crystal labyrinth.
* [Go to dream room 3]
    -> dream_room_3
* [Go to light room 7]
    -> light_room_7
* [Go to dream search]
    -> dream_search
* [Go to shadow archive]
    -> shadow_archive

=== light_hub ===
You are in the light hub area of the crystal labyrinth.
* [Go to dream room 4]
    -> dream_room_4
* [Go to light room 8]
    -> light_room_8
* [Go to dream archive]
    -> dream_archive
* [Go to time hub]
    -> time_hub
* [Go to mirror room 5]
    -> mirror_room_5

=== light_room_1 ===
You are in the light room 1 area of the crystal labyrinth.
* [Go to dream room 5]
    -> dream_room_5
* [Go to light search]
    -> light_search
* [Go to mirror hub]
    -> mirror_hub
* [Go to time room 1]
    -> time_room_1

=== light_room_2 ===
You are in the light room 2 area of the crystal labyrinth.
* [Go to dream room 6]
    -> dream_room_6
* [Go to light archive]
    -> light_archive
* [Go to mirror room 1]
    -> mirror_room_1
* [Go to time room 2]
    -> time_room_2
* [Go to mirror room 7]
    -> mirror_room_7

=== light_room_3 ===
You are in the light room 3 area of the crystal labyrinth.
* [Go to dream room 7]
    -> dream_room_7
* [Go to shadow hub]
    -> shadow_hub
* [Go to mirror room 2]
    -> mirror_room_2
* [Go to time room 3]
    -> time_room_3
* [Go to START]
    -> START

=== light_room_4 ===
You are in the light room 4 area of the crystal labyrinth.
* [Go to dream room 8]
    -> dream_room_8
* [Go to shadow room 1]
    -> shadow_room_1
* [Go to mirror room 3]
    -> mirror_room_3
* [Go to time room 4]
    -> time_room_4
* [Go to dream hub]
    -> dream_hub

=== light_room_5 ===
You are in the light room 5 area of the crystal labyrinth.
* [Go to dream search]
    -> dream_search
* [Go to shadow room 2]
    -> shadow_room_2
* [Go to mirror room 4]
    -> mirror_room_4
* [Go to time room 5]
    -> time_room_5
* [Go to dream room 1]
    -> dream_room_1

=== light_room_6 ===
You are in the light room 6 area of the crystal labyrinth.
* [Go to dream archive]
    -> dream_archive
* [Go to shadow room 3]
    -> shadow_room_3
* [Go to mirror room 5]
    -> mirror_room_5
* [Go to time room 6]
    -> time_room_6

=== light_room_7 ===
You are in the light room 7 area of the crystal labyrinth.
* [Go to mirror hub]
    -> mirror_hub
* [Go to shadow room 4]
    -> shadow_room_4
* [Go to mirror room 6]
    -> mirror_room_6
* [Go to time room 7]
    -> time_room_7

=== light_room_8 ===
You are in the light room 8 area of the crystal labyrinth.
* [Go to mirror room 1]
    -> mirror_room_1
* [Go to shadow room 5]
    -> shadow_room_5
* [Go to mirror room 7]
    -> mirror_room_7
* [Go to time room 8]
    -> time_room_8

=== light_search ===
You are in the light search area of the crystal labyrinth.
* [Search and find the found journal]
    ~ found_journal = true
    -> mirror_room_2
* [Go to shadow room 6]
    -> shadow_room_6
* [Go to START]
    -> START
* [Go to time search]
    -> time_search

=== light_archive ===
You are in the light archive area of the crystal labyrinth.
* [Go to mirror room 3]
    -> mirror_room_3
* [Go to shadow room 7]
    -> shadow_room_7
* [Go to dream hub]
    -> dream_hub
* [Go to time archive]
    -> time_archive
* [Go to dream room 6]
    -> dream_room_6

=== shadow_hub ===
You are in the shadow hub area of the crystal labyrinth.
* [Go to mirror room 4]
    -> mirror_room_4
* [Go to shadow room 8]
    -> shadow_room_8
* [Go to dream room 1]
    -> dream_room_1
* [Go to memory hub]
    -> memory_hub
* [Go to dream room 7]
    -> dream_room_7

=== shadow_room_1 ===
You are in the shadow room 1 area of the crystal labyrinth.
* [Go to mirror room 5]
    -> mirror_room_5
* [Go to shadow search]
    -> shadow_search
* [Go to dream room 2]
    -> dream_room_2
* [Go to memory room 1]
    -> memory_room_1
* [Go to dream room 8]
    -> dream_room_8

=== shadow_room_2 ===
You are in the shadow room 2 area of the crystal labyrinth.
* [Go to mirror room 6]
    -> mirror_room_6
* [Go to shadow archive]
    -> shadow_archive
* [Go to dream room 3]
    -> dream_room_3
* [Go to memory room 2]
    -> memory_room_2
* [Go to dream search]
    -> dream_search

=== shadow_room_3 ===
You are in the shadow room 3 area of the crystal labyrinth.
* [Go to mirror room 7]
    -> mirror_room_7
* [Go to time hub]
    -> time_hub
* [Go to dream room 4]
    -> dream_room_4
* [Go to memory room 3]
    -> memory_room_3
* [Go to dream archive]
    -> dream_archive

=== shadow_room_4 ===
You are in the shadow room 4 area of the crystal labyrinth.
* [Go to START]
    -> START
* [Go to time room 1]
    -> time_room_1
* [Go to dream room 5]
    -> dream_room_5
* [Go to memory room 4]
    -> memory_room_4

=== shadow_room_5 ===
You are in the shadow room 5 area of the crystal labyrinth.
* [Go to dream hub]
    -> dream_hub
* [Go to time room 2]
    -> time_room_2
* [Go to dream room 6]
    -> dream_room_6
* [Go to memory room 5]
    -> memory_room_5

=== shadow_room_6 ===
You are in the shadow room 6 area of the crystal labyrinth.
* [Go to dream room 1]
    -> dream_room_1
* [Go to time room 3]
    -> time_room_3
* [Go to dream room 7]
    -> dream_room_7
* [Go to memory room 6]
    -> memory_room_6
* [Go to mirror room 2]
    -> mirror_room_2

=== shadow_room_7 ===
You are in the shadow room 7 area of the crystal labyrinth.
* [Go to dream room 2]
    -> dream_room_2
* [Go to time room 4]
    -> time_room_4
* [Go to dream room 8]
    -> dream_room_8
* [Go to memory room 7]
    -> memory_room_7

=== shadow_room_8 ===
You are in the shadow room 8 area of the crystal labyrinth.
* [Go to dream room 3]
    -> dream_room_3
* [Go to time room 5]
    -> time_room_5
* [Go to dream search]
    -> dream_search
* [Go to memory room 8]
    -> memory_room_8

=== shadow_search ===
You are in the shadow search area of the crystal labyrinth.
* [Go to dream room 4]
    -> dream_room_4
* [Go to time room 6]
    -> time_room_6
* [Go to dream archive]
    -> dream_archive
* [Go to memory search]
    -> memory_search

=== shadow_archive ===
You are in the shadow archive area of the crystal labyrinth.
* [Go to dream room 5]
    -> dream_room_5
* [Go to time room 7]
    -> time_room_7
* [Go to mirror hub]
    -> mirror_hub
* [Go to memory archive]
    -> memory_archive

=== time_hub ===
You are in the time hub area of the crystal labyrinth.
* [Go to dream room 6]
    -> dream_room_6
* [Go to time room 8]
    -> time_room_8
* [Go to mirror room 1]
    -> mirror_room_1
* [Go to corridor 1]
    -> corridor_1
* [Go to mirror room 7]
    -> mirror_room_7

=== time_room_1 ===
You are in the time room 1 area of the crystal labyrinth.
* [Go to dream room 7]
    -> dream_room_7
* [Go to time search]
    -> time_search
* [Go to mirror room 2]
    -> mirror_room_2
* [Go to junction 1]
    -> junction_1
* [Go to START]
    -> START

=== time_room_2 ===
You are in the time room 2 area of the crystal labyrinth.
* [Go to dream room 8]
    -> dream_room_8
* [Go to time archive]
    -> time_archive
* [Go to mirror room 3]
    -> mirror_room_3
* [Go to passage 1]
    -> passage_1

=== time_room_3 ===
You are in the time room 3 area of the crystal labyrinth.
* [Go to dream search]
    -> dream_search
* [Go to memory hub]
    -> memory_hub
* [Go to mirror room 4]
    -> mirror_room_4
* [Go to corridor 2]
    -> corridor_2
* [Go to dream room 1]
    -> dream_room_1

=== time_room_4 ===
You are in the time room 4 area of the crystal labyrinth.
* [Go to dream archive]
    -> dream_archive
* [Go to memory room 1]
    -> memory_room_1
* [Go to mirror room 5]
    -> mirror_room_5
* [Go to junction 2]
    -> junction_2
* [Go to dream room 2]
    -> dream_room_2

=== time_room_5 ===
You are in the time room 5 area of the crystal labyrinth.
* [Go to mirror hub]
    -> mirror_hub
* [Go to memory room 2]
    -> memory_room_2
* [Go to mirror room 6]
    -> mirror_room_6
* [Go to passage 2]
    -> passage_2

=== time_room_6 ===
You are in the time room 6 area of the crystal labyrinth.
* [Go to mirror room 1]
    -> mirror_room_1
* [Go to memory room 3]
    -> memory_room_3
* [Go to mirror room 7]
    -> mirror_room_7
* [Go to corridor 3]
    -> corridor_3

=== time_room_7 ===
You are in the time room 7 area of the crystal labyrinth.
* [Go to mirror room 2]
    -> mirror_room_2
* [Go to memory room 4]
    -> memory_room_4
* [Go to START]
    -> START
* [Go to junction 3]
    -> junction_3
* [Go to dream room 5]
    -> dream_room_5

=== time_room_8 ===
You are in the time room 8 area of the crystal labyrinth.
* [Go to mirror room 3]
    -> mirror_room_3
* [Go to memory room 5]
    -> memory_room_5
* [Go to dream hub]
    -> dream_hub
* [Go to passage 3]
    -> passage_3
* [Go to dream room 6]
    -> dream_room_6

=== time_search ===
You are in the time search area of the crystal labyrinth.
* [Search and find the opened seal]
    ~ opened_seal = true
    -> mirror_room_4
* [Go to memory room 6]
    -> memory_room_6
* [Go to dream room 1]
    -> dream_room_1
* [Go to corridor 4]
    -> corridor_4

=== time_archive ===
You are in the time archive area of the crystal labyrinth.
* [Go to mirror room 5]
    -> mirror_room_5
* [Go to memory room 7]
    -> memory_room_7
* [Go to dream room 2]
    -> dream_room_2
* [Go to junction 4]
    -> junction_4
* [Go to dream room 8]
    -> dream_room_8

=== memory_hub ===
You are in the memory hub area of the crystal labyrinth.
* [Go to mirror room 6]
    -> mirror_room_6
* [Go to memory room 8]
    -> memory_room_8
* [Go to dream room 3]
    -> dream_room_3
* [Go to passage 4]
    -> passage_4

=== memory_room_1 ===
You are in the memory room 1 area of the crystal labyrinth.
* [Go to mirror room 7]
    -> mirror_room_7
* [Go to memory search]
    -> memory_search
* [Go to dream room 4]
    -> dream_room_4
* [Go to corridor 5]
    -> corridor_5

=== memory_room_2 ===
You are in the memory room 2 area of the crystal labyrinth.
* [Go to START]
    -> START
* [Go to memory archive]
    -> memory_archive
* [Go to dream room 5]
    -> dream_room_5
* [Go to junction 5]
    -> junction_5

=== memory_room_3 ===
You are in the memory room 3 area of the crystal labyrinth.
* [Go to dream hub]
    -> dream_hub
* [Go to corridor 1]
    -> corridor_1
* [Go to dream room 6]
    -> dream_room_6
* [Go to passage 5]
    -> passage_5
* [Go to mirror room 1]
    -> mirror_room_1

=== memory_room_4 ===
You are in the memory room 4 area of the crystal labyrinth.
* [Go to dream room 1]
    -> dream_room_1
* [Go to junction 1]
    -> junction_1
* [Go to dream room 7]
    -> dream_room_7
* [Go to corridor 6]
    -> corridor_6
* [Go to mirror room 2]
    -> mirror_room_2

=== memory_room_5 ===
You are in the memory room 5 area of the crystal labyrinth.
* [Go to dream room 2]
    -> dream_room_2
* [Go to passage 1]
    -> passage_1
* [Go to dream room 8]
    -> dream_room_8
* [Go to junction 6]
    -> junction_6

=== memory_room_6 ===
You are in the memory room 6 area of the crystal labyrinth.
* [Go to dream room 3]
    -> dream_room_3
* [Go to corridor 2]
    -> corridor_2
* [Go to dream search]
    -> dream_search
* [Go to passage 6]
    -> passage_6

=== memory_room_7 ===
You are in the memory room 7 area of the crystal labyrinth.
* [Go to dream room 4]
    -> dream_room_4
* [Go to junction 2]
    -> junction_2
* [Go to dream archive]
    -> dream_archive
* [Go to corridor 7]
    -> corridor_7
* [Go to mirror room 5]
    -> mirror_room_5

=== memory_room_8 ===
You are in the memory room 8 area of the crystal labyrinth.
* [Go to dream room 5]
    -> dream_room_5
* [Go to passage 2]
    -> passage_2
* [Go to mirror hub]
    -> mirror_hub
* [Go to junction 7]
    -> junction_7
* [Go to mirror room 6]
    -> mirror_room_6

=== memory_search ===
You are in the memory search area of the crystal labyrinth.
* [Search and find the has rope]
    ~ has_rope = true
    -> dream_room_6
* [Go to corridor 3]
    -> corridor_3
* [Go to mirror room 1]
    -> mirror_room_1
* [Go to passage 7]
    -> passage_7
* [Go to mirror room 7]
    -> mirror_room_7

=== memory_archive ===
You are in the memory archive area of the crystal labyrinth.
* [Go to dream room 7]
    -> dream_room_7
* [Go to junction 3]
    -> junction_3
* [Go to mirror room 2]
    -> mirror_room_2
* [Go to corridor 8]
    -> corridor_8
* [Go to START]
    -> START

=== corridor_1 ===
You are in the corridor 1 area of the crystal labyrinth.
* [Go to dream room 8]
    -> dream_room_8
* [Go to passage 3]
    -> passage_3
* [Go to mirror room 3]
    -> mirror_room_3
* [Go to junction 8]
    -> junction_8
* [Go to dream hub]
    -> dream_hub

=== junction_1 ===
You are in the junction 1 area of the crystal labyrinth.
* [Go to dream search]
    -> dream_search
* [Go to corridor 4]
    -> corridor_4
* [Go to mirror room 4]
    -> mirror_room_4
* [Go to passage 8]
    -> passage_8

=== passage_1 ===
You are in the passage 1 area of the crystal labyrinth.
* [Go to dream archive]
    -> dream_archive
* [Go to junction 4]
    -> junction_4
* [Go to mirror room 5]
    -> mirror_room_5
* [Go to corridor 9]
    -> corridor_9
* [Go to dream room 2]
    -> dream_room_2

=== corridor_2 ===
You are in the corridor 2 area of the crystal labyrinth.
* [Go to mirror hub]
    -> mirror_hub
* [Go to passage 4]
    -> passage_4
* [Go to mirror room 6]
    -> mirror_room_6
* [Go to junction 9]
    -> junction_9
* [Go to dream room 3]
    -> dream_room_3

=== junction_2 ===
You are in the junction 2 area of the crystal labyrinth.
* [Go to mirror room 1]
    -> mirror_room_1
* [Go to corridor 5]
    -> corridor_5
* [Go to mirror room 7]
    -> mirror_room_7
* [Go to passage 9]
    -> passage_9
* [Go to dream room 4]
    -> dream_room_4

=== passage_2 ===
You are in the passage 2 area of the crystal labyrinth.
* [Go to mirror room 2]
    -> mirror_room_2
* [Go to junction 5]
    -> junction_5
* [Go to START]
    -> START
* [Go to corridor 10]
    -> corridor_10

=== corridor_3 ===
You are in the corridor 3 area of the crystal labyrinth.
* [Go to mirror room 3]
    -> mirror_room_3
* [Go to passage 5]
    -> passage_5
* [Go to dream hub]
    -> dream_hub
* [Go to junction 10]
    -> junction_10

=== junction_3 ===
You are in the junction 3 area of the crystal labyrinth.
* [Go to mirror room 4]
    -> mirror_room_4
* [Go to corridor 6]
    -> corridor_6
* [Go to dream room 1]
    -> dream_room_1
* [Go to passage 10]
    -> passage_10
* [Go to dream room 7]
    -> dream_room_7

=== passage_3 ===
You are in the passage 3 area of the crystal labyrinth.
* [Go to mirror room 5]
    -> mirror_room_5
* [Go to junction 6]
    -> junction_6
* [Go to dream room 2]
    -> dream_room_2
* [Go to corridor 11]
    -> corridor_11
* [Go to dream room 8]
    -> dream_room_8

=== corridor_4 ===
You are in the corridor 4 area of the crystal labyrinth.
* [Go to mirror room 6]
    -> mirror_room_6
* [Go to passage 6]
    -> passage_6
* [Go to dream room 3]
    -> dream_room_3
* [Go to junction 11]
    -> junction_11

=== junction_4 ===
You are in the junction 4 area of the crystal labyrinth.
* [Go to mirror room 7]
    -> mirror_room_7
* [Go to corridor 7]
    -> corridor_7
* [Go to dream room 4]
    -> dream_room_4
* [Go to passage 11]
    -> passage_11

=== passage_4 ===
You are in the passage 4 area of the crystal labyrinth.
* [Go to START]
    -> START
* [Go to junction 7]
    -> junction_7
* [Go to dream room 5]
    -> dream_room_5
* [Go to corridor 12]
    -> corridor_12

=== corridor_5 ===
You are in the corridor 5 area of the crystal labyrinth.
* [Go to dream hub]
    -> dream_hub
* [Go to passage 7]
    -> passage_7
* [Go to dream room 6]
    -> dream_room_6
* [Go to junction 12]
    -> junction_12

=== junction_5 ===
You are in the junction 5 area of the crystal labyrinth.
* [Go to dream room 1]
    -> dream_room_1
* [Go to corridor 8]
    -> corridor_8
* [Go to dream room 7]
    -> dream_room_7
* [Go to passage 12]
    -> passage_12

=== passage_5 ===
You are in the passage 5 area of the crystal labyrinth.
* [Go to dream room 2]
    -> dream_room_2
* [Go to junction 8]
    -> junction_8
* [Go to dream room 8]
    -> dream_room_8
* [Go to corridor 13]
    -> corridor_13

=== corridor_6 ===
You are in the corridor 6 area of the crystal labyrinth.
* [Go to dream room 3]
    -> dream_room_3
* [Go to passage 8]
    -> passage_8
* [Go to dream search]
    -> dream_search
* [Go to junction 13]
    -> junction_13

=== junction_6 ===
You are in the junction 6 area of the crystal labyrinth.
* [Go to dream room 4]
    -> dream_room_4
* [Go to corridor 9]
    -> corridor_9
* [Go to dream archive]
    -> dream_archive
* [Go to passage 13]
    -> passage_13

=== passage_6 ===
You are in the passage 6 area of the crystal labyrinth.
* [Go to dream room 5]
    -> dream_room_5
* [Go to junction 9]
    -> junction_9
* [Go to mirror hub]
    -> mirror_hub
* [Go to corridor 14]
    -> corridor_14

=== corridor_7 ===
You are in the corridor 7 area of the crystal labyrinth.
* [Go to dream room 6]
    -> dream_room_6
* [Go to passage 9]
    -> passage_9
* [Go to mirror room 1]
    -> mirror_room_1
* [Go to junction 14]
    -> junction_14
* [Go to mirror room 7]
    -> mirror_room_7

=== junction_7 ===
You are in the junction 7 area of the crystal labyrinth.
* [Go to dream room 7]
    -> dream_room_7
* [Go to corridor 10]
    -> corridor_10
* [Go to mirror room 2]
    -> mirror_room_2
* [Go to passage 14]
    -> passage_14
* [Go to START]
    -> START

=== passage_7 ===
You are in the passage 7 area of the crystal labyrinth.
* [Go to dream room 8]
    -> dream_room_8
* [Go to junction 10]
    -> junction_10
* [Go to mirror room 3]
    -> mirror_room_3
* [Go to corridor 15]
    -> corridor_15

=== corridor_8 ===
You are in the corridor 8 area of the crystal labyrinth.
* [Go to dream search]
    -> dream_search
* [Go to passage 10]
    -> passage_10
* [Go to mirror room 4]
    -> mirror_room_4
* [Go to junction 15]
    -> junction_15

=== junction_8 ===
You are in the junction 8 area of the crystal labyrinth.
* [Go to dream archive]
    -> dream_archive
* [Go to corridor 11]
    -> corridor_11
* [Go to mirror room 5]
    -> mirror_room_5
* [Go to passage 15]
    -> passage_15

=== passage_8 ===
You are in the passage 8 area of the crystal labyrinth.
* [Go to mirror hub]
    -> mirror_hub
* [Go to junction 11]
    -> junction_11
* [Go to mirror room 6]
    -> mirror_room_6
* [Go to corridor 16]
    -> corridor_16

=== corridor_9 ===
You are in the corridor 9 area of the crystal labyrinth.
* [Go to mirror room 1]
    -> mirror_room_1
* [Go to passage 11]
    -> passage_11
* [Go to mirror room 7]
    -> mirror_room_7
* [Go to junction 16]
    -> junction_16

=== junction_9 ===
You are in the junction 9 area of the crystal labyrinth.
* [Go to mirror room 2]
    -> mirror_room_2
* [Go to corridor 12]
    -> corridor_12
* [Go to START]
    -> START
* [Go to passage 16]
    -> passage_16
* [Go to dream room 5]
    -> dream_room_5

=== passage_9 ===
You are in the passage 9 area of the crystal labyrinth.
* [Go to mirror room 3]
    -> mirror_room_3
* [Go to junction 12]
    -> junction_12
* [Go to dream hub]
    -> dream_hub
* [Go to corridor 17]
    -> corridor_17

=== corridor_10 ===
You are in the corridor 10 area of the crystal labyrinth.
* [Go to mirror room 4]
    -> mirror_room_4
* [Go to passage 12]
    -> passage_12
* [Go to dream room 1]
    -> dream_room_1
* [Go to junction 17]
    -> junction_17
* [Go to dream room 7]
    -> dream_room_7

=== junction_10 ===
You are in the junction 10 area of the crystal labyrinth.
* [Go to mirror room 5]
    -> mirror_room_5
* [Go to corridor 13]
    -> corridor_13
* [Go to dream room 2]
    -> dream_room_2
* [Go to passage 17]
    -> passage_17
* [Go to dream room 8]
    -> dream_room_8

=== passage_10 ===
You are in the passage 10 area of the crystal labyrinth.
* [Go to mirror room 6]
    -> mirror_room_6
* [Go to junction 13]
    -> junction_13
* [Go to dream room 3]
    -> dream_room_3
* [Go to corridor 18]
    -> corridor_18
* [Go to dream search]
    -> dream_search

=== corridor_11 ===
You are in the corridor 11 area of the crystal labyrinth.
* [Go to mirror room 7]
    -> mirror_room_7
* [Go to passage 13]
    -> passage_13
* [Go to dream room 4]
    -> dream_room_4
* [Go to junction 18]
    -> junction_18
* [Go to dream archive]
    -> dream_archive

=== junction_11 ===
You are in the junction 11 area of the crystal labyrinth.
* [Go to START]
    -> START
* [Go to corridor 14]
    -> corridor_14
* [Go to dream room 5]
    -> dream_room_5
* [Go to passage 18]
    -> passage_18

=== passage_11 ===
You are in the passage 11 area of the crystal labyrinth.
* [Go to dream hub]
    -> dream_hub
* [Go to junction 14]
    -> junction_14
* [Go to dream room 6]
    -> dream_room_6
* [Go to corridor 19]
    -> corridor_19
* [Go to mirror room 1]
    -> mirror_room_1

=== corridor_12 ===
You are in the corridor 12 area of the crystal labyrinth.
* [Go to dream room 1]
    -> dream_room_1
* [Go to passage 14]
    -> passage_14
* [Go to dream room 7]
    -> dream_room_7
* [Go to junction 19]
    -> junction_19

=== junction_12 ===
You are in the junction 12 area of the crystal labyrinth.
* [Go to dream room 2]
    -> dream_room_2
* [Go to corridor 15]
    -> corridor_15
* [Go to dream room 8]
    -> dream_room_8
* [Go to passage 19]
    -> passage_19

=== passage_12 ===
You are in the passage 12 area of the crystal labyrinth.
* [Go to dream room 3]
    -> dream_room_3
* [Go to junction 15]
    -> junction_15
* [Go to dream search]
    -> dream_search
* [Go to corridor 20]
    -> corridor_20

=== corridor_13 ===
You are in the corridor 13 area of the crystal labyrinth.
* [Go to dream room 4]
    -> dream_room_4
* [Go to passage 15]
    -> passage_15
* [Go to dream archive]
    -> dream_archive
* [Go to junction 20]
    -> junction_20

=== junction_13 ===
You are in the junction 13 area of the crystal labyrinth.
* [Go to dream room 5]
    -> dream_room_5
* [Go to corridor 16]
    -> corridor_16
* [Go to mirror hub]
    -> mirror_hub
* [Go to passage 20]
    -> passage_20
* [Go to mirror room 6]
    -> mirror_room_6

=== passage_13 ===
You are in the passage 13 area of the crystal labyrinth.
* [Go to dream room 6]
    -> dream_room_6
* [Go to junction 16]
    -> junction_16
* [Go to mirror room 1]
    -> mirror_room_1
* [Go to corridor 21]
    -> corridor_21
* [Go to mirror room 7]
    -> mirror_room_7

=== corridor_14 ===
You are in the corridor 14 area of the crystal labyrinth.
* [Go to dream room 7]
    -> dream_room_7
* [Go to passage 16]
    -> passage_16
* [Go to mirror room 2]
    -> mirror_room_2
* [Go to junction 21]
    -> junction_21

=== junction_14 ===
You are in the junction 14 area of the crystal labyrinth.
* [Go to dream room 8]
    -> dream_room_8
* [Go to corridor 17]
    -> corridor_17
* [Go to mirror room 3]
    -> mirror_room_3
* [Go to passage 21]
    -> passage_21
* [Go to dream hub]
    -> dream_hub

=== passage_14 ===
You are in the passage 14 area of the crystal labyrinth.
* [Go to dream search]
    -> dream_search
* [Go to junction 17]
    -> junction_17
* [Go to mirror room 4]
    -> mirror_room_4
* [Go to corridor 22]
    -> corridor_22

=== corridor_15 ===
You are in the corridor 15 area of the crystal labyrinth.
* [Go to dream archive]
    -> dream_archive
* [Go to passage 17]
    -> passage_17
* [Go to mirror room 5]
    -> mirror_room_5
* [Go to junction 22]
    -> junction_22

=== junction_15 ===
You are in the junction 15 area of the crystal labyrinth.
* [Go to mirror hub]
    -> mirror_hub
* [Go to corridor 18]
    -> corridor_18
* [Go to mirror room 6]
    -> mirror_room_6
* [Go to passage 22]
    -> passage_22
* [Go to dream room 3]
    -> dream_room_3

=== passage_15 ===
You are in the passage 15 area of the crystal labyrinth.
* [Go to mirror room 1]
    -> mirror_room_1
* [Go to junction 18]
    -> junction_18
* [Go to mirror room 7]
    -> mirror_room_7
* [Go to corridor 23]
    -> corridor_23
* [Go to dream room 4]
    -> dream_room_4

=== corridor_16 ===
You are in the corridor 16 area of the crystal labyrinth.
* [Go to mirror room 2]
    -> mirror_room_2
* [Go to passage 18]
    -> passage_18
* [Go to START]
    -> START
* [Go to junction 23]
    -> junction_23

=== junction_16 ===
You are in the junction 16 area of the crystal labyrinth.
* [Go to mirror room 3]
    -> mirror_room_3
* [Go to corridor 19]
    -> corridor_19
* [Go to dream hub]
    -> dream_hub
* [Go to passage 23]
    -> passage_23

=== passage_16 ===
You are in the passage 16 area of the crystal labyrinth.
* [Go to mirror room 4]
    -> mirror_room_4
* [Go to junction 19]
    -> junction_19
* [Go to dream room 1]
    -> dream_room_1
* [Go to corridor 24]
    -> corridor_24

=== corridor_17 ===
You are in the corridor 17 area of the crystal labyrinth.
* [Go to mirror room 5]
    -> mirror_room_5
* [Go to passage 19]
    -> passage_19
* [Go to dream room 2]
    -> dream_room_2
* [Go to junction 24]
    -> junction_24
* [Go to dream room 8]
    -> dream_room_8

=== junction_17 ===
You are in the junction 17 area of the crystal labyrinth.
* [Go to mirror room 6]
    -> mirror_room_6
* [Go to corridor 20]
    -> corridor_20
* [Go to dream room 3]
    -> dream_room_3
* [Go to passage 24]
    -> passage_24

=== passage_17 ===
You are in the passage 17 area of the crystal labyrinth.
* [Go to mirror room 7]
    -> mirror_room_7
* [Go to junction 20]
    -> junction_20
* [Go to dream room 4]
    -> dream_room_4
* [Go to corridor 25]
    -> corridor_25
* [Go to dream archive]
    -> dream_archive

=== corridor_18 ===
You are in the corridor 18 area of the crystal labyrinth.
* [Go to START]
    -> START
* [Go to passage 20]
    -> passage_20
* [Go to dream room 5]
    -> dream_room_5
* [Go to junction 25]
    -> junction_25

=== junction_18 ===
You are in the junction 18 area of the crystal labyrinth.
* [Go to dream hub]
    -> dream_hub
* [Go to corridor 21]
    -> corridor_21
* [Go to dream room 6]
    -> dream_room_6
* [Go to passage 25]
    -> passage_25
* [Go to mirror room 1]
    -> mirror_room_1

=== passage_18 ===
You are in the passage 18 area of the crystal labyrinth.
* [Go to dream room 1]
    -> dream_room_1
* [Go to junction 21]
    -> junction_21
* [Go to dream room 7]
    -> dream_room_7
* [Go to corridor 26]
    -> corridor_26

=== corridor_19 ===
You are in the corridor 19 area of the crystal labyrinth.
* [Go to dream room 2]
    -> dream_room_2
* [Go to passage 21]
    -> passage_21
* [Go to dream room 8]
    -> dream_room_8
* [Go to junction 26]
    -> junction_26
* [Go to mirror room 3]
    -> mirror_room_3

=== junction_19 ===
You are in the junction 19 area of the crystal labyrinth.
* [Go to dream room 3]
    -> dream_room_3
* [Go to corridor 22]
    -> corridor_22
* [Go to dream search]
    -> dream_search
* [Go to passage 26]
    -> passage_26

=== passage_19 ===
You are in the passage 19 area of the crystal labyrinth.
* [Go to dream room 4]
    -> dream_room_4
* [Go to junction 22]
    -> junction_22
* [Go to dream archive]
    -> dream_archive
* [Go to corridor 27]
    -> corridor_27

=== corridor_20 ===
You are in the corridor 20 area of the crystal labyrinth.
* [Go to dream room 5]
    -> dream_room_5
* [Go to passage 22]
    -> passage_22
* [Go to mirror hub]
    -> mirror_hub
* [Go to junction 27]
    -> junction_27
* [Go to mirror room 6]
    -> mirror_room_6

=== junction_20 ===
You are in the junction 20 area of the crystal labyrinth.
* [Go to dream room 6]
    -> dream_room_6
* [Go to corridor 23]
    -> corridor_23
* [Go to mirror room 1]
    -> mirror_room_1
* [Go to passage 27]
    -> passage_27

=== passage_20 ===
You are in the passage 20 area of the crystal labyrinth.
* [Go to dream room 7]
    -> dream_room_7
* [Go to junction 23]
    -> junction_23
* [Go to mirror room 2]
    -> mirror_room_2
* [Go to corridor 28]
    -> corridor_28
* [Go to START]
    -> START

=== corridor_21 ===
You are in the corridor 21 area of the crystal labyrinth.
* [Go to dream room 8]
    -> dream_room_8
* [Go to passage 23]
    -> passage_23
* [Go to mirror room 3]
    -> mirror_room_3
* [Go to junction 28]
    -> junction_28

=== junction_21 ===
You are in the junction 21 area of the crystal labyrinth.
* [Go to dream search]
    -> dream_search
* [Go to corridor 24]
    -> corridor_24
* [Go to mirror room 4]
    -> mirror_room_4
* [Go to passage 28]
    -> passage_28
* [Go to dream room 1]
    -> dream_room_1

=== passage_21 ===
You are in the passage 21 area of the crystal labyrinth.
* [Go to dream archive]
    -> dream_archive
* [Go to junction 24]
    -> junction_24
* [Go to mirror room 5]
    -> mirror_room_5
* [Go to corridor 29]
    -> corridor_29
* [Go to dream room 2]
    -> dream_room_2

=== corridor_22 ===
You are in the corridor 22 area of the crystal labyrinth.
* [Go to mirror hub]
    -> mirror_hub
* [Go to passage 24]
    -> passage_24
* [Go to mirror room 6]
    -> mirror_room_6
* [Go to junction 29]
    -> junction_29

=== junction_22 ===
You are in the junction 22 area of the crystal labyrinth.
* [Go to mirror room 1]
    -> mirror_room_1
* [Go to corridor 25]
    -> corridor_25
* [Go to mirror room 7]
    -> mirror_room_7
* [Go to passage 29]
    -> passage_29
* [Go to dream room 4]
    -> dream_room_4

=== passage_22 ===
You are in the passage 22 area of the crystal labyrinth.
* [Go to mirror room 2]
    -> mirror_room_2
* [Go to junction 25]
    -> junction_25
* [Go to START]
    -> START
* [Go to corridor 30]
    -> corridor_30
* [Go to dream room 5]
    -> dream_room_5

=== corridor_23 ===
You are in the corridor 23 area of the crystal labyrinth.
* [Go to mirror room 3]
    -> mirror_room_3
* [Go to passage 25]
    -> passage_25
* [Go to dream hub]
    -> dream_hub
* [Go to junction 30]
    -> junction_30

=== junction_23 ===
You are in the junction 23 area of the crystal labyrinth.
* [Go to mirror room 4]
    -> mirror_room_4
* [Go to corridor 26]
    -> corridor_26
* [Go to dream room 1]
    -> dream_room_1
* [Go to passage 30]
    -> passage_30

=== passage_23 ===
You are in the passage 23 area of the crystal labyrinth.
* [Go to mirror room 5]
    -> mirror_room_5
* [Go to junction 26]
    -> junction_26
* [Go to dream room 2]
    -> dream_room_2
* [Go to corridor 31]
    -> corridor_31
* [Go to dream room 8]
    -> dream_room_8

=== corridor_24 ===
You are in the corridor 24 area of the crystal labyrinth.
* [Go to mirror room 6]
    -> mirror_room_6
* [Go to passage 26]
    -> passage_26
* [Go to dream room 3]
    -> dream_room_3
* [Go to junction 31]
    -> junction_31
* [Go to dream search]
    -> dream_search

=== junction_24 ===
You are in the junction 24 area of the crystal labyrinth.
* [Go to mirror room 7]
    -> mirror_room_7
* [Go to corridor 27]
    -> corridor_27
* [Go to dream room 4]
    -> dream_room_4
* [Go to passage 31]
    -> passage_31

=== passage_24 ===
You are in the passage 24 area of the crystal labyrinth.
* [Go to START]
    -> START
* [Go to junction 27]
    -> junction_27
* [Go to dream room 5]
    -> dream_room_5
* [Go to corridor 32]
    -> corridor_32

=== corridor_25 ===
You are in the corridor 25 area of the crystal labyrinth.
* [Go to dream hub]
    -> dream_hub
* [Go to passage 27]
    -> passage_27
* [Go to dream room 6]
    -> dream_room_6
* [Go to junction 32]
    -> junction_32

=== junction_25 ===
You are in the junction 25 area of the crystal labyrinth.
* [Go to dream room 1]
    -> dream_room_1
* [Go to corridor 28]
    -> corridor_28
* [Go to dream room 7]
    -> dream_room_7
* [Go to passage 32]
    -> passage_32
* [Go to mirror room 2]
    -> mirror_room_2

=== passage_25 ===
You are in the passage 25 area of the crystal labyrinth.
* [Go to dream room 2]
    -> dream_room_2
* [Go to junction 28]
    -> junction_28
* [Go to dream room 8]
    -> dream_room_8
* [Go to corridor 33]
    -> corridor_33
* [Go to mirror room 3]
    -> mirror_room_3

=== corridor_26 ===
You are in the corridor 26 area of the crystal labyrinth.
* [Go to dream room 3]
    -> dream_room_3
* [Go to passage 28]
    -> passage_28
* [Go to dream search]
    -> dream_search
* [Go to junction 33]
    -> junction_33
* [Go to mirror room 4]
    -> mirror_room_4

=== junction_26 ===
You are in the junction 26 area of the crystal labyrinth.
* [Go to dream room 4]
    -> dream_room_4
* [Go to corridor 29]
    -> corridor_29
* [Go to dream archive]
    -> dream_archive
* [Go to passage 33]
    -> passage_33

=== passage_26 ===
You are in the passage 26 area of the crystal labyrinth.
* [Go to dream room 5]
    -> dream_room_5
* [Go to junction 29]
    -> junction_29
* [Go to mirror hub]
    -> mirror_hub
* [Go to corridor 34]
    -> corridor_34
* [Go to mirror room 6]
    -> mirror_room_6

=== corridor_27 ===
You are in the corridor 27 area of the crystal labyrinth.
* [Go to dream room 6]
    -> dream_room_6
* [Go to passage 29]
    -> passage_29
* [Go to mirror room 1]
    -> mirror_room_1
* [Go to junction 34]
    -> junction_34

=== junction_27 ===
You are in the junction 27 area of the crystal labyrinth.
* [Go to dream room 7]
    -> dream_room_7
* [Go to corridor 30]
    -> corridor_30
* [Go to mirror room 2]
    -> mirror_room_2
* [Go to passage 34]
    -> passage_34

=== passage_27 ===
You are in the passage 27 area of the crystal labyrinth.
* [Go to dream room 8]
    -> dream_room_8
* [Go to junction 30]
    -> junction_30
* [Go to mirror room 3]
    -> mirror_room_3
* [Go to corridor 35]
    -> corridor_35

=== corridor_28 ===
You are in the corridor 28 area of the crystal labyrinth.
* [Go to dream search]
    -> dream_search
* [Go to passage 30]
    -> passage_30
* [Go to mirror room 4]
    -> mirror_room_4
* [Go to junction 35]
    -> junction_35
* [Go to dream room 1]
    -> dream_room_1

=== junction_28 ===
You are in the junction 28 area of the crystal labyrinth.
* [Go to dream archive]
    -> dream_archive
* [Go to corridor 31]
    -> corridor_31
* [Go to mirror room 5]
    -> mirror_room_5
* [Go to amulet corridor]
    -> amulet_corridor

=== passage_28 ===
You are in the passage 28 area of the crystal labyrinth.
* [Go to mirror hub]
    -> mirror_hub
* [Go to junction 31]
    -> junction_31
* [Go to mirror room 6]
    -> mirror_room_6
* [Go to mirror barrier]
    -> mirror_barrier

=== corridor_29 ===
You are in the corridor 29 area of the crystal labyrinth.
* [Go to mirror room 1]
    -> mirror_room_1
* [Go to passage 31]
    -> passage_31
* [Go to mirror room 7]
    -> mirror_room_7
* [Go to mirror room 4]
    -> mirror_room_4
* [Go to dream room 4]
    -> dream_room_4

=== junction_29 ===
You are in the junction 29 area of the crystal labyrinth.
* [Go to mirror room 2]
    -> mirror_room_2
* [Go to corridor 32]
    -> corridor_32
* [Go to START]
    -> START
* [Go to mirror room 5]
    -> mirror_room_5
* [Go to dream room 5]
    -> dream_room_5

=== passage_29 ===
You are in the passage 29 area of the crystal labyrinth.
* [Go to mirror room 3]
    -> mirror_room_3
* [Go to junction 32]
    -> junction_32
* [Go to dream hub]
    -> dream_hub
* [Go to mirror room 6]
    -> mirror_room_6
* [Go to dream room 6]
    -> dream_room_6

=== corridor_30 ===
You are in the corridor 30 area of the crystal labyrinth.
* [Go to mirror room 4]
    -> mirror_room_4
* [Go to passage 32]
    -> passage_32
* [Go to dream room 1]
    -> dream_room_1
* [Go to mirror room 7]
    -> mirror_room_7
* [Go to dream room 7]
    -> dream_room_7

=== junction_30 ===
You are in the junction 30 area of the crystal labyrinth.
* [Go to mirror room 5]
    -> mirror_room_5
* [Go to corridor 33]
    -> corridor_33
* [Go to dream room 2]
    -> dream_room_2
* [Go to exit node]
    -> exit_node

=== passage_30 ===
You are in the passage 30 area of the crystal labyrinth.
* [Go to mirror room 6]
    -> mirror_room_6
* [Go to junction 33]
    -> junction_33
* [Go to dream room 3]
    -> dream_room_3
* [Go to START]
    -> START

=== corridor_31 ===
You are in the corridor 31 area of the crystal labyrinth.
* [Go to mirror room 7]
    -> mirror_room_7
* [Go to passage 33]
    -> passage_33
* [Go to dream room 4]
    -> dream_room_4
* [Go to dream hub]
    -> dream_hub
* [Go to dream archive]
    -> dream_archive

=== junction_31 ===
You are in the junction 31 area of the crystal labyrinth.
* [Go to START]
    -> START
* [Go to corridor 34]
    -> corridor_34
* [Go to dream room 5]
    -> dream_room_5
* [Go to dream room 1]
    -> dream_room_1
* [Go to mirror hub]
    -> mirror_hub

=== passage_31 ===
You are in the passage 31 area of the crystal labyrinth.
* [Go to dream hub]
    -> dream_hub
* [Go to junction 34]
    -> junction_34
* [Go to dream room 6]
    -> dream_room_6
* [Go to dream room 2]
    -> dream_room_2

=== corridor_32 ===
You are in the corridor 32 area of the crystal labyrinth.
* [Go to dream room 1]
    -> dream_room_1
* [Go to passage 34]
    -> passage_34
* [Go to dream room 7]
    -> dream_room_7
* [Go to dream room 3]
    -> dream_room_3
* [Go to mirror room 2]
    -> mirror_room_2

=== junction_32 ===
You are in the junction 32 area of the crystal labyrinth.
* [Go to dream room 2]
    -> dream_room_2
* [Go to corridor 35]
    -> corridor_35
* [Go to dream room 8]
    -> dream_room_8
* [Go to dream room 4]
    -> dream_room_4
* [Go to mirror room 3]
    -> mirror_room_3

=== passage_32 ===
You are in the passage 32 area of the crystal labyrinth.
* [Go to dream room 3]
    -> dream_room_3
* [Go to junction 35]
    -> junction_35
* [Go to dream search]
    -> dream_search
* [Go to dream room 5]
    -> dream_room_5
* [Go to mirror room 4]
    -> mirror_room_4

=== corridor_33 ===
You are in the corridor 33 area of the crystal labyrinth.
* [Go to dream room 4]
    -> dream_room_4
* [Go to amulet corridor]
    -> amulet_corridor
* [Go to dream archive]
    -> dream_archive
* [Go to dream room 6]
    -> dream_room_6

=== junction_33 ===
You are in the junction 33 area of the crystal labyrinth.
* [Go to dream room 5]
    -> dream_room_5
* [Go to mirror barrier]
    -> mirror_barrier
* [Go to mirror hub]
    -> mirror_hub
* [Go to dream room 7]
    -> dream_room_7

=== passage_33 ===
You are in the passage 33 area of the crystal labyrinth.
* [Go to dream room 6]
    -> dream_room_6
* [Go to dream room 7]
    -> dream_room_7
* [Go to mirror room 1]
    -> mirror_room_1
* [Go to dream room 8]
    -> dream_room_8

=== corridor_34 ===
You are in the corridor 34 area of the crystal labyrinth.
* [Go to dream room 7]
    -> dream_room_7
* [Go to dream room 8]
    -> dream_room_8
* [Go to mirror room 2]
    -> mirror_room_2
* [Go to dream search]
    -> dream_search

=== junction_34 ===
You are in the junction 34 area of the crystal labyrinth.
* [Go to dream room 8]
    -> dream_room_8
* [Go to dream search]
    -> dream_search
* [Go to mirror room 3]
    -> mirror_room_3
* [Go to dream archive]
    -> dream_archive
* [Go to dream hub]
    -> dream_hub

=== passage_34 ===
You are in the passage 34 area of the crystal labyrinth.
* [Go to dream search]
    -> dream_search
* [Go to dream archive]
    -> dream_archive
* [Go to mirror room 4]
    -> mirror_room_4
* [Go to mirror hub]
    -> mirror_hub
* [Go to dream room 1]
    -> dream_room_1

=== corridor_35 ===
You are in the corridor 35 area of the crystal labyrinth.
* [Go to dream archive]
    -> dream_archive
* [Go to exit node]
    -> exit_node
* [Go to mirror room 5]
    -> mirror_room_5
* [Go to mirror room 1]
    -> mirror_room_1
* [Go to dream room 2]
    -> dream_room_2

=== junction_35 ===
You are in the junction 35 area of the crystal labyrinth.
* [Go to mirror hub]
    -> mirror_hub
* [Go to START]
    -> START
* [Go to mirror room 6]
    -> mirror_room_6
* [Go to mirror room 2]
    -> mirror_room_2

=== amulet_corridor ===
A corridor to the mechanism gate. The has amulet is destroyed.
* [Continue to the gate]
    ~ has_amulet = false
    -> mirror_barrier
* [Turn back to START]
    -> START
* [Turn back to dream hub]
    -> dream_hub
* [Turn back to dream room 1]
    -> dream_room_1

// CONTRADICTION: has_amulet set false here, required true at mirror_barrier.

=== mirror_barrier ===
A mechanism-locked gate. Requires the activation item.
* [Use the has amulet] { has_amulet }
    -> exit_node
* [Try to force it]
    -> amulet_corridor
* [Go to START]
    -> START
* [Go to dream hub]
    -> dream_hub

// CONTRADICTION: has_amulet set false in amulet_corridor, required true here.

=== infinite_staircase ===
A chamber with no exit. You are trapped.
* [Try option 1]
    -> infinite_staircase
* [Try option 2]
    -> infinite_staircase
* [Try option 3]
    -> infinite_staircase
* [Try option 4]
    -> infinite_staircase
* [Try option 5]
    -> infinite_staircase
* [Try option 6]
    -> infinite_staircase
* [Try option 7]
    -> infinite_staircase
* [Try option 8]
    -> infinite_staircase

// STRUCTURAL DEAD END

=== memory_prison ===
Another sealed chamber. There is no way out.
* [Search option 1]
    -> memory_prison
* [Search option 2]
    -> memory_prison
* [Search option 3]
    -> memory_prison
* [Search option 4]
    -> memory_prison
* [Search option 5]
    -> memory_prison
* [Search option 6]
    -> memory_prison
* [Search option 7]
    -> memory_prison
* [Search option 8]
    -> memory_prison

// STRUCTURAL DEAD END

=== dream_library ===
// UNREACHABLE: nothing diverts here
A hidden area of the complex. No one has been here in decades.
* [Explore option 1]
    -> START
* [Explore option 2]
    -> dream_room_2
* [Explore option 3]
    -> dream_room_5
* [Explore option 4]
    -> dream_room_8

=== spectral_garden ===
// UNREACHABLE: nothing diverts here
Another sealed section. Inaccessible from the main complex.
* [Search option 1]
    -> START
* [Search option 2]
    -> dream_room_4
* [Search option 3]
    -> dream_search
* [Search option 4]
    -> mirror_room_3

=== exit_node ===
You escape the crystal labyrinth. Your journey is complete.
-> END
