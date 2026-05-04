// Phase 2 - Story 7 (revised)
// Nodes: 200 | Target BF: 8.0 | Target Edges: ~1600

VAR has_resonance_key = false

-> START

=== START ===
You descend into an ancient underground facility. Passages branch in every direction.
* [Go to the command hub]
    -> command_hub
* [Go to the north sector]
    -> north_sector
* [Go to the south sector]
    -> south_sector
* [Go to the east sector]
    -> east_sector
* [Go to the west sector]
    -> west_sector
* [Go to the central chamber]
    -> central_chamber
* [Search the entry hall]
    -> entry_hall_search
* [Check the equipment locker]
    -> entry_locker

=== entry_hall_search ===
You search the entry hall. Dust and old records.
* [Go to the command hub]
    -> command_hub
* [Go to the north sector]
    -> north_sector
* [Go to the south sector]
    -> south_sector
* [Go to the east sector]
    -> east_sector
* [Go to the west sector]
    -> west_sector
* [Go to the central chamber]
    -> central_chamber
* [Return to start]
    -> START
* [Check the equipment locker]
    -> entry_locker

=== entry_locker ===
A locker with rope, a torch, and a map.
* [Take the rope]
    -> START
* [Take the torch]
    -> START
* [Take the map]
    -> START
* [Take everything]
    -> START
* [Go to the command hub]
    -> command_hub
* [Go to the north sector]
    -> north_sector
* [Go to the central chamber]
    -> central_chamber
* [Leave]
    -> START

=== command_hub ===
The command hub. Seven passages radiate outward.
* [Go to the north sector]
    -> north_sector
* [Go to the south sector]
    -> south_sector
* [Go to the east sector]
    -> east_sector
* [Go to the west sector]
    -> west_sector
* [Go to the central chamber]
    -> central_chamber
* [Go to the upper level]
    -> upper_level
* [Search the command consoles]
    -> console_search
* [Check the command archive]
    -> command_archive

=== console_search ===
The consoles hold operational logs and system status.
* [Go to the command hub]
    -> command_hub
* [Go to the north sector]
    -> north_sector
* [Go to the east sector]
    -> east_sector
* [Go to the upper level]
    -> upper_level
* [Go to the central chamber]
    -> central_chamber
* [Check the command archive]
    -> command_archive
* [Go to the west sector]
    -> west_sector
* [Return to start]
    -> START

=== command_archive ===
Rows of files and operational records.
* [Go to the command hub]
    -> command_hub
* [Search for useful records]
    -> archive_records
* [Go to the north sector]
    -> north_sector
* [Go to the east sector]
    -> east_sector
* [Go to the upper level]
    -> upper_level
* [Go to the central chamber]
    -> central_chamber
* [Go to the south sector]
    -> south_sector
* [Return to start]
    -> START

=== archive_records ===
You find operational schedules and personnel records.
* [Go to the command hub]
    -> command_hub
* [Go to the command archive]
    -> command_archive
* [Go to the north sector]
    -> north_sector
* [Go to the east sector]
    -> east_sector
* [Go to the upper level]
    -> upper_level
* [Go to the west sector]
    -> west_sector
* [Go to the central chamber]
    -> central_chamber
* [Return to start]
    -> START

=== north_sector ===
The north sector. Research labs and specimen storage.
* [Go to the command hub]
    -> command_hub
* [Try lab alpha]
    -> lab_alpha
* [Try lab beta]
    -> lab_beta
* [Try the specimen vault]
    -> specimen_vault
* [Try the north archive]
    -> north_archive
* [Go to the central chamber]
    -> central_chamber
* [Go to the east sector]
    -> east_sector
* [Go to the upper level]
    -> upper_level

=== lab_alpha ===
Laboratory alpha. Advanced research equipment.
* [Go to the north sector]
    -> north_sector
* [Search the benches]
    -> lab_alpha_search
* [Try lab beta]
    -> lab_beta
* [Go to the command hub]
    -> command_hub
* [Go to the central chamber]
    -> central_chamber
* [Try the specimen vault]
    -> specimen_vault
* [Go to the upper level]
    -> upper_level
* [Return to start]
    -> START

=== lab_alpha_search ===
Experiment logs and samples. You find a cipher fragment.
* [Take the cipher]
    -> lab_alpha
* [Go to the north sector]
    -> north_sector
* [Try lab beta]
    -> lab_beta
* [Go to the command hub]
    -> command_hub
* [Go to the central chamber]
    -> central_chamber
* [Go to the upper level]
    -> upper_level
* [Go to the west sector]
    -> west_sector
* [Return to start]
    -> START

=== lab_beta ===
Laboratory beta. A different research discipline.
* [Go to the north sector]
    -> north_sector
* [Search the lab]
    -> lab_beta_search
* [Try lab alpha]
    -> lab_alpha
* [Go to the command hub]
    -> command_hub
* [Go to the central chamber]
    -> central_chamber
* [Try the specimen vault]
    -> specimen_vault
* [Go to the east sector]
    -> east_sector
* [Return to start]
    -> START

=== lab_beta_search ===
Research notes and equipment. Interesting but not immediately useful.
* [Go to lab beta]
    -> lab_beta
* [Go to the north sector]
    -> north_sector
* [Go to lab alpha]
    -> lab_alpha
* [Go to the command hub]
    -> command_hub
* [Go to the central chamber]
    -> central_chamber
* [Go to the east sector]
    -> east_sector
* [Go to the upper level]
    -> upper_level
* [Return to start]
    -> START

=== specimen_vault ===
A vault of stored specimens. Cold and clinical.
* [Go to the north sector]
    -> north_sector
* [Search the vault]
    -> vault_search
* [Go to lab alpha]
    -> lab_alpha
* [Go to lab beta]
    -> lab_beta
* [Go to the command hub]
    -> command_hub
* [Go to the central chamber]
    -> central_chamber
* [Go to the east sector]
    -> east_sector
* [Return to start]
    -> START

=== vault_search ===
Specimen cases and inventory lists. You find a key among the supplies.
* [Take the key]
    -> specimen_vault
* [Go to the north sector]
    -> north_sector
* [Go to the command hub]
    -> command_hub
* [Go to the central chamber]
    -> central_chamber
* [Go to lab alpha]
    -> lab_alpha
* [Go to the east sector]
    -> east_sector
* [Go to the upper level]
    -> upper_level
* [Return to start]
    -> START

=== north_archive ===
The north sector archive. Decades of research records.
* [Go to the north sector]
    -> north_sector
* [Search the records]
    -> north_archive_search
* [Go to the command hub]
    -> command_hub
* [Go to lab alpha]
    -> lab_alpha
* [Go to lab beta]
    -> lab_beta
* [Go to the central chamber]
    -> central_chamber
* [Go to the upper level]
    -> upper_level
* [Return to start]
    -> START

=== north_archive_search ===
You find classified research summaries and a personal journal.
* [Go to the north archive]
    -> north_archive
* [Go to the north sector]
    -> north_sector
* [Go to the command hub]
    -> command_hub
* [Go to lab alpha]
    -> lab_alpha
* [Go to the central chamber]
    -> central_chamber
* [Go to the east sector]
    -> east_sector
* [Go to the upper level]
    -> upper_level
* [Return to start]
    -> START

=== south_sector ===
The south sector. Engineering and maintenance.
* [Go to the command hub]
    -> command_hub
* [Try the main workshop]
    -> main_workshop
* [Try the fabrication room]
    -> fabrication_room
* [Try the maintenance bay]
    -> maintenance_bay
* [Try the south storage]
    -> south_storage
* [Go to the central chamber]
    -> central_chamber
* [Go to the west sector]
    -> west_sector
* [Return to start]
    -> START

=== main_workshop ===
The main engineering workshop. Heavy tools and machinery.
* [Go to the south sector]
    -> south_sector
* [Search for tools]
    -> workshop_search
* [Try the fabrication room]
    -> fabrication_room
* [Try the maintenance bay]
    -> maintenance_bay
* [Go to the command hub]
    -> command_hub
* [Go to the central chamber]
    -> central_chamber
* [Go to the west sector]
    -> west_sector
* [Return to start]
    -> START

=== workshop_search ===
You find precision tools and a set of master keys.
* [Go to the main workshop]
    -> main_workshop
* [Go to the south sector]
    -> south_sector
* [Go to the fabrication room]
    -> fabrication_room
* [Go to the command hub]
    -> command_hub
* [Go to the central chamber]
    -> central_chamber
* [Go to the west sector]
    -> west_sector
* [Go to the upper level]
    -> upper_level
* [Return to start]
    -> START

=== fabrication_room ===
A room for manufacturing components and parts.
* [Go to the south sector]
    -> south_sector
* [Search the fabrication equipment]
    -> fab_search
* [Try the main workshop]
    -> main_workshop
* [Try the maintenance bay]
    -> maintenance_bay
* [Go to the command hub]
    -> command_hub
* [Go to the central chamber]
    -> central_chamber
* [Go to the east sector]
    -> east_sector
* [Return to start]
    -> START

=== fab_search ===
Production materials and component inventory. Nothing immediately useful.
* [Go to the fabrication room]
    -> fabrication_room
* [Go to the south sector]
    -> south_sector
* [Go to the main workshop]
    -> main_workshop
* [Go to the command hub]
    -> command_hub
* [Go to the central chamber]
    -> central_chamber
* [Go to the east sector]
    -> east_sector
* [Go to the upper level]
    -> upper_level
* [Return to start]
    -> START

=== maintenance_bay ===
The maintenance bay for facility systems.
* [Go to the south sector]
    -> south_sector
* [Search the bay]
    -> bay_search
* [Try the main workshop]
    -> main_workshop
* [Try the south storage]
    -> south_storage
* [Go to the command hub]
    -> command_hub
* [Go to the central chamber]
    -> central_chamber
* [Go to the west sector]
    -> west_sector
* [Return to start]
    -> START

=== bay_search ===
Maintenance logs and spare parts. You find an amulet among the personal effects.
* [Take the amulet]
    -> maintenance_bay
* [Go to the south sector]
    -> south_sector
* [Go to the main workshop]
    -> main_workshop
* [Go to the command hub]
    -> command_hub
* [Go to the central chamber]
    -> central_chamber
* [Go to the west sector]
    -> west_sector
* [Go to the upper level]
    -> upper_level
* [Return to start]
    -> START

=== south_storage ===
Large storage area for engineering supplies.
* [Go to the south sector]
    -> south_sector
* [Search the storage]
    -> south_storage_search
* [Try the maintenance bay]
    -> maintenance_bay
* [Try the main workshop]
    -> main_workshop
* [Go to the command hub]
    -> command_hub
* [Go to the central chamber]
    -> central_chamber
* [Go to the west sector]
    -> west_sector
* [Return to start]
    -> START

=== south_storage_search ===
Crates and supplies. Some useful, most outdated.
* [Go to the south storage]
    -> south_storage
* [Go to the south sector]
    -> south_sector
* [Go to the command hub]
    -> command_hub
* [Go to the central chamber]
    -> central_chamber
* [Go to the maintenance bay]
    -> maintenance_bay
* [Go to the east sector]
    -> east_sector
* [Go to the upper level]
    -> upper_level
* [Return to start]
    -> START

=== east_sector ===
The east sector. Data processing and communications.
* [Go to the command hub]
    -> command_hub
