// Phase 2 - Story 6
// Nodes: 200 | Target BF: 6.0 | Target Edges: ~1200


VAR has_torch = false
VAR has_key = false
VAR has_vault_token = false
VAR has_rope = false
VAR has_map = false
VAR met_curator = false
VAR found_seal = false
VAR opened_gate = false

-> START

=== START ===
You are in the START area of the ancient vault complex.
* [Go to START]
    -> START
* [Go to north room 7]
    -> north_room_7
* [Go to north room 5]
    -> north_room_5
* [Go to south archive]
    -> south_archive
* [Go to south hub]
    -> south_hub
* [Go to west room 2]
    -> west_room_2

=== north_hub ===
You are in the north hub area of the ancient vault complex.
* [Go to north hub]
    -> north_hub
* [Go to north room 8]
    -> north_room_8
* [Go to north room 6]
    -> north_room_6
* [Go to east hub]
    -> east_hub
* [Go to south room 1]
    -> south_room_1
* [Go to west room 3]
    -> west_room_3

=== north_room_1 ===
You are in the north room 1 area of the ancient vault complex.
* [Go to north room 1]
    -> north_room_1
* [Go to north search]
    -> north_search
* [Go to north room 7]
    -> north_room_7
* [Go to east room 1]
    -> east_room_1
* [Go to south room 2]
    -> south_room_2
* [Go to west room 4]
    -> west_room_4

=== north_room_2 ===
You are in the north room 2 area of the ancient vault complex.
* [Go to north room 2]
    -> north_room_2
* [Go to north archive]
    -> north_archive
* [Go to north room 8]
    -> north_room_8
* [Go to east room 2]
    -> east_room_2
* [Go to south room 3]
    -> south_room_3
* [Go to west room 5]
    -> west_room_5

=== north_room_3 ===
You are in the north room 3 area of the ancient vault complex.
* [Go to north room 3]
    -> north_room_3
* [Go to south hub]
    -> south_hub
* [Go to north search]
    -> north_search
* [Go to east room 3]
    -> east_room_3
* [Go to south room 4]
    -> south_room_4
* [Go to west room 6]
    -> west_room_6

=== north_room_4 ===
You are in the north room 4 area of the ancient vault complex.
* [Go to north room 4]
    -> north_room_4
* [Go to south room 1]
    -> south_room_1
* [Go to north archive]
    -> north_archive
* [Go to east room 4]
    -> east_room_4
* [Go to south room 5]
    -> south_room_5
* [Go to west room 7]
    -> west_room_7

=== north_room_5 ===
You are in the north room 5 area of the ancient vault complex.
* [Go to north room 5]
    -> north_room_5
* [Go to south room 2]
    -> south_room_2
* [Go to south hub]
    -> south_hub
* [Go to east room 5]
    -> east_room_5
* [Go to south room 6]
    -> south_room_6
* [Go to west room 8]
    -> west_room_8

=== north_room_6 ===
You are in the north room 6 area of the ancient vault complex.
* [Go to north room 6]
    -> north_room_6
* [Go to south room 3]
    -> south_room_3
* [Go to south room 1]
    -> south_room_1
* [Go to east room 6]
    -> east_room_6
* [Go to south room 7]
    -> south_room_7
* [Go to west search]
    -> west_search

=== north_room_7 ===
You are in the north room 7 area of the ancient vault complex.
* [Go to north room 7]
    -> north_room_7
* [Go to south room 4]
    -> south_room_4
* [Go to south room 2]
    -> south_room_2
* [Go to east room 7]
    -> east_room_7
* [Go to START]
    -> START
* [Go to west archive]
    -> west_archive

=== north_room_8 ===
You are in the north room 8 area of the ancient vault complex.
* [Go to north room 8]
    -> north_room_8
* [Go to south room 5]
    -> south_room_5
* [Go to south room 3]
    -> south_room_3
* [Go to east room 8]
    -> east_room_8
* [Go to north hub]
    -> north_hub
* [Go to deep hub]
    -> deep_hub

=== north_search ===
You are in the north search area of the ancient vault complex.
* [Go to north search]
    -> north_search
* [Go to south room 6]
    -> south_room_6
* [Go to south room 4]
    -> south_room_4
* [Go to east search]
    -> east_search
* [Go to north room 1]
    -> north_room_1
* [Go to deep room 1]
    -> deep_room_1

=== north_archive ===
You are in the north archive area of the ancient vault complex.
* [Go to north archive]
    -> north_archive
* [Go to south room 7]
    -> south_room_7
* [Go to south room 5]
    -> south_room_5
* [Go to east archive]
    -> east_archive
* [Go to north room 2]
    -> north_room_2
* [Go to deep room 2]
    -> deep_room_2

=== south_hub ===
You are in the south hub area of the ancient vault complex.
* [Go to south hub]
    -> south_hub
* [Go to south room 8]
    -> south_room_8
* [Go to south room 6]
    -> south_room_6
* [Go to west hub]
    -> west_hub
* [Go to north room 3]
    -> north_room_3
* [Go to deep room 3]
    -> deep_room_3

=== south_room_1 ===
You are in the south room 1 area of the ancient vault complex.
* [Go to south room 1]
    -> south_room_1
* [Go to south search]
    -> south_search
* [Go to south room 7]
    -> south_room_7
* [Go to west room 1]
    -> west_room_1
* [Go to north room 4]
    -> north_room_4
* [Go to deep room 4]
    -> deep_room_4

=== south_room_2 ===
You are in the south room 2 area of the ancient vault complex.
* [Go to south room 2]
    -> south_room_2
* [Go to south archive]
    -> south_archive
* [Go to START]
    -> START
* [Go to west room 2]
    -> west_room_2
* [Go to north room 5]
    -> north_room_5
* [Go to deep room 5]
    -> deep_room_5

=== south_room_3 ===
You are in the south room 3 area of the ancient vault complex.
* [Go to south room 3]
    -> south_room_3
* [Go to east hub]
    -> east_hub
* [Go to north hub]
    -> north_hub
* [Go to west room 3]
    -> west_room_3
* [Go to north room 6]
    -> north_room_6
* [Go to deep room 6]
    -> deep_room_6

=== south_room_4 ===
You are in the south room 4 area of the ancient vault complex.
* [Go to south room 4]
    -> south_room_4
* [Go to east room 1]
    -> east_room_1
* [Go to north room 1]
    -> north_room_1
* [Go to west room 4]
    -> west_room_4
* [Go to north room 7]
    -> north_room_7
* [Go to deep room 7]
    -> deep_room_7

=== south_room_5 ===
You are in the south room 5 area of the ancient vault complex.
* [Go to south room 5]
    -> south_room_5
* [Go to east room 2]
    -> east_room_2
* [Go to north room 2]
    -> north_room_2
* [Go to west room 5]
    -> west_room_5
* [Go to north room 8]
    -> north_room_8
* [Go to deep room 8]
    -> deep_room_8

=== south_room_6 ===
You are in the south room 6 area of the ancient vault complex.
* [Go to south room 6]
    -> south_room_6
* [Go to east room 3]
    -> east_room_3
* [Go to north room 3]
    -> north_room_3
* [Go to west room 6]
    -> west_room_6
* [Go to north search]
    -> north_search
* [Go to deep search]
    -> deep_search

=== south_room_7 ===
You are in the south room 7 area of the ancient vault complex.
* [Go to south room 7]
    -> south_room_7
* [Go to east room 4]
    -> east_room_4
* [Go to north room 4]
    -> north_room_4
* [Go to west room 7]
    -> west_room_7
* [Go to north archive]
    -> north_archive
* [Go to deep archive]
    -> deep_archive

=== south_room_8 ===
You are in the south room 8 area of the ancient vault complex.
* [Go to START]
    -> START
* [Go to east room 5]
    -> east_room_5
* [Go to north room 5]
    -> north_room_5
* [Go to west room 8]
    -> west_room_8
* [Go to south hub]
    -> south_hub
* [Go to upper hub]
    -> upper_hub

=== south_search ===
You are in the south search area of the ancient vault complex.
* [Search and find the met curator]
    ~ met_curator = true
    -> north_hub
* [Go to east room 6]
    -> east_room_6
* [Go to north room 6]
    -> north_room_6
* [Go to west search]
    -> west_search
* [Go to south room 1]
    -> south_room_1
* [Go to upper room 1]
    -> upper_room_1

=== south_archive ===
You are in the south archive area of the ancient vault complex.
* [Go to north room 1]
    -> north_room_1
* [Go to east room 7]
    -> east_room_7
* [Go to north room 7]
    -> north_room_7
* [Go to west archive]
    -> west_archive
* [Go to south room 2]
    -> south_room_2
* [Go to upper room 2]
    -> upper_room_2

=== east_hub ===
You are in the east hub area of the ancient vault complex.
* [Go to north room 2]
    -> north_room_2
* [Go to east room 8]
    -> east_room_8
* [Go to north room 8]
    -> north_room_8
* [Go to deep hub]
    -> deep_hub
* [Go to south room 3]
    -> south_room_3
* [Go to upper room 3]
    -> upper_room_3

=== east_room_1 ===
You are in the east room 1 area of the ancient vault complex.
* [Go to north room 3]
    -> north_room_3
* [Go to east search]
    -> east_search
* [Go to north search]
    -> north_search
