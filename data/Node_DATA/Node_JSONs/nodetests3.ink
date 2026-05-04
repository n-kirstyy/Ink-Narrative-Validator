// Node Test Story 3
// Nodes: 50 | Target BF: ~1.5

VAR has_sigil = false
VAR has_key = false
VAR has_torch = false

-> START

=== START ===
You enter the underground fort.
* [Take the main passage]
    -> alpha_node_1
* [Take the side passage]
    -> beta_node_2

=== alpha_node_1 ===
A section of the underground fort.
* [Move forward]
    -> theta_node_8
* [Move forward]
    -> omicron_node_15

=== beta_node_2 ===
A section of the underground fort.
* [Move forward]
    -> iota_node_9
* [Move forward]
    -> pi_node_16

=== gamma_node_3 ===
A section of the underground fort.
* [Move forward]
    -> kappa_node_10
* [Move forward]
    -> sigma_node_17

=== delta_node_4 ===
A section of the underground fort.
* [Go to sigil corridor]
    -> sigil_corridor
* [Move forward]
    -> tau_node_18

=== epsilon_node_5 ===
A section of the underground fort.
* [Move forward]
    -> mu_node_12
* [Move forward]
    -> upsilon_node_19

=== zeta_node_6 ===
A section of the underground fort.
* [Go to state unr entrance 3]
    -> state_unr_entrance_3
* [Move forward]
    -> phi_node_20

=== eta_node_7 ===
A section of the underground fort.
* [Move forward]
    -> xi_node_14
* [Move forward]
    -> chi_node_21

=== theta_node_8 ===
A section of the underground fort.
* [Go to state de approach 3]
    -> state_de_approach_3
* [Move forward]
    -> psi_node_22

=== iota_node_9 ===
A section of the underground fort.
* [Move forward]
    -> pi_node_16
* [Move forward]
    -> omega_node_23

=== kappa_node_10 ===
A section of the underground fort.
* [Move forward]
    -> sigma_node_17
* [Move forward]
    -> rho_node_24

=== lambda_node_11 ===
A section of the underground fort.
* [Move forward]
    -> tau_node_18
* [Move forward]
    -> alpha_node_25

=== mu_node_12 ===
A section of the underground fort.
* [Move forward]
    -> upsilon_node_19
* [Move forward]
    -> beta_node_26

=== nu_node_13 ===
A section of the underground fort.
* [Move forward]
    -> phi_node_20
* [Move forward]
    -> gamma_node_27

=== xi_node_14 ===
A section of the underground fort.
* [Move forward]
    -> chi_node_21
* [Move forward]
    -> delta_node_28

=== omicron_node_15 ===
A section of the underground fort.
* [Move forward]
    -> psi_node_22
* [Move forward]
    -> epsilon_node_29

=== pi_node_16 ===
A section of the underground fort.
* [Move forward]
    -> omega_node_23
* [Move forward]
    -> zeta_node_30

=== sigma_node_17 ===
A section of the underground fort.
* [Move forward]
    -> rho_node_24
* [Move forward]
    -> eta_node_31

=== tau_node_18 ===
A section of the underground fort.
* [Move forward]
    -> alpha_node_25
* [Move forward]
    -> theta_node_32

=== upsilon_node_19 ===
A section of the underground fort.
* [Move forward]
    -> beta_node_26
* [Move forward]
    -> iota_node_33

=== phi_node_20 ===
A section of the underground fort.
* [Move forward]
    -> gamma_node_27

=== chi_node_21 ===
A section of the underground fort.
* [Move forward]
    -> delta_node_28

=== psi_node_22 ===
A section of the underground fort.
* [Move forward]
    -> epsilon_node_29

=== omega_node_23 ===
A section of the underground fort.
* [Move forward]
    -> zeta_node_30

=== rho_node_24 ===
A section of the underground fort.
* [Move forward]
    -> eta_node_31

=== alpha_node_25 ===
A section of the underground fort.
* [Move forward]
    -> theta_node_32

=== beta_node_26 ===
A section of the underground fort.
* [Move forward]
    -> iota_node_33

=== gamma_node_27 ===
A section of the underground fort.
* [Move forward]
    -> kappa_node_34

=== delta_node_28 ===
A section of the underground fort.
* [Move forward]
    -> lambda_node_35

=== epsilon_node_29 ===
A section of the underground fort.
* [Move forward]
    -> mu_node_36

=== zeta_node_30 ===
A section of the underground fort.
* [Move forward]
    -> nu_node_37

=== eta_node_31 ===
A section of the underground fort.
* [Move forward]
    -> xi_node_38

=== theta_node_32 ===
A section of the underground fort.
* [Move forward]
    -> state_de_approach_3

=== iota_node_33 ===
A section of the underground fort.
* [Move forward]
    -> state_unr_entrance_3

=== kappa_node_34 ===
A section of the underground fort.
* [Move forward]
    -> state_unr_entrance_3

=== lambda_node_35 ===
A section of the underground fort.
* [Move forward]
    -> sigil_corridor

=== mu_node_36 ===
A section of the underground fort.
* [Move forward]
    -> sigil_corridor

=== nu_node_37 ===
A section of the underground fort.
* [Move forward]
    -> sigil_gate

=== xi_node_38 ===
A section of the underground fort.
* [Move forward]
    -> exit_node

=== state_de_approach_3 ===
You find the has sigil here.
* [Take it and continue]
    ~ has_sigil = true
    -> state_dead_end_3
* [Leave it]
    -> gamma_node_3

=== state_dead_end_3 ===
A room where the has sigil is a hazard.
* [Try mechanism A] { !has_sigil }
    -> exit_node
* [Try mechanism B] { !has_sigil }
    -> alpha_node_1

// STATE DEAD END: exits require has_sigil=false
// Only reachable via state_de_approach_3 which sets has_sigil=true

=== state_unr_entrance_3 ===
Entrance sealed once has sigil is activated.
* [Enter] { !has_sigil }
    -> state_unr_node_3
* [Leave]
    -> beta_node_2

=== state_unr_node_3 ===
// STATE UNREACHABLE: requires has_sigil=false to enter
A sealed chamber.
* [Explore]
    -> exit_node
* [Leave]
    -> alpha_node_1

=== sigil_corridor ===
The has sigil is destroyed here.
* [Continue to the gate]
    ~ has_sigil = false
    -> sigil_gate
* [Go back]
    -> alpha_node_1

// CONTRADICTION: has_sigil set false -> required true at sigil_gate

=== sigil_gate ===
A gate requiring activation.
* [Use the has sigil] { has_sigil }
    -> exit_node
* [Turn back]
    -> alpha_node_1

// CONTRADICTION: has_sigil required true, set false in sigil_corridor

=== null_chamber ===
There is no way forward.
* [Try to escape]
    -> null_chamber
* [Wait]
    -> null_chamber

// STRUCTURAL DEAD END

=== tar_pit ===
There is no way forward.
* [Try to escape]
    -> tar_pit
* [Wait]
    -> tar_pit

// STRUCTURAL DEAD END

=== ghost_wing ===
// UNREACHABLE: nothing diverts here
A hidden area no path leads to.
* [Go to exit]
    -> exit_node
* [Go back]
    -> START

=== collapsed_hall ===
// UNREACHABLE: nothing diverts here
A hidden area no path leads to.
* [Go to exit]
    -> exit_node
* [Go back]
    -> START

=== exit_node ===
You have reached the end of the underground fort.
-> END
