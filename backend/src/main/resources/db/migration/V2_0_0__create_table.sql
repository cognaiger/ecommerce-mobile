CREATE TYPE ecommerce.address_type AS ENUM ('HOME', 'USER');
CREATE TYPE ecommerce.order_status AS ENUM ('IN_CART', 'RECEIVED', 'DELIVERING', 'COMPLETED');
CREATE TYPE ecommerce.notification_type AS ENUM ('ORDER');

CREATE TABLE ecommerce.user(
    user_id UUID NOT NULL DEFAULT uuid_generate_v1(),
    username VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    phone VARCHAR(255) NOT NULL,
    address VARCHAR(255) NOT NULL,

    CONSTRAINT user_pk PRIMARY KEY (user_id)
);

CREATE TABLE ecommerce.delivery_address(
    delivery_address_id UUID NOT NULL DEFAULT uuid_generate_v1(),
    user_id UUID NOT NULL,
    address VARCHAR(255) NOT NULL,
    type address_type NOT NULL,

    CONSTRAINT delivery_address_pk PRIMARY KEY (delivery_address_id),
    CONSTRAINT delivery_address_user_fk FOREIGN KEY (user_id) REFERENCES ecommerce.user (user_id)
);

CREATE TABLE ecommerce.brand(
    brand_name VARCHAR(255) NOT NULL,
    image_link VARCHAR(255) NOT NULL,

    CONSTRAINT brand_pk PRIMARY KEY (brand_name)
);

CREATE TABLE ecommerce.product(
    product_id UUID NOT NULL DEFAULT uuid_generate_v1(),
    brand_name VARCHAR(255) NOT NULL,
    name VARCHAR(255) NOT NULL,
    image_link VARCHAR(255) NOT NULL,
    description TEXT NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    price_discount DECIMAL(10, 2) NOT NULL,
    quantity INT NOT NULL CHECK ( quantity >= 0 ),

    CONSTRAINT product_pk PRIMARY KEY (product_id),
    CONSTRAINT product_brand_fk FOREIGN KEY (brand_name) REFERENCES ecommerce.brand (brand_name)
);

CREATE TABLE ecommerce.laptop (
    product_id UUID NOT NULL,
    screen_size VARCHAR(255) NOT NULL,
    storage VARCHAR(255) NOT NULL,
    cpu VARCHAR(255) NOT NULL,
    os VARCHAR(255) NOT NULL,
    gpu VARCHAR(255) NOT NULL,
    ram VARCHAR(255) NOT NULL,

    created_at TIMESTAMP NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMP NOT NULL DEFAULT NOW(),

    CONSTRAINT laptop_pk PRIMARY KEY (product_id),
    CONSTRAINT laptop_product_fk FOREIGN KEY (product_id) REFERENCES ecommerce.product (product_id)
);

CREATE TABLE ecommerce.order(
    order_id UUID NOT NULL DEFAULT uuid_generate_v1(),
    user_id UUID NOT NULL,
    delivery_address_id UUID NOT NULL,
    last_status order_status NOT NULL,

    created_at TIMESTAMP NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMP NOT NULL DEFAULT NOW(),

    CONSTRAINT cart_pk PRIMARY KEY (order_id),
    CONSTRAINT cart_user_fk FOREIGN KEY (user_id) REFERENCES ecommerce.user (user_id),
    CONSTRAINT cart_delivery_address_fk FOREIGN KEY (delivery_address_id) REFERENCES ecommerce.delivery_address (delivery_address_id)
);

CREATE TABLE ecommerce.order_item (
    order_item_id UUID NOT NULL DEFAULT uuid_generate_v1(),
    order_id      UUID NOT NULL,
    product_id    UUID NOT NULL,
    quantity      INT  NOT NULL CHECK ( quantity >= 0 ),

    CONSTRAINT order_item_pk PRIMARY KEY (order_item_id),
    CONSTRAINT order_item_order_fk FOREIGN KEY (order_id) REFERENCES ecommerce.order (order_id),
    CONSTRAINT order_item_product_fk FOREIGN KEY (product_id) REFERENCES ecommerce.product (product_id)
);

CREATE TABLE ecommerce.order_transportation(
    order_transportation_id UUID NOT NULL DEFAULT uuid_generate_v1(),
    order_id UUID NOT NULL,
    status order_status NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMP NOT NULL DEFAULT NOW(),

    CONSTRAINT order_transportation_pk PRIMARY KEY (order_transportation_id),
    CONSTRAINT order_transportation_order_fk FOREIGN KEY (order_id) REFERENCES ecommerce.order (order_id)
);

CREATE TABLE ecommerce.notification(
    notification_id UUID NOT NULL DEFAULT uuid_generate_v1(),
    user_id UUID NOT NULL,
    title VARCHAR(255) NOT NULL,
    content TEXT NOT NULL,
    type notification_type NOT NULL,
    reference VARCHAR(255) NOT NULL,

    created_at TIMESTAMP NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMP NOT NULL DEFAULT NOW(),

    CONSTRAINT notification_pk PRIMARY KEY (notification_id),
    CONSTRAINT notification_user_fk FOREIGN KEY (user_id) REFERENCES ecommerce.user (user_id)
);