* [Go to deep room 1]
    -> deep_room_1
* [Go to south room 4]
    -> south_room_4
* [Go to upper room 4]
    -> upper_room_4

=== east_room_2 ===
You are in the east room 2 area of the ancient vault complex.
* [Go to north room 4]
    -> north_room_4
* [Go to east archive]
    -> east_archive
* [Go to north archive]
    -> north_archive
* [Go to deep room 2]
    -> deep_room_2
* [Go to south room 5]
    -> south_room_5
* [Go to upper room 5]
    -> upper_room_5

=== east_room_3 ===
You are in the east room 3 area of the ancient vault complex.
* [Go to north room 5]
    -> north_room_5
* [Go to west hub]
    -> west_hub
* [Go to south hub]
    -> south_hub
* [Go to deep room 3]
    -> deep_room_3
* [Go to south room 6]
    -> south_room_6
* [Go to upper room 6]
    -> upper_room_6

=== east_room_4 ===
You are in the east room 4 area of the ancient vault complex.
* [Go to north room 6]
    -> north_room_6
* [Go to west room 1]
    -> west_room_1
* [Go to south room 1]
    -> south_room_1
* [Go to deep room 4]
    -> deep_room_4
* [Go to south room 7]
    -> south_room_7
* [Go to upper room 7]
    -> upper_room_7

=== east_room_5 ===
You are in the east room 5 area of the ancient vault complex.
* [Go to north room 7]
    -> north_room_7
* [Go to west room 2]
    -> west_room_2
* [Go to south room 2]
    -> south_room_2
* [Go to deep room 5]
    -> deep_room_5
* [Go to START]
    -> START
* [Go to upper room 8]
    -> upper_room_8

=== east_room_6 ===
You are in the east room 6 area of the ancient vault complex.
* [Go to north room 8]
    -> north_room_8
* [Go to west room 3]
    -> west_room_3
* [Go to south room 3]
    -> south_room_3
* [Go to deep room 6]
    -> deep_room_6
* [Go to north hub]
    -> north_hub
* [Go to upper search]
    -> upper_search

=== east_room_7 ===
You are in the east room 7 area of the ancient vault complex.
* [Go to north search]
    -> north_search
* [Go to west room 4]
    -> west_room_4
* [Go to south room 4]
    -> south_room_4
* [Go to deep room 7]
    -> deep_room_7
* [Go to north room 1]
    -> north_room_1
* [Go to upper archive]
    -> upper_archive

=== east_room_8 ===
You are in the east room 8 area of the ancient vault complex.
* [Go to north archive]
    -> north_archive
* [Go to west room 5]
    -> west_room_5
* [Go to south room 5]
    -> south_room_5
* [Go to deep room 8]
    -> deep_room_8
* [Go to north room 2]
    -> north_room_2
* [Go to outer hub]
    -> outer_hub

=== east_search ===
You are in the east search area of the ancient vault complex.
* [Search and find the has torch]
    ~ has_torch = true
    -> south_hub
* [Go to west room 6]
    -> west_room_6
* [Go to south room 6]
    -> south_room_6
* [Go to deep search]
    -> deep_search
* [Go to north room 3]
    -> north_room_3
* [Go to outer room 1]
    -> outer_room_1

=== east_archive ===
You are in the east archive area of the ancient vault complex.
* [Go to south room 1]
    -> south_room_1
* [Go to west room 7]
    -> west_room_7
* [Go to south room 7]
    -> south_room_7
* [Go to deep archive]
    -> deep_archive
* [Go to north room 4]
    -> north_room_4
* [Go to outer room 2]
    -> outer_room_2

=== west_hub ===
You are in the west hub area of the ancient vault complex.
* [Go to south room 2]
    -> south_room_2
* [Go to west room 8]
    -> west_room_8
* [Go to START]
    -> START
* [Go to upper hub]
    -> upper_hub
* [Go to north room 5]
    -> north_room_5
* [Go to outer room 3]
    -> outer_room_3

=== west_room_1 ===
You are in the west room 1 area of the ancient vault complex.
* [Go to south room 3]
    -> south_room_3
* [Go to west search]
    -> west_search
* [Go to north hub]
    -> north_hub
* [Go to upper room 1]
    -> upper_room_1
* [Go to north room 6]
    -> north_room_6
* [Go to outer room 4]
    -> outer_room_4

=== west_room_2 ===
You are in the west room 2 area of the ancient vault complex.
* [Go to south room 4]
    -> south_room_4
* [Go to west archive]
    -> west_archive
* [Go to north room 1]
    -> north_room_1
* [Go to upper room 2]
    -> upper_room_2
* [Go to north room 7]
    -> north_room_7
* [Go to outer room 5]
    -> outer_room_5

=== west_room_3 ===
You are in the west room 3 area of the ancient vault complex.
* [Go to south room 5]
    -> south_room_5
* [Go to deep hub]
    -> deep_hub
* [Go to north room 2]
    -> north_room_2
* [Go to upper room 3]
    -> upper_room_3
* [Go to north room 8]
    -> north_room_8
* [Go to outer room 6]
    -> outer_room_6

=== west_room_4 ===
You are in the west room 4 area of the ancient vault complex.
* [Go to south room 6]
    -> south_room_6
* [Go to deep room 1]
    -> deep_room_1
* [Go to north room 3]
    -> north_room_3
* [Go to upper room 4]
    -> upper_room_4
* [Go to north search]
    -> north_search
* [Go to outer room 7]
    -> outer_room_7

=== west_room_5 ===
You are in the west room 5 area of the ancient vault complex.
* [Go to south room 7]
    -> south_room_7
* [Go to deep room 2]
    -> deep_room_2
* [Go to north room 4]
    -> north_room_4
* [Go to upper room 5]
    -> upper_room_5
* [Go to north archive]
    -> north_archive
* [Go to outer room 8]
    -> outer_room_8

=== west_room_6 ===
You are in the west room 6 area of the ancient vault complex.
* [Go to START]
    -> START
* [Go to deep room 3]
    -> deep_room_3
* [Go to north room 5]
    -> north_room_5
* [Go to upper room 6]
    -> upper_room_6
* [Go to south hub]
    -> south_hub
* [Go to outer search]
    -> outer_search

=== west_room_7 ===
You are in the west room 7 area of the ancient vault complex.
* [Go to north hub]
    -> north_hub
* [Go to deep room 4]
    -> deep_room_4
* [Go to north room 6]
    -> north_room_6
* [Go to upper room 7]
    -> upper_room_7
* [Go to south room 1]
    -> south_room_1
* [Go to outer archive]
    -> outer_archive

=== west_room_8 ===
You are in the west room 8 area of the ancient vault complex.
* [Go to north room 1]
    -> north_room_1
* [Go to deep room 5]
    -> deep_room_5
* [Go to north room 7]
    -> north_room_7
* [Go to upper room 8]
    -> upper_room_8
* [Go to south room 2]
    -> south_room_2
* [Go to inner hub]
    -> inner_hub

=== west_search ===
You are in the west search area of the ancient vault complex.
* [Search and find the has rope]
    ~ has_rope = true
    -> north_room_2
* [Go to deep room 6]
    -> deep_room_6
* [Go to north room 8]
    -> north_room_8
* [Go to upper search]
    -> upper_search
* [Go to south room 3]
    -> south_room_3
* [Go to inner room 1]
    -> inner_room_1

=== west_archive ===
You are in the west archive area of the ancient vault complex.
* [Go to north room 3]
    -> north_room_3
* [Go to deep room 7]
    -> deep_room_7
* [Go to north search]
    -> north_search
* [Go to upper archive]
    -> upper_archive
* [Go to south room 4]
    -> south_room_4
* [Go to inner room 2]
    -> inner_room_2

=== deep_hub ===
You are in the deep hub area of the ancient vault complex.
* [Go to north room 4]
    -> north_room_4
* [Go to deep room 8]
    -> deep_room_8
* [Go to north archive]
    -> north_archive
* [Go to outer hub]
    -> outer_hub
* [Go to south room 5]
    -> south_room_5
* [Go to inner room 3]
    -> inner_room_3

=== deep_room_1 ===
You are in the deep room 1 area of the ancient vault complex.
* [Go to north room 5]
    -> north_room_5
* [Go to deep search]
    -> deep_search
* [Go to south hub]
    -> south_hub
* [Go to outer room 1]
    -> outer_room_1
* [Go to south room 6]
    -> south_room_6
* [Go to inner room 4]
    -> inner_room_4

=== deep_room_2 ===
You are in the deep room 2 area of the ancient vault complex.
* [Go to north room 6]
    -> north_room_6
* [Go to deep archive]
    -> deep_archive
* [Go to south room 1]
    -> south_room_1
* [Go to outer room 2]
    -> outer_room_2
* [Go to south room 7]
    -> south_room_7
* [Go to inner room 5]
    -> inner_room_5

=== deep_room_3 ===
You are in the deep room 3 area of the ancient vault complex.
* [Go to north room 7]
    -> north_room_7
* [Go to upper hub]
    -> upper_hub
* [Go to south room 2]
    -> south_room_2
* [Go to outer room 3]
    -> outer_room_3
* [Go to START]
    -> START
* [Go to inner room 6]
    -> inner_room_6

=== deep_room_4 ===
You are in the deep room 4 area of the ancient vault complex.
* [Go to north room 8]
    -> north_room_8