* [Try the server room]
    -> server_room
* [Try the comms centre]
    -> comms_centre
* [Try the data archive]
    -> data_archive
* [Try the east ops room]
    -> east_ops_room
* [Go to the central chamber]
    -> central_chamber
* [Go to the north sector]
    -> north_sector
* [Return to start]
    -> START

=== server_room ===
Rows of inactive server racks. Data cores still intact.
* [Go to the east sector]
    -> east_sector
* [Search the servers]
    -> server_search
* [Try the comms centre]
    -> comms_centre
* [Try the data archive]
    -> data_archive
* [Go to the command hub]
    -> command_hub
* [Go to the central chamber]
    -> central_chamber
* [Go to the upper level]
    -> upper_level
* [Return to start]
    -> START

=== server_search ===
The servers hold encrypted data. You extract some operational records.
* [Go to the server room]
    -> server_room
* [Go to the east sector]
    -> east_sector
* [Go to the comms centre]
    -> comms_centre
* [Go to the command hub]
    -> command_hub
* [Go to the central chamber]
    -> central_chamber
* [Go to the north sector]
    -> north_sector
* [Go to the upper level]
    -> upper_level
* [Return to start]
    -> START

=== comms_centre ===
The communications centre. Radios and satellite equipment.
* [Go to the east sector]
    -> east_sector
* [Try the radio systems]
    -> radio_systems
* [Try the server room]
    -> server_room
* [Try the data archive]
    -> data_archive
* [Go to the command hub]
    -> command_hub
* [Go to the central chamber]
    -> central_chamber
* [Go to the north sector]
    -> north_sector
* [Return to start]
    -> START

=== radio_systems ===
Radio equipment with recorded transmissions. The last ones are panicked.
* [Go to the comms centre]
    -> comms_centre
* [Go to the east sector]
    -> east_sector
* [Go to the server room]
    -> server_room
* [Go to the command hub]
    -> command_hub
* [Go to the central chamber]
    -> central_chamber
* [Go to the north sector]
    -> north_sector
* [Go to the upper level]
    -> upper_level
* [Return to start]
    -> START

=== data_archive ===
The main data archive. Petabytes of stored information.
* [Go to the east sector]
    -> east_sector
* [Search the archive]
    -> data_archive_search
* [Try the server room]
    -> server_room
* [Try the comms centre]
    -> comms_centre
* [Go to the command hub]
    -> command_hub
* [Go to the central chamber]
    -> central_chamber
* [Go to the upper level]
    -> upper_level
* [Return to start]
    -> START

=== data_archive_search ===
Classified files and research summaries. You find a guide's personal log.
* [Read the log]
    -> data_archive
* [Go to the east sector]
    -> east_sector
* [Go to the server room]
    -> server_room
* [Go to the command hub]
    -> command_hub
* [Go to the central chamber]
    -> central_chamber
* [Go to the north sector]
    -> north_sector
* [Go to the upper level]
    -> upper_level
* [Return to start]
    -> START

=== east_ops_room ===
The east operations room. Status boards and duty rosters.
* [Go to the east sector]
    -> east_sector
* [Search the ops room]
    -> east_ops_search
* [Go to the server room]
    -> server_room
* [Go to the comms centre]
    -> comms_centre
* [Go to the command hub]
    -> command_hub
* [Go to the central chamber]
    -> central_chamber
* [Go to the upper level]
    -> upper_level
* [Return to start]
    -> START

=== east_ops_search ===
Duty logs and incident reports. The last entries describe an emergency evacuation.
* [Go to the east ops room]
    -> east_ops_room
* [Go to the east sector]
    -> east_sector
* [Go to the command hub]
    -> command_hub
* [Go to the central chamber]
    -> central_chamber
* [Go to the north sector]
    -> north_sector
* [Go to the south sector]
    -> south_sector
* [Go to the upper level]
    -> upper_level
* [Return to start]
    -> START

=== west_sector ===
The west sector. Security and containment.
* [Go to the command hub]
    -> command_hub
* [Try the security hub]
    -> security_hub
* [Try the containment wing]
    -> containment_wing
* [Try the west archive]
    -> west_archive
* [Try the perimeter control]
    -> perimeter_control
* [Go to the central chamber]
    -> central_chamber
* [Go to the south sector]
    -> south_sector
* [Return to start]
    -> START

=== security_hub ===
The security hub. Monitors, access panels, and incident logs.
* [Go to the west sector]
    -> west_sector
* [Search for access codes]
    -> security_search
* [Try the containment wing]
    -> containment_wing
* [Try the perimeter control]
    -> perimeter_control
* [Go to the command hub]
    -> command_hub
* [Go to the central chamber]
    -> central_chamber
* [Go to the upper level]
    -> upper_level
* [Return to start]
    -> START

=== security_search ===
You find access logs and a master override card.
* [Go to the security hub]
    -> security_hub
* [Go to the west sector]
    -> west_sector
* [Go to the containment wing]
    -> containment_wing
* [Go to the command hub]
    -> command_hub
* [Go to the central chamber]
    -> central_chamber
* [Go to the north sector]
    -> north_sector
* [Go to the upper level]
    -> upper_level
* [Return to start]
    -> START

=== containment_wing ===
A wing for containment of hazardous materials. Sealed doors everywhere.
* [Go to the west sector]
    -> west_sector
* [Search the wing]
    -> containment_search
* [Try the security hub]
    -> security_hub
* [Try the west archive]
    -> west_archive
* [Go to the command hub]
    -> command_hub
* [Go to the central chamber]
    -> central_chamber
* [Go to the south sector]
    -> south_sector
* [Return to start]
    -> START

=== containment_search ===
Hazmat equipment and containment protocols. Nothing of immediate use.
* [Go to the containment wing]
    -> containment_wing
* [Go to the west sector]
    -> west_sector
* [Go to the security hub]
    -> security_hub
* [Go to the command hub]
    -> command_hub
* [Go to the central chamber]
    -> central_chamber
* [Go to the south sector]
    -> south_sector
* [Go to the upper level]
    -> upper_level
* [Return to start]
    -> START

=== west_archive ===
The west sector archive. Security records and containment reports.
* [Go to the west sector]
    -> west_sector
* [Search the archive]
    -> west_archive_search
* [Try the security hub]
    -> security_hub
* [Try the containment wing]
    -> containment_wing
* [Go to the command hub]
    -> command_hub
* [Go to the central chamber]
    -> central_chamber
* [Go to the upper level]
    -> upper_level
* [Return to start]
    -> START

=== west_archive_search ===
Incident reports and containment breach records. Alarming reading.
* [Go to the west archive]
    -> west_archive
* [Go to the west sector]
    -> west_sector
* [Go to the security hub]
    -> security_hub
* [Go to the command hub]
    -> command_hub
* [Go to the central chamber]
    -> central_chamber
* [Go to the north sector]
    -> north_sector
* [Go to the upper level]
    -> upper_level
* [Return to start]
    -> START

=== perimeter_control ===
Controls for the facility perimeter. Fence systems and gate controls.
* [Go to the west sector]
    -> west_sector
* [Check the fence controls]
    -> fence_controls
* [Try the security hub]
    -> security_hub
* [Try the west archive]
    -> west_archive
* [Go to the command hub]
    -> command_hub
* [Go to the central chamber]
    -> central_chamber
* [Go to the exit]
    -> facility_exit
* [Return to start]
    -> START

=== fence_controls ===
The fence control panels. You find a weakness in the outer fence.
* [Go to the perimeter control]
    -> perimeter_control
* [Go to the west sector]
    -> west_sector
* [Go to the security hub]
    -> security_hub
* [Go to the command hub]
    -> command_hub
* [Go to the central chamber]
    -> central_chamber
* [Go to the south sector]
    -> south_sector
* [Go to the exit]
    -> facility_exit
* [Return to start]
    -> START

=== central_chamber ===
The central chamber. The heart of the facility. All sectors connect here.
* [Go to the north sector]
    -> north_sector
* [Go to the south sector]
    -> south_sector
* [Go to the east sector]
    -> east_sector
* [Go to the west sector]
    -> west_sector
* [Go to the upper level]
    -> upper_level
* [Go to the lower level]
    -> lower_level
* [Search the chamber]
    -> central_search
* [Try the resonance corridor]
    -> resonance_corridor

=== central_search ===
The chamber holds artefacts and equipment from every sector.
* [Go to the central chamber]
    -> central_chamber
* [Go to the north sector]
    -> north_sector
* [Go to the south sector]
    -> south_sector
* [Go to the east sector]
    -> east_sector
* [Go to the west sector]
    -> west_sector
* [Go to the upper level]
    -> upper_level
* [Go to the lower level]
    -> lower_level
* [Return to start]
    -> START

=== upper_level ===
The upper level. Executive and administrative areas.
* [Go to the central chamber]
    -> central_chamber
* [Try the executive suite]
    -> executive_suite
* [Try the boardroom]
    -> upper_boardroom
* [Try the upper archive]
    -> upper_archive
* [Try the rooftop access]
    -> rooftop_access
* [Go to the command hub]
    -> command_hub
* [Go to the north sector]
    -> north_sector
* [Return to start]
    -> START

=== executive_suite ===
The executive suite. Offices and a private conference room.
* [Go to the upper level]
    -> upper_level
* [Search the main office]
    -> exec_office_search
* [Try the boardroom]
    -> upper_boardroom
* [Try the upper archive]
    -> upper_archive
* [Go to the central chamber]
    -> central_chamber
* [Go to the command hub]
    -> command_hub
* [Go to the north sector]
    -> north_sector
* [Return to start]
    -> START

=== exec_office_search ===
The executive desk holds personal files and a safe. The safe is empty.
* [Go to the executive suite]
    -> executive_suite
* [Go to the upper level]
    -> upper_level
* [Go to the boardroom]
    -> upper_boardroom
* [Go to the upper archive]
    -> upper_archive
* [Go to the central chamber]
    -> central_chamber
* [Go to the command hub]
    -> command_hub
* [Go to the east sector]
    -> east_sector
* [Return to start]
    -> START

=== upper_boardroom ===
A large boardroom. A presentation was being prepared when the facility was abandoned.
* [Go to the upper level]
    -> upper_level
* [Search the boardroom]
    -> boardroom_search
* [Try the executive suite]
    -> executive_suite
* [Try the upper archive]
    -> upper_archive
* [Go to the central chamber]
    -> central_chamber
* [Go to the command hub]
    -> command_hub
* [Go to the north sector]
    -> north_sector
* [Return to start]
    -> START

=== boardroom_search ===
Presentation materials and meeting minutes. The last agenda item was marked urgent.
* [Go to the upper boardroom]
    -> upper_boardroom
* [Go to the upper level]
    -> upper_level
* [Go to the executive suite]
    -> executive_suite
* [Go to the central chamber]
    -> central_chamber
* [Go to the command hub]
    -> command_hub
* [Go to the east sector]
    -> east_sector
* [Go to the rooftop access]
    -> rooftop_access
* [Return to start]
    -> START

=== upper_archive ===
The upper level archive. The most sensitive records kept here.
* [Go to the upper level]
    -> upper_level
* [Search the archive]
    -> upper_archive_search
* [Try the executive suite]
    -> executive_suite
* [Try the boardroom]
    -> upper_boardroom
