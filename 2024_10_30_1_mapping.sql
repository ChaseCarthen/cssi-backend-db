INSERT INTO sensor_mapping (type, display_name, payload_value, brand, model, unit, derivation, description, sortable, width)
VALUES
    ('Temperature', 'Temperature', 'temperature', 'laird', 'rs1xx', 'celsius', NULL, 'Temperature from laird sensor', TRUE, 90),
    ('Temperature', 'Temperature Red', 'Temp_Red', 'dragino', 'D20,22,23', 'celsius', NULL, 'Temperature from the red probe', TRUE, 90),
    ('Temperature', 'Temperature Black', 'Temp_Black', 'dragino', 'D20,22,23', 'celsius', NULL, 'Temperature from the black probe', TRUE, 90),
    ('Temperature', 'Temperature White', 'Temp_White', 'dragino', 'D20,22,23', 'celsius', NULL, 'Temperature from the white probe', TRUE, 90),
    ('Soil Moisture', 'Soil Moisture', 'water_SOIL', 'dragino', 'LSE01', 'percent', NULL, 'Soil moisture from the sensor', TRUE, 90),
    ('Soil Moisture', 'Soil Conductivity', 'conduct_SOIL', 'dragino', 'LSE01', 'microsiemens per centimeter', NULL, 'Soil conductivity from the sensor', TRUE, 120),
    ('Soil Moisture', 'Soil Temperature', 'temp_SOIL', 'dragino', 'LSE01', 'celsius', NULL, 'Soil temperature from the sensor', TRUE, 120),
    ('Soil Moisture', 'Battery Life', 'Bat', 'dragino', 'LSE01', 'float', 'value*20', 'Battery life from the sensor', TRUE, 90),
    ('Temperature', 'Battery Life', 'BatV', 'dragino', 'D20,22,23', 'float', 'value*20', 'Battery life from the sensor', TRUE, 90),
    ('Temperature', 'Battery Life', 'batteryCapacity', 'laird', 'rs1xx', 'string', 'int(str(value).replace(\'%\', \'\').split(\'-\')[1])', 'Battery life from the sensor', TRUE, 90);
