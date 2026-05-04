// Node Test Story 6
// Nodes: 200 | Target BF: ~1.5


VAR has_amulet = false
VAR has_key = false
VAR has_rope = false
VAR has_torch = false
VAR has_map = false
VAR has_sigil = false

-> START

=== START ===
You enter the crystal labyrinth.
* [Take the main passage]
    -> alpha_node_1
* [Take the side passage]
    -> beta_node_2

=== alpha_node_1 ===
A section of the crystal labyrinth.
* [Move forward]
    -> theta_node_8
* [Move forward]
    -> omicron_node_15

=== beta_node_2 ===
A section of the crystal labyrinth.
* [Move forward]
    -> iota_node_9
* [Move forward]
    -> pi_node_16

=== gamma_node_3 ===
A section of the crystal labyrinth.
* [Move forward]
    -> kappa_node_10
* [Move forward]
    -> sigma_node_17

=== delta_node_4 ===
A section of the crystal labyrinth.
* [Go to amulet corridor]
    -> amulet_corridor
* [Move forward]
    -> tau_node_18

=== epsilon_node_5 ===
A section of the crystal labyrinth.
* [Move forward]
    -> mu_node_12
* [Move forward]
    -> upsilon_node_19

=== zeta_node_6 ===
A section of the crystal labyrinth.
* [Go to state unr entrance 6]
    -> state_unr_entrance_6
* [Move forward]
    -> phi_node_20

=== eta_node_7 ===
A section of the crystal labyrinth.
* [Move forward]
    -> xi_node_14
* [Move forward]
    -> chi_node_21

=== theta_node_8 ===
A section of the crystal labyrinth.
* [Go to state de approach 6]
    -> state_de_approach_6
* [Move forward]
    -> psi_node_22

=== iota_node_9 ===
A section of the crystal labyrinth.
* [Move forward]
    -> pi_node_16
* [Move forward]
    -> omega_node_23

=== kappa_node_10 ===
A section of the crystal labyrinth.
* [Move forward]
    -> sigma_node_17
* [Move forward]
    -> rho_node_24

=== lambda_node_11 ===
A section of the crystal labyrinth.
* [Move forward]
    -> tau_node_18
* [Move forward]
    -> alpha_node_25

=== mu_node_12 ===
A section of the crystal labyrinth.
* [Move forward]
    -> upsilon_node_19
* [Move forward]
    -> beta_node_26

=== nu_node_13 ===
A section of the crystal labyrinth.
* [Move forward]
    -> phi_node_20
* [Move forward]
    -> gamma_node_27

=== xi_node_14 ===
A section of the crystal labyrinth.
* [Move forward]
    -> chi_node_21
* [Move forward]
    -> delta_node_28

=== omicron_node_15 ===
A section of the crystal labyrinth.
* [Move forward]
    -> psi_node_22
* [Move forward]
    -> epsilon_node_29

=== pi_node_16 ===
A section of the crystal labyrinth.
* [Move forward]
    -> omega_node_23
* [Move forward]
    -> zeta_node_30

=== sigma_node_17 ===
A section of the crystal labyrinth.
* [Move forward]
    -> rho_node_24
* [Move forward]
    -> eta_node_31

=== tau_node_18 ===
A section of the crystal labyrinth.
* [Move forward]
    -> alpha_node_25
* [Move forward]
    -> theta_node_32

=== upsilon_node_19 ===
A section of the crystal labyrinth.
* [Move forward]
    -> beta_node_26
* [Move forward]
    -> iota_node_33

=== phi_node_20 ===
A section of the crystal labyrinth.
* [Move forward]
    -> gamma_node_27
* [Move forward]
    -> kappa_node_34

=== chi_node_21 ===
A section of the crystal labyrinth.
* [Move forward]
    -> delta_node_28
* [Move forward]
    -> lambda_node_35

=== psi_node_22 ===
A section of the crystal labyrinth.
* [Move forward]
    -> epsilon_node_29
* [Move forward]
    -> mu_node_36