* [Go to the central chamber]
    -> central_chamber
* [Go to the command hub]
    -> command_hub
* [Go to the east sector]
    -> east_sector
* [Return to start]
    -> START

=== upper_archive_search ===
Classified executive files and the facility's founding documents.
* [Go to the upper archive]
    -> upper_archive
* [Go to the upper level]
    -> upper_level
* [Go to the executive suite]
    -> executive_suite
* [Go to the central chamber]
    -> central_chamber
* [Go to the command hub]
    -> command_hub
* [Go to the north sector]
    -> north_sector
* [Go to the rooftop access]
    -> rooftop_access
* [Return to start]
    -> START

=== rooftop_access ===
The rooftop. A view across the facility and beyond.
* [Go to the upper level]
    -> upper_level
* [Look across the facility]
    -> rooftop_survey
* [Check the communications equipment]
    -> rooftop_comms
* [Go to the executive suite]
    -> executive_suite
* [Go to the upper archive]
    -> upper_archive
* [Go to the central chamber]
    -> central_chamber
* [Go to the exit]
    -> facility_exit
* [Return to start]
    -> START

=== rooftop_survey ===
From up here you can see the whole facility and the surrounding terrain.
* [Go to the rooftop]
    -> rooftop_access
* [Go to the upper level]
    -> upper_level
* [Go to the central chamber]
    -> central_chamber
* [Go to the command hub]
    -> command_hub
* [Go to the north sector]
    -> north_sector
* [Go to the exit]
    -> facility_exit
* [Go to the east sector]
    -> east_sector
* [Return to start]
    -> START

=== rooftop_comms ===
Communications antennae and a radio transmitter on the rooftop.
* [Go to the rooftop]
    -> rooftop_access
* [Go to the upper level]
    -> upper_level
* [Go to the comms centre]
    -> comms_centre
* [Go to the command hub]
    -> command_hub
* [Go to the central chamber]
    -> central_chamber
* [Go to the east sector]
    -> east_sector
* [Go to the exit]
    -> facility_exit
* [Return to start]
    -> START

=== lower_level ===
The lower level. Infrastructure and deep storage.
* [Go to the central chamber]
    -> central_chamber
* [Try the power plant]
    -> power_plant
* [Try the deep storage]
    -> deep_storage_area
* [Try the lower maintenance]
    -> lower_maintenance
* [Try the underground passage]
    -> underground_passage_lower
* [Go to the south sector]
    -> south_sector
* [Go to the west sector]
    -> west_sector
* [Return to start]
    -> START

=== power_plant ===
The geothermal power plant. Still generating power after all these years.
* [Go to the lower level]
    -> lower_level
* [Examine the generators]
    -> generator_examination
* [Try the deep storage]
    -> deep_storage_area
* [Try the lower maintenance]
    -> lower_maintenance
* [Go to the central chamber]
    -> central_chamber
* [Go to the south sector]
    -> south_sector
* [Go to the command hub]
    -> command_hub
* [Return to start]
    -> START

=== generator_examination ===
Massive generators running on geothermal energy. Humming quietly.
* [Go to the power plant]
    -> power_plant
* [Go to the lower level]
    -> lower_level
* [Go to the deep storage area]
    -> deep_storage_area
* [Go to the central chamber]
    -> central_chamber
* [Go to the south sector]
    -> south_sector
* [Go to the command hub]
    -> command_hub
* [Go to the upper level]
    -> upper_level
* [Return to start]
    -> START

=== deep_storage_area ===
Deep storage vaults. Long-term preservation of critical materials.
* [Go to the lower level]
    -> lower_level
* [Search the vaults]
    -> vault_area_search
* [Try the power plant]
    -> power_plant
* [Try the lower maintenance]
    -> lower_maintenance
* [Go to the central chamber]
    -> central_chamber
* [Go to the west sector]
    -> west_sector
* [Go to the command hub]
    -> command_hub
* [Return to start]
    -> START

=== vault_area_search ===
The vaults contain preserved specimens, records, and equipment.
* [Go to the deep storage area]
    -> deep_storage_area
* [Go to the lower level]
    -> lower_level
* [Go to the power plant]
    -> power_plant
* [Go to the central chamber]
    -> central_chamber
* [Go to the west sector]
    -> west_sector
* [Go to the command hub]
    -> command_hub
* [Go to the upper level]
    -> upper_level
* [Return to start]
    -> START

=== lower_maintenance ===
Lower level maintenance areas. Pipes and systems everywhere.
* [Go to the lower level]
    -> lower_level
* [Search for useful equipment]
    -> lower_maint_search
* [Try the power plant]
    -> power_plant
* [Try the deep storage]
    -> deep_storage_area
* [Go to the central chamber]
    -> central_chamber
* [Go to the south sector]
    -> south_sector
* [Go to the west sector]
    -> west_sector
* [Return to start]
    -> START

=== lower_maint_search ===
Maintenance tools and emergency supplies. A torch still works.
* [Go to the lower maintenance]
    -> lower_maintenance
* [Go to the lower level]
    -> lower_level
* [Go to the power plant]
    -> power_plant
* [Go to the central chamber]
    -> central_chamber
* [Go to the south sector]
    -> south_sector
* [Go to the command hub]
    -> command_hub
* [Go to the upper level]
    -> upper_level
* [Return to start]
    -> START

=== underground_passage_lower ===
A passage leading beneath the facility to an external exit.
* [Go to the lower level]
    -> lower_level
* [Follow the passage to the exit]
    -> facility_exit
* [Try the power plant]
    -> power_plant
* [Try the deep storage]
    -> deep_storage_area
* [Go to the central chamber]
    -> central_chamber
* [Go to the west sector]
    -> west_sector
* [Go to the south sector]
    -> south_sector
* [Return to start]
    -> START

=== resonance_corridor ===
A corridor leading to the resonance gate. The resonance key shatters in your hand.
* [Continue to the gate]
    ~ has_resonance_key = false
    -> resonance_gate
* [Go to the central chamber]
    -> central_chamber
* [Go to the north sector]
    -> north_sector
* [Go to the east sector]
    -> east_sector
* [Go to the command hub]
    -> command_hub
* [Go to the upper level]
    -> upper_level
* [Return to start]
    -> START

=== resonance_gate ===
The resonance-locked gate. An ancient mechanism.
* [Use the resonance key] { has_resonance_key }
    -> facility_exit
* [Try to force it]
    -> resonance_corridor
* [Go to the central chamber]
    -> central_chamber
* [Go to the north sector]
    -> north_sector
* [Go to the east sector]
    -> east_sector
* [Go to the command hub]
    -> command_hub
* [Return to start]
    -> START

// CONTRADICTION: has_resonance_key set false in resonance_corridor, required true here.

=== facility_exit ===
You emerge from the facility into the open air. It is over.
-> END

=== null_space ===
A chamber of absolute darkness and silence. There is no exit.
* [Search for a way out]
    -> null_space
* [Call for help]
    -> null_space
* [Wait]
    -> null_space
* [Try the walls]
    -> null_space
* [Try the floor]
    -> null_space
* [Try the ceiling]
    -> null_space
* [Give up searching]
    -> null_space
* [Stay still]
    -> null_space

// STRUCTURAL DEAD END

=== crystalline_prison ===
A chamber sealed with crystal formations. No way through.
* [Try to break the crystals]
    -> crystalline_prison
* [Look for a gap]
    -> crystalline_prison
* [Call for help]
    -> crystalline_prison
* [Wait for rescue]
    -> crystalline_prison
* [Search systematically]
    -> crystalline_prison
* [Try the floor]
    -> crystalline_prison
* [Try the walls]
    -> crystalline_prison
* [Give up]
    -> crystalline_prison

// STRUCTURAL DEAD END

=== sealed_vault_wing ===
// UNREACHABLE: nothing diverts here
A sealed wing of the facility vault. Pristine and untouched.
* [Explore the wing]
    -> facility_exit
* [Go to the lower level]
    -> lower_level
* [Go to the west sector]
    -> west_sector
* [Go to the command hub]
    -> command_hub
* [Go to the central chamber]
    -> central_chamber
* [Go to the north sector]
    -> north_sector
* [Return to start]
    -> START

=== phantom_gallery ===
// UNREACHABLE: nothing diverts here
A gallery of unknown origin within the facility.
* [Explore the gallery]
    -> facility_exit
* [Go to the upper level]
    -> upper_level
* [Go to the east sector]
    -> east_sector
* [Go to the command hub]
    -> command_hub
* [Go to the central chamber]
    -> central_chamber
* [Go to the north sector]
    -> north_sector
* [Return to start]
    -> START


=== sector_five ===
Sector five. Biological research and containment.
* [Go to the command hub]
    -> command_hub
* [Try the bio lab]
    -> bio_lab
* [Try the containment cells]
    -> containment_cells
* [Try the bio archive]
    -> bio_archive
* [Try the decontamination room]
    -> decontamination_room
* [Go to the central chamber]
    -> central_chamber
* [Go to the north sector]
    -> north_sector
* [Return to start]
    -> START

=== bio_lab ===
A biological research laboratory. Sealed cabinets and sterile surfaces.
* [Go to sector five]
    -> sector_five
* [Search the lab]
    -> bio_lab_search
* [Try the containment cells]
    -> containment_cells
* [Try the bio archive]
    -> bio_archive
* [Go to the command hub]
    -> command_hub
* [Go to the central chamber]
    -> central_chamber
* [Go to the north sector]
    -> north_sector
* [Return to start]
    -> START

=== bio_lab_search ===
Research samples and experiment logs. Complex biological data.
* [Go to the bio lab]
    -> bio_lab
* [Go to sector five]
    -> sector_five
* [Go to the containment cells]
    -> containment_cells
* [Go to the command hub]
    -> command_hub
* [Go to the central chamber]
    -> central_chamber
* [Go to the north sector]
    -> north_sector
* [Go to the upper level]
    -> upper_level
* [Return to start]
    -> START

=== containment_cells ===
Containment cells for biological specimens. All empty now.
* [Go to sector five]
    -> sector_five
* [Search the cells]
    -> cells_search
* [Try the bio lab]
    -> bio_lab
* [Try the decontamination room]
    -> decontamination_room
* [Go to the command hub]
    -> command_hub
* [Go to the central chamber]
    -> central_chamber
* [Go to the west sector]
    -> west_sector
* [Return to start]
    -> START

=== cells_search ===
The cells are empty but show signs of previous occupants.
* [Go to the containment cells]
    -> containment_cells
* [Go to sector five]
    -> sector_five
* [Go to the bio lab]
    -> bio_lab
* [Go to the command hub]
    -> command_hub
* [Go to the central chamber]
    -> central_chamber
* [Go to the west sector]
    -> west_sector
* [Go to the upper level]
    -> upper_level
* [Return to start]
    -> START

=== bio_archive ===
The biological sector archive. Research publications and data.
* [Go to sector five]
    -> sector_five
* [Search the archive]
    -> bio_archive_search
* [Try the bio lab]
    -> bio_lab
* [Try the containment cells]
    -> containment_cells
* [Go to the command hub]
    -> command_hub
* [Go to the central chamber]
    -> central_chamber
* [Go to the north sector]
    -> north_sector
* [Return to start]
    -> START

=== bio_archive_search ===
Research publications and a complete record of the facility's biological programme.
* [Go to the bio archive]
    -> bio_archive