* [Go to upper room 1]
    -> upper_room_1
* [Go to south room 3]
    -> south_room_3
* [Go to outer room 4]
    -> outer_room_4
* [Go to north hub]
    -> north_hub
* [Go to inner room 7]
    -> inner_room_7

=== deep_room_5 ===
You are in the deep room 5 area of the ancient vault complex.
* [Go to north search]
    -> north_search
* [Go to upper room 2]
    -> upper_room_2
* [Go to south room 4]
    -> south_room_4
* [Go to outer room 5]
    -> outer_room_5
* [Go to north room 1]
    -> north_room_1
* [Go to inner room 8]
    -> inner_room_8

=== deep_room_6 ===
You are in the deep room 6 area of the ancient vault complex.
* [Go to north archive]
    -> north_archive
* [Go to upper room 3]
    -> upper_room_3
* [Go to south room 5]
    -> south_room_5
* [Go to outer room 6]
    -> outer_room_6
* [Go to north room 2]
    -> north_room_2
* [Go to inner search]
    -> inner_search

=== deep_room_7 ===
You are in the deep room 7 area of the ancient vault complex.
* [Go to south hub]
    -> south_hub
* [Go to upper room 4]
    -> upper_room_4
* [Go to south room 6]
    -> south_room_6
* [Go to outer room 7]
    -> outer_room_7
* [Go to north room 3]
    -> north_room_3
* [Go to inner archive]
    -> inner_archive

=== deep_room_8 ===
You are in the deep room 8 area of the ancient vault complex.
* [Go to south room 1]
    -> south_room_1
* [Go to upper room 5]
    -> upper_room_5
* [Go to south room 7]
    -> south_room_7
* [Go to outer room 8]
    -> outer_room_8
* [Go to north room 4]
    -> north_room_4
* [Go to corridor 1]
    -> corridor_1

=== deep_search ===
You are in the deep search area of the ancient vault complex.
* [Search and find the found seal]
    ~ found_seal = true
    -> south_room_2
* [Go to upper room 6]
    -> upper_room_6
* [Go to START]
    -> START
* [Go to outer search]
    -> outer_search
* [Go to north room 5]
    -> north_room_5
* [Go to junction 1]
    -> junction_1

=== deep_archive ===
You are in the deep archive area of the ancient vault complex.
* [Go to south room 3]
    -> south_room_3
* [Go to upper room 7]
    -> upper_room_7
* [Go to north hub]
    -> north_hub
* [Go to outer archive]
    -> outer_archive
* [Go to north room 6]
    -> north_room_6
* [Go to passage 1]
    -> passage_1

=== upper_hub ===
You are in the upper hub area of the ancient vault complex.
* [Go to south room 4]
    -> south_room_4
* [Go to upper room 8]
    -> upper_room_8
* [Go to north room 1]
    -> north_room_1
* [Go to inner hub]
    -> inner_hub
* [Go to north room 7]
    -> north_room_7
* [Go to corridor 2]
    -> corridor_2

=== upper_room_1 ===
You are in the upper room 1 area of the ancient vault complex.
* [Go to south room 5]
    -> south_room_5
* [Go to upper search]
    -> upper_search
* [Go to north room 2]
    -> north_room_2
* [Go to inner room 1]
    -> inner_room_1
* [Go to north room 8]
    -> north_room_8
* [Go to junction 2]
    -> junction_2

=== upper_room_2 ===
You are in the upper room 2 area of the ancient vault complex.
* [Go to south room 6]
    -> south_room_6
* [Go to upper archive]
    -> upper_archive
* [Go to north room 3]
    -> north_room_3
* [Go to inner room 2]
    -> inner_room_2
* [Go to north search]
    -> north_search
* [Go to passage 2]
    -> passage_2

=== upper_room_3 ===
You are in the upper room 3 area of the ancient vault complex.
* [Go to south room 7]
    -> south_room_7
* [Go to outer hub]
    -> outer_hub
* [Go to north room 4]
    -> north_room_4
* [Go to inner room 3]
    -> inner_room_3
* [Go to north archive]
    -> north_archive
* [Go to corridor 3]
    -> corridor_3

=== upper_room_4 ===
You are in the upper room 4 area of the ancient vault complex.
* [Go to START]
    -> START
* [Go to outer room 1]
    -> outer_room_1
* [Go to north room 5]
    -> north_room_5
* [Go to inner room 4]
    -> inner_room_4
* [Go to south hub]
    -> south_hub
* [Go to junction 3]
    -> junction_3

=== upper_room_5 ===
You are in the upper room 5 area of the ancient vault complex.
* [Go to north hub]
    -> north_hub
* [Go to outer room 2]
    -> outer_room_2
* [Go to north room 6]
    -> north_room_6
* [Go to inner room 5]
    -> inner_room_5
* [Go to south room 1]
    -> south_room_1
* [Go to passage 3]
    -> passage_3

=== upper_room_6 ===
You are in the upper room 6 area of the ancient vault complex.
* [Go to north room 1]
    -> north_room_1
* [Go to outer room 3]
    -> outer_room_3
* [Go to north room 7]
    -> north_room_7
* [Go to inner room 6]
    -> inner_room_6
* [Go to south room 2]
    -> south_room_2
* [Go to corridor 4]
    -> corridor_4

=== upper_room_7 ===
You are in the upper room 7 area of the ancient vault complex.
* [Go to north room 2]
    -> north_room_2
* [Go to outer room 4]
    -> outer_room_4
* [Go to north room 8]
    -> north_room_8
* [Go to inner room 7]
    -> inner_room_7
* [Go to south room 3]
    -> south_room_3
* [Go to junction 4]
    -> junction_4

=== upper_room_8 ===
You are in the upper room 8 area of the ancient vault complex.
* [Go to north room 3]
    -> north_room_3
* [Go to outer room 5]
    -> outer_room_5
* [Go to north search]
    -> north_search
* [Go to inner room 8]
    -> inner_room_8
* [Go to south room 4]
    -> south_room_4
* [Go to passage 4]
    -> passage_4

=== upper_search ===
You are in the upper search area of the ancient vault complex.
* [Search and find the has key]
    ~ has_key = true
    -> north_room_4
* [Go to outer room 6]
    -> outer_room_6
* [Go to north archive]
    -> north_archive
* [Go to inner search]
    -> inner_search
* [Go to south room 5]
    -> south_room_5
* [Go to corridor 5]
    -> corridor_5

=== upper_archive ===
You are in the upper archive area of the ancient vault complex.
* [Go to north room 5]
    -> north_room_5
* [Go to outer room 7]
    -> outer_room_7
* [Go to south hub]
    -> south_hub
* [Go to inner archive]
    -> inner_archive
* [Go to south room 6]
    -> south_room_6
* [Go to junction 5]
    -> junction_5

=== outer_hub ===
You are in the outer hub area of the ancient vault complex.
* [Go to north room 6]
    -> north_room_6
* [Go to outer room 8]
    -> outer_room_8
* [Go to south room 1]
    -> south_room_1
* [Go to corridor 1]
    -> corridor_1
* [Go to south room 7]
    -> south_room_7
* [Go to passage 5]
    -> passage_5

=== outer_room_1 ===
You are in the outer room 1 area of the ancient vault complex.
* [Go to north room 7]
    -> north_room_7
* [Go to outer search]
    -> outer_search
* [Go to south room 2]
    -> south_room_2
* [Go to junction 1]
    -> junction_1
* [Go to START]
    -> START
* [Go to corridor 6]
    -> corridor_6

=== outer_room_2 ===
You are in the outer room 2 area of the ancient vault complex.
* [Go to north room 8]
    -> north_room_8
* [Go to outer archive]
    -> outer_archive
* [Go to south room 3]
    -> south_room_3
* [Go to passage 1]
    -> passage_1
* [Go to north hub]
    -> north_hub
* [Go to junction 6]
    -> junction_6

=== outer_room_3 ===
You are in the outer room 3 area of the ancient vault complex.
* [Go to north search]
    -> north_search
* [Go to inner hub]
    -> inner_hub
* [Go to south room 4]
    -> south_room_4
* [Go to corridor 2]
    -> corridor_2
* [Go to north room 1]
    -> north_room_1
* [Go to passage 6]
    -> passage_6

=== outer_room_4 ===
You are in the outer room 4 area of the ancient vault complex.
* [Go to north archive]
    -> north_archive
* [Go to inner room 1]
    -> inner_room_1
* [Go to south room 5]
    -> south_room_5
* [Go to junction 2]
    -> junction_2
* [Go to north room 2]
    -> north_room_2
* [Go to corridor 7]
    -> corridor_7

=== outer_room_5 ===
You are in the outer room 5 area of the ancient vault complex.
* [Go to south hub]
    -> south_hub
* [Go to inner room 2]
    -> inner_room_2
* [Go to south room 6]
    -> south_room_6
* [Go to passage 2]
    -> passage_2
* [Go to north room 3]
    -> north_room_3
* [Go to junction 7]
    -> junction_7

=== outer_room_6 ===
You are in the outer room 6 area of the ancient vault complex.
* [Go to south room 1]
    -> south_room_1
* [Go to inner room 3]
    -> inner_room_3
* [Go to south room 7]
    -> south_room_7
* [Go to corridor 3]
    -> corridor_3
