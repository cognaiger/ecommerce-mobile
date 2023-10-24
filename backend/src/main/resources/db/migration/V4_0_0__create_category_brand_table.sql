CREATE TABLE product_schema.category_brand (
    category_id uuid NOT NULL,
    brand_id uuid NOT NULL,
    CONSTRAINT category_brand_pk PRIMARY KEY (category_id, brand_id),
    CONSTRAINT category_brand_category_fk FOREIGN KEY (category_id) REFERENCES product_schema.category(category_id),
    CONSTRAINT category_brand_brand_fk FOREIGN KEY (brand_id) REFERENCES product_schema.brand(brand_id)
);