=== omega_node_23 ===
A section of the crystal labyrinth.
* [Move forward]
    -> zeta_node_30
* [Move forward]
    -> nu_node_37

=== rho_node_24 ===
A section of the crystal labyrinth.
* [Move forward]
    -> eta_node_31
* [Move forward]
    -> xi_node_38

=== alpha_node_25 ===
A section of the crystal labyrinth.
* [Move forward]
    -> theta_node_32
* [Move forward]
    -> omicron_node_39

=== beta_node_26 ===
A section of the crystal labyrinth.
* [Move forward]
    -> iota_node_33
* [Move forward]
    -> pi_node_40

=== gamma_node_27 ===
A section of the crystal labyrinth.
* [Move forward]
    -> kappa_node_34
* [Move forward]
    -> sigma_node_41

=== delta_node_28 ===
A section of the crystal labyrinth.
* [Move forward]
    -> lambda_node_35
* [Move forward]
    -> tau_node_42

=== epsilon_node_29 ===
A section of the crystal labyrinth.
* [Move forward]
    -> mu_node_36
* [Move forward]
    -> upsilon_node_43

=== zeta_node_30 ===
A section of the crystal labyrinth.
* [Move forward]
    -> nu_node_37
* [Move forward]
    -> phi_node_44

=== eta_node_31 ===
A section of the crystal labyrinth.
* [Move forward]
    -> xi_node_38
* [Move forward]
    -> chi_node_45

=== theta_node_32 ===
A section of the crystal labyrinth.
* [Move forward]
    -> omicron_node_39
* [Move forward]
    -> psi_node_46

=== iota_node_33 ===
A section of the crystal labyrinth.
* [Move forward]
    -> pi_node_40
* [Move forward]
    -> omega_node_47

=== kappa_node_34 ===
A section of the crystal labyrinth.
* [Move forward]
    -> sigma_node_41
* [Move forward]
    -> rho_node_48

=== lambda_node_35 ===
A section of the crystal labyrinth.
* [Move forward]
    -> tau_node_42
* [Move forward]
    -> alpha_node_49

=== mu_node_36 ===
A section of the crystal labyrinth.
* [Move forward]
    -> upsilon_node_43
* [Move forward]
    -> beta_node_50

=== nu_node_37 ===
A section of the crystal labyrinth.
* [Move forward]
    -> phi_node_44
* [Move forward]
    -> gamma_node_51

=== xi_node_38 ===
A section of the crystal labyrinth.
* [Move forward]
    -> chi_node_45
* [Move forward]
    -> delta_node_52

=== omicron_node_39 ===
A section of the crystal labyrinth.
* [Move forward]
    -> psi_node_46
* [Move forward]
    -> epsilon_node_53

=== pi_node_40 ===
A section of the crystal labyrinth.
* [Move forward]
    -> omega_node_47
* [Move forward]
    -> zeta_node_54

=== sigma_node_41 ===
A section of the crystal labyrinth.
* [Move forward]
    -> rho_node_48
* [Move forward]
    -> eta_node_55

=== tau_node_42 ===
A section of the crystal labyrinth.
* [Move forward]
    -> alpha_node_49
* [Move forward]
    -> theta_node_56

=== upsilon_node_43 ===
A section of the crystal labyrinth.
* [Move forward]
    -> beta_node_50
* [Move forward]
    -> iota_node_57

=== phi_node_44 ===
A section of the crystal labyrinth.
* [Move forward]
    -> gamma_node_51
* [Move forward]
    -> kappa_node_58

=== chi_node_45 ===
A section of the crystal labyrinth.
* [Move forward]
    -> delta_node_52
* [Move forward]
    -> lambda_node_59

=== psi_node_46 ===
A section of the crystal labyrinth.
* [Move forward]
    -> epsilon_node_53
* [Move forward]
    -> mu_node_60

=== omega_node_47 ===
A section of the crystal labyrinth.
* [Move forward]
    -> zeta_node_54
* [Move forward]
    -> nu_node_61

=== rho_node_48 ===
A section of the crystal labyrinth.
* [Move forward]
    -> eta_node_55
