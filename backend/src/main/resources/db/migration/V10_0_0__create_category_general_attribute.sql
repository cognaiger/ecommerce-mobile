CREATE TABLE category_general_attribute(
    category_id uuid NOT NULL,
    general_attribute_id INT,

    CONSTRAINT category_general_attribute_fk1 FOREIGN KEY (category_id) REFERENCES product_schema.category(category_id),
    CONSTRAINT category_general_attribute_fk2 FOREIGN KEY (general_attribute_id) REFERENCES general_attribute(general_attribute_id)
)