* [Go to north room 4]
    -> north_room_4
* [Go to passage 7]
    -> passage_7

=== outer_room_7 ===
You are in the outer room 7 area of the ancient vault complex.
* [Go to south room 2]
    -> south_room_2
* [Go to inner room 4]
    -> inner_room_4
* [Go to START]
    -> START
* [Go to junction 3]
    -> junction_3
* [Go to north room 5]
    -> north_room_5
* [Go to corridor 8]
    -> corridor_8

=== outer_room_8 ===
You are in the outer room 8 area of the ancient vault complex.
* [Go to south room 3]
    -> south_room_3
* [Go to inner room 5]
    -> inner_room_5
* [Go to north hub]
    -> north_hub
* [Go to passage 3]
    -> passage_3
* [Go to north room 6]
    -> north_room_6
* [Go to junction 8]
    -> junction_8

=== outer_search ===
You are in the outer search area of the ancient vault complex.
* [Search and find the has map]
    ~ has_map = true
    -> south_room_4
* [Go to inner room 6]
    -> inner_room_6
* [Go to north room 1]
    -> north_room_1
* [Go to corridor 4]
    -> corridor_4
* [Go to north room 7]
    -> north_room_7
* [Go to passage 8]
    -> passage_8

=== outer_archive ===
You are in the outer archive area of the ancient vault complex.
* [Go to south room 5]
    -> south_room_5
* [Go to inner room 7]
    -> inner_room_7
* [Go to north room 2]
    -> north_room_2
* [Go to junction 4]
    -> junction_4
* [Go to north room 8]
    -> north_room_8
* [Go to corridor 9]
    -> corridor_9

=== inner_hub ===
You are in the inner hub area of the ancient vault complex.
* [Go to south room 6]
    -> south_room_6
* [Go to inner room 8]
    -> inner_room_8
* [Go to north room 3]
    -> north_room_3
* [Go to passage 4]
    -> passage_4
* [Go to north search]
    -> north_search
* [Go to junction 9]
    -> junction_9

=== inner_room_1 ===
You are in the inner room 1 area of the ancient vault complex.
* [Go to south room 7]
    -> south_room_7
* [Go to inner search]
    -> inner_search
* [Go to north room 4]
    -> north_room_4
* [Go to corridor 5]
    -> corridor_5
* [Go to north archive]
    -> north_archive
* [Go to passage 9]
    -> passage_9

=== inner_room_2 ===
You are in the inner room 2 area of the ancient vault complex.
* [Go to START]
    -> START
* [Go to inner archive]
    -> inner_archive
* [Go to north room 5]
    -> north_room_5
* [Go to junction 5]
    -> junction_5
* [Go to south hub]
    -> south_hub
* [Go to corridor 10]
    -> corridor_10

=== inner_room_3 ===
You are in the inner room 3 area of the ancient vault complex.
* [Go to north hub]
    -> north_hub
* [Go to corridor 1]
    -> corridor_1
* [Go to north room 6]
    -> north_room_6
* [Go to passage 5]
    -> passage_5
* [Go to south room 1]
    -> south_room_1
* [Go to junction 10]
    -> junction_10

=== inner_room_4 ===
You are in the inner room 4 area of the ancient vault complex.
* [Go to north room 1]
    -> north_room_1
* [Go to junction 1]
    -> junction_1
* [Go to north room 7]
    -> north_room_7
* [Go to corridor 6]
    -> corridor_6
* [Go to south room 2]
    -> south_room_2
* [Go to passage 10]
    -> passage_10

=== inner_room_5 ===
You are in the inner room 5 area of the ancient vault complex.
* [Go to north room 2]
    -> north_room_2
* [Go to passage 1]
    -> passage_1
* [Go to north room 8]
    -> north_room_8
* [Go to junction 6]
    -> junction_6
* [Go to south room 3]
    -> south_room_3
* [Go to corridor 11]
    -> corridor_11

=== inner_room_6 ===
You are in the inner room 6 area of the ancient vault complex.
* [Go to north room 3]
    -> north_room_3
* [Go to corridor 2]
    -> corridor_2
* [Go to north search]
    -> north_search
* [Go to passage 6]
    -> passage_6
* [Go to south room 4]
    -> south_room_4
* [Go to junction 11]
    -> junction_11

=== inner_room_7 ===
You are in the inner room 7 area of the ancient vault complex.
* [Go to north room 4]
    -> north_room_4
* [Go to junction 2]
    -> junction_2
* [Go to north archive]
    -> north_archive
* [Go to corridor 7]
    -> corridor_7
* [Go to south room 5]
    -> south_room_5
* [Go to passage 11]
    -> passage_11

=== inner_room_8 ===
You are in the inner room 8 area of the ancient vault complex.
* [Go to north room 5]
    -> north_room_5
* [Go to passage 2]
    -> passage_2
* [Go to south hub]
    -> south_hub
* [Go to junction 7]
    -> junction_7
* [Go to south room 6]
    -> south_room_6
* [Go to corridor 12]
    -> corridor_12

=== inner_search ===
You are in the inner search area of the ancient vault complex.
* [Search and find the opened gate]
    ~ opened_gate = true
    -> north_room_6
* [Go to corridor 3]
    -> corridor_3
* [Go to south room 1]
    -> south_room_1
* [Go to passage 7]
    -> passage_7
* [Go to south room 7]
    -> south_room_7
* [Go to junction 12]
    -> junction_12

=== inner_archive ===
You are in the inner archive area of the ancient vault complex.
* [Go to north room 7]
    -> north_room_7
* [Go to junction 3]
    -> junction_3
* [Go to south room 2]
    -> south_room_2
* [Go to corridor 8]
    -> corridor_8
* [Go to START]
    -> START
* [Go to passage 12]
    -> passage_12

=== corridor_1 ===
You are in the corridor 1 area of the ancient vault complex.
* [Go to north room 8]
    -> north_room_8
* [Go to passage 3]
    -> passage_3
* [Go to south room 3]
    -> south_room_3
* [Go to junction 8]
    -> junction_8
* [Go to north hub]
    -> north_hub
* [Go to corridor 13]
    -> corridor_13

=== junction_1 ===
You are in the junction 1 area of the ancient vault complex.
* [Go to north search]
    -> north_search
* [Go to corridor 4]
    -> corridor_4
* [Go to south room 4]
    -> south_room_4
* [Go to passage 8]
    -> passage_8
* [Go to north room 1]
    -> north_room_1
* [Go to junction 13]
    -> junction_13

=== passage_1 ===
You are in the passage 1 area of the ancient vault complex.
* [Go to north archive]
    -> north_archive
* [Go to junction 4]
    -> junction_4
* [Go to south room 5]
    -> south_room_5
* [Go to corridor 9]
    -> corridor_9
* [Go to north room 2]
    -> north_room_2
* [Go to passage 13]
    -> passage_13

=== corridor_2 ===
You are in the corridor 2 area of the ancient vault complex.
* [Go to south hub]
    -> south_hub
* [Go to passage 4]
    -> passage_4
* [Go to south room 6]
    -> south_room_6
* [Go to junction 9]
    -> junction_9
* [Go to north room 3]
    -> north_room_3
* [Go to corridor 14]
    -> corridor_14

=== junction_2 ===
You are in the junction 2 area of the ancient vault complex.
* [Go to south room 1]
    -> south_room_1
* [Go to corridor 5]
    -> corridor_5
* [Go to south room 7]
    -> south_room_7
* [Go to passage 9]
    -> passage_9
* [Go to north room 4]
    -> north_room_4
* [Go to junction 14]
    -> junction_14

=== passage_2 ===
You are in the passage 2 area of the ancient vault complex.
* [Go to south room 2]
    -> south_room_2
* [Go to junction 5]
    -> junction_5
* [Go to START]
    -> START
* [Go to corridor 10]
    -> corridor_10
* [Go to north room 5]
    -> north_room_5
* [Go to passage 14]
    -> passage_14

=== corridor_3 ===
You are in the corridor 3 area of the ancient vault complex.
* [Go to south room 3]
    -> south_room_3
* [Go to passage 5]
    -> passage_5
* [Go to north hub]
    -> north_hub
* [Go to junction 10]
    -> junction_10
* [Go to north room 6]
    -> north_room_6
* [Go to corridor 15]
    -> corridor_15

=== junction_3 ===
You are in the junction 3 area of the ancient vault complex.
* [Go to south room 4]
    -> south_room_4
* [Go to corridor 6]
    -> corridor_6
* [Go to north room 1]
    -> north_room_1
* [Go to passage 10]
    -> passage_10
* [Go to north room 7]
    -> north_room_7
* [Go to junction 15]
    -> junction_15

=== passage_3 ===
You are in the passage 3 area of the ancient vault complex.
* [Go to south room 5]
    -> south_room_5
* [Go to junction 6]
    -> junction_6
* [Go to north room 2]
    -> north_room_2
* [Go to corridor 11]
    -> corridor_11
* [Go to north room 8]
    -> north_room_8
* [Go to passage 15]
    -> passage_15

=== corridor_4 ===
You are in the corridor 4 area of the ancient vault complex.
* [Go to south room 6]
    -> south_room_6
* [Go to passage 6]
    -> passage_6
* [Go to north room 3]
    -> north_room_3
* [Go to junction 11]
    -> junction_11