* [Go to sector five]
    -> sector_five
* [Go to the bio lab]
    -> bio_lab
* [Go to the command hub]
    -> command_hub
* [Go to the central chamber]
    -> central_chamber
* [Go to the north sector]
    -> north_sector
* [Go to the upper level]
    -> upper_level
* [Return to start]
    -> START

=== decontamination_room ===
A decontamination chamber between the bio sector and the rest of the facility.
* [Go to sector five]
    -> sector_five
* [Search the room]
    -> decon_search
* [Go to the bio lab]
    -> bio_lab
* [Go to the containment cells]
    -> containment_cells
* [Go to the command hub]
    -> command_hub
* [Go to the central chamber]
    -> central_chamber
* [Go to the north sector]
    -> north_sector
* [Return to start]
    -> START

=== decon_search ===
Protective suits and decontamination supplies.
* [Go to the decontamination room]
    -> decontamination_room
* [Go to sector five]
    -> sector_five
* [Go to the bio lab]
    -> bio_lab
* [Go to the command hub]
    -> command_hub
* [Go to the central chamber]
    -> central_chamber
* [Go to the west sector]
    -> west_sector
* [Go to the upper level]
    -> upper_level
* [Return to start]
    -> START

=== sector_six ===
Sector six. Physics and energy research.
* [Go to the command hub]
    -> command_hub
* [Try the physics lab]
    -> physics_lab
* [Try the energy core]
    -> energy_core
* [Try the physics archive]
    -> physics_archive
* [Try the test chamber]
    -> test_chamber
* [Go to the central chamber]
    -> central_chamber
* [Go to the east sector]
    -> east_sector
* [Return to start]
    -> START

=== physics_lab ===
A physics laboratory. Particle detection equipment and measurement instruments.
* [Go to sector six]
    -> sector_six
* [Search the lab]
    -> physics_search
* [Try the energy core]
    -> energy_core
* [Try the test chamber]
    -> test_chamber
* [Go to the command hub]
    -> command_hub
* [Go to the central chamber]
    -> central_chamber
* [Go to the east sector]
    -> east_sector
* [Return to start]
    -> START

=== physics_search ===
Experimental data and measurement logs. Extraordinary research.
* [Go to the physics lab]
    -> physics_lab
* [Go to sector six]
    -> sector_six
* [Go to the energy core]
    -> energy_core
* [Go to the command hub]
    -> command_hub
* [Go to the central chamber]
    -> central_chamber
* [Go to the east sector]
    -> east_sector
* [Go to the upper level]
    -> upper_level
* [Return to start]
    -> START

=== energy_core ===
The energy core room. A reactor at the heart of the facility's power supply.
* [Go to sector six]
    -> sector_six
* [Examine the core]
    -> core_examination
* [Try the physics lab]
    -> physics_lab
* [Try the test chamber]
    -> test_chamber
* [Go to the command hub]
    -> command_hub
* [Go to the central chamber]
    -> central_chamber
* [Go to the lower level]
    -> lower_level
* [Return to start]
    -> START

=== core_examination ===
The reactor core is still active. A faint hum permeates the room.
* [Go to the energy core]
    -> energy_core
* [Go to sector six]
    -> sector_six
* [Go to the physics lab]
    -> physics_lab
* [Go to the command hub]
    -> command_hub
* [Go to the central chamber]
    -> central_chamber
* [Go to the lower level]
    -> lower_level
* [Go to the upper level]
    -> upper_level
* [Return to start]
    -> START

=== physics_archive ===
The physics sector archive. Theoretical and experimental records.
* [Go to sector six]
    -> sector_six
* [Search the archive]
    -> physics_archive_search
* [Try the physics lab]
    -> physics_lab
* [Try the energy core]
    -> energy_core
* [Go to the command hub]
    -> command_hub
* [Go to the central chamber]
    -> central_chamber
* [Go to the east sector]
    -> east_sector
* [Return to start]
    -> START

=== physics_archive_search ===
Groundbreaking theoretical work. The research here was decades ahead of its time.
* [Go to the physics archive]
    -> physics_archive
* [Go to sector six]
    -> sector_six
* [Go to the physics lab]
    -> physics_lab
* [Go to the command hub]
    -> command_hub
* [Go to the central chamber]
    -> central_chamber
* [Go to the east sector]
    -> east_sector
* [Go to the upper level]
    -> upper_level
* [Return to start]
    -> START

=== test_chamber ===
A large test chamber for physical experiments. High ceilings and reinforced walls.
* [Go to sector six]
    -> sector_six
* [Search the chamber]
    -> test_chamber_search
* [Try the physics lab]
    -> physics_lab
* [Try the energy core]
    -> energy_core
* [Go to the command hub]
    -> command_hub
* [Go to the central chamber]
    -> central_chamber
* [Go to the east sector]
    -> east_sector
* [Return to start]
    -> START

=== test_chamber_search ===
Test equipment and experimental apparatus. Some still functional.
* [Go to the test chamber]
    -> test_chamber
* [Go to sector six]
    -> sector_six
* [Go to the physics lab]
    -> physics_lab
* [Go to the command hub]
    -> command_hub
* [Go to the central chamber]
    -> central_chamber
* [Go to the east sector]
    -> east_sector
* [Go to the upper level]
    -> upper_level
* [Return to start]
    -> START

=== sector_seven ===
Sector seven. Materials science and geology.
* [Go to the command hub]
    -> command_hub
* [Try the materials lab]
    -> materials_lab
* [Try the geology room]
    -> geology_room
* [Try the materials archive]
    -> materials_archive
* [Try the sample storage]
    -> sample_storage
* [Go to the central chamber]
    -> central_chamber
* [Go to the south sector]
    -> south_sector
* [Return to start]
    -> START

=== materials_lab ===
A materials science laboratory. Samples and testing equipment.
* [Go to sector seven]
    -> sector_seven
* [Search the lab]
    -> materials_search
* [Try the geology room]
    -> geology_room
* [Try the sample storage]
    -> sample_storage
* [Go to the command hub]
    -> command_hub
* [Go to the central chamber]
    -> central_chamber
* [Go to the south sector]
    -> south_sector
* [Return to start]
    -> START

=== materials_search ===
Material samples and testing data. Various geological specimens.
* [Go to the materials lab]
    -> materials_lab
* [Go to sector seven]
    -> sector_seven
* [Go to the geology room]
    -> geology_room
* [Go to the command hub]
    -> command_hub
* [Go to the central chamber]
    -> central_chamber
* [Go to the south sector]
    -> south_sector
* [Go to the upper level]
    -> upper_level
* [Return to start]
    -> START

=== geology_room ===
A geology analysis room. Core samples and seismic data.
* [Go to sector seven]
    -> sector_seven
* [Search the room]
    -> geology_search
* [Try the materials lab]
    -> materials_lab
* [Try the materials archive]
    -> materials_archive
* [Go to the command hub]
    -> command_hub
* [Go to the central chamber]
    -> central_chamber
* [Go to the lower level]
    -> lower_level
* [Return to start]
    -> START

=== geology_search ===
Seismic logs and geological surveys of the surrounding area.
* [Go to the geology room]
    -> geology_room
* [Go to sector seven]
    -> sector_seven
* [Go to the materials lab]
    -> materials_lab
* [Go to the command hub]
    -> command_hub
* [Go to the central chamber]
    -> central_chamber
* [Go to the lower level]
    -> lower_level
* [Go to the upper level]
    -> upper_level
* [Return to start]
    -> START

=== materials_archive ===
The materials sector archive.
* [Go to sector seven]
    -> sector_seven
* [Search the archive]
    -> materials_archive_search
* [Try the materials lab]
    -> materials_lab
* [Try the geology room]
    -> geology_room
* [Go to the command hub]
    -> command_hub
* [Go to the central chamber]
    -> central_chamber
* [Go to the south sector]
    -> south_sector
* [Return to start]
    -> START

=== materials_archive_search ===
Research publications and material property databases.
* [Go to the materials archive]
    -> materials_archive
* [Go to sector seven]
    -> sector_seven
* [Go to the materials lab]
    -> materials_lab
* [Go to the command hub]
    -> command_hub
* [Go to the central chamber]
    -> central_chamber
* [Go to the south sector]
    -> south_sector
* [Go to the upper level]
    -> upper_level
* [Return to start]
    -> START

=== sample_storage ===
Storage for geological and materials samples. Neatly catalogued.
* [Go to sector seven]
    -> sector_seven
* [Search the storage]
    -> sample_storage_search
* [Try the materials lab]
    -> materials_lab
* [Try the geology room]
    -> geology_room
* [Go to the command hub]
    -> command_hub
* [Go to the central chamber]
    -> central_chamber
* [Go to the south sector]
    -> south_sector
* [Return to start]
    -> START

=== sample_storage_search ===
Thousands of catalogued samples. Remarkable collection.
* [Go to the sample storage]
    -> sample_storage
* [Go to sector seven]
    -> sector_seven
* [Go to the materials lab]
    -> materials_lab
* [Go to the command hub]
    -> command_hub
* [Go to the central chamber]
    -> central_chamber
* [Go to the south sector]
    -> south_sector
* [Go to the upper level]
    -> upper_level
* [Return to start]
    -> START


=== transit_hub_seven ===
A transit hub connecting all facility sectors.
* [Go to the north sector]
    -> north_sector
* [Go to the south sector]
    -> south_sector
* [Go to the east sector]
    -> east_sector
* [Go to the west sector]
    -> west_sector
* [Go to sector five]
    -> sector_five
* [Go to sector six]
    -> sector_six
* [Go to sector seven]
    -> sector_seven
* [Go to the central chamber]
    -> central_chamber

=== welfare_block ===
The staff welfare block. Canteen, gym, and accommodation.
* [Try the canteen]
    -> facility_canteen
* [Try the gym]
    -> facility_gym
* [Try the accommodation]
    -> staff_accommodation
* [Try the medical centre]
    -> medical_centre
* [Go to the central chamber]
    -> central_chamber
* [Go to the south sector]
    -> south_sector
* [Go to the command hub]
    -> command_hub
* [Return to start]
    -> START

=== facility_canteen ===
A large staff canteen. Industrial kitchen and dining area.
* [Go to the welfare block]
    -> welfare_block
* [Search for food supplies]
    -> canteen_search
* [Try the gym]
    -> facility_gym
* [Try the accommodation]
    -> staff_accommodation
* [Go to the central chamber]
    -> central_chamber
* [Go to the south sector]
    -> south_sector
* [Go to the command hub]
    -> command_hub
* [Return to start]
    -> START

=== canteen_search ===
Preserved food and kitchen equipment. Some supplies still usable.
* [Go to the canteen]
    -> facility_canteen
* [Go to the welfare block]
    -> welfare_block
* [Go to the gym]
    -> facility_gym
* [Go to the central chamber]
    -> central_chamber
* [Go to the south sector]
    -> south_sector
* [Go to the command hub]
    -> command_hub
* [Go to the upper level]
    -> upper_level
* [Return to start]
    -> START

=== facility_gym ===
A well-equipped staff gymnasium. Long unused.
* [Go to the welfare block]
    -> welfare_block
* [Search the gym]
    -> gym_search
* [Try the canteen]
    -> facility_canteen
* [Try the accommodation]
    -> staff_accommodation
