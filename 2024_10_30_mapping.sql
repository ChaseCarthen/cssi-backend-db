CREATE TABLE sensor_mapping (
    id SERIAL PRIMARY KEY,
    type VARCHAR(50) NOT NULL,
    display_name VARCHAR(100) NOT NULL,
    payload_value VARCHAR(100) NOT NULL,
    brand VARCHAR(50) NOT NULL,
    model VARCHAR(50) NOT NULL,
    unit VARCHAR(50) NOT NULL,
    derivation VARCHAR(255),
    description TEXT,
    sortable BOOLEAN NOT NULL,
    width INT NOT NULL
);