* [Go to north search]
    -> north_search
* [Go to corridor 16]
    -> corridor_16

=== junction_4 ===
You are in the junction 4 area of the ancient vault complex.
* [Go to south room 7]
    -> south_room_7
* [Go to corridor 7]
    -> corridor_7
* [Go to north room 4]
    -> north_room_4
* [Go to passage 11]
    -> passage_11
* [Go to north archive]
    -> north_archive
* [Go to junction 16]
    -> junction_16

=== passage_4 ===
You are in the passage 4 area of the ancient vault complex.
* [Go to START]
    -> START
* [Go to junction 7]
    -> junction_7
* [Go to north room 5]
    -> north_room_5
* [Go to corridor 12]
    -> corridor_12
* [Go to south hub]
    -> south_hub
* [Go to passage 16]
    -> passage_16

=== corridor_5 ===
You are in the corridor 5 area of the ancient vault complex.
* [Go to north hub]
    -> north_hub
* [Go to passage 7]
    -> passage_7
* [Go to north room 6]
    -> north_room_6
* [Go to junction 12]
    -> junction_12
* [Go to south room 1]
    -> south_room_1
* [Go to corridor 17]
    -> corridor_17

=== junction_5 ===
You are in the junction 5 area of the ancient vault complex.
* [Go to north room 1]
    -> north_room_1
* [Go to corridor 8]
    -> corridor_8
* [Go to north room 7]
    -> north_room_7
* [Go to passage 12]
    -> passage_12
* [Go to south room 2]
    -> south_room_2
* [Go to junction 17]
    -> junction_17

=== passage_5 ===
You are in the passage 5 area of the ancient vault complex.
* [Go to north room 2]
    -> north_room_2
* [Go to junction 8]
    -> junction_8
* [Go to north room 8]
    -> north_room_8
* [Go to corridor 13]
    -> corridor_13
* [Go to south room 3]
    -> south_room_3
* [Go to passage 17]
    -> passage_17

=== corridor_6 ===
You are in the corridor 6 area of the ancient vault complex.
* [Go to north room 3]
    -> north_room_3
* [Go to passage 8]
    -> passage_8
* [Go to north search]
    -> north_search
* [Go to junction 13]
    -> junction_13
* [Go to south room 4]
    -> south_room_4
* [Go to corridor 18]
    -> corridor_18

=== junction_6 ===
You are in the junction 6 area of the ancient vault complex.
* [Go to north room 4]
    -> north_room_4
* [Go to corridor 9]
    -> corridor_9
* [Go to north archive]
    -> north_archive
* [Go to passage 13]
    -> passage_13
* [Go to south room 5]
    -> south_room_5
* [Go to junction 18]
    -> junction_18

=== passage_6 ===
You are in the passage 6 area of the ancient vault complex.
* [Go to north room 5]
    -> north_room_5
* [Go to junction 9]
    -> junction_9
* [Go to south hub]
    -> south_hub
* [Go to corridor 14]
    -> corridor_14
* [Go to south room 6]
    -> south_room_6
* [Go to passage 18]
    -> passage_18

=== corridor_7 ===
You are in the corridor 7 area of the ancient vault complex.
* [Go to north room 6]
    -> north_room_6
* [Go to passage 9]
    -> passage_9
* [Go to south room 1]
    -> south_room_1
* [Go to junction 14]
    -> junction_14
* [Go to south room 7]
    -> south_room_7
* [Go to corridor 19]
    -> corridor_19

=== junction_7 ===
You are in the junction 7 area of the ancient vault complex.
* [Go to north room 7]
    -> north_room_7
* [Go to corridor 10]
    -> corridor_10
* [Go to south room 2]
    -> south_room_2
* [Go to passage 14]
    -> passage_14
* [Go to START]
    -> START
* [Go to junction 19]
    -> junction_19

=== passage_7 ===
You are in the passage 7 area of the ancient vault complex.
* [Go to north room 8]
    -> north_room_8
* [Go to junction 10]
    -> junction_10
* [Go to south room 3]
    -> south_room_3
* [Go to corridor 15]
    -> corridor_15
* [Go to north hub]
    -> north_hub
* [Go to passage 19]
    -> passage_19

=== corridor_8 ===
You are in the corridor 8 area of the ancient vault complex.
* [Go to north search]
    -> north_search
* [Go to passage 10]
    -> passage_10
* [Go to south room 4]
    -> south_room_4
* [Go to junction 15]
    -> junction_15
* [Go to north room 1]
    -> north_room_1
* [Go to corridor 20]
    -> corridor_20

=== junction_8 ===
You are in the junction 8 area of the ancient vault complex.
* [Go to north archive]
    -> north_archive
* [Go to corridor 11]
    -> corridor_11
* [Go to south room 5]
    -> south_room_5
* [Go to passage 15]
    -> passage_15
* [Go to north room 2]
    -> north_room_2
* [Go to junction 20]
    -> junction_20

=== passage_8 ===
You are in the passage 8 area of the ancient vault complex.
* [Go to south hub]
    -> south_hub
* [Go to junction 11]
    -> junction_11
* [Go to south room 6]
    -> south_room_6
* [Go to corridor 16]
    -> corridor_16
* [Go to north room 3]
    -> north_room_3
* [Go to passage 20]
    -> passage_20

=== corridor_9 ===
You are in the corridor 9 area of the ancient vault complex.
* [Go to south room 1]
    -> south_room_1
* [Go to passage 11]
    -> passage_11
* [Go to south room 7]
    -> south_room_7
* [Go to junction 16]
    -> junction_16
* [Go to north room 4]
    -> north_room_4
* [Go to corridor 21]
    -> corridor_21

=== junction_9 ===
You are in the junction 9 area of the ancient vault complex.
* [Go to south room 2]
    -> south_room_2
* [Go to corridor 12]
    -> corridor_12
* [Go to START]
    -> START
* [Go to passage 16]
    -> passage_16
* [Go to north room 5]
    -> north_room_5
* [Go to junction 21]
    -> junction_21

=== passage_9 ===
You are in the passage 9 area of the ancient vault complex.
* [Go to south room 3]
    -> south_room_3
* [Go to junction 12]
    -> junction_12
* [Go to north hub]
    -> north_hub
* [Go to corridor 17]
    -> corridor_17
* [Go to north room 6]
    -> north_room_6
* [Go to passage 21]
    -> passage_21

=== corridor_10 ===
You are in the corridor 10 area of the ancient vault complex.
* [Go to south room 4]
    -> south_room_4
* [Go to passage 12]
    -> passage_12
* [Go to north room 1]
    -> north_room_1
* [Go to junction 17]
    -> junction_17
* [Go to north room 7]
    -> north_room_7
* [Go to corridor 22]
    -> corridor_22

=== junction_10 ===
You are in the junction 10 area of the ancient vault complex.
* [Go to south room 5]
    -> south_room_5
* [Go to corridor 13]
    -> corridor_13
* [Go to north room 2]
    -> north_room_2
* [Go to passage 17]
    -> passage_17
* [Go to north room 8]
    -> north_room_8
* [Go to junction 22]
    -> junction_22

=== passage_10 ===
You are in the passage 10 area of the ancient vault complex.
* [Go to south room 6]
    -> south_room_6
* [Go to junction 13]
    -> junction_13
* [Go to north room 3]
    -> north_room_3
* [Go to corridor 18]
    -> corridor_18
* [Go to north search]
    -> north_search
* [Go to passage 22]
    -> passage_22

=== corridor_11 ===
You are in the corridor 11 area of the ancient vault complex.
* [Go to south room 7]
    -> south_room_7
* [Go to passage 13]
    -> passage_13
* [Go to north room 4]
    -> north_room_4
* [Go to junction 18]
    -> junction_18
* [Go to north archive]
    -> north_archive
* [Go to corridor 23]
    -> corridor_23

=== junction_11 ===
You are in the junction 11 area of the ancient vault complex.
* [Go to START]
    -> START
* [Go to corridor 14]
    -> corridor_14
* [Go to north room 5]
    -> north_room_5
* [Go to passage 18]
    -> passage_18
* [Go to south hub]
    -> south_hub
* [Go to junction 23]
    -> junction_23

=== passage_11 ===
You are in the passage 11 area of the ancient vault complex.
* [Go to north hub]
    -> north_hub
* [Go to junction 14]
    -> junction_14
* [Go to north room 6]
    -> north_room_6
* [Go to corridor 19]
    -> corridor_19
* [Go to south room 1]
    -> south_room_1
* [Go to passage 23]
    -> passage_23

=== corridor_12 ===
You are in the corridor 12 area of the ancient vault complex.
* [Go to north room 1]
    -> north_room_1
* [Go to passage 14]
    -> passage_14
* [Go to north room 7]
    -> north_room_7
* [Go to junction 19]
    -> junction_19
* [Go to south room 2]
    -> south_room_2
* [Go to corridor 24]
    -> corridor_24

=== junction_12 ===
You are in the junction 12 area of the ancient vault complex.
* [Go to north room 2]
    -> north_room_2
* [Go to corridor 15]
    -> corridor_15
* [Go to north room 8]
    -> north_room_8
* [Go to passage 19]
    -> passage_19
* [Go to south room 3]
    -> south_room_3
* [Go to junction 24]
    -> junction_24

