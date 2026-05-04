// Node Test Story 2
// Nodes: 24 | Target BF: ~1.5


VAR has_key = false
VAR has_rope = false

-> START

=== START ===
You enter the forest ruins.
* [Take the main passage]
    -> alpha_node_1
* [Take the side passage]
    -> beta_node_2

=== alpha_node_1 ===
A section of the forest ruins.
* [Move forward]
    -> theta_node_8
* [Move forward]
    -> omicron_node_15

=== beta_node_2 ===
A section of the forest ruins.
* [Move forward]
    -> iota_node_9
* [Move forward]
    -> pi_node_16

=== gamma_node_3 ===
A section of the forest ruins.
* [Move forward]
    -> kappa_node_10
* [Move forward]
    -> key_corridor

=== delta_node_4 ===
A section of the forest ruins.
* [Go to key corridor]
    -> key_corridor
* [Move forward]
    -> key_gate

=== epsilon_node_5 ===
A section of the forest ruins.
* [Move forward]
    -> mu_node_12
* [Move forward]
    -> exit_node

=== zeta_node_6 ===
A section of the forest ruins.
* [Move forward]
    -> nu_node_13
* [Move forward]
    -> exit_node

=== eta_node_7 ===
A section of the forest ruins.
* [Move forward]
    -> xi_node_14
* [Move forward]
    -> exit_node

=== theta_node_8 ===
A section of the forest ruins.
* [Move forward]
    -> omicron_node_15
* [Move forward]
    -> exit_node

=== iota_node_9 ===
A section of the forest ruins.
* [Move forward]
    -> pi_node_16

=== kappa_node_10 ===
A section of the forest ruins.
* [Move forward]
    -> key_corridor

=== lambda_node_11 ===
A section of the forest ruins.
* [Move forward]
    -> key_gate

=== mu_node_12 ===
A section of the forest ruins.
* [Move forward]
    -> exit_node

=== nu_node_13 ===
A section of the forest ruins.
* [Move forward]
    -> exit_node

=== xi_node_14 ===
A section of the forest ruins.
* [Move forward]
    -> exit_node

=== omicron_node_15 ===
A section of the forest ruins.
* [Move forward]
    -> exit_node

=== pi_node_16 ===
A section of the forest ruins.
* [Move forward]
    -> exit_node

=== key_corridor ===
The has key is destroyed here.
* [Continue to the gate]
    ~ has_key = false
    -> key_gate
* [Go back]
    -> alpha_node_1

// CONTRADICTION: has_key set false -> required true at key_gate

=== key_gate ===
A gate requiring activation.
* [Use the has key] { has_key }
    -> exit_node
* [Turn back]
    -> alpha_node_1


=== dead_grove ===
There is no way forward.
* [Try to escape]
    -> dead_grove
* [Wait]
    -> dead_grove


=== swamp_trap ===
There is no way forward.
* [Try to escape]
    -> swamp_trap
* [Wait]
    -> swamp_trap


=== buried_shrine ===
// UNREACHABLE: nothing diverts here
A hidden area no path leads to.
* [Go to exit]
    -> exit_node
* [Go back]
    -> START

=== forgotten_path ===
// UNREACHABLE: nothing diverts here
A hidden area no path leads to.
* [Go to exit]
    -> exit_node
* [Go back]
    -> START

=== exit_node ===
You have reached the end of the forest ruins.
-> END
