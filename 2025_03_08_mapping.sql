INSERT INTO sensor_mapping (type, display_name, payload_value, brand, model, unit, derivation, description, sortable, width)
VALUES
    ('Distance', 'Lidar Distance', 'Lidar_distance', 'dragino', 'lds12', 'centimeters', NULL, 'Lidar Distance from sensor', TRUE, 120),
    ('Distance', 'Lidar Signal', 'Lidar_signal', 'dragino', 'lds12', 'Custom Distance', NULL, 'Signal Strength from sensor', TRUE, 120),
    ('Distance', 'Lidar Temperature', 'Lidar_temp', 'dragino', 'lds12', 'celsius', NULL, 'Lidar Temperature from sensor', TRUE, 120),
    ('Distance', 'Sonic/Microwave Distance', 'Distance', 'dragino', 'all', 'millimeters', 'value if isinstance(value, int) else int(value.split()[0]) if isinstance(value, str) and value.endswith(" mm") else 0', 'Sonic Distance from sensor', TRUE, 120);