* [Go to the central chamber]
    -> central_chamber
* [Go to the south sector]
    -> south_sector
* [Go to the command hub]
    -> command_hub
* [Return to start]
    -> START

=== gym_search ===
Sports equipment and lockers. Personal effects of former staff.
* [Go to the gym]
    -> facility_gym
* [Go to the welfare block]
    -> welfare_block
* [Go to the canteen]
    -> facility_canteen
* [Go to the central chamber]
    -> central_chamber
* [Go to the south sector]
    -> south_sector
* [Go to the command hub]
    -> command_hub
* [Go to the upper level]
    -> upper_level
* [Return to start]
    -> START

=== staff_accommodation ===
Residential quarters for long-term staff. Rows of small rooms.
* [Go to the welfare block]
    -> welfare_block
* [Search the rooms]
    -> accommodation_search
* [Try the canteen]
    -> facility_canteen
* [Try the medical centre]
    -> medical_centre
* [Go to the central chamber]
    -> central_chamber
* [Go to the south sector]
    -> south_sector
* [Go to the command hub]
    -> command_hub
* [Return to start]
    -> START

=== accommodation_search ===
Personal effects and journals. Lives interrupted mid-routine.
* [Go to the accommodation]
    -> staff_accommodation
* [Go to the welfare block]
    -> welfare_block
* [Go to the canteen]
    -> facility_canteen
* [Go to the central chamber]
    -> central_chamber
* [Go to the south sector]
    -> south_sector
* [Go to the command hub]
    -> command_hub
* [Go to the upper level]
    -> upper_level
* [Return to start]
    -> START

=== medical_centre ===
The facility medical centre. Treatment rooms and a pharmacy.
* [Go to the welfare block]
    -> welfare_block
* [Search for medical supplies]
    -> medical_search
* [Try the canteen]
    -> facility_canteen
* [Try the accommodation]
    -> staff_accommodation
* [Go to the central chamber]
    -> central_chamber
* [Go to the south sector]
    -> south_sector
* [Go to the command hub]
    -> command_hub
* [Return to start]
    -> START

=== medical_search ===
Medical supplies and patient records. The last records describe stress and fatigue.
* [Go to the medical centre]
    -> medical_centre
* [Go to the welfare block]
    -> welfare_block
* [Go to the accommodation]
    -> staff_accommodation
* [Go to the central chamber]
    -> central_chamber
* [Go to the south sector]
    -> south_sector
* [Go to the command hub]
    -> command_hub
* [Go to the upper level]
    -> upper_level
* [Return to start]
    -> START

=== logistics_centre ===
The logistics and supply centre. Receiving, storage, and dispatch.
* [Try the receiving bay]
    -> receiving_bay_log
* [Try the dispatch area]
    -> dispatch_area_log
* [Try the supply store]
    -> supply_store
* [Try the logistics office]
    -> logistics_office
* [Go to the central chamber]
    -> central_chamber
* [Go to the south sector]
    -> south_sector
* [Go to the command hub]
    -> command_hub
* [Return to start]
    -> START

=== receiving_bay_log ===
The receiving bay. Loading docks and delivery records.
* [Go to the logistics centre]
    -> logistics_centre
* [Search the bay]
    -> receiving_search
* [Try the dispatch area]
    -> dispatch_area_log
* [Try the supply store]
    -> supply_store
* [Go to the central chamber]
    -> central_chamber
* [Go to the south sector]
    -> south_sector
* [Go to the command hub]
    -> command_hub
* [Return to start]
    -> START

=== receiving_search ===
Delivery manifests and incoming stock records.
* [Go to the receiving bay]
    -> receiving_bay_log
* [Go to the logistics centre]
    -> logistics_centre
* [Go to the dispatch area]
    -> dispatch_area_log
* [Go to the central chamber]
    -> central_chamber
* [Go to the south sector]
    -> south_sector
* [Go to the command hub]
    -> command_hub
* [Go to the upper level]
    -> upper_level
* [Return to start]
    -> START

=== dispatch_area_log ===
The dispatch area. Outgoing shipments and packaging materials.
* [Go to the logistics centre]
    -> logistics_centre
* [Search the area]
    -> dispatch_search
* [Try the receiving bay]
    -> receiving_bay_log
* [Try the supply store]
    -> supply_store
* [Go to the central chamber]
    -> central_chamber
* [Go to the south sector]
    -> south_sector
* [Go to the command hub]
    -> command_hub
* [Return to start]
    -> START

=== dispatch_search ===
Packaging materials and outgoing records. The last shipment was years ago.
* [Go to the dispatch area]
    -> dispatch_area_log
* [Go to the logistics centre]
    -> logistics_centre
* [Go to the receiving bay]
    -> receiving_bay_log
* [Go to the central chamber]
    -> central_chamber
* [Go to the south sector]
    -> south_sector
* [Go to the command hub]
    -> command_hub
* [Go to the upper level]
    -> upper_level
* [Return to start]
    -> START

=== supply_store ===
The central supply store. General consumables and equipment.
* [Go to the logistics centre]
    -> logistics_centre
* [Search the store]
    -> supply_store_search
* [Try the receiving bay]
    -> receiving_bay_log
* [Try the dispatch area]
    -> dispatch_area_log
* [Go to the central chamber]
    -> central_chamber
* [Go to the south sector]
    -> south_sector
* [Go to the command hub]
    -> command_hub
* [Return to start]
    -> START

=== supply_store_search ===
General supplies. Some useful items among the inventory.
* [Go to the supply store]
    -> supply_store
* [Go to the logistics centre]
    -> logistics_centre
* [Go to the receiving bay]
    -> receiving_bay_log
* [Go to the central chamber]
    -> central_chamber
* [Go to the south sector]
    -> south_sector
* [Go to the command hub]
    -> command_hub
* [Go to the upper level]
    -> upper_level
* [Return to start]
    -> START

=== logistics_office ===
The logistics management office.
* [Go to the logistics centre]
    -> logistics_centre
* [Search the office]
    -> logistics_office_search
* [Try the supply store]
    -> supply_store
* [Try the receiving bay]
    -> receiving_bay_log
* [Go to the central chamber]
    -> central_chamber
* [Go to the south sector]
    -> south_sector
* [Go to the command hub]
    -> command_hub
* [Return to start]
    -> START

=== logistics_office_search ===
Supply contracts and inventory management records.
* [Go to the logistics office]
    -> logistics_office
* [Go to the logistics centre]
    -> logistics_centre
* [Go to the supply store]
    -> supply_store
* [Go to the central chamber]
    -> central_chamber
* [Go to the south sector]
    -> south_sector
* [Go to the command hub]
    -> command_hub
* [Go to the upper level]
    -> upper_level
* [Return to start]
    -> START


=== it_centre ===
The IT centre. Network infrastructure and technical support.
* [Try the network room]
    -> network_room
* [Try the helpdesk]
    -> it_helpdesk
* [Try the data centre]
    -> it_data_centre
* [Try the it_archive]
    -> it_archive
* [Go to the central chamber]
    -> central_chamber
* [Go to the east sector]
    -> east_sector
* [Go to the command hub]
    -> command_hub
* [Return to start]
    -> START

=== network_room ===
Network infrastructure. Routers and switches, all inactive.
* [Go to the it centre]
    -> it_centre
* [Search the room]
    -> network_search
* [Try the helpdesk]
    -> it_helpdesk
* [Try the data centre]
    -> it_data_centre
* [Go to the central chamber]
    -> central_chamber
* [Go to the east sector]
    -> east_sector
* [Go to the command hub]
    -> command_hub
* [Return to start]
    -> START

=== network_search ===
Network diagrams and configuration records. A complete map of the facility's systems.
* [Go to the network room]
    -> network_room
* [Go to the it centre]
    -> it_centre
* [Go to the helpdesk]
    -> it_helpdesk
* [Go to the central chamber]
    -> central_chamber
* [Go to the east sector]
    -> east_sector
* [Go to the command hub]
    -> command_hub
* [Go to the upper level]
    -> upper_level
* [Return to start]
    -> START

=== it_helpdesk ===
The IT helpdesk. Support tickets and equipment logs.
* [Go to the it centre]
    -> it_centre
* [Search the helpdesk]
    -> helpdesk_search
* [Try the network room]
    -> network_room
* [Try the data centre]
    -> it_data_centre
* [Go to the central chamber]
    -> central_chamber
* [Go to the east sector]
    -> east_sector
* [Go to the command hub]
    -> command_hub
* [Return to start]
    -> START

=== helpdesk_search ===
Support tickets reveal common problems. Recurring issues with containment systems.
* [Go to the helpdesk]
    -> it_helpdesk
* [Go to the it centre]
    -> it_centre
* [Go to the network room]
    -> network_room
* [Go to the central chamber]
    -> central_chamber
* [Go to the east sector]
    -> east_sector
* [Go to the command hub]
    -> command_hub
* [Go to the upper level]
    -> upper_level
* [Return to start]
    -> START

=== it_data_centre ===
A data centre for the facility's computing needs.
* [Go to the it centre]
    -> it_centre
* [Search the data centre]
    -> data_centre_search
* [Try the network room]
    -> network_room
* [Try the it archive]
    -> it_archive
* [Go to the central chamber]
    -> central_chamber
* [Go to the east sector]
    -> east_sector
* [Go to the command hub]
    -> command_hub
* [Return to start]
    -> START

=== data_centre_search ===
Computing equipment and storage arrays. The data is still intact.
* [Go to the data centre]
    -> it_data_centre
* [Go to the it centre]
    -> it_centre
* [Go to the network room]
    -> network_room
* [Go to the central chamber]
    -> central_chamber
* [Go to the east sector]
    -> east_sector
* [Go to the command hub]
    -> command_hub
* [Go to the upper level]
    -> upper_level
* [Return to start]
    -> START

=== it_archive ===
The IT archive. System logs and technical documentation.
* [Go to the it centre]
    -> it_centre
* [Search the archive]
    -> it_archive_search
* [Try the network room]
    -> network_room
* [Try the data centre]
    -> it_data_centre
* [Go to the central chamber]
    -> central_chamber
* [Go to the east sector]
    -> east_sector
* [Go to the command hub]
    -> command_hub
* [Return to start]
    -> START

=== it_archive_search ===
System logs reveal the sequence of events that led to the facility's abandonment.
* [Go to the it archive]
    -> it_archive
* [Go to the it centre]
    -> it_centre
* [Go to the network room]
    -> network_room
* [Go to the central chamber]
    -> central_chamber
* [Go to the east sector]
    -> east_sector
* [Go to the command hub]
    -> command_hub
* [Go to the upper level]
    -> upper_level
* [Return to start]
    -> START

=== research_coordination ===
The research coordination office. Managing all research sectors.
* [Search the main office]
    -> coord_office_search
* [Try the meeting room]
    -> coord_meeting_room
* [Try the coordination archive]
    -> coord_archive
* [Try the liaison offices]
    -> liaison_offices
* [Go to the central chamber]
    -> central_chamber
* [Go to the north sector]
    -> north_sector
* [Go to the command hub]
    -> command_hub
* [Return to start]
    -> START

=== coord_office_search ===
Research schedules and inter-sector project plans.
* [Go to the research coordination]
    -> research_coordination
* [Go to the meeting room]
    -> coord_meeting_room
