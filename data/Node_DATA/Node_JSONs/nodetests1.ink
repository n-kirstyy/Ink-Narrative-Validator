// Node Test Story 1
// Nodes: 10 | Target BF: ~1.5


VAR has_torch = false

-> START

=== START ===
You enter the cave system.
* [Take the main passage]
    -> alpha_node_1
* [Take the side passage]
    -> beta_node_2

=== alpha_node_1 ===
A section of the cave system.
* [Move forward]
    -> exit_node
* [Move forward]
    -> exit_node

=== beta_node_2 ===
A section of the cave system.
* [Go to torch corridor]
    -> torch_corridor

=== torch_corridor ===
The has torch is destroyed here.
* [Continue to the gate]
    ~ has_torch = false
    -> torch_gate
* [Go back]
    -> alpha_node_1

// CONTRADICTION: has_torch set false -> required true at torch_gate

=== torch_gate ===
A gate requiring activation.
* [Use the has torch] { has_torch }
    -> exit_node
* [Turn back]
    -> alpha_node_1

// CONTRADICTION: has_torch required true, set false in torch_corridor

=== void_pit ===
There is no way forward.
* [Try to escape]
    -> void_pit
* [Wait]
    -> void_pit

// STRUCTURAL DEAD END

=== sealed_room ===
There is no way forward.
* [Try to escape]
    -> sealed_room
* [Wait]
    -> sealed_room

// STRUCTURAL DEAD END

=== hidden_alcove ===
// UNREACHABLE: nothing diverts here
A hidden area no path leads to.
* [Go to exit]
    -> exit_node
* [Go back]
    -> START

=== lost_passage ===
// UNREACHABLE: nothing diverts here
A hidden area no path leads to.
* [Go to exit]
    -> exit_node
* [Go back]
    -> START

=== exit_node ===
You have reached the end of the cave system.
-> END
