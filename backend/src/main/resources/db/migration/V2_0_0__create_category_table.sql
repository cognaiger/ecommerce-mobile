CREATE TABLE product_schema.category (
    category_id uuid NOT NULL DEFAULT uuid_generate_v1(),
    name varchar NOT NULL UNIQUE,
    created_date timestamp NOT NULL DEFAULT NOW(),
    last_updated_date timestamp NOT NULL DEFAULT NOW(),
    CONSTRAINT product_type_pk PRIMARY KEY (category_id)
);

CREATE INDEX category_name_index ON product_schema.category (name);