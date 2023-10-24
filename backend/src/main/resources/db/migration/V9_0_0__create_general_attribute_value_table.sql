CREATE TABLE product_schema.general_attribute_value (
    general_attribute_value_id SERIAL,
    general_attribute_id uuid NOT NULL,
    value varchar NOT NULL,

    CONSTRAINT category_attribute_value_pf PRIMARY KEY (general_attribute_value_id),
    CONSTRAINT category_attribute_value_fk1 FOREIGN KEY (general_attribute_id) REFERENCES product_schema.general_attribute(general_attribute_id)
);