* [Go to the coordination archive]
    -> coord_archive
* [Go to the central chamber]
    -> central_chamber
* [Go to the north sector]
    -> north_sector
* [Go to the east sector]
    -> east_sector
* [Go to the command hub]
    -> command_hub
* [Return to start]
    -> START

=== coord_meeting_room ===
A meeting room for cross-sector coordination.
* [Go to the research coordination]
    -> research_coordination
* [Search the room]
    -> coord_meeting_search
* [Go to the coord office]
    -> coord_office_search
* [Go to the coordination archive]
    -> coord_archive
* [Go to the central chamber]
    -> central_chamber
* [Go to the north sector]
    -> north_sector
* [Go to the command hub]
    -> command_hub
* [Return to start]
    -> START

=== coord_meeting_search ===
Meeting minutes and action items. The last meeting addressed an emergency.
* [Go to the meeting room]
    -> coord_meeting_room
* [Go to the research coordination]
    -> research_coordination
* [Go to the coordination archive]
    -> coord_archive
* [Go to the central chamber]
    -> central_chamber
* [Go to the north sector]
    -> north_sector
* [Go to the command hub]
    -> command_hub
* [Go to the upper level]
    -> upper_level
* [Return to start]
    -> START

=== coord_archive ===
The coordination archive. Cross-sector research records.
* [Go to the research coordination]
    -> research_coordination
* [Search the archive]
    -> coord_archive_search
* [Try the meeting room]
    -> coord_meeting_room
* [Try the liaison offices]
    -> liaison_offices
* [Go to the central chamber]
    -> central_chamber
* [Go to the north sector]
    -> north_sector
* [Go to the command hub]
    -> command_hub
* [Return to start]
    -> START

=== coord_archive_search ===
Cross-sector project files and collaborative research records.
* [Go to the coordination archive]
    -> coord_archive
* [Go to the research coordination]
    -> research_coordination
* [Go to the meeting room]
    -> coord_meeting_room
* [Go to the central chamber]
    -> central_chamber
* [Go to the north sector]
    -> north_sector
* [Go to the command hub]
    -> command_hub
* [Go to the upper level]
    -> upper_level
* [Return to start]
    -> START

=== liaison_offices ===
Offices for sector liaison officers.
* [Go to the research coordination]
    -> research_coordination
* [Search the offices]
    -> liaison_search
* [Try the coordination archive]
    -> coord_archive
* [Try the meeting room]
    -> coord_meeting_room
* [Go to the central chamber]
    -> central_chamber
* [Go to the north sector]
    -> north_sector
* [Go to the command hub]
    -> command_hub
* [Return to start]
    -> START

=== liaison_search ===
Personal offices with sector-specific project files.
* [Go to the liaison offices]
    -> liaison_offices
* [Go to the research coordination]
    -> research_coordination
* [Go to the coordination archive]
    -> coord_archive
* [Go to the central chamber]
    -> central_chamber
* [Go to the north sector]
    -> north_sector
* [Go to the command hub]
    -> command_hub
* [Go to the upper level]
    -> upper_level
* [Return to start]
    -> START


=== environmental_monitoring ===
Environmental monitoring systems for the whole facility.
* [Try the air quality station]
    -> air_quality_station
* [Try the water monitoring]
    -> water_monitoring
* [Try the seismic station]
    -> seismic_station
* [Try the radiation monitoring]
    -> radiation_monitoring
* [Go to the central chamber]
    -> central_chamber
* [Go to the lower level]
    -> lower_level
* [Go to the command hub]
    -> command_hub
* [Return to start]
    -> START

=== air_quality_station ===
Air quality monitoring. Sensors throughout the facility feed data here.
* [Go to the environmental monitoring]
    -> environmental_monitoring
* [Read the data]
    -> air_data
* [Try the water monitoring]
    -> water_monitoring
* [Try the seismic station]
    -> seismic_station
* [Go to the central chamber]
    -> central_chamber
* [Go to the lower level]
    -> lower_level
* [Go to the command hub]
    -> command_hub
* [Return to start]
    -> START

=== air_data ===
Air quality readings going back decades. Normal ranges throughout.
* [Go to the air quality station]
    -> air_quality_station
* [Go to the environmental monitoring]
    -> environmental_monitoring
* [Go to the water monitoring]
    -> water_monitoring
* [Go to the central chamber]
    -> central_chamber
* [Go to the lower level]
    -> lower_level
* [Go to the command hub]
    -> command_hub
* [Go to the upper level]
    -> upper_level
* [Return to start]
    -> START

=== water_monitoring ===
Water quality and supply monitoring for the facility.
* [Go to the environmental monitoring]
    -> environmental_monitoring
* [Read the data]
    -> water_data
* [Try the air quality station]
    -> air_quality_station
* [Try the seismic station]
    -> seismic_station
* [Go to the central chamber]
    -> central_chamber
* [Go to the lower level]
    -> lower_level
* [Go to the command hub]
    -> command_hub
* [Return to start]
    -> START

=== water_data ===
Water quality data. The supply is still clean and functional.
* [Go to the water monitoring]
    -> water_monitoring
* [Go to the environmental monitoring]
    -> environmental_monitoring
* [Go to the air quality station]
    -> air_quality_station
* [Go to the central chamber]
    -> central_chamber
* [Go to the lower level]
    -> lower_level
* [Go to the command hub]
    -> command_hub
* [Go to the upper level]
    -> upper_level
* [Return to start]
    -> START

=== seismic_station ===
Seismic monitoring for geological activity beneath the facility.
* [Go to the environmental monitoring]
    -> environmental_monitoring
* [Read the data]
    -> seismic_data
* [Try the air quality station]
    -> air_quality_station
* [Try the radiation monitoring]
    -> radiation_monitoring
* [Go to the central chamber]
    -> central_chamber
* [Go to the lower level]
    -> lower_level
* [Go to the command hub]
    -> command_hub
* [Return to start]
    -> START

=== seismic_data ===
Seismic logs showing minor activity consistent with the geothermal systems.
* [Go to the seismic station]
    -> seismic_station
* [Go to the environmental monitoring]
    -> environmental_monitoring
* [Go to the water monitoring]
    -> water_monitoring
* [Go to the central chamber]
    -> central_chamber
* [Go to the lower level]
    -> lower_level
* [Go to the command hub]
    -> command_hub
* [Go to the upper level]
    -> upper_level
* [Return to start]
    -> START

=== radiation_monitoring ===
Radiation monitoring for the nuclear and energy research sectors.
* [Go to the environmental monitoring]
    -> environmental_monitoring
* [Read the data]
    -> radiation_data
* [Try the seismic station]
    -> seismic_station
* [Try the air quality station]
    -> air_quality_station
* [Go to the central chamber]
    -> central_chamber
* [Go to sector six]
    -> sector_six
* [Go to the command hub]
    -> command_hub
* [Return to start]
    -> START

=== radiation_data ===
Radiation levels within safe parameters throughout the facility.
* [Go to the radiation monitoring]
    -> radiation_monitoring
* [Go to the environmental monitoring]
    -> environmental_monitoring
* [Go to the seismic station]
    -> seismic_station
* [Go to the central chamber]
    -> central_chamber
* [Go to sector six]
    -> sector_six
* [Go to the command hub]
    -> command_hub
* [Go to the upper level]
    -> upper_level
* [Return to start]
    -> START

=== emergency_management ===
Emergency management centre for the facility.
* [Try the emergency ops room]
    -> emergency_ops_room
* [Try the emergency storage]
    -> emergency_storage
* [Try the evacuation control]
    -> evacuation_control
* [Try the emergency communications]
    -> emergency_communications
* [Go to the central chamber]
    -> central_chamber
* [Go to the command hub]
    -> command_hub
* [Go to the west sector]
    -> west_sector
* [Return to start]
    -> START

=== emergency_ops_room ===
The emergency operations room. Incident management and response coordination.
* [Go to the emergency management]
    -> emergency_management
* [Search the room]
    -> emergency_ops_search
* [Try the emergency storage]
    -> emergency_storage
* [Try the evacuation control]
    -> evacuation_control
* [Go to the central chamber]
    -> central_chamber
* [Go to the command hub]
    -> command_hub
* [Go to the west sector]
    -> west_sector
* [Return to start]
    -> START

=== emergency_ops_search ===
Incident reports and emergency response plans. The last incident was never resolved.
* [Go to the emergency ops room]
    -> emergency_ops_room
* [Go to the emergency management]
    -> emergency_management
* [Go to the evacuation control]
    -> evacuation_control
* [Go to the central chamber]
    -> central_chamber
* [Go to the command hub]
    -> command_hub
* [Go to the west sector]
    -> west_sector
* [Go to the upper level]
    -> upper_level
* [Return to start]
    -> START

=== emergency_storage ===
Emergency supply storage. Food, water, and medical supplies.
* [Go to the emergency management]
    -> emergency_management
* [Search for useful supplies]
    -> emergency_supply_search
* [Try the emergency ops room]
    -> emergency_ops_room
* [Try the evacuation control]
    -> evacuation_control
* [Go to the central chamber]
    -> central_chamber
* [Go to the command hub]
    -> command_hub
* [Go to the west sector]
    -> west_sector
* [Return to start]
    -> START

=== emergency_supply_search ===
Emergency rations, medical kits, and survival equipment.
* [Go to the emergency storage]
    -> emergency_storage
* [Go to the emergency management]
    -> emergency_management
* [Go to the emergency ops room]
    -> emergency_ops_room
* [Go to the central chamber]
    -> central_chamber
* [Go to the command hub]
    -> command_hub
* [Go to the west sector]
    -> west_sector
* [Go to the upper level]
    -> upper_level
* [Return to start]
    -> START

=== evacuation_control ===
Evacuation management systems. Emergency exit controls.
* [Go to the emergency management]
    -> emergency_management
* [Check the evacuation routes]
    -> evacuation_routes
* [Try the emergency ops room]
    -> emergency_ops_room
* [Try the emergency communications]
    -> emergency_communications
* [Go to the central chamber]
    -> central_chamber
* [Go to the command hub]
    -> command_hub
* [Go to the exit]
    -> facility_exit
* [Return to start]
    -> START

=== evacuation_routes ===
Evacuation route maps for all sectors. Every exit is marked.
* [Go to the evacuation control]
    -> evacuation_control
* [Go to the emergency management]
    -> emergency_management
* [Go to the emergency ops room]
    -> emergency_ops_room
* [Go to the central chamber]
    -> central_chamber
* [Go to the command hub]
    -> command_hub
* [Go to the exit]
    -> facility_exit
* [Go to the upper level]
    -> upper_level
* [Return to start]
    -> START

=== emergency_communications ===
Emergency communications systems. Separate from the main comms centre.
* [Go to the emergency management]
    -> emergency_management
* [Try the radio]
    -> emergency_radio
* [Try the evacuation control]
    -> evacuation_control
* [Try the emergency ops room]
    -> emergency_ops_room
* [Go to the central chamber]
    -> central_chamber
* [Go to the command hub]
    -> command_hub
* [Go to the east sector]
    -> east_sector
* [Return to start]
    -> START

=== emergency_radio ===
An emergency radio transmitter. Separate power supply — still functional.
* [Go to the emergency communications]
    -> emergency_communications
* [Go to the emergency management]
    -> emergency_management
