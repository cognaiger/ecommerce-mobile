INSERT INTO
    ecommerce.user (
        user_id,
        username,
        password,
        email,
        phone,
        address
    )
VALUES
    (
        '475b88b6-8a71-11ee-b9d1-0242ac120002',
        'admin',
        '$2a$1',
        'dar@gmail.com',
        '0123456789',
        'Hanoi, Vietnam'
    ),
    (
        '475b88b6-8a71-11ee-b9d1-0242ac120003',
        'user',
        '$2a$1',
        'darerr@gmail.com',
        '0123456789',
        'Hanoi, Vietnam'
    ),
    (
        '475b88b6-8a71-11ee-b9d1-0242ac120004',
        'user1',
        '$2a$1',
        'darerr@gmail.com',
        '0123456789',
        'Hanoi, Vietnam'
    );

INSERT INTO
    ecommerce.delivery_address (delivery_address_id, user_id, address, type)
VALUES
    (
        '602a6afa-8b62-11ee-b9d1-0242ac120002',
        '475b88b6-8a71-11ee-b9d1-0242ac120002',
        'Hanoi, Vietnam',
        'HOME'
    ),
    (
        '602a6afa-8b62-11ee-b9d1-0242ac120003',
        '475b88b6-8a71-11ee-b9d1-0242ac120002',
        'Hanoi, Vietnam',
        'HOME'
    ),
    (
        '602a6afa-8b62-11ee-b9d1-0242ac120004',
        '475b88b6-8a71-11ee-b9d1-0242ac120002',
        'Hanoi, Vietnam',
        'HOME'
    );

INSERT INTO
    ecommerce.brand (brand_name, image_link)
VALUES
    ('ACER', 'xxx'),
    ('ASUS', 'xxx'),
    ('HP', 'xxx');

INSERT INTO
    ecommerce.product (
        product_id,
        brand_name,
        name,
        image_link,
        description,
        price,
        price_discount,
        quantity
    )
VALUES
    (
        'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a11',
        'ACER',
        'Laptop Acer Nitro 16 Phoenix AN16-41-R5M4 (NH.QKBSV.003) (AMD Ryzen 5-7535HS) (Đen)',
        'https://lh3.googleusercontent.com/OzQVKRXMUlErjxiwqtLwpWvOWUbmuLay-lL_o80bXTheu_tfX-j07L8fuGtCgddQTrvaF_hbjKwxMlU7IxMgE_6oTkrW06Gs=w500-rw',
        'Laptop Acer Nitro 16 Phoenix AN16-41-R5M4 (NH.QKBSV.003) (AMD Ryzen 5-7535HS) (Đen)',
        25990000,
        20000000,
        10
    ),
    (
        'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a12',
        'ASUS',
        'Laptop Asus Vivobook Go 15 E1504FA-NJ454W (AMD Ryzen 5-7520U) (Bạc)',
        'https://lh3.googleusercontent.com/2hxeRuUP6Hj1q--N3qL9CFDpXVeKcT2iwZkMimj7Aa_otPPILupoPiUFgiRC1l3gvyEXQfP2q8OnkaG3f7H_wa6phCaCCp87kA=w1000-rw',
        'Laptop Asus Vivobook Go 15 E1504FA-NJ454W (AMD Ryzen 5-7520U) (Bạc)',
        13490000,
        10000000,
        1
    ),
    (
        'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a13',
        'HP',
        'Laptop HP ProBook 450 G10 - 873J6PA (i5-1340P/RAM 8GB/512GB SSD/ Windows 11)',
        'https://lh3.googleusercontent.com/wY8TEHeHsm8m3UBdezGWXluZesvHGcvSSm-MV0FpOwI_ibcaKApbtwd6Z0B3jNIOyorfaVHkJMa2ZYWWDm1djcHAEgmbKW_68w=w500-rw',
        'Laptop HP ProBook 450 G10 - 873J6PA (i5-1340P/RAM 8GB/512GB SSD/ Windows 11)',
        21990000,
        20000000,
        20
    );

INSERT INTO
    ecommerce.laptop (
        product_id,
        screen_size,
        storage,
        cpu,
        os,
        gpu,
        ram
    )
VALUES
    (
        'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a11',
        '15.6 inches',
        '512 GB',
        'AMD Ryzen 5 7535HS ( 3.3 GHz - 4.5 GHz / 16MB / 6 nhân, 12 luồng )',
        'Windows 11',
        'RTX 4050 6GB GDDR6 / AMD Radeon 660M',
        '1 x 8GB DDR5 4800MHz ( 2 Khe cắm / Hỗ trợ tối đa 32GB )'
    ),
    (
        'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a12',
        '14 inches',
        '1 TB',
        'AMD Ryzen 5 7520U ( 2.8 GHz - 4.3 GHz / 4MB / 4 nhân, 8 luồng )',
        'Windows 11',
        'Onboard AMD Radeon 610M',
        '16GB Onboard LPDDR5 5500MHz'
    ),
    (
        'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a13',
        '16 inches',
        '512 GB',
        'Intel Core i5-1340P ( 1.9 GHz - 4.6 GHz / 12MB / 12 nhân, 16 luồng )',
        'Windows 11',
        'Onboard Intel Iris Xe Graphics',
        '1 x 8GB DDR4 3200MHz ( 2 Khe cắm / Hỗ trợ tối đa 32GB )'
    );

INSERT INTO
    ecommerce.order (
        order_id,
        user_id,
        delivery_address_id,
        last_status
    )
VALUES
    (
        '016d6480-8b63-11ee-b9d1-0242ac120002',
        '475b88b6-8a71-11ee-b9d1-0242ac120002',
        '602a6afa-8b62-11ee-b9d1-0242ac120002',
        'IN_CART'
    ),
    (
        '016d6480-8b63-11ee-b9d1-0242ac120003',
        '475b88b6-8a71-11ee-b9d1-0242ac120002',
        '602a6afa-8b62-11ee-b9d1-0242ac120003',
        'IN_CART'
    ),
    (
        '016d6480-8b63-11ee-b9d1-0242ac120004',
        '475b88b6-8a71-11ee-b9d1-0242ac120002',
        '602a6afa-8b62-11ee-b9d1-0242ac120004',
        'RECEIVED'
    );

INSERT INTO
    ecommerce.order_item (order_item_id, order_id, product_id, quantity)
VALUES
    (
        '2d5eac2a-8b63-11ee-b9d1-0242ac120002',
        '016d6480-8b63-11ee-b9d1-0242ac120002',
        'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a11',
        1
    ),
    (
        '2d5eac2a-8b63-11ee-b9d1-0242ac120003',
        '016d6480-8b63-11ee-b9d1-0242ac120002',
        'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a12',
        10
    ),
    (
        '2d5eac2a-8b63-11ee-b9d1-0242ac120004',
        '016d6480-8b63-11ee-b9d1-0242ac120002',
        'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a13',
        5
    );

INSERT INTO
    ecommerce.order_transportation (
        order_transportation_id,
        order_id,
        status,
        created_at,
        updated_at
    )
VALUES
    (
        '5d0abdc4-8b63-11ee-b9d1-0242ac120002',
        '016d6480-8b63-11ee-b9d1-0242ac120002',
        'IN_CART',
        '2021-10-10 10:10:10',
        '2021-10-10 10:10:10'
    ),
    (
        '5d0abdc4-8b63-11ee-b9d1-0242ac120003',
        '016d6480-8b63-11ee-b9d1-0242ac120003',
        'IN_CART',
        '2022-10-10 10:10:10',
        '2021-10-10 10:10:10'
    ),
    (
        '5d0abdc4-8b63-11ee-b9d1-0242ac120004',
        '016d6480-8b63-11ee-b9d1-0242ac120004',
        'IN_CART',
        '2023-10-10 10:10:10',
        '2021-10-10 10:10:10'
    ),
    (
        '5d0abdc4-8b63-11ee-b9d1-0242ac120005',
        '016d6480-8b63-11ee-b9d1-0242ac120004',
        'RECEIVED',
        '2023-10-11 10:10:10',
        '2021-10-11 10:10:10'
    );

INSERT INTO
    ecommerce.notification (
        notification_id,
        user_id,
        title,
        content,
        type,
        reference
    )
VALUES
    (
        'a4f02214-8b63-11ee-b9d1-0242ac120002',
        '475b88b6-8a71-11ee-b9d1-0242ac120002',
        'Thông báo 1',
        'Nội dung thông báo 1',
        'ORDER',
        ''
    );

INSERT INTO
    ecommerce.roles(role_id, name)
VALUES
    (1, 'ROLE_USER');

INSERT INTO
    ecommerce.roles(role_id, name)
VALUES
    (2, 'ROLE_ADMIN');