* [Move forward]
    -> xi_node_62

=== alpha_node_49 ===
A section of the crystal labyrinth.
* [Move forward]
    -> theta_node_56
* [Move forward]
    -> omicron_node_63

=== beta_node_50 ===
A section of the crystal labyrinth.
* [Move forward]
    -> iota_node_57
* [Move forward]
    -> pi_node_64

=== gamma_node_51 ===
A section of the crystal labyrinth.
* [Move forward]
    -> kappa_node_58
* [Move forward]
    -> sigma_node_65

=== delta_node_52 ===
A section of the crystal labyrinth.
* [Move forward]
    -> lambda_node_59
* [Move forward]
    -> tau_node_66

=== epsilon_node_53 ===
A section of the crystal labyrinth.
* [Move forward]
    -> mu_node_60
* [Move forward]
    -> upsilon_node_67

=== zeta_node_54 ===
A section of the crystal labyrinth.
* [Move forward]
    -> nu_node_61
* [Move forward]
    -> phi_node_68

=== eta_node_55 ===
A section of the crystal labyrinth.
* [Move forward]
    -> xi_node_62
* [Move forward]
    -> chi_node_69

=== theta_node_56 ===
A section of the crystal labyrinth.
* [Move forward]
    -> omicron_node_63
* [Move forward]
    -> psi_node_70

=== iota_node_57 ===
A section of the crystal labyrinth.
* [Move forward]
    -> pi_node_64
* [Move forward]
    -> omega_node_71

=== kappa_node_58 ===
A section of the crystal labyrinth.
* [Move forward]
    -> sigma_node_65
* [Move forward]
    -> rho_node_72

=== lambda_node_59 ===
A section of the crystal labyrinth.
* [Move forward]
    -> tau_node_66
* [Move forward]
    -> alpha_node_73

=== mu_node_60 ===
A section of the crystal labyrinth.
* [Move forward]
    -> upsilon_node_67
* [Move forward]
    -> beta_node_74

=== nu_node_61 ===
A section of the crystal labyrinth.
* [Move forward]
    -> phi_node_68
* [Move forward]
    -> gamma_node_75

=== xi_node_62 ===
A section of the crystal labyrinth.
* [Move forward]
    -> chi_node_69
* [Move forward]
    -> delta_node_76

=== omicron_node_63 ===
A section of the crystal labyrinth.
* [Move forward]
    -> psi_node_70
* [Move forward]
    -> epsilon_node_77

=== pi_node_64 ===
A section of the crystal labyrinth.
* [Move forward]
    -> omega_node_71
* [Move forward]
    -> zeta_node_78

=== sigma_node_65 ===
A section of the crystal labyrinth.
* [Move forward]
    -> rho_node_72
* [Move forward]
    -> eta_node_79

=== tau_node_66 ===
A section of the crystal labyrinth.
* [Move forward]
    -> alpha_node_73
* [Move forward]
    -> theta_node_80

=== upsilon_node_67 ===
A section of the crystal labyrinth.
* [Move forward]
    -> beta_node_74
* [Move forward]
    -> iota_node_81

=== phi_node_68 ===
A section of the crystal labyrinth.
* [Move forward]
    -> gamma_node_75
* [Move forward]
    -> kappa_node_82

=== chi_node_69 ===
A section of the crystal labyrinth.
* [Move forward]
    -> delta_node_76
* [Move forward]
    -> lambda_node_83

=== psi_node_70 ===
A section of the crystal labyrinth.
* [Move forward]
    -> epsilon_node_77
* [Move forward]
    -> mu_node_84

=== omega_node_71 ===
A section of the crystal labyrinth.
* [Move forward]
    -> zeta_node_78
* [Move forward]
    -> nu_node_85

=== rho_node_72 ===
A section of the crystal labyrinth.
* [Move forward]
    -> eta_node_79
* [Move forward]
    -> xi_node_86

=== alpha_node_73 ===
A section of the crystal labyrinth.
* [Move forward]
    -> theta_node_80
