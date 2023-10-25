CREATE TABLE product_schema.product (
    product_id uuid NOT NULL DEFAULT uuid_generate_v1(),
    card_id uuid NOT NULL,
    price numeric(10, 2),
    quantity int CHECK(quantity >= 0),
    created_date timestamp NOT NULL DEFAULT NOW(),
    last_updated_date timestamp NOT NULL DEFAULT NOW(),

    CONSTRAINT product_pk PRIMARY KEY (product_id),
    CONSTRAINT product_card_fk FOREIGN KEY (card_id) REFERENCES product_schema.card(card_id)
);