* [Go to the evacuation control]
    -> evacuation_control
* [Go to the central chamber]
    -> central_chamber
* [Go to the command hub]
    -> command_hub
* [Go to the east sector]
    -> east_sector
* [Go to the exit]
    -> facility_exit
* [Return to start]
    -> START


=== quality_assurance ===
The quality assurance department. Oversight of all research outputs.
* [Try the qa_lab]
    -> qa_lab
* [Try the qa_archive]
    -> qa_archive
* [Try the standards_room]
    -> standards_room
* [Try the audit_office]
    -> audit_office
* [Go to the central chamber]
    -> central_chamber
* [Go to the north sector]
    -> north_sector
* [Go to the command hub]
    -> command_hub
* [Return to start]
    -> START

=== qa_lab ===
The QA testing laboratory. Verification and validation equipment.
* [Go to the quality assurance]
    -> quality_assurance
* [Search the lab]
    -> qa_lab_search
* [Try the qa archive]
    -> qa_archive
* [Try the standards room]
    -> standards_room
* [Go to the central chamber]
    -> central_chamber
* [Go to the north sector]
    -> north_sector
* [Go to the command hub]
    -> command_hub
* [Return to start]
    -> START

=== qa_lab_search ===
Testing equipment and verification records. Every research output was checked here.
* [Go to the qa lab]
    -> qa_lab
* [Go to the quality assurance]
    -> quality_assurance
* [Go to the qa archive]
    -> qa_archive
* [Go to the central chamber]
    -> central_chamber
* [Go to the north sector]
    -> north_sector
* [Go to the command hub]
    -> command_hub
* [Go to the upper level]
    -> upper_level
* [Return to start]
    -> START

=== qa_archive ===
The QA archive. All quality control records and audit trails.
* [Go to the quality assurance]
    -> quality_assurance
* [Search the archive]
    -> qa_archive_search
* [Try the qa lab]
    -> qa_lab
* [Try the audit office]
    -> audit_office
* [Go to the central chamber]
    -> central_chamber
* [Go to the north sector]
    -> north_sector
* [Go to the command hub]
    -> command_hub
* [Return to start]
    -> START

=== qa_archive_search ===
Audit records and non-conformance reports. Several serious issues were flagged.
* [Go to the qa archive]
    -> qa_archive
* [Go to the quality assurance]
    -> quality_assurance
* [Go to the audit office]
    -> audit_office
* [Go to the central chamber]
    -> central_chamber
* [Go to the north sector]
    -> north_sector
* [Go to the command hub]
    -> command_hub
* [Go to the upper level]
    -> upper_level
* [Return to start]
    -> START

=== standards_room ===
Reference standards and calibration equipment.
* [Go to the quality assurance]
    -> quality_assurance
* [Search the room]
    -> standards_search
* [Try the qa lab]
    -> qa_lab
* [Try the qa archive]
    -> qa_archive
* [Go to the central chamber]
    -> central_chamber
* [Go to the north sector]
    -> north_sector
* [Go to the command hub]
    -> command_hub
* [Return to start]
    -> START

=== standards_search ===
Calibration standards and reference materials. Precise and well-maintained.
* [Go to the standards room]
    -> standards_room
* [Go to the quality assurance]
    -> quality_assurance
* [Go to the qa lab]
    -> qa_lab
* [Go to the central chamber]
    -> central_chamber
* [Go to the north sector]
    -> north_sector
* [Go to the command hub]
    -> command_hub
* [Go to the upper level]
    -> upper_level
* [Return to start]
    -> START

=== audit_office ===
The audit office. Independent oversight of the facility's operations.
* [Go to the quality assurance]
    -> quality_assurance
* [Search the office]
    -> audit_search
* [Try the qa archive]
    -> qa_archive
* [Try the standards room]
    -> standards_room
* [Go to the central chamber]
    -> central_chamber
* [Go to the north sector]
    -> north_sector
* [Go to the command hub]
    -> command_hub
* [Return to start]
    -> START

=== audit_search ===
Confidential audit reports. The final report was never filed.
* [Go to the audit office]
    -> audit_office
* [Go to the quality assurance]
    -> quality_assurance
* [Go to the qa archive]
    -> qa_archive
* [Go to the central chamber]
    -> central_chamber
* [Go to the north sector]
    -> north_sector
* [Go to the command hub]
    -> command_hub
* [Go to the upper level]
    -> upper_level
* [Return to start]
    -> START

=== observation_tower ===
A tall observation tower within the facility grounds.
* [Climb to the top]
    -> tower_top_seven
* [Check the base level]
    -> tower_base_seven
* [Try the middle level]
    -> tower_middle
* [Check the equipment room]
    -> tower_equipment
* [Go to the central chamber]
    -> central_chamber
* [Go to the upper level]
    -> upper_level
* [Go to the command hub]
    -> command_hub
* [Return to start]
    -> START

=== tower_top_seven ===
The top of the observation tower. A panoramic view of the entire facility.
* [Go to the observation tower]
    -> observation_tower
* [Look across the facility]
    -> tower_top_seven
* [Try the middle level]
    -> tower_middle
* [Go to the upper level]
    -> upper_level
* [Go to the central chamber]
    -> central_chamber
* [Go to the command hub]
    -> command_hub
* [Go to the exit]
    -> facility_exit
* [Return to start]
    -> START

=== tower_base_seven ===
The base of the observation tower. Entry control and equipment storage.
* [Go to the observation tower]
    -> observation_tower
* [Search the base]
    -> tower_base_search
* [Climb to the top]
    -> tower_top_seven
* [Try the middle level]
    -> tower_middle
* [Go to the central chamber]
    -> central_chamber
* [Go to the upper level]
    -> upper_level
* [Go to the command hub]
    -> command_hub
* [Return to start]
    -> START

=== tower_base_search ===
Entry logs and equipment manifest. The tower was used for observation and communications.
* [Go to the tower base]
    -> tower_base_seven
* [Go to the observation tower]
    -> observation_tower
* [Climb to the top]
    -> tower_top_seven
* [Go to the central chamber]
    -> central_chamber
* [Go to the upper level]
    -> upper_level
* [Go to the command hub]
    -> command_hub
* [Go to the exit]
    -> facility_exit
* [Return to start]
    -> START

=== tower_middle ===
The middle level of the observation tower. Communication equipment.
* [Go to the observation tower]
    -> observation_tower
* [Search the level]
    -> tower_middle_search
* [Climb to the top]
    -> tower_top_seven
* [Go to the tower base]
    -> tower_base_seven
* [Go to the central chamber]
    -> central_chamber
* [Go to the upper level]
    -> upper_level
* [Go to the command hub]
    -> command_hub
* [Return to start]
    -> START

=== tower_middle_search ===
Communication relay equipment. Still functional. You could signal with this.
* [Go to the tower middle level]
    -> tower_middle
* [Go to the observation tower]
    -> observation_tower
* [Climb to the top]
    -> tower_top_seven
* [Go to the central chamber]
    -> central_chamber
* [Go to the upper level]
    -> upper_level
* [Go to the command hub]
    -> command_hub
* [Go to the exit]
    -> facility_exit
* [Return to start]
    -> START

=== tower_equipment ===
An equipment room at the base of the tower. Maintenance supplies.
* [Go to the observation tower]
    -> observation_tower
* [Search for useful tools]
    -> tower_equip_search
* [Climb to the top]
    -> tower_top_seven
* [Go to the tower base]
    -> tower_base_seven
* [Go to the central chamber]
    -> central_chamber
* [Go to the upper level]
    -> upper_level
* [Go to the command hub]
    -> command_hub
* [Return to start]
    -> START

=== tower_equip_search ===
Maintenance tools and spare parts for the tower systems.
* [Go to the tower equipment room]
    -> tower_equipment
* [Go to the observation tower]
    -> observation_tower
* [Go to the tower base]
    -> tower_base_seven
* [Go to the central chamber]
    -> central_chamber
* [Go to the upper level]
    -> upper_level
* [Go to the command hub]
    -> command_hub
* [Go to the exit]
    -> facility_exit
* [Return to start]
    -> START


=== external_area ===
The external grounds surrounding the facility buildings.
* [Try the north grounds]
    -> north_grounds
* [Try the east grounds]
    -> east_grounds
* [Try the south grounds]
    -> south_grounds
* [Try the perimeter fence]
    -> perimeter_fence_seven
* [Go to the central chamber]
    -> central_chamber
* [Go to the command hub]
    -> command_hub
* [Go to the exit]
    -> facility_exit
* [Return to start]
    -> START

=== north_grounds ===
The northern grounds. Landscaped but overgrown.
* [Go to the external area]
    -> external_area
* [Search the grounds]
    -> north_grounds_search
* [Try the east grounds]
    -> east_grounds
* [Try the perimeter fence]
    -> perimeter_fence_seven
* [Go to the central chamber]
    -> central_chamber
* [Go to the north sector]
    -> north_sector
* [Go to the command hub]
    -> command_hub
* [Return to start]
    -> START

=== north_grounds_search ===
Overgrown gardens and outdoor equipment storage.
* [Go to the north grounds]
    -> north_grounds
* [Go to the external area]
    -> external_area
* [Go to the east grounds]
    -> east_grounds
* [Go to the central chamber]
    -> central_chamber
* [Go to the north sector]
    -> north_sector
* [Go to the command hub]
    -> command_hub
* [Go to the exit]
    -> facility_exit
* [Return to start]
    -> START

=== east_grounds ===
The eastern grounds. Vehicle parking and loading areas.
* [Go to the external area]
    -> external_area
* [Search the grounds]
    -> east_grounds_search
* [Try the north grounds]
    -> north_grounds
* [Try the south grounds]
    -> south_grounds
* [Go to the central chamber]
    -> central_chamber
* [Go to the east sector]
    -> east_sector
* [Go to the command hub]
    -> command_hub
* [Return to start]
    -> START

=== east_grounds_search ===
Abandoned vehicles and outdoor storage containers.
* [Go to the east grounds]
    -> east_grounds
* [Go to the external area]
    -> external_area
* [Go to the north grounds]
    -> north_grounds
* [Go to the central chamber]
    -> central_chamber
* [Go to the east sector]
    -> east_sector
* [Go to the command hub]
    -> command_hub
* [Go to the exit]
    -> facility_exit
* [Return to start]
    -> START

=== south_grounds ===
The southern grounds. Service road and delivery areas.
* [Go to the external area]
    -> external_area
* [Search the grounds]
    -> south_grounds_search
* [Try the east grounds]
    -> east_grounds
* [Try the perimeter fence]
    -> perimeter_fence_seven
* [Go to the central chamber]
    -> central_chamber
* [Go to the south sector]
    -> south_sector
* [Go to the exit]
    -> facility_exit
* [Return to start]
    -> START

=== south_grounds_search ===
Service road and delivery infrastructure. A route to the exit is visible.
* [Go to the south grounds]
    -> south_grounds
* [Go to the external area]
    -> external_area
* [Go to the east grounds]
    -> east_grounds
* [Go to the central chamber]
    -> central_chamber
* [Go to the south sector]
    -> south_sector
* [Go to the command hub]
    -> command_hub
* [Go to the exit]
    -> facility_exit
* [Return to start]
    -> START

=== perimeter_fence_seven ===
The perimeter fence of the facility. Security lighting and sensors, inactive.
* [Go to the external area]
    -> external_area
