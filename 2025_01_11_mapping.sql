INSERT INTO sensor_mapping (type, display_name, payload_value, brand, model, unit, derivation, description, sortable, width)
VALUES
    ('Signal Strength', 'Signal to Noise Ratio', 'snr', 'All', 'All', 'decibels', NULL, 'Signal to ratio sensor from sensor', TRUE, 120),
    ('Signal Strength', 'Received Signal Strength Indicator', 'rssi', 'All', 'All', 'decibel milliwatt', NULL, 'Received Signal Strength Indicator from sensor', TRUE, 120);