* [Move forward]
    -> omicron_node_87

=== beta_node_74 ===
A section of the crystal labyrinth.
* [Move forward]
    -> iota_node_81
* [Move forward]
    -> pi_node_88

=== gamma_node_75 ===
A section of the crystal labyrinth.
* [Move forward]
    -> kappa_node_82
* [Move forward]
    -> sigma_node_89

=== delta_node_76 ===
A section of the crystal labyrinth.
* [Move forward]
    -> lambda_node_83
* [Move forward]
    -> tau_node_90

=== epsilon_node_77 ===
A section of the crystal labyrinth.
* [Move forward]
    -> mu_node_84
* [Move forward]
    -> upsilon_node_91

=== zeta_node_78 ===
A section of the crystal labyrinth.
* [Move forward]
    -> nu_node_85
* [Move forward]
    -> phi_node_92

=== eta_node_79 ===
A section of the crystal labyrinth.
* [Move forward]
    -> xi_node_86
* [Move forward]
    -> chi_node_93

=== theta_node_80 ===
A section of the crystal labyrinth.
* [Move forward]
    -> omicron_node_87
* [Move forward]
    -> psi_node_94

=== iota_node_81 ===
A section of the crystal labyrinth.
* [Move forward]
    -> pi_node_88
* [Move forward]
    -> omega_node_95

=== kappa_node_82 ===
A section of the crystal labyrinth.
* [Move forward]
    -> sigma_node_89
* [Move forward]
    -> rho_node_96

=== lambda_node_83 ===
A section of the crystal labyrinth.
* [Move forward]
    -> tau_node_90
* [Move forward]
    -> alpha_node_97

=== mu_node_84 ===
A section of the crystal labyrinth.
* [Move forward]
    -> upsilon_node_91
* [Move forward]
    -> beta_node_98

=== nu_node_85 ===
A section of the crystal labyrinth.
* [Move forward]
    -> phi_node_92
* [Move forward]
    -> gamma_node_99

=== xi_node_86 ===
A section of the crystal labyrinth.
* [Move forward]
    -> chi_node_93
* [Move forward]
    -> delta_node_100

=== omicron_node_87 ===
A section of the crystal labyrinth.
* [Move forward]
    -> psi_node_94
* [Move forward]
    -> epsilon_node_101

=== pi_node_88 ===
A section of the crystal labyrinth.
* [Move forward]
    -> omega_node_95
* [Move forward]
    -> zeta_node_102

=== sigma_node_89 ===
A section of the crystal labyrinth.
* [Move forward]
    -> rho_node_96
* [Move forward]
    -> eta_node_103

=== tau_node_90 ===
A section of the crystal labyrinth.
* [Move forward]
    -> alpha_node_97
* [Move forward]
    -> theta_node_104

=== upsilon_node_91 ===
A section of the crystal labyrinth.
* [Move forward]
    -> beta_node_98
* [Move forward]
    -> iota_node_105

=== phi_node_92 ===
A section of the crystal labyrinth.
* [Move forward]
    -> gamma_node_99
* [Move forward]
    -> kappa_node_106

=== chi_node_93 ===
A section of the crystal labyrinth.
* [Move forward]
    -> delta_node_100
* [Move forward]
    -> lambda_node_107

=== psi_node_94 ===
A section of the crystal labyrinth.
* [Move forward]
    -> epsilon_node_101
* [Move forward]
    -> mu_node_108

=== omega_node_95 ===
A section of the crystal labyrinth.
* [Move forward]
    -> zeta_node_102

=== rho_node_96 ===
A section of the crystal labyrinth.
* [Move forward]
    -> eta_node_103

=== alpha_node_97 ===
A section of the crystal labyrinth.
* [Move forward]
    -> theta_node_104

=== beta_node_98 ===
A section of the crystal labyrinth.
* [Move forward]
    -> iota_node_105

=== gamma_node_99 ===
A section of the crystal labyrinth.
* [Move forward]
    -> kappa_node_106

