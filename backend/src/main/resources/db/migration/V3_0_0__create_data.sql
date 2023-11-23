INSERT INTO ecommerce.user (user_id, username, password, email, phone, address)
VALUES ('a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a11', 'admin', '$2a$1', 'dar@gmail.com', '0123456789', 'Hanoi, Vietnam'),
       ('a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a12', 'user', '$2a$1', 'darerr@gmail.com', '0123456789', 'Hanoi, Vietnam'),
       ('a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a13', 'user1', '$2a$1', 'darerr@gmail.com', '0123456789', 'Hanoi, Vietnam');

INSERT INTO ecommerce.product (product_id, name, image_link, description, price, quantity)
VALUES ('a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a11',
        'Laptop Acer Nitro 16 Phoenix AN16-41-R5M4 (NH.QKBSV.003) (AMD Ryzen 5-7535HS) (Đen)',
        'https://lh3.googleusercontent.com/OzQVKRXMUlErjxiwqtLwpWvOWUbmuLay-lL_o80bXTheu_tfX-j07L8fuGtCgddQTrvaF_hbjKwxMlU7IxMgE_6oTkrW06Gs=w500-rw',
        'Laptop Acer Nitro 16 Phoenix AN16-41-R5M4 (NH.QKBSV.003) (AMD Ryzen 5-7535HS) (Đen)',
        25990000,
        10),

       ('a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a12',
        'Laptop Asus Vivobook Go 15 E1504FA-NJ454W (AMD Ryzen 5-7520U) (Bạc)',
        'https://lh3.googleusercontent.com/2hxeRuUP6Hj1q--N3qL9CFDpXVeKcT2iwZkMimj7Aa_otPPILupoPiUFgiRC1l3gvyEXQfP2q8OnkaG3f7H_wa6phCaCCp87kA=w1000-rw',
        'Laptop Asus Vivobook Go 15 E1504FA-NJ454W (AMD Ryzen 5-7520U) (Bạc)',
        13490000,
        1),

       ('a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a13',
        'Laptop HP ProBook 450 G10 - 873J6PA (i5-1340P/RAM 8GB/512GB SSD/ Windows 11)',
        'https://lh3.googleusercontent.com/wY8TEHeHsm8m3UBdezGWXluZesvHGcvSSm-MV0FpOwI_ibcaKApbtwd6Z0B3jNIOyorfaVHkJMa2ZYWWDm1djcHAEgmbKW_68w=w500-rw',
        'Laptop HP ProBook 450 G10 - 873J6PA (i5-1340P/RAM 8GB/512GB SSD/ Windows 11)',
        21990000,
        20);

INSERT INTO ecommerce.laptop (laptop_id, product_id, brand, color, cpu, gpu, ram)
VALUES ('a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a11',
        'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a11',
        'ACER',
        'black',
        'AMD Ryzen 5 7535HS ( 3.3 GHz - 4.5 GHz / 16MB / 6 nhân, 12 luồng )',
        'RTX 4050 6GB GDDR6 / AMD Radeon 660M',
        '1 x 8GB DDR5 4800MHz ( 2 Khe cắm / Hỗ trợ tối đa 32GB )'),

       ('a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a12',
        'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a12',
        'ASUS',
        'silver',
        'AMD Ryzen 5 7520U ( 2.8 GHz - 4.3 GHz / 4MB / 4 nhân, 8 luồng )',
        'Onboard AMD Radeon 610M',
        '16GB Onboard LPDDR5 5500MHz'),

       ('a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a13',
        'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a13',
        'HP',
        'silver',
        'Intel Core i5-1340P ( 1.9 GHz - 4.6 GHz / 12MB / 12 nhân, 16 luồng )',
        'Onboard Intel Iris Xe Graphics',
        '1 x 8GB DDR4 3200MHz ( 2 Khe cắm / Hỗ trợ tối đa 32GB )');


