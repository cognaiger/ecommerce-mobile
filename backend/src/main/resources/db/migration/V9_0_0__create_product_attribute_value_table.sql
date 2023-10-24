CREATE TABLE product_schema.product_attribute_value (
    product_id uuid NOT NULL,
    value_id uuid NOT NULL,

    CONSTRAINT product_attribute_value_pk PRIMARY KEY (product_id, value_id),
    CONSTRAINT product_attribute_value_product_fk FOREIGN KEY (product_id) REFERENCES product_schema.product(product_id),
    CONSTRAINT product_attribute_value_value_fk FOREIGN KEY (value_id) REFERENCES product_schema.attribute_value(value_id)
)