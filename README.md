# ABOUT
This is a repository holding all the init scripts for CSSI LORAWAN Project.
It creates the mapping for different sensors used in the project.

# Sensor Mapping Configuration

This database contains metadata mappings between decoded LoRaWAN payload fields and their human-readable sensor attributes. It is used to support the visualization and interpretation of sensor data received via The Things Network (TTN).

## Device: Dragino LHT65N

The **Dragino LHT65N** is a LoRaWAN temperature and humidity sensor with support for external probes (e.g., DS18B20). The following payload fields are currently decoded and mapped in the system:

| Payload Key   | Display Name                     | Type           | Unit      | Description |
|---------------|----------------------------------|----------------|-----------|-------------|
| `BatV`        | Battery Voltage                  | Battery        | V         | Battery voltage reported by LHT65N |
| `Bat_status`  | Battery Status Code              | Battery        | -         | Enum-style battery status code |
| `Ext_sensor`  | External Sensor Type             | Sensor Info    | -         | Name/type of attached external sensor |
| `Hum_SHT`     | Humidity (SHT)                   | Environment    | %RH       | Humidity reading from internal SHT sensor |
| `TempC_DS`    | Temperature (External DS18B20)   | Environment    | °C        | External temperature probe reading |
| `TempC_SHT`   | Temperature (Internal SHT)       | Environment    | °C        | Internal temperature from onboard SHT sensor |

> Note: A `TempC_DS` value of `327.67` typically indicates that no external probe is connected.

## Purpose of `sensor_mapping` Table

The `sensor_mapping` table is used to:
- Translate raw payload keys into readable labels
- Group values by type (e.g., battery, environment)
- Assign units for display and conversion
- Provide custom formatting (e.g., width, sortability)
- Describe the purpose of each field for maintainability

## Example Insert SQL

```sql
INSERT INTO sensor_mapping (
    type, display_name, payload_value, brand, model, unit, derivation, description, sortable, width
) VALUES
    ('Environment', 'Temperature (Internal SHT)', 'TempC_SHT', 'dragino', 'lht65n', '°C', NULL, 'Internal temperature reading from SHT sensor', TRUE, 120),
    ('Environment', 'Temperature (External DS18B20)', 'TempC_DS', 'dragino', 'lht65n', '°C', NULL, 'External temperature reading from DS18B20 sensor', TRUE, 120),
    ('Environment', 'Humidity (SHT)', 'Hum_SHT', 'dragino', 'lht65n', '%RH', NULL, 'Humidity reading from internal SHT sensor', TRUE, 120),
    ('Battery', 'Battery Voltage', 'BatV', 'dragino', 'lht65n', 'V', NULL, 'Battery voltage reported by LHT65N', TRUE, 120),
    ('Battery', 'Battery Status Code', 'Bat_status', 'dragino', 'lht65n', '', NULL, 'Battery status code (enum) reported by LHT65N', TRUE, 120),
    ('Sensor Info', 'External Sensor Type', 'Ext_sensor', 'dragino', 'lht65n', '', NULL, 'External sensor type label from LHT65N', FALSE, 180);

