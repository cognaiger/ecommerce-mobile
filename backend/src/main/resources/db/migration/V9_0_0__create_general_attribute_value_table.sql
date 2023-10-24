CREATE TABLE product_schema.category_attribute_value (
    category_attribute_value_id uuid NOT NULL DEFAULT uuid_generate_v1(),
    category_attribute_id uuid NOT NULL,
    card_id uuid NOT NULL,
    value varchar NOT NULL,

    CONSTRAINT category_attribute_value_pf PRIMARY KEY (category_attribute_value_id),
    CONSTRAINT category_attribute_value_fk1 FOREIGN KEY (category_attribute_id) REFERENCES product_schema.category_attribute(category_attribute_id),
    CONSTRAINT category_attribute_value_fk2 FOREIGN KEY (card_id) REFERENCES product_schema.card(card_id)
);