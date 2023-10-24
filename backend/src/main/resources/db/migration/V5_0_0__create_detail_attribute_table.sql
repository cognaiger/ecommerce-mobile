CREATE TABLE product_schema.detail_attribute (
    detail_attribute_id uuid NOT NULL DEFAULT uuid_generate_v1(),
    card_id uuid NOT NULL,
    name varchar NOT NULL,

    CONSTRAINT attribute_pk PRIMARY KEY (detail_attribute_id),
    CONSTRAINT attribute_card_fk FOREIGN KEY (card_id) REFERENCES product_schema.card(card_id)
)