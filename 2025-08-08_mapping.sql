INSERT INTO sensor_mapping (
    type, display_name, payload_value, brand, model, unit, derivation, description, sortable, width
) VALUES
    ('Sensor Info', 'External Sensor Type', 'Ext_sensor', 'dragino', 'lht65n', '', NULL, 'External sensor type label from LHT65N', FALSE, 180),
    ('Environment', 'Humidity (SHT)', 'Hum_SHT', 'dragino', 'lht65n', '%RH', NULL, 'Humidity reading from internal SHT sensor', TRUE, 120),
    ('Environment', 'Temperature (External DS18B20)', 'TempC_DS', 'dragino', 'lht65n', '°C', NULL, 'External temperature reading from DS18B20 sensor', TRUE, 120),
    ('Environment', 'Temperature (Internal SHT)', 'TempC_SHT', 'dragino', 'lht65n', '°C', NULL, 'Internal temperature reading from SHT sensor', TRUE, 120);
