CREATE TABLE product_schema.card (
    card_id uuid NOT NULL DEFAULT uuid_generate_v1(),
    category_id uuid NOT NULL,
    name varchar NOT NULL,
    description text NOT NULL,
    created_date timestamp NOT NULL DEFAULT NOW(),
    last_updated_date timestamp NOT NULL DEFAULT NOW(),


    CONSTRAINT card_pk PRIMARY KEY (card_id),
    CONSTRAINT card_category_fk FOREIGN KEY (category_id) REFERENCES product_schema.category(category_id)
)