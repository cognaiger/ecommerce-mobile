CREATE TABLE product_schema.product_card_attribute_value (
    product_id uuid NOT NULL,
    card_attribute_value_id uuid NOT NULL,
    card_id uuid NOT NULL,

    CONSTRAINT product_card_attribute_value_product_fk FOREIGN KEY (product_id) REFERENCES product_schema.product(product_id),
    CONSTRAINT product_card_attribute_value_value_fk FOREIGN KEY (card_attribute_value_id) REFERENCES product_schema.card_attribute_value(card_attribute_value_id),
    CONSTRAINT product_card_attribute_value_card_fk FOREIGN KEY (card_id) REFERENCES product_schema.card(card_id)
);