=== passage_12 ===
You are in the passage 12 area of the ancient vault complex.
* [Go to north room 3]
    -> north_room_3
* [Go to junction 15]
    -> junction_15
* [Go to north search]
    -> north_search
* [Go to corridor 20]
    -> corridor_20
* [Go to south room 4]
    -> south_room_4
* [Go to passage 24]
    -> passage_24

=== corridor_13 ===
You are in the corridor 13 area of the ancient vault complex.
* [Go to north room 4]
    -> north_room_4
* [Go to passage 15]
    -> passage_15
* [Go to north archive]
    -> north_archive
* [Go to junction 20]
    -> junction_20
* [Go to south room 5]
    -> south_room_5
* [Go to corridor 25]
    -> corridor_25

=== junction_13 ===
You are in the junction 13 area of the ancient vault complex.
* [Go to north room 5]
    -> north_room_5
* [Go to corridor 16]
    -> corridor_16
* [Go to south hub]
    -> south_hub
* [Go to passage 20]
    -> passage_20
* [Go to south room 6]
    -> south_room_6
* [Go to junction 25]
    -> junction_25

=== passage_13 ===
You are in the passage 13 area of the ancient vault complex.
* [Go to north room 6]
    -> north_room_6
* [Go to junction 16]
    -> junction_16
* [Go to south room 1]
    -> south_room_1
* [Go to corridor 21]
    -> corridor_21
* [Go to south room 7]
    -> south_room_7
* [Go to passage 25]
    -> passage_25

=== corridor_14 ===
You are in the corridor 14 area of the ancient vault complex.
* [Go to north room 7]
    -> north_room_7
* [Go to passage 16]
    -> passage_16
* [Go to south room 2]
    -> south_room_2
* [Go to junction 21]
    -> junction_21
* [Go to START]
    -> START
* [Go to corridor 26]
    -> corridor_26

=== junction_14 ===
You are in the junction 14 area of the ancient vault complex.
* [Go to north room 8]
    -> north_room_8
* [Go to corridor 17]
    -> corridor_17
* [Go to south room 3]
    -> south_room_3
* [Go to passage 21]
    -> passage_21
* [Go to north hub]
    -> north_hub
* [Go to junction 26]
    -> junction_26

=== passage_14 ===
You are in the passage 14 area of the ancient vault complex.
* [Go to north search]
    -> north_search
* [Go to junction 17]
    -> junction_17
* [Go to south room 4]
    -> south_room_4
* [Go to corridor 22]
    -> corridor_22
* [Go to north room 1]
    -> north_room_1
* [Go to passage 26]
    -> passage_26

=== corridor_15 ===
You are in the corridor 15 area of the ancient vault complex.
* [Go to north archive]
    -> north_archive
* [Go to passage 17]
    -> passage_17
* [Go to south room 5]
    -> south_room_5
* [Go to junction 22]
    -> junction_22
* [Go to north room 2]
    -> north_room_2
* [Go to corridor 27]
    -> corridor_27

=== junction_15 ===
You are in the junction 15 area of the ancient vault complex.
* [Go to south hub]
    -> south_hub
* [Go to corridor 18]
    -> corridor_18
* [Go to south room 6]
    -> south_room_6
* [Go to passage 22]
    -> passage_22
* [Go to north room 3]
    -> north_room_3
* [Go to junction 27]
    -> junction_27

=== passage_15 ===
You are in the passage 15 area of the ancient vault complex.
* [Go to south room 1]
    -> south_room_1
* [Go to junction 18]
    -> junction_18
* [Go to south room 7]
    -> south_room_7
* [Go to corridor 23]
    -> corridor_23
* [Go to north room 4]
    -> north_room_4
* [Go to passage 27]
    -> passage_27

=== corridor_16 ===
You are in the corridor 16 area of the ancient vault complex.
* [Go to south room 2]
    -> south_room_2
* [Go to passage 18]
    -> passage_18
* [Go to START]
    -> START
* [Go to junction 23]
    -> junction_23
* [Go to north room 5]
    -> north_room_5
* [Go to corridor 28]
    -> corridor_28

=== junction_16 ===
You are in the junction 16 area of the ancient vault complex.
* [Go to south room 3]
    -> south_room_3
* [Go to corridor 19]
    -> corridor_19
* [Go to north hub]
    -> north_hub
* [Go to passage 23]
    -> passage_23
* [Go to north room 6]
    -> north_room_6
* [Go to junction 28]
    -> junction_28

=== passage_16 ===
You are in the passage 16 area of the ancient vault complex.
* [Go to south room 4]
    -> south_room_4
* [Go to junction 19]
    -> junction_19
* [Go to north room 1]
    -> north_room_1
* [Go to corridor 24]
    -> corridor_24
* [Go to north room 7]
    -> north_room_7
* [Go to passage 28]
    -> passage_28

=== corridor_17 ===
You are in the corridor 17 area of the ancient vault complex.
* [Go to south room 5]
    -> south_room_5
* [Go to passage 19]
    -> passage_19
* [Go to north room 2]
    -> north_room_2
* [Go to junction 24]
    -> junction_24
* [Go to north room 8]
    -> north_room_8
* [Go to corridor 29]
    -> corridor_29

=== junction_17 ===
You are in the junction 17 area of the ancient vault complex.
* [Go to south room 6]
    -> south_room_6
* [Go to corridor 20]
    -> corridor_20
* [Go to north room 3]
    -> north_room_3
* [Go to passage 24]
    -> passage_24
* [Go to north search]
    -> north_search
* [Go to junction 29]
    -> junction_29

=== passage_17 ===
You are in the passage 17 area of the ancient vault complex.
* [Go to south room 7]
    -> south_room_7
* [Go to junction 20]
    -> junction_20
* [Go to north room 4]
    -> north_room_4
* [Go to corridor 25]
    -> corridor_25
* [Go to north archive]
    -> north_archive
* [Go to passage 29]
    -> passage_29

=== corridor_18 ===
You are in the corridor 18 area of the ancient vault complex.
* [Go to START]
    -> START
* [Go to passage 20]
    -> passage_20
* [Go to north room 5]
    -> north_room_5
* [Go to junction 25]
    -> junction_25
* [Go to south hub]
    -> south_hub
* [Go to corridor 30]
    -> corridor_30

=== junction_18 ===
You are in the junction 18 area of the ancient vault complex.
* [Go to north hub]
    -> north_hub
* [Go to corridor 21]
    -> corridor_21
* [Go to north room 6]
    -> north_room_6
* [Go to passage 25]
    -> passage_25
* [Go to south room 1]
    -> south_room_1
* [Go to junction 30]
    -> junction_30

=== passage_18 ===
You are in the passage 18 area of the ancient vault complex.
* [Go to north room 1]
    -> north_room_1
* [Go to junction 21]
    -> junction_21
* [Go to north room 7]
    -> north_room_7
* [Go to corridor 26]
    -> corridor_26
* [Go to south room 2]
    -> south_room_2
* [Go to passage 30]
    -> passage_30

=== corridor_19 ===
You are in the corridor 19 area of the ancient vault complex.
* [Go to north room 2]
    -> north_room_2
* [Go to passage 21]
    -> passage_21
* [Go to north room 8]
    -> north_room_8
* [Go to junction 26]
    -> junction_26
* [Go to south room 3]
    -> south_room_3
* [Go to corridor 31]
    -> corridor_31

=== junction_19 ===
You are in the junction 19 area of the ancient vault complex.
* [Go to north room 3]
    -> north_room_3
* [Go to corridor 22]
    -> corridor_22
* [Go to north search]
    -> north_search
* [Go to passage 26]
    -> passage_26
* [Go to south room 4]
    -> south_room_4
* [Go to junction 31]
    -> junction_31

=== passage_19 ===
You are in the passage 19 area of the ancient vault complex.
* [Go to north room 4]
    -> north_room_4
* [Go to junction 22]
    -> junction_22
* [Go to north archive]
    -> north_archive
* [Go to corridor 27]
    -> corridor_27
* [Go to south room 5]
    -> south_room_5
* [Go to passage 31]
    -> passage_31

=== corridor_20 ===
You are in the corridor 20 area of the ancient vault complex.
* [Go to north room 5]
    -> north_room_5
* [Go to passage 22]
    -> passage_22
* [Go to south hub]
    -> south_hub
* [Go to junction 27]
    -> junction_27
* [Go to south room 6]
    -> south_room_6
* [Go to corridor 32]
    -> corridor_32

=== junction_20 ===
You are in the junction 20 area of the ancient vault complex.
* [Go to north room 6]
    -> north_room_6
* [Go to corridor 23]
    -> corridor_23
* [Go to south room 1]
    -> south_room_1
* [Go to passage 27]
    -> passage_27
* [Go to south room 7]
    -> south_room_7
* [Go to junction 32]
    -> junction_32

=== passage_20 ===
You are in the passage 20 area of the ancient vault complex.
* [Go to north room 7]
    -> north_room_7
* [Go to junction 23]
    -> junction_23
* [Go to south room 2]
    -> south_room_2
* [Go to corridor 28]
    -> corridor_28
* [Go to START]
    -> START
* [Go to passage 32]
    -> passage_32

=== corridor_21 ===
You are in the corridor 21 area of the ancient vault complex.
* [Go to north room 8]
    -> north_room_8
* [Go to passage 23]
    -> passage_23