* [Find a way through]
    -> fence_breach
* [Try the north grounds]
    -> north_grounds
* [Try the south grounds]
    -> south_grounds
* [Go to the central chamber]
    -> central_chamber
* [Go to the west sector]
    -> west_sector
* [Go to the command hub]
    -> command_hub
* [Return to start]
    -> START

=== fence_breach ===
You find a section of fence that can be passed through.
* [Go through the fence]
    -> facility_exit
* [Go to the perimeter fence]
    -> perimeter_fence_seven
* [Go to the external area]
    -> external_area
* [Go to the south grounds]
    -> south_grounds
* [Go to the central chamber]
    -> central_chamber
* [Go to the command hub]
    -> command_hub
* [Go to the west sector]
    -> west_sector
* [Return to start]
    -> START


=== archive_central ===
The central facility archive. Master records for all departments.
* [Try the classified section]
    -> classified_archive
* [Try the historical records]
    -> historical_records
* [Try the personnel archive]
    -> personnel_archive
* [Search the main stacks]
    -> archive_main_search
* [Go to the central chamber]
    -> central_chamber
* [Go to the command hub]
    -> command_hub
* [Go to the upper level]
    -> upper_level
* [Return to start]
    -> START

=== classified_archive ===
The classified section. Restricted access records.
* [Go to the central archive]
    -> archive_central
* [Search the classified files]
    -> classified_search
* [Try the historical records]
    -> historical_records
* [Try the personnel archive]
    -> personnel_archive
* [Go to the central chamber]
    -> central_chamber
* [Go to the command hub]
    -> command_hub
* [Go to the upper level]
    -> upper_level
* [Return to start]
    -> START

=== classified_search ===
The most sensitive records of the facility. The truth of what happened here.
* [Go to the classified archive]
    -> classified_archive
* [Go to the central archive]
    -> archive_central
* [Go to the historical records]
    -> historical_records
* [Go to the central chamber]
    -> central_chamber
* [Go to the command hub]
    -> command_hub
* [Go to the upper level]
    -> upper_level
* [Go to the exit]
    -> facility_exit
* [Return to start]
    -> START

=== historical_records ===
Historical records of the facility going back to its founding.
* [Go to the central archive]
    -> archive_central
* [Search the records]
    -> historical_search
* [Try the classified archive]
    -> classified_archive
* [Try the personnel archive]
    -> personnel_archive
* [Go to the central chamber]
    -> central_chamber
* [Go to the command hub]
    -> command_hub
* [Go to the upper level]
    -> upper_level
* [Return to start]
    -> START

=== historical_search ===
Founding documents and decades of operational history.
* [Go to the historical records]
    -> historical_records
* [Go to the central archive]
    -> archive_central
* [Go to the classified archive]
    -> classified_archive
* [Go to the central chamber]
    -> central_chamber
* [Go to the command hub]
    -> command_hub
* [Go to the upper level]
    -> upper_level
* [Go to the exit]
    -> facility_exit
* [Return to start]
    -> START

=== personnel_archive ===
Personnel records for all facility staff.
* [Go to the central archive]
    -> archive_central
* [Search the records]
    -> personnel_search
* [Try the classified archive]
    -> classified_archive
* [Try the historical records]
    -> historical_records
* [Go to the central chamber]
    -> central_chamber
* [Go to the command hub]
    -> command_hub
* [Go to the upper level]
    -> upper_level
* [Return to start]
    -> START

=== personnel_search ===
Staff files and employment records. Many hundreds of people worked here.
* [Go to the personnel archive]
    -> personnel_archive
* [Go to the central archive]
    -> archive_central
* [Go to the historical records]
    -> historical_records
* [Go to the central chamber]
    -> central_chamber
* [Go to the command hub]
    -> command_hub
* [Go to the upper level]
    -> upper_level
* [Go to the exit]
    -> facility_exit
* [Return to start]
    -> START

=== archive_main_search ===
The main archive stacks. General records from all departments.
* [Go to the central archive]
    -> archive_central
* [Go to the classified archive]
    -> classified_archive
* [Go to the historical records]
    -> historical_records
* [Go to the personnel archive]
    -> personnel_archive
* [Go to the central chamber]
    -> central_chamber
* [Go to the command hub]
    -> command_hub
* [Go to the upper level]
    -> upper_level
* [Return to start]
    -> START

=== connecting_corridor_a ===
A major connecting corridor linking the eastern and western halves.
* [Go east]
    -> east_sector
* [Go west]
    -> west_sector
* [Go to sector five]
    -> sector_five
* [Go to sector six]
    -> sector_six
* [Go to the central chamber]
    -> central_chamber
* [Go to the command hub]
    -> command_hub
* [Go to the upper level]
    -> upper_level
* [Return to start]
    -> START

=== connecting_corridor_b ===
A major connecting corridor linking the northern and southern halves.
* [Go north]
    -> north_sector
* [Go south]
    -> south_sector
* [Go to sector seven]
    -> sector_seven
* [Go to the welfare block]
    -> welfare_block
* [Go to the central chamber]
    -> central_chamber
* [Go to the command hub]
    -> command_hub
* [Go to the lower level]
    -> lower_level
* [Return to start]
    -> START

=== junction_room_seven ===
A junction room where four corridors meet.
* [Go to the north sector]
    -> north_sector
* [Go to the east sector]
    -> east_sector
* [Go to sector five]
    -> sector_five
* [Go to sector six]
    -> sector_six
* [Go to the central chamber]
    -> central_chamber
* [Go to the command hub]
    -> command_hub
* [Go to the it centre]
    -> it_centre
* [Return to start]
    -> START

=== secondary_hub ===
A secondary hub in the outer ring of the facility.
* [Go to the welfare block]
    -> welfare_block
* [Go to the logistics centre]
    -> logistics_centre
* [Go to the emergency management]
    -> emergency_management
* [Go to the environmental monitoring]
    -> environmental_monitoring
* [Go to the central chamber]
    -> central_chamber
* [Go to the command hub]
    -> command_hub
* [Go to the external area]
    -> external_area
* [Return to start]
    -> START

=== crossroads_seven ===
A central crossroads of the facility's main corridors.
* [Go to the command hub]
    -> command_hub
* [Go to the central chamber]
    -> central_chamber
* [Go to the upper level]
    -> upper_level
* [Go to the lower level]
    -> lower_level
* [Go to the archive central]
    -> archive_central
* [Go to the observation tower]
    -> observation_tower
* [Go to the research coordination]
    -> research_coordination
* [Go to the exit]
    -> facility_exit


=== inner_ring_corridor ===
The inner ring corridor circling the central chamber.
* [Go to the command hub]
    -> command_hub
* [Go to the north sector]
    -> north_sector
* [Go to the south sector]
    -> south_sector
* [Go to the east sector]
    -> east_sector
* [Go to the west sector]
    -> west_sector
* [Go to the central chamber]
    -> central_chamber
* [Go to the upper level]
    -> upper_level
* [Go to the lower level]
    -> lower_level

=== outer_ring_corridor ===
The outer ring corridor connecting the peripheral sectors.
* [Go to sector five]
    -> sector_five
* [Go to sector six]
    -> sector_six
* [Go to sector seven]
    -> sector_seven
* [Go to the welfare block]
    -> welfare_block
* [Go to the logistics centre]
    -> logistics_centre
* [Go to the it centre]
    -> it_centre
* [Go to the observation tower]
    -> observation_tower
* [Go to the external area]
    -> external_area

=== service_corridor_seven ===
A service corridor running parallel to the main passages.
* [Go to the south sector]
    -> south_sector
* [Go to the lower level]
    -> lower_level
* [Go to the power plant]
    -> power_plant
* [Go to the maintenance bay]
    -> maintenance_bay
* [Go to the lower maintenance]
    -> lower_maintenance
* [Go to the environmental monitoring]
    -> environmental_monitoring
* [Go to the central chamber]
    -> central_chamber
* [Go to the command hub]
    -> command_hub

=== access_corridor_north ===
A wide access corridor on the northern side.
* [Go to the north sector]
    -> north_sector
* [Go to lab alpha]
    -> lab_alpha
* [Go to lab beta]
    -> lab_beta
* [Go to the north archive]
    -> north_archive
* [Go to the research coordination]
    -> research_coordination
* [Go to the quality assurance]
    -> quality_assurance
* [Go to the command hub]
    -> command_hub
* [Go to the central chamber]
    -> central_chamber

=== access_corridor_south ===
A wide access corridor on the southern side.
* [Go to the south sector]
    -> south_sector
* [Go to the main workshop]
    -> main_workshop
* [Go to the fabrication room]
    -> fabrication_room
* [Go to the welfare block]
    -> welfare_block
* [Go to the logistics centre]
    -> logistics_centre
* [Go to the emergency management]
    -> emergency_management
* [Go to the command hub]
    -> command_hub
* [Go to the central chamber]
    -> central_chamber

=== access_corridor_east ===
A wide access corridor on the eastern side.
* [Go to the east sector]
    -> east_sector
* [Go to the server room]
    -> server_room
* [Go to the comms centre]
    -> comms_centre
* [Go to the data archive]
    -> data_archive
* [Go to sector six]
    -> sector_six
* [Go to the it centre]
    -> it_centre
* [Go to the command hub]
    -> command_hub
* [Go to the central chamber]
    -> central_chamber

=== access_corridor_west ===
A wide access corridor on the western side.
* [Go to the west sector]
    -> west_sector
* [Go to the security hub]
    -> security_hub
* [Go to the containment wing]
    -> containment_wing
* [Go to the perimeter control]
    -> perimeter_control
* [Go to sector five]
    -> sector_five
* [Go to sector seven]
    -> sector_seven
* [Go to the command hub]
    -> command_hub
* [Go to the central chamber]
    -> central_chamber

=== upper_connecting_corridor ===
The connecting corridor on the upper level.
* [Go to the executive suite]
    -> executive_suite
* [Go to the upper boardroom]
    -> upper_boardroom
* [Go to the upper archive]
    -> upper_archive
* [Go to the rooftop access]
    -> rooftop_access
* [Go to the archive central]
    -> archive_central
* [Go to the quality assurance]
    -> quality_assurance
* [Go to the command hub]
    -> command_hub
* [Go to the central chamber]
    -> central_chamber

=== lower_connecting_corridor ===
The connecting corridor on the lower level.
* [Go to the power plant]
    -> power_plant
* [Go to the deep storage area]
    -> deep_storage_area
* [Go to the lower maintenance]
    -> lower_maintenance
* [Go to the underground passage]
    -> underground_passage_lower
* [Go to the environmental monitoring]
    -> environmental_monitoring
* [Go to the energy core]
    -> energy_core
* [Go to the central chamber]
    -> central_chamber
* [Return to start]
    -> START

=== facility_hub_seven ===
A central hub node tying all sections together.
* [Go to the inner ring]
    -> inner_ring_corridor
* [Go to the outer ring]
    -> outer_ring_corridor
* [Go to the crossroads]
    -> crossroads_seven
* [Go to the secondary hub]
    -> secondary_hub
* [Go to the transit hub]
    -> transit_hub_seven
* [Go to the command hub]
    -> command_hub
* [Go to the central chamber]
    -> central_chamber
* [Go to the exit]
    -> facility_exit

