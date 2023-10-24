CREATE TABLE product_schema.card_attribute_value (
    card_attribute_value_id uuid NOT NULL DEFAULT uuid_generate_v1(),
    card_attribute_id uuid NOT NULL,
    card_id uuid NOT NULL,
    value varchar NOT NULL,

    CONSTRAINT card_attribute_value_pk PRIMARY KEY (card_attribute_value_id),
    CONSTRAINT card_attribute_value_fk1 FOREIGN KEY (card_attribute_id) REFERENCES product_schema.card_attribute(card_attribute_id),
    CONSTRAINT card_attribute_value_fk2 FOREIGN KEY (card_id) REFERENCES product_schema.card(card_id)
);