=== delta_node_100 ===
A section of the crystal labyrinth.
* [Move forward]
    -> lambda_node_107

=== epsilon_node_101 ===
A section of the crystal labyrinth.
* [Move forward]
    -> mu_node_108

=== zeta_node_102 ===
A section of the crystal labyrinth.
* [Move forward]
    -> nu_node_109

=== eta_node_103 ===
A section of the crystal labyrinth.
* [Move forward]
    -> xi_node_110

=== theta_node_104 ===
A section of the crystal labyrinth.
* [Move forward]
    -> omicron_node_111

=== iota_node_105 ===
A section of the crystal labyrinth.
* [Move forward]
    -> pi_node_112

=== kappa_node_106 ===
A section of the crystal labyrinth.
* [Move forward]
    -> sigma_node_113

=== lambda_node_107 ===
A section of the crystal labyrinth.
* [Move forward]
    -> tau_node_114

=== mu_node_108 ===
A section of the crystal labyrinth.
* [Move forward]
    -> upsilon_node_115

=== nu_node_109 ===
A section of the crystal labyrinth.
* [Move forward]
    -> phi_node_116

=== xi_node_110 ===
A section of the crystal labyrinth.
* [Move forward]
    -> chi_node_117

=== omicron_node_111 ===
A section of the crystal labyrinth.
* [Move forward]
    -> psi_node_118

=== pi_node_112 ===
A section of the crystal labyrinth.
* [Move forward]
    -> omega_node_119

=== sigma_node_113 ===
A section of the crystal labyrinth.
* [Move forward]
    -> rho_node_120

=== tau_node_114 ===
A section of the crystal labyrinth.
* [Move forward]
    -> alpha_node_121

=== upsilon_node_115 ===
A section of the crystal labyrinth.
* [Move forward]
    -> beta_node_122

=== phi_node_116 ===
A section of the crystal labyrinth.
* [Move forward]
    -> gamma_node_123

=== chi_node_117 ===
A section of the crystal labyrinth.
* [Move forward]
    -> delta_node_124

=== psi_node_118 ===
A section of the crystal labyrinth.
* [Move forward]
    -> epsilon_node_125

=== omega_node_119 ===
A section of the crystal labyrinth.
* [Move forward]
    -> zeta_node_126

=== rho_node_120 ===
A section of the crystal labyrinth.
* [Move forward]
    -> eta_node_127

=== alpha_node_121 ===
A section of the crystal labyrinth.
* [Move forward]
    -> theta_node_128

=== beta_node_122 ===
A section of the crystal labyrinth.
* [Move forward]
    -> iota_node_129

=== gamma_node_123 ===
A section of the crystal labyrinth.
* [Move forward]
    -> kappa_node_130

=== delta_node_124 ===
A section of the crystal labyrinth.
* [Move forward]
    -> lambda_node_131

=== epsilon_node_125 ===
A section of the crystal labyrinth.
* [Move forward]
    -> mu_node_132

=== zeta_node_126 ===
A section of the crystal labyrinth.
* [Move forward]
    -> nu_node_133

=== eta_node_127 ===
A section of the crystal labyrinth.
* [Move forward]
    -> xi_node_134

=== theta_node_128 ===
A section of the crystal labyrinth.
* [Move forward]
    -> omicron_node_135

=== iota_node_129 ===
A section of the crystal labyrinth.
* [Move forward]
    -> pi_node_136

=== kappa_node_130 ===
A section of the crystal labyrinth.
* [Move forward]
    -> sigma_node_137

=== lambda_node_131 ===
A section of the crystal labyrinth.
* [Move forward]
    -> tau_node_138

=== mu_node_132 ===
A section of the crystal labyrinth.
* [Move forward]
    -> upsilon_node_139

=== nu_node_133 ===
A section of the crystal labyrinth.
* [Move forward]
    -> phi_node_140

=== xi_node_134 ===
A section of the crystal labyrinth.
* [Move forward]
    -> chi_node_141

=== omicron_node_135 ===
A section of the crystal labyrinth.
* [Move forward]
    -> psi_node_142

