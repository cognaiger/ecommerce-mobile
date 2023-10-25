CREATE TABLE product_schema.general_attribute (
    general_attribute_id SERIAL,
    name varchar NOT NULL,
    is_filter boolean NOT NULL,

    CONSTRAINT category_attribute_pk PRIMARY KEY (general_attribute_id)
)