* [Go to south room 3]
    -> south_room_3
* [Go to junction 28]
    -> junction_28
* [Go to north hub]
    -> north_hub
* [Go to corridor 33]
    -> corridor_33

=== junction_21 ===
You are in the junction 21 area of the ancient vault complex.
* [Go to north search]
    -> north_search
* [Go to corridor 24]
    -> corridor_24
* [Go to south room 4]
    -> south_room_4
* [Go to passage 28]
    -> passage_28
* [Go to north room 1]
    -> north_room_1
* [Go to junction 33]
    -> junction_33

=== passage_21 ===
You are in the passage 21 area of the ancient vault complex.
* [Go to north archive]
    -> north_archive
* [Go to junction 24]
    -> junction_24
* [Go to south room 5]
    -> south_room_5
* [Go to corridor 29]
    -> corridor_29
* [Go to north room 2]
    -> north_room_2
* [Go to passage 33]
    -> passage_33

=== corridor_22 ===
You are in the corridor 22 area of the ancient vault complex.
* [Go to south hub]
    -> south_hub
* [Go to passage 24]
    -> passage_24
* [Go to south room 6]
    -> south_room_6
* [Go to junction 29]
    -> junction_29
* [Go to north room 3]
    -> north_room_3
* [Go to corridor 34]
    -> corridor_34

=== junction_22 ===
You are in the junction 22 area of the ancient vault complex.
* [Go to south room 1]
    -> south_room_1
* [Go to corridor 25]
    -> corridor_25
* [Go to south room 7]
    -> south_room_7
* [Go to passage 29]
    -> passage_29
* [Go to north room 4]
    -> north_room_4
* [Go to junction 34]
    -> junction_34

=== passage_22 ===
You are in the passage 22 area of the ancient vault complex.
* [Go to south room 2]
    -> south_room_2
* [Go to junction 25]
    -> junction_25
* [Go to START]
    -> START
* [Go to corridor 30]
    -> corridor_30
* [Go to north room 5]
    -> north_room_5
* [Go to passage 34]
    -> passage_34

=== corridor_23 ===
You are in the corridor 23 area of the ancient vault complex.
* [Go to south room 3]
    -> south_room_3
* [Go to passage 25]
    -> passage_25
* [Go to north hub]
    -> north_hub
* [Go to junction 30]
    -> junction_30
* [Go to north room 6]
    -> north_room_6
* [Go to corridor 35]
    -> corridor_35

=== junction_23 ===
You are in the junction 23 area of the ancient vault complex.
* [Go to south room 4]
    -> south_room_4
* [Go to corridor 26]
    -> corridor_26
* [Go to north room 1]
    -> north_room_1
* [Go to passage 30]
    -> passage_30
* [Go to north room 7]
    -> north_room_7
* [Go to junction 35]
    -> junction_35

=== passage_23 ===
You are in the passage 23 area of the ancient vault complex.
* [Go to south room 5]
    -> south_room_5
* [Go to junction 26]
    -> junction_26
* [Go to north room 2]
    -> north_room_2
* [Go to corridor 31]
    -> corridor_31
* [Go to north room 8]
    -> north_room_8
* [Go to token corridor]
    -> token_corridor

=== corridor_24 ===
You are in the corridor 24 area of the ancient vault complex.
* [Go to south room 6]
    -> south_room_6
* [Go to passage 26]
    -> passage_26
* [Go to north room 3]
    -> north_room_3
* [Go to junction 31]
    -> junction_31
* [Go to north search]
    -> north_search
* [Go to token gate]
    -> token_gate

=== junction_24 ===
You are in the junction 24 area of the ancient vault complex.
* [Go to south room 7]
    -> south_room_7
* [Go to corridor 27]
    -> corridor_27
* [Go to north room 4]
    -> north_room_4
* [Go to passage 31]
    -> passage_31
* [Go to north archive]
    -> north_archive
* [Go to north room 3]
    -> north_room_3

=== passage_24 ===
You are in the passage 24 area of the ancient vault complex.
* [Go to START]
    -> START
* [Go to junction 27]
    -> junction_27
* [Go to north room 5]
    -> north_room_5
* [Go to corridor 32]
    -> corridor_32
* [Go to south hub]
    -> south_hub
* [Go to north room 4]
    -> north_room_4

=== corridor_25 ===
You are in the corridor 25 area of the ancient vault complex.
* [Go to north hub]
    -> north_hub
* [Go to passage 27]
    -> passage_27
* [Go to north room 6]
    -> north_room_6
* [Go to junction 32]
    -> junction_32
* [Go to south room 1]
    -> south_room_1
* [Go to north room 5]
    -> north_room_5

=== junction_25 ===
You are in the junction 25 area of the ancient vault complex.
* [Go to north room 1]
    -> north_room_1
* [Go to corridor 28]
    -> corridor_28
* [Go to north room 7]
    -> north_room_7
* [Go to passage 32]
    -> passage_32
* [Go to south room 2]
    -> south_room_2
* [Go to north room 6]
    -> north_room_6

=== passage_25 ===
You are in the passage 25 area of the ancient vault complex.
* [Go to north room 2]
    -> north_room_2
* [Go to junction 28]
    -> junction_28
* [Go to north room 8]
    -> north_room_8
* [Go to corridor 33]
    -> corridor_33
* [Go to south room 3]
    -> south_room_3
* [Go to exit node]
    -> exit_node

=== corridor_26 ===
You are in the corridor 26 area of the ancient vault complex.
* [Go to north room 3]
    -> north_room_3
* [Go to passage 28]
    -> passage_28
* [Go to north search]
    -> north_search
* [Go to junction 33]
    -> junction_33
* [Go to south room 4]
    -> south_room_4
* [Go to START]
    -> START

=== junction_26 ===
You are in the junction 26 area of the ancient vault complex.
* [Go to north room 4]
    -> north_room_4
* [Go to corridor 29]
    -> corridor_29
* [Go to north archive]
    -> north_archive
* [Go to passage 33]
    -> passage_33
* [Go to south room 5]
    -> south_room_5
* [Go to north hub]
    -> north_hub

=== passage_26 ===
You are in the passage 26 area of the ancient vault complex.
* [Go to north room 5]
    -> north_room_5
* [Go to junction 29]
    -> junction_29
* [Go to south hub]
    -> south_hub
* [Go to corridor 34]
    -> corridor_34
* [Go to south room 6]
    -> south_room_6
* [Go to north room 1]
    -> north_room_1

=== corridor_27 ===
You are in the corridor 27 area of the ancient vault complex.
* [Go to north room 6]
    -> north_room_6
* [Go to passage 29]
    -> passage_29
* [Go to south room 1]
    -> south_room_1
* [Go to junction 34]
    -> junction_34
* [Go to south room 7]
    -> south_room_7
* [Go to north room 2]
    -> north_room_2

=== junction_27 ===
You are in the junction 27 area of the ancient vault complex.
* [Go to north room 7]
    -> north_room_7
* [Go to corridor 30]
    -> corridor_30
* [Go to south room 2]
    -> south_room_2
* [Go to passage 34]
    -> passage_34
* [Go to START]
    -> START
* [Go to north room 3]
    -> north_room_3

=== passage_27 ===
You are in the passage 27 area of the ancient vault complex.
* [Go to north room 8]
    -> north_room_8
* [Go to junction 30]
    -> junction_30
* [Go to south room 3]
    -> south_room_3
* [Go to corridor 35]
    -> corridor_35
* [Go to north hub]
    -> north_hub
* [Go to north room 4]
    -> north_room_4

=== corridor_28 ===
You are in the corridor 28 area of the ancient vault complex.
* [Go to north search]
    -> north_search
* [Go to passage 30]
    -> passage_30
* [Go to south room 4]
    -> south_room_4
* [Go to junction 35]
    -> junction_35
* [Go to north room 1]
    -> north_room_1
* [Go to north room 5]
    -> north_room_5

=== junction_28 ===
You are in the junction 28 area of the ancient vault complex.
* [Go to north archive]
    -> north_archive
* [Go to corridor 31]
    -> corridor_31
* [Go to south room 5]
    -> south_room_5
* [Go to token corridor]
    -> token_corridor
* [Go to north room 2]
    -> north_room_2
* [Go to north room 6]
    -> north_room_6

=== passage_28 ===
You are in the passage 28 area of the ancient vault complex.
* [Go to south hub]
    -> south_hub
* [Go to junction 31]
    -> junction_31
* [Go to south room 6]
    -> south_room_6
* [Go to token gate]
    -> token_gate
* [Go to north room 3]
    -> north_room_3
* [Go to north room 7]
    -> north_room_7

=== corridor_29 ===
You are in the corridor 29 area of the ancient vault complex.
* [Go to south room 1]
    -> south_room_1
* [Go to passage 31]
    -> passage_31
* [Go to south room 7]
    -> south_room_7
* [Go to south room 4]
    -> south_room_4
* [Go to north room 4]
    -> north_room_4
* [Go to north room 8]
    -> north_room_8

=== junction_29 ===
You are in the junction 29 area of the ancient vault complex.
* [Go to south room 2]
    -> south_room_2
* [Go to corridor 32]
    -> corridor_32
* [Go to START]
    -> START
* [Go to south room 5]
    -> south_room_5
* [Go to north room 5]
    -> north_room_5
