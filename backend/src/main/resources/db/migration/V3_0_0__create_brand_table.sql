CREATE TABLE product_schema.brand (
    brand_id uuid NOT NULL DEFAULT uuid_generate_v1(),
    name varchar NOT NULL UNIQUE,
    created_date timestamp NOT NULL DEFAULT NOW(),
    last_updated_date timestamp NOT NULL DEFAULT NOW(),
    CONSTRAINT brand_pk PRIMARY KEY (brand_id)
);

CREATE INDEX brand_name_index ON product_schema.brand (name);