=== pi_node_136 ===
A section of the crystal labyrinth.
* [Move forward]
    -> omega_node_143

=== sigma_node_137 ===
A section of the crystal labyrinth.
* [Move forward]
    -> rho_node_144

=== tau_node_138 ===
A section of the crystal labyrinth.
* [Move forward]
    -> alpha_node_145

=== upsilon_node_139 ===
A section of the crystal labyrinth.
* [Move forward]
    -> beta_node_146

=== phi_node_140 ===
A section of the crystal labyrinth.
* [Move forward]
    -> gamma_node_147

=== chi_node_141 ===
A section of the crystal labyrinth.
* [Move forward]
    -> delta_node_148

=== psi_node_142 ===
A section of the crystal labyrinth.
* [Move forward]
    -> epsilon_node_149

=== omega_node_143 ===
A section of the crystal labyrinth.
* [Move forward]
    -> zeta_node_150

=== rho_node_144 ===
A section of the crystal labyrinth.
* [Move forward]
    -> eta_node_151

=== alpha_node_145 ===
A section of the crystal labyrinth.
* [Move forward]
    -> theta_node_152

=== beta_node_146 ===
A section of the crystal labyrinth.
* [Move forward]
    -> iota_node_153

=== gamma_node_147 ===
A section of the crystal labyrinth.
* [Move forward]
    -> kappa_node_154

=== delta_node_148 ===
A section of the crystal labyrinth.
* [Move forward]
    -> lambda_node_155

=== epsilon_node_149 ===
A section of the crystal labyrinth.
* [Move forward]
    -> mu_node_156

=== zeta_node_150 ===
A section of the crystal labyrinth.
* [Move forward]
    -> nu_node_157

=== eta_node_151 ===
A section of the crystal labyrinth.
* [Move forward]
    -> xi_node_158

=== theta_node_152 ===
A section of the crystal labyrinth.
* [Move forward]
    -> omicron_node_159

=== iota_node_153 ===
A section of the crystal labyrinth.
* [Move forward]
    -> pi_node_160

=== kappa_node_154 ===
A section of the crystal labyrinth.
* [Move forward]
    -> sigma_node_161

=== lambda_node_155 ===
A section of the crystal labyrinth.
* [Move forward]
    -> tau_node_162

=== mu_node_156 ===
A section of the crystal labyrinth.
* [Move forward]
    -> upsilon_node_163

=== nu_node_157 ===
A section of the crystal labyrinth.
* [Move forward]
    -> phi_node_164

=== xi_node_158 ===
A section of the crystal labyrinth.
* [Move forward]
    -> chi_node_165

=== omicron_node_159 ===
A section of the crystal labyrinth.
* [Move forward]
    -> psi_node_166

=== pi_node_160 ===
A section of the crystal labyrinth.
* [Move forward]
    -> omega_node_167

=== sigma_node_161 ===
A section of the crystal labyrinth.
* [Move forward]
    -> rho_node_168

=== tau_node_162 ===
A section of the crystal labyrinth.
* [Move forward]
    -> alpha_node_169

=== upsilon_node_163 ===
A section of the crystal labyrinth.
* [Move forward]
    -> beta_node_170

=== phi_node_164 ===
A section of the crystal labyrinth.
* [Move forward]
    -> gamma_node_171

=== chi_node_165 ===
A section of the crystal labyrinth.
* [Move forward]
    -> delta_node_172

=== psi_node_166 ===
A section of the crystal labyrinth.
* [Move forward]
    -> epsilon_node_173

=== omega_node_167 ===
A section of the crystal labyrinth.
* [Move forward]
    -> zeta_node_174

=== rho_node_168 ===
A section of the crystal labyrinth.
* [Move forward]
    -> eta_node_175

=== alpha_node_169 ===
A section of the crystal labyrinth.
* [Move forward]
    -> theta_node_176

=== beta_node_170 ===
A section of the crystal labyrinth.
* [Move forward]
    -> iota_node_177

=== gamma_node_171 ===
A section of the crystal labyrinth.
* [Move forward]
    -> kappa_node_178

=== delta_node_172 ===
A section of the crystal labyrinth.
* [Move forward]
    -> lambda_node_179

=== epsilon_node_173 ===
A section of the crystal labyrinth.
* [Move forward]
    -> mu_node_180

=== zeta_node_174 ===
A section of the crystal labyrinth.
* [Move forward]
    -> nu_node_181

=== eta_node_175 ===
A section of the crystal labyrinth.
* [Move forward]
    -> xi_node_182

=== theta_node_176 ===
A section of the crystal labyrinth.
* [Move forward]
    -> omicron_node_183

=== iota_node_177 ===
A section of the crystal labyrinth.
* [Move forward]
    -> pi_node_184

=== kappa_node_178 ===
A section of the crystal labyrinth.
* [Move forward]
    -> sigma_node_185

=== lambda_node_179 ===
A section of the crystal labyrinth.
* [Move forward]
    -> tau_node_186

=== mu_node_180 ===
A section of the crystal labyrinth.
* [Move forward]
    -> upsilon_node_187

=== nu_node_181 ===
A section of the crystal labyrinth.
* [Move forward]
    -> phi_node_188

=== xi_node_182 ===
A section of the crystal labyrinth.
* [Move forward]
    -> state_de_approach_6

=== omicron_node_183 ===
A section of the crystal labyrinth.
* [Move forward]
    -> state_unr_entrance_6

=== pi_node_184 ===
A section of the crystal labyrinth.
* [Move forward]
    -> state_unr_entrance_6

=== sigma_node_185 ===
A section of the crystal labyrinth.
* [Move forward]
    -> amulet_corridor

=== tau_node_186 ===
A section of the crystal labyrinth.
* [Move forward]
    -> amulet_corridor

=== upsilon_node_187 ===
A section of the crystal labyrinth.
* [Move forward]
    -> amulet_gate

=== phi_node_188 ===
A section of the crystal labyrinth.
* [Move forward]
    -> exit_node

=== state_de_approach_6 ===
You find the has amulet here.
* [Take it and continue]
    ~ has_amulet = true
    -> state_dead_end_6
* [Leave it]
    -> gamma_node_3

=== state_dead_end_6 ===
A room where the has amulet is a hazard.
* [Try mechanism A] { !has_amulet }
    -> exit_node
* [Try mechanism B] { !has_amulet }
    -> alpha_node_1



=== state_unr_entrance_6 ===
Entrance sealed once has amulet is activated.
* [Enter] { !has_amulet }
    -> state_unr_node_6
* [Leave]
    -> beta_node_2

=== state_unr_node_6 ===

A sealed chamber.
* [Explore]
    -> exit_node
* [Leave]
    -> alpha_node_1

=== amulet_corridor ===
The has amulet is destroyed here.
* [Continue to the gate]
    ~ has_amulet = false
    -> amulet_gate
* [Go back]
    -> alpha_node_1

// CONTRADICTION: has_amulet set false -> required true at amulet_gate

=== amulet_gate ===
A gate requiring activation.
* [Use the has amulet] { has_amulet }
    -> exit_node
* [Turn back]
    -> alpha_node_1

// CONTRADICTION: has_amulet required true, set false in amulet_corridor

=== mirror_prison ===
There is no way forward.
* [Try to escape]
    -> mirror_prison
* [Wait]
    -> mirror_prison

// STRUCTURAL DEAD END

=== echo_trap ===
There is no way forward.
* [Try to escape]
    -> echo_trap
* [Wait]
    -> echo_trap

// STRUCTURAL DEAD END

=== dream_vault ===
// UNREACHABLE: nothing diverts here
A hidden area no path leads to.
* [Go to exit]
    -> exit_node
* [Go back]
    -> START

=== spectral_hall ===
// UNREACHABLE: nothing diverts here
A hidden area no path leads to.
* [Go to exit]
    -> exit_node
* [Go back]
    -> START

=== exit_node ===
You have reached the end of the crystal labyrinth.
-> END
