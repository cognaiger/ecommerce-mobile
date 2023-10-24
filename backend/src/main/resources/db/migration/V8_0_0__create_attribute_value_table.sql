CREATE TABLE product_schema.attribute_value (
    value_id uuid NOT NULL DEFAULT uuid_generate_v1(),
    attribute_id uuid NOT NULL,
    card_id uuid NOT NULL,
    value varchar NOT NULL,

    CONSTRAINT attribute_value_pk PRIMARY KEY (value_id),
    CONSTRAINT attribute_value_attribute_fk FOREIGN KEY (attribute_id) REFERENCES product_schema.attribute(attribute_id),
    CONSTRAINT attribute_value_card_fk FOREIGN KEY (card_id) REFERENCES product_schema.card(card_id)
)