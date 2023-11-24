CREATE TABLE ecommerce.user(
    user_id UUID NOT NULL DEFAULT uuid_generate_v1(),
    username VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    phone VARCHAR(255) NOT NULL,
    address VARCHAR(255) NOT NULL,

    CONSTRAINT user_pk PRIMARY KEY (user_id)
);


CREATE TABLE ecommerce.product(
    product_id UUID NOT NULL DEFAULT uuid_generate_v1(),
    name VARCHAR(255) NOT NULL,
    image_link VARCHAR(255) NOT NULL,
    description TEXT NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    quantity INT NOT NULL CHECK ( quantity >= 0 ),

    CONSTRAINT product_pk PRIMARY KEY (product_id)
);

CREATE TABLE ecommerce.laptop (
    laptop_id UUID NOT NULL DEFAULT uuid_generate_v1(),
    product_id UUID NOT NULL,
    brand VARCHAR(255) NOT NULL,
    color VARCHAR(255) NOT NULL,
    cpu VARCHAR(255) NOT NULL,
    gpu VARCHAR(255) NOT NULL,
    ram VARCHAR(255) NOT NULL,

    created_at TIMESTAMP NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMP NOT NULL DEFAULT NOW(),

    CONSTRAINT laptop_pk PRIMARY KEY (laptop_id),
    CONSTRAINT laptop_product_fk FOREIGN KEY (product_id) REFERENCES ecommerce.product (product_id)
);

CREATE TABLE ecommerce.ram(
    ram_id UUID NOT NULL DEFAULT uuid_generate_v1(),
    product_id UUID NOT NULL,
    brand VARCHAR(255) NOT NULL,
    series VARCHAR(255) NOT NULL,
    part_number VARCHAR(255) NOT NULL,
    capacity VARCHAR(255) NOT NULL,
    type VARCHAR(255) NOT NULL,
    speed VARCHAR(255) NOT NULL,
    cas_latency VARCHAR(255) NOT NULL,
    timing VARCHAR(255) NOT NULL,
    voltage VARCHAR(255) NOT NULL,
    color VARCHAR(255) NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMP NOT NULL DEFAULT NOW(),

    CONSTRAINT ram_pk PRIMARY KEY (ram_id),
    CONSTRAINT ram_product_fk FOREIGN KEY (product_id) REFERENCES ecommerce.product (product_id)
);

CREATE TABLE ecommerce.rom(
    rom_id UUID NOT NULL DEFAULT uuid_generate_v1(),
    product_id UUID NOT NULL,
    brand VARCHAR(255) NOT NULL,
    series VARCHAR(255) NOT NULL,
    part_number VARCHAR(255) NOT NULL,
    capacity VARCHAR(255) NOT NULL,
    type VARCHAR(255) NOT NULL,
    interface VARCHAR(255) NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMP NOT NULL DEFAULT NOW(),

    CONSTRAINT rom_pk PRIMARY KEY (rom_id),
    CONSTRAINT rom_product_fk FOREIGN KEY (product_id) REFERENCES ecommerce.product (product_id)
);


CREATE TABLE ecommerce.screen(
    screen_id UUID NOT NULL DEFAULT uuid_generate_v1(),
    product_id UUID NOT NULL,
    brand VARCHAR(255) NOT NULL,
    series VARCHAR(255) NOT NULL,
    model VARCHAR(255) NOT NULL,
    part_number VARCHAR(255) NOT NULL,
    display_size VARCHAR(255) NOT NULL,
    display_type VARCHAR(255) NOT NULL,
    resolution VARCHAR(255) NOT NULL,
    refresh_rate VARCHAR(255) NOT NULL,
    response_time VARCHAR(255) NOT NULL,
    aspect_ratio VARCHAR(255) NOT NULL,
    brightness VARCHAR(255) NOT NULL,
    contrast_ratio VARCHAR(255) NOT NULL,
    viewing_angle VARCHAR(255) NOT NULL,
    color_support VARCHAR(255) NOT NULL,
    horizontal_frequency VARCHAR(255) NOT NULL,
    vertical_frequency VARCHAR(255) NOT NULL,
    pixel_pitch VARCHAR(255) NOT NULL,
    curved_screen VARCHAR(255) NOT NULL,
    built_in_speaker VARCHAR(255) NOT NULL,
    built_in_webcam VARCHAR(255) NOT NULL,
    built_in_microphone VARCHAR(255) NOT NULL,
    vesa_compatible VARCHAR(255) NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMP NOT NULL DEFAULT NOW(),

    CONSTRAINT screen_pk PRIMARY KEY (screen_id),
    CONSTRAINT screen_product_fk FOREIGN KEY (product_id) REFERENCES ecommerce.product (product_id)
);

CREATE TABLE ecommerce.mouse(
    mouse_id UUID NOT NULL DEFAULT uuid_generate_v1(),
    product_id UUID NOT NULL,
    brand VARCHAR(255) NOT NULL,
    series VARCHAR(255) NOT NULL,
    model VARCHAR(255) NOT NULL,
    part_number VARCHAR(255) NOT NULL,
    type VARCHAR(255) NOT NULL,
    tracking_method VARCHAR(255) NOT NULL,
    maximum_dpi VARCHAR(255) NOT NULL,
    hand_orientation VARCHAR(255) NOT NULL,
    buttons VARCHAR(255) NOT NULL,
    scroll_type VARCHAR(255) NOT NULL,
    color VARCHAR(255) NOT NULL,
    os_system_supported VARCHAR(255) NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMP NOT NULL DEFAULT NOW(),

    CONSTRAINT mouse_pk PRIMARY KEY (mouse_id),
    CONSTRAINT mouse_product_fk FOREIGN KEY (product_id) REFERENCES ecommerce.product (product_id)
);

CREATE TYPE ecommerce.order_status AS ENUM ('IN_CART', 'RECEIVED', 'DELIVERING', 'COMPLETED');

CREATE TABLE ecommerce.order(
    order_id UUID NOT NULL DEFAULT uuid_generate_v1(),
    user_id UUID NOT NULL,
    product_id UUID NOT NULL,
    quantity INT NOT NULL CHECK ( quantity >= 0 ),
    last_status order_status NOT NULL,

    created_at TIMESTAMP NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMP NOT NULL DEFAULT NOW(),

    CONSTRAINT cart_pk PRIMARY KEY (order_id),
    CONSTRAINT cart_user_fk FOREIGN KEY (user_id) REFERENCES ecommerce.user (user_id),
    CONSTRAINT cart_product_fk FOREIGN KEY (product_id) REFERENCES ecommerce.product (product_id)
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