CREATE TABLE product_schema.card_general_attribute_value (
    general_attribute_value_id INT,
    card_id uuid NOT NULL,
    category_id uuid NOT NULL,

    CONSTRAINT card_category_attribute_value_fk1 FOREIGN KEY (general_attribute_value_id) REFERENCES product_schema.general_attribute_value(general_attribute_value_id),
    CONSTRAINT card_category_attribute_value_fk2 FOREIGN KEY (category_id) REFERENCES product_schema.category(category_id),
    CONSTRAINT card_category_attribute_value_fk3 FOREIGN KEY (card_id) REFERENCES product_schema.card(card_id)
);