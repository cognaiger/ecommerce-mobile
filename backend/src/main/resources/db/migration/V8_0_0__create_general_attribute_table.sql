CREATE TABLE product_schema.category_attribute (
    category_attribute_id uuid NOT NULL DEFAULT uuid_generate_v1(),
    category_id uuid NOT NULL,
    name varchar NOT NULL,

    CONSTRAINT category_attribute_pk PRIMARY KEY (category_attribute_id),
    CONSTRAINT category_attribute_fk1 FOREIGN KEY (category_id) REFERENCES product_schema.category(category_id)
)