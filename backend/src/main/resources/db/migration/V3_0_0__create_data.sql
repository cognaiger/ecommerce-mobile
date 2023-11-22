INSERT INTO ecommerce.user (user_id, username, password, email, phone, address)
VALUES ('a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a11', 'admin', '$2a$1', 'dar@gmail.com', '0123456789', 'Hanoi, Vietnam'),
       ('a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a12', 'user', '$2a$1', 'darerr@gmail.com', '0123456789', 'Hanoi, Vietnam'),
       ('a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a13', 'user1', '$2a$1', 'darerr@gmail.com', '0123456789', 'Hanoi, Vietnam');

INSERT INTO ecommerce.product (product_id, name, image_link, description, price, quantity)
VALUES ('a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a11', 'Laptop 1',
        'https://cdn.tgdd.vn/Products/Images/44/228737/lenovo-ideapad-330-15ikb-i3-8130u-4gb-1tb-win10-1-org.jpg',
        'Laptop 1', 10000000, 10),
       ('a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a12', 'Laptop 2',
        'https://cdn.tgdd.vn/Products/Images/44/228737/lenovo-ideapad-330-15ikb-i3-8130u-4gb-1tb-win10-1-org.jpg',
        'Laptop 2', 10000000, 10),
       ('a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a13', 'Laptop 3',
        'https://cdn.tgdd.vn/Products/Images/44/228737/lenovo-ideapad-330-15ikb-i3-8130u-4gb-1tb-win10-1-org.jpg',
        'Laptop 3', 10000000, 10);

INSERT INTO ecommerce.laptop (laptop_id, product_id, brand, series, part_number, color, demand, cpu_series, cpu_brand,
                              cpu_model, gpu, ram)
VALUES ('a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a11', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a11', 'Lenovo', 'Ideapad', 'LX98G0',
        'white', 'gaming', 'Intel Core i3', 'Intel', 'i3-8130U', 'Intel UHD Graphics 620', '4GB');