* [Go to north search]
    -> north_search

=== passage_29 ===
You are in the passage 29 area of the ancient vault complex.
* [Go to south room 3]
    -> south_room_3
* [Go to junction 32]
    -> junction_32
* [Go to north hub]
    -> north_hub
* [Go to south room 6]
    -> south_room_6
* [Go to north room 6]
    -> north_room_6
* [Go to north archive]
    -> north_archive

=== corridor_30 ===
You are in the corridor 30 area of the ancient vault complex.
* [Go to south room 4]
    -> south_room_4
* [Go to passage 32]
    -> passage_32
* [Go to north room 1]
    -> north_room_1
* [Go to south room 7]
    -> south_room_7
* [Go to north room 7]
    -> north_room_7
* [Go to south hub]
    -> south_hub

=== junction_30 ===
You are in the junction 30 area of the ancient vault complex.
* [Go to south room 5]
    -> south_room_5
* [Go to corridor 33]
    -> corridor_33
* [Go to north room 2]
    -> north_room_2
* [Go to exit node]
    -> exit_node
* [Go to north room 8]
    -> north_room_8
* [Go to south room 1]
    -> south_room_1

=== passage_30 ===
You are in the passage 30 area of the ancient vault complex.
* [Go to south room 6]
    -> south_room_6
* [Go to junction 33]
    -> junction_33
* [Go to north room 3]
    -> north_room_3
* [Go to START]
    -> START
* [Go to north search]
    -> north_search
* [Go to south room 2]
    -> south_room_2

=== corridor_31 ===
You are in the corridor 31 area of the ancient vault complex.
* [Go to south room 7]
    -> south_room_7
* [Go to passage 33]
    -> passage_33
* [Go to north room 4]
    -> north_room_4
* [Go to north hub]
    -> north_hub
* [Go to north archive]
    -> north_archive
* [Go to south room 3]
    -> south_room_3

=== junction_31 ===
You are in the junction 31 area of the ancient vault complex.
* [Go to START]
    -> START
* [Go to corridor 34]
    -> corridor_34
* [Go to north room 5]
    -> north_room_5
* [Go to north room 1]
    -> north_room_1
* [Go to south hub]
    -> south_hub
* [Go to south room 4]
    -> south_room_4

=== passage_31 ===
You are in the passage 31 area of the ancient vault complex.
* [Go to north hub]
    -> north_hub
* [Go to junction 34]
    -> junction_34
* [Go to north room 6]
    -> north_room_6
* [Go to north room 2]
    -> north_room_2
* [Go to south room 1]
    -> south_room_1
* [Go to south room 5]
    -> south_room_5

=== corridor_32 ===
You are in the corridor 32 area of the ancient vault complex.
* [Go to north room 1]
    -> north_room_1
* [Go to passage 34]
    -> passage_34
* [Go to north room 7]
    -> north_room_7
* [Go to north room 3]
    -> north_room_3
* [Go to south room 2]
    -> south_room_2
* [Go to south room 6]
    -> south_room_6

=== junction_32 ===
You are in the junction 32 area of the ancient vault complex.
* [Go to north room 2]
    -> north_room_2
* [Go to corridor 35]
    -> corridor_35
* [Go to north room 8]
    -> north_room_8
* [Go to north room 4]
    -> north_room_4
* [Go to south room 3]
    -> south_room_3
* [Go to south room 7]
    -> south_room_7

=== passage_32 ===
You are in the passage 32 area of the ancient vault complex.
* [Go to north room 3]
    -> north_room_3
* [Go to junction 35]
    -> junction_35
* [Go to north search]
    -> north_search
* [Go to north room 5]
    -> north_room_5
* [Go to south room 4]
    -> south_room_4
* [Go to south room 8]
    -> south_room_8

=== corridor_33 ===
You are in the corridor 33 area of the ancient vault complex.
* [Go to north room 4]
    -> north_room_4
* [Go to token corridor]
    -> token_corridor
* [Go to north archive]
    -> north_archive
* [Go to north room 6]
    -> north_room_6
* [Go to south room 5]
    -> south_room_5
* [Go to south search]
    -> south_search

=== junction_33 ===
You are in the junction 33 area of the ancient vault complex.
* [Go to north room 5]
    -> north_room_5
* [Go to token gate]
    -> token_gate
* [Go to south hub]
    -> south_hub
* [Go to north room 7]
    -> north_room_7
* [Go to south room 6]
    -> south_room_6
* [Go to south archive]
    -> south_archive

=== passage_33 ===
You are in the passage 33 area of the ancient vault complex.
* [Go to north room 6]
    -> north_room_6
* [Go to north room 7]
    -> north_room_7
* [Go to south room 1]
    -> south_room_1
* [Go to north room 8]
    -> north_room_8
* [Go to south room 7]
    -> south_room_7
* [Go to east hub]
    -> east_hub

=== corridor_34 ===
You are in the corridor 34 area of the ancient vault complex.
* [Go to north room 7]
    -> north_room_7
* [Go to north room 8]
    -> north_room_8
* [Go to south room 2]
    -> south_room_2
* [Go to north search]
    -> north_search
* [Go to START]
    -> START
* [Go to east room 1]
    -> east_room_1

=== junction_34 ===
You are in the junction 34 area of the ancient vault complex.
* [Go to north room 8]
    -> north_room_8
* [Go to north search]
    -> north_search
* [Go to south room 3]
    -> south_room_3
* [Go to north archive]
    -> north_archive
* [Go to north hub]
    -> north_hub
* [Go to east room 2]
    -> east_room_2

=== passage_34 ===
You are in the passage 34 area of the ancient vault complex.
* [Go to north search]
    -> north_search
* [Go to north archive]
    -> north_archive
* [Go to south room 4]
    -> south_room_4
* [Go to south hub]
    -> south_hub
* [Go to north room 1]
    -> north_room_1
* [Go to east room 3]
    -> east_room_3

=== corridor_35 ===
You are in the corridor 35 area of the ancient vault complex.
* [Go to north archive]
    -> north_archive
* [Go to exit node]
    -> exit_node
* [Go to south room 5]
    -> south_room_5
* [Go to south room 1]
    -> south_room_1
* [Go to north room 2]
    -> north_room_2
* [Go to east room 4]
    -> east_room_4

=== junction_35 ===
You are in the junction 35 area of the ancient vault complex.
* [Go to south hub]
    -> south_hub
* [Go to START]
    -> START
* [Go to south room 6]
    -> south_room_6
* [Go to south room 2]
    -> south_room_2
* [Go to north room 3]
    -> north_room_3
* [Go to east room 5]
    -> east_room_5

=== token_corridor ===
A corridor to the mechanism gate. The has vault token is destroyed.
* [Continue to the gate]
    ~ has_vault_token = false
    -> token_gate
* [Turn back to START]
    -> START
* [Turn back to north hub]
    -> north_hub
* [Turn back to north room 1]
    -> north_room_1
* [Turn back to north room 2]
    -> north_room_2
* [Turn back to north room 3]
    -> north_room_3

// CONTRADICTION: has_vault_token set false here, required true at token_gate.

=== token_gate ===
A mechanism-locked gate. Requires the activation item.
* [Use the has vault token] { has_vault_token }
    -> exit_node
* [Try to force it]
    -> token_corridor
* [Go to START]
    -> START
* [Go to north hub]
    -> north_hub
* [Go to north room 1]
    -> north_room_1
* [Go to north room 2]
    -> north_room_2

// CONTRADICTION: has_vault_token set false in token_corridor, required true here.

=== frozen_vault ===
A chamber with no exit. You are trapped.
* [Try option 1]
    -> frozen_vault
* [Try option 2]
    -> frozen_vault
* [Try option 3]
    -> frozen_vault
* [Try option 4]
    -> frozen_vault
* [Try option 5]
    -> frozen_vault
* [Try option 6]
    -> frozen_vault
* [Try option 7]
    -> frozen_vault
* [Try option 8]
    -> frozen_vault

// STRUCTURAL DEAD END

=== collapsed_passage ===
Another sealed chamber. There is no way out.
* [Search option 1]
    -> collapsed_passage
* [Search option 2]
    -> collapsed_passage
* [Search option 3]
    -> collapsed_passage
* [Search option 4]
    -> collapsed_passage
* [Search option 5]
    -> collapsed_passage
* [Search option 6]
    -> collapsed_passage
* [Search option 7]
    -> collapsed_passage
* [Search option 8]
    -> collapsed_passage

// STRUCTURAL DEAD END

=== lost_wing ===
// UNREACHABLE: nothing diverts here
A hidden area of the complex. No one has been here in decades.
* [Explore option 1]
    -> START
* [Explore option 2]
    -> north_room_2
* [Explore option 3]
    -> north_room_5
* [Explore option 4]
    -> north_room_8
* [Explore option 5]
    -> south_hub
* [Explore option 6]
    -> south_room_3

=== buried_archive ===
// UNREACHABLE: nothing diverts here
Another sealed section. Inaccessible from the main complex.
* [Search option 1]
    -> START
* [Search option 2]
    -> north_room_4
* [Search option 3]
    -> north_search
* [Search option 4]
    -> south_room_3
* [Search option 5]
    -> START
* [Search option 6]
    -> north_room_4

=== exit_node ===
You escape the ancient vault complex. Your journey is complete.
-> END
