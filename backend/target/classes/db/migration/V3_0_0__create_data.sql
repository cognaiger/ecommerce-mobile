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

INSERT INTO ecommerce.brand (brand_name, image_link)
VALUES
('ACER', 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/8b/Acer-logo.jpg/768px-Acer-logo.jpg'),
('ASUS', 'https://inkythuatso.com/uploads/thumbnails/800/2021/11/logo-asus-inkythuatso-2-01-26-09-21-11.jpg'),
('MSI', 'https://devdiscourse.blob.core.windows.net/devnews/15_09_2020_11_27_22_2518697.jpg'),
('Lenovo', 'https://thumbs.dreamstime.com/b/lenovo-logo-vector-format-available-illustrator-ai-149074793.jpg'),
('HP', 'https://i2.cdn.turner.com/money/dam/assets/160405075114-hp-logo-640x640.jpg'),
('Dell', 'https://inkythuatso.com/uploads/images/2021/10/dell-logo-inkythuatso-4-01-30-10-17-55.jpg'),
('Corsair', 'https://logowik.com/content/uploads/images/corsair7271.jpg'),
('Kingston', 'https://logowik.com/content/uploads/images/647_kingston_logo.jpg'),
('G.Skill', 'https://logowik.com/content/uploads/images/gskill3165.jpg'),
('PNY', 'https://logonoid.com/images/pny-logo.png'),
('Western Digital', 'https://logowik.com/content/uploads/images/western-digital-wd4852.jpg'),
('SamSung', 'https://images.samsung.com/is/image/samsung/assets/vn/about-us/brand/logo/mo/360_197_1.png?$FB_TYPE_B_PNG$'),
('LG', 'https://static.vecteezy.com/system/resources/previews/018/911/404/original/lg-logo-life-s-good-editorial-free-vector.jpg'),
('ViewSonic', 'https://1000logos.net/wp-content/uploads/2017/12/ViewSonic-Symbol.jpg'),
('Razor', 'https://cdn.dribbble.com/users/163339/screenshots/12047842/logos-razor-logo.png'),
('HyperX', 'https://steamuserimages-a.akamaihd.net/ugc/1002557701827770568/5065A15BD82BCFBCDA57ADBDEAA84B10E49B5398/?imw=637&imh=358&ima=fit&impolicy=Letterbox&imcolor=%23000000&letterbox=true'),
('Glorious', 'https://inkythuatso.com/uploads/images/2021/10/dell-logo-inkythuatso-4-01-30-10-17-55.jpg'),
('Logitech', 'https://cdn.icon-icons.com/icons2/2845/PNG/512/logitech_logo_icon_181377.png');


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
        '25990000',
        '20000000',
        10
    ),
    (
        'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a12',
        'ASUS',
        'Laptop Asus Vivobook Go 15 E1504FA-NJ454W (AMD Ryzen 5-7520U) (Bạc)',
        'https://lh3.googleusercontent.com/2hxeRuUP6Hj1q--N3qL9CFDpXVeKcT2iwZkMimj7Aa_otPPILupoPiUFgiRC1l3gvyEXQfP2q8OnkaG3f7H_wa6phCaCCp87kA=w1000-rw',
        'Laptop Asus Vivobook Go 15 E1504FA-NJ454W (AMD Ryzen 5-7520U) (Bạc)',
        '13490000',
        '10000000',
        1
    ),
    (
        'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a13',
        'HP',
        'Laptop HP ProBook 450 G10 - 873J6PA (i5-1340P/RAM 8GB/512GB SSD/ Windows 11)',
        'https://lh3.googleusercontent.com/wY8TEHeHsm8m3UBdezGWXluZesvHGcvSSm-MV0FpOwI_ibcaKApbtwd6Z0B3jNIOyorfaVHkJMa2ZYWWDm1djcHAEgmbKW_68w=w500-rw',
        'Laptop HP ProBook 450 G10 - 873J6PA (i5-1340P/RAM 8GB/512GB SSD/ Windows 11)',
        '21990000',
        '20000000',
        20
    ),
    (
        'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a14',
        'HP',
        'Laptop HP Envy X360 13-bf0094TU 76B14PA (Core i5 1230U/ 16GB/ 512GB SSD/ Intel Iris Xe Graphics/ 13.3inch OLED Touch/ Windows 11 Home/ Blue/ Vỏ nhôm/ Pen)',
        'https://cdn.tgdd.vn/Products/Images/44/296789/hp-envy-x360-13-bf0090tu-i7-76b13pa-1-1.jpg',
        'Laptop HP Envy X360 13-bf0094TU 76B14PA (Core i5 1230U/ 16GB/ 512GB SSD/ Intel Iris Xe Graphics/ 13.3inch OLED Touch/ Windows 11 Home/ Blue/ Vỏ nhôm/ Pen)\n\nThiết kế bản lề xoay gập linh hoạt cùng hiệu năng mạnh mẽ, HP Envy x360 13- bf0094TU 76B14PA thuộc dòng máy tính mỏng nhẹ, cao cấp, phù hợp cho người dùng là sinh viên, nhân viên văn phòng, những người trẻ năng động cần di chuyển thường xuyên.\n\nLaptop HP Envy X360 13-bf0094TU 76B14PA\nMỏng nhẹ, cao cấp và đồng hành cùng bạn mọi nơi\n\nThiết kế bên ngoài HP Envy x360 13 toát lên sự cao cấp nhờ thiết kế nhỏ gọn, mạnh mẽ và độ mỏng ấn tượng. Được chế tác từ khung nhôm bóng bẩy, bền vững và siêu nhẹ, HP Envy x360 vừa sang trọng, vừa có độ bền đáng mơ ước. Phiên bản màu Xanh Blue sang trọng, tinh tế và nổi bật. Kiểu dáng thời thượng với viền màn hình siêu mỏng, những đường cắt vuông vắn và các chi tiết hoàn thiện tỉ mỉ tạo nên chiếc laptop đẳng cấp bậc nhất.\n\nLaptop HP Envy X360 13-bf0094TU 76B14PA\nSáng tạo không ngừng và có thêm nhiều cảm hứng trong công việc\n\nMàn hình HP Envy x360 có phần viền màn hình mỏng nâng cao trải nghiệm xem, cho hình ảnh thêm phần sống động. Độ phân giải Full HD trên màn hình 13.3 inch mang tới hình ảnh sắc nét, tạo cảm hứng cả khi làm việc và giải trí. Công nghệ màn hình OLED Touch, BrightView giúp mọi thứ trở nên tươi sáng, hấp dẫn, hiển thị hình ảnh và video rực rỡ hơn.\n\nLaptop HP Envy X360 13-bf0094TU 76B14PA\n\nMàn hình cảm ứng của laptop HP tương thích với bút cảm ứng để tạo thành một bàn vẽ linh hoạt. Bạn có thể dùng bút cảm ứng để viết vẽ tự nhiên, cảm giác như đang viết trên giấy. Thỏa sức sáng tạo, ghi chú với HP Envy x360. Màn hình cảm ứng kết hợp với thân máy xoay 360 độ giúp bạn có thể sử dụng máy với 4 chế độ khác nhau. Dù là dưới vai trò laptop thông thường; máy tính bảng hay trình chiếu, HP Envy x360 cũng đều thể hiện xuất sắc và hữu dụng.\n\nLaptop HP Envy X360 13-bf0094TU 76B14PA\n\nVới âm thanh được tinh chỉnh bởi công nghệ hàng đầu Bang & Olufsen, HP Envy X360 13 đem đến những giờ phút xem phim, nghe nhạc êm tai, thư giãn để bạn thỏa sức đắm chìm vào không gian riêng cực \"chill\".\n\nLaptop HP Envy X360 13-bf0094TU 76B14PA\nHoàn thành mọi việc nhanh chóng bởi cấu hình mạnh mẽ\n\nHP Envy x360 13- bf0094TU 76B14PA có tốc độ xử lý mượt mà nhờ bộ vi xử lý Intel Core i5-1230U. Mọi công việc sẽ được giải quyết một cách rất nhẹ nhàng nhờ hiệu suất cao và ổn định của Envy x360. Card đồ họa tích hợp Intel® Iris® Xe Graphics giúp các thao tác đồ họa mượt mà hơn.\n\nLaptop HP Envy X360 13\n\nBên cạnh bộ vi xử lý mạnh mẽ, HP Envy x360 còn có tốc độ khởi động, mở ứng dụng cực nhanh nhờ ổ cứng SSD 512GB. Cùng với đó là 16GB RAM hiệu năng cao, cho khả năng đa nhiệm tuyệt vời. Chiếc laptop HP Envy của bạn sẽ luôn hoạt động mượt mà, đảm bảo cho công việc luôn trôi chảy.\n\nLaptop HP Envy X360 13\nTối ưu bảo mật\n\nEnvy x360 13 cho phép bạn làm chủ hoàn toàn quyền riêng tư của mình khi sử dụng. Bạn sẽ có phím tắt để đóng màn trập camera và tắt micro khi không cần thiết. Như vậy hình ảnh và cuộc trò chuyện của bạn sẽ không bị các tin tặc xâm phạm. Thêm một ưu điểm nữa cho chiếc laptop HP Envy X360 này là tính năng bảo mật vân tay. Bạn có thể khởi động máy chỉ với 1 cái chạm tay, cực nhanh chóng mà vẫn bảo vệ an toàn cho dữ liệu trên máy.\n\n Laptop HP Envy X360 13-bf0094TU 76B14PA\nThiết kế bàn phím hợp lí mang lại trải nghiệm gõ phím tốt\n\nTrong thân máy nhỏ gọn nhưng bàn phím của máy được thiết kế hợp lí, tràn ra sát cạnh giúp cho các phím to rõ không thua kém các mẫu laptop 14 inch. Máy trang bị đầy đủ các phím chức năng cần thiết, đặc biệt, với phím tắt camera tiện lợi giúp bảo mật tốt hơn, kiểm soát được thời gian sử dụng webcam. Bàn phím có trang bị đèn nền để dễ quan sát vào ban đêm, tránh gõ sai, giúp bạn có trải nghiệm gõ phím tốt.\n\n Laptop HP Envy X360 13-bf0094TU 76B14PA\nKết nối dễ dàng\n\nLà một chiếc laptop mỏng nhẹ, nhưng HP Envy x360 13- bf0094TU 76B14PA vẫn có đủ những kết nối tiên tiến và phổ biến nhất để phục vụ công việc. Bạn sẽ có cổng USB Type-C tốc độ siêu nhanh 10Gpbs đóng vai trò đa năng từ sạc, DisplayPort 1.4 cho đến sạc điện trong khi tắt máy; cổng USB Type-A 5Gbps trong đó một cổng có thể sạc khi tắt máy; đầu đọc thẻ SD; cổng nguồn và jack tai nghe 3.5mm.',
        '29590000',
        '22990000',
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
    ),
    (
        'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a14',
        '13.3inch OLED Touch',
        '512 GB',
        'Core i5 1230U 3.3GHz',
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
        'cbab07cd-aa39-4ae4-bdc2-b255b2f76083',
        'HP',
        ' HP ENVY X360 13-BF0094TU 76B14PA ',
        'https://anphat.com.vn/media/product/43471_laptop_hp_envy_x360_13_bf0094tu_76b14pa_anphatpc.jpg',
        'Laptop HP Envy X360 13-bf0094TU 76B14PA (Core i5 1230U/ 16GB/ 512GB SSD/ Intel Iris Xe Graphics/ 13.3inch OLED Touch/ Windows 11 Home/ Blue/ Vỏ nhôm/ Pen)

Thiết kế bản lề xoay gập linh hoạt cùng hiệu năng mạnh mẽ, HP Envy x360 13- bf0094TU 76B14PA thuộc dòng máy tính mỏng nhẹ, cao cấp, phù hợp cho người dùng là sinh viên, nhân viên văn phòng, những người trẻ năng động cần di chuyển thường xuyên.

Laptop HP Envy X360 13-bf0094TU 76B14PA
Mỏng nhẹ, cao cấp và đồng hành cùng bạn mọi nơi

Thiết kế bên ngoài HP Envy x360 13 toát lên sự cao cấp nhờ thiết kế nhỏ gọn, mạnh mẽ và độ mỏng ấn tượng. Được chế tác từ khung nhôm bóng bẩy, bền vững và siêu nhẹ, HP Envy x360 vừa sang trọng, vừa có độ bền đáng mơ ước. Phiên bản màu Xanh Blue sang trọng, tinh tế và nổi bật. Kiểu dáng thời thượng với viền màn hình siêu mỏng, những đường cắt vuông vắn và các chi tiết hoàn thiện tỉ mỉ tạo nên chiếc laptop đẳng cấp bậc nhất.

Laptop HP Envy X360 13-bf0094TU 76B14PA
Sáng tạo không ngừng và có thêm nhiều cảm hứng trong công việc

Màn hình HP Envy x360 có phần viền màn hình mỏng nâng cao trải nghiệm xem, cho hình ảnh thêm phần sống động. Độ phân giải Full HD trên màn hình 13.3 inch mang tới hình ảnh sắc nét, tạo cảm hứng cả khi làm việc và giải trí. Công nghệ màn hình OLED Touch, BrightView giúp mọi thứ trở nên tươi sáng, hấp dẫn, hiển thị hình ảnh và video rực rỡ hơn.

Laptop HP Envy X360 13-bf0094TU 76B14PA

Màn hình cảm ứng của laptop HP tương thích với bút cảm ứng để tạo thành một bàn vẽ linh hoạt. Bạn có thể dùng bút cảm ứng để viết vẽ tự nhiên, cảm giác như đang viết trên giấy. Thỏa sức sáng tạo, ghi chú với HP Envy x360. Màn hình cảm ứng kết hợp với thân máy xoay 360 độ giúp bạn có thể sử dụng máy với 4 chế độ khác nhau. Dù là dưới vai trò laptop thông thường; máy tính bảng hay trình chiếu, HP Envy x360 cũng đều thể hiện xuất sắc và hữu dụng.

Laptop HP Envy X360 13-bf0094TU 76B14PA

Với âm thanh được tinh chỉnh bởi công nghệ hàng đầu Bang & Olufsen, HP Envy X360 13 đem đến những giờ phút xem phim, nghe nhạc êm tai, thư giãn để bạn thỏa sức đắm chìm vào không gian riêng cực "chill".

Laptop HP Envy X360 13-bf0094TU 76B14PA
Hoàn thành mọi việc nhanh chóng bởi cấu hình mạnh mẽ

HP Envy x360 13- bf0094TU 76B14PA có tốc độ xử lý mượt mà nhờ bộ vi xử lý Intel Core i5-1230U. Mọi công việc sẽ được giải quyết một cách rất nhẹ nhàng nhờ hiệu suất cao và ổn định của Envy x360. Card đồ họa tích hợp Intel® Iris® Xe Graphics giúp các thao tác đồ họa mượt mà hơn.

Laptop HP Envy X360 13

Bên cạnh bộ vi xử lý mạnh mẽ, HP Envy x360 còn có tốc độ khởi động, mở ứng dụng cực nhanh nhờ ổ cứng SSD 512GB. Cùng với đó là 16GB RAM hiệu năng cao, cho khả năng đa nhiệm tuyệt vời. Chiếc laptop HP Envy của bạn sẽ luôn hoạt động mượt mà, đảm bảo cho công việc luôn trôi chảy.

Laptop HP Envy X360 13
Tối ưu bảo mật

Envy x360 13 cho phép bạn làm chủ hoàn toàn quyền riêng tư của mình khi sử dụng. Bạn sẽ có phím tắt để đóng màn trập camera và tắt micro khi không cần thiết. Như vậy hình ảnh và cuộc trò chuyện của bạn sẽ không bị các tin tặc xâm phạm. Thêm một ưu điểm nữa cho chiếc laptop HP Envy X360 này là tính năng bảo mật vân tay. Bạn có thể khởi động máy chỉ với 1 cái chạm tay, cực nhanh chóng mà vẫn bảo vệ an toàn cho dữ liệu trên máy.

 Laptop HP Envy X360 13-bf0094TU 76B14PA
Thiết kế bàn phím hợp lí mang lại trải nghiệm gõ phím tốt

Trong thân máy nhỏ gọn nhưng bàn phím của máy được thiết kế hợp lí, tràn ra sát cạnh giúp cho các phím to rõ không thua kém các mẫu laptop 14 inch. Máy trang bị đầy đủ các phím chức năng cần thiết, đặc biệt, với phím tắt camera tiện lợi giúp bảo mật tốt hơn, kiểm soát được thời gian sử dụng webcam. Bàn phím có trang bị đèn nền để dễ quan sát vào ban đêm, tránh gõ sai, giúp bạn có trải nghiệm gõ phím tốt.

 Laptop HP Envy X360 13-bf0094TU 76B14PA
Kết nối dễ dàng

Là một chiếc laptop mỏng nhẹ, nhưng HP Envy x360 13- bf0094TU 76B14PA vẫn có đủ những kết nối tiên tiến và phổ biến nhất để phục vụ công việc. Bạn sẽ có cổng USB Type-C tốc độ siêu nhanh 10Gpbs đóng vai trò đa năng từ sạc, DisplayPort 1.4 cho đến sạc điện trong khi tắt máy; cổng USB Type-A 5Gbps trong đó một cổng có thể sạc khi tắt máy; đầu đọc thẻ SD; cổng nguồn và jack tai nghe 3.5mm.',
        '29.590.000 ₫',
        '22.990.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        'd8d01ee3-bb3a-4ab6-adb6-9d751a5ec0dc',
        'HP',
        ' HP ENVY X360 13-BF0096TU 76B16PA ',
        'https://vitinhnguyenkim.vn/uploads/product/laptop/HP/hp-envy-x360-13-bf0096tu-76b16pa.jpg',
        'Đánh giá chi tiết Laptop HP Envy x360 13-bf0096TU i5-1230U

Linh hoạt trong thiết kế, mạnh mẽ trong cấu hình, thỏa mãn trong trải nghiệm sử dụng... tất cả những yếu tố này đều có mặt trên chiếc laptop HP Envy x360 13-bf0096TU.
Thiết kế đa dạng

HP Envy x360 13 (Ảnh 1)

HP Envy x360 13-bf0096TU có độ mỏng chỉ 1.61cm và khối lượng 1.34kg nên cực kì nhẹ nhàng khi cầm trên tay. Chiếc laptop này có thiết kế cực gọn gàng, nhỏ nhắn nên sẽ yên vị trong balo hoặc túi xách của bạn để theo bạn trong mọi chuyến đi. Phần mặt lưng của máy được phủ kim loại cao cấp cho cảm giác sang trọng, các đường viền xung quanh được vát mỏng ấn tượng. Máy được trang bị bản lề đôi siêu cứng cáp nhằm tăng cường độ bền lâu dài khi sử dụng.

HP Envy x360 13 (Ảnh 2)

Không những sử dụng được ở chế độ bình thường, bạn còn có thể biến chiếc laptop HP này sang máy tính bảng chỉ bằng thao tác gập màn hình về sau 360 độ hoặc dựng lên thành hình chiếc lều để giải trí thoải mái hơn.
Hình ảnh sinh động, rõ nét với màn hình OLED 2.8K

HP Envy x360 13 (Ảnh 3)

HP Envy x360 sở hữu màn hình 13.3 inch với công nghệ OLED mang lại chất lượng hiển thị trên cả mong đợi. Độ phân giải hình ảnh tối đa 2880 x 1800 pixels sẽ kết hợp với tần số quét 60Hz, bên cạnh đó là màu đen có độ sâu rất rõ ràng cùng độ chi tiết cực kì sắc nét... bạn sẽ không thể ngừng choáng ngợp trước những hình ảnh mà bạn nhìn thấy. Thời gian phản hồi hình ảnh được tính bằng mili-giây của màn hình này rất ngắn, vậy nên những khung hình được hiển thị luôn luôn mượt mà và liền mạch. Tình trạng xé rách hoặc gãy đôi khung hình sẽ bị loại bỏ hoàn toàn.
Cấu hình mạnh, thỏa sức sáng tạo và làm việc

HP Envy x360 13 (Ảnh 4)

HP Envy x360 13-bf0096TU mang trong mình sức mạnh của con chip Intel Core i5-1230U với mức xung nhịp lần lượt là 1.00GHz và 4.40GHz. Con chip tiết kiệm năng lượng này này có 10 nhân, 12 luồng nên sẽ nhanh chóng khởi chạy các chương trình hoặc ứng dụng mà bạn yêu cầu; đồng thời nó còn tiết kiệm pin hiệu quả trong quá trình sử dụng của bạn.

Đi cùng Intel Core i5-1230U là 8GB RAM LPDDR4X 4266MHz cùng 512GB SSD M.2 NVMe. Tốc độ bus của thanh RAM DDR4 này rất cao nên bạn có thể thoải mái thực hiện các tác vụ đa nhiệm cũng như chọn lựa các công cụ cần thiết cho quá trình giải trí, làm việc của mình; bên cạnh đó ổ cứng SSD có dung lượng lưu trữ lớn kèm tốc độ đọc/ghi dữ liệu nhanh ấn tượng sẽ thực hiện các yêu cầu truy xuất dữ liệu của bạn trong thời gian ngắn nhất.
Bàn phím gõ êm, Trackpad lướt nhạy

HP Envy x360 13 (Ảnh 5)

HP Envy x360 13-bf0096TU sở hữu bàn phím nhỏ, không có dãy phím số bên phải. Khi đặt tay lên bàn phím và bắt đầu gõ nhiều dòng chữ, bạn sẽ cảm nhận được tính êm ái và độ nảy cao của từng phím riêng biệt. Hành trình gõ tổng thể khá sâu, các phím đều được thiết kế to và vừa vặn với đầu ngón tay nên về lâu dài bạn sẽ không thấy mỏi. Khi hoạt động ở môi trường tối, đèn LED trắng chạy nền bên dưới sẽ giúp bạn nhìn rõ từng phím một và thao tác chính xác hơn.
Cổng kết nối cao cấp

HP Envy x360 13 (Ảnh 6)

HP Envy x360 13 (Ảnh 7)

HP Envy x360 13-bf0096TU có những cổng kết nối bao gồm 1 jack Audio 3.5mm - 1 khe cắm thẻ nhớ - 2 USB 3.2 Gen 1 - 2 USB Type-C. Dù số lượng cổng kết nối này khá ít nhưng chúng đều thuộc thế hệ mới và sở hữu tốc độ kết nối cao cùng với tính ổn định cực lâu dài. Chưa dừng lại ở đó, HP Envy x360 13-bf0096TU còn tương thích hoàn toàn với Wi-Fi 6E và Bluetooth 5.3 nên bạn có thể sử dụng thêm rất nhiều loại phụ kiện không dây khác với trải nghiệm hoàn hảo nhất.
',
        '27.690.000 ₫',
        '21.990.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        '6eacf674-2af8-49bd-b9c8-9ef03d44a668',
        'HP',
        ' HP ENVY X360 13-BF0090TU 76B13PA ',
        'https://phucanhcdn.com/media/product/49124_laptop_hp_envy_x360_13_bf0090tu_blue_a2.jpg',
        'Laptop HP Envy X360 13-bf0090TU 76B13PA (Core i7 1250U/ 16GB/ 512GB SSD/ Intel Iris Xe Graphics/ 13.3inch OLED Touch/ Windows 11 Home/ Blue/ Vỏ nhôm/ Pen)

Nếu bạn đang tìm kiếm một chiếc laptop văn phòng với chất lượng bền bỉ, thiết kế sang trọng gọn nhẹ, hiệu năng mạnh mẽ cùng chất lượng hiển thị tuyệt vời thì đừng bỏ qua chiếc laptop HP chính hãng Envy x360 13- bf0090TU 76B13PA nhé! Nào, bây giờ hãy cùng Phúc Anh tìm hiểu các thông tin chi tiết về sản phẩm này!

Laptop HP Envy X360 13-bf0090TU 76B13PA
Thiết kế mỏng nhẹ, sang trọng

Thiết kế bên ngoài HP Envy x360 13 toát lên sự cao cấp nhờ thiết kế nhỏ gọn, mạnh mẽ và độ mỏng ấn tượng. Được chế tác từ khung nhôm bóng bẩy, bền vững và siêu nhẹ, HP Envy x360 vừa sang trọng, vừa có độ bền đáng mơ ước. Phiên bản màu Xanh Blue sang trọng, tinh tế và nổi bật. Kiểu dáng thời thượng với viền màn hình siêu mỏng, những đường cắt vuông vắn và các chi tiết hoàn thiện tỉ mỉ tạo nên chiếc laptop đẳng cấp bậc nhất.

Laptop HP Envy X360 13-bf0090TU 76B13PA
Công nghệ màn hình OLED Touch

Màn hình laptop cao cấp HP Envy x360 có phần viền màn hình mỏng nâng cao trải nghiệm xem, cho hình ảnh thêm phần sống động. Độ phân giải Full HD trên màn hình 13.3 inch mang tới hình ảnh sắc nét, tạo cảm hứng cả khi làm việc và giải trí. Công nghệ màn hình OLED Touch, BrightView giúp mọi thứ trở nên tươi sáng, hấp dẫn, hiển thị hình ảnh và video rực rỡ hơn.

Laptop HP Envy X360 13-bf0090TU 76B13PA

Màn hình cảm ứng của laptop HP tương thích với bút cảm ứng để tạo thành một bàn vẽ linh hoạt. Bạn có thể dùng bút cảm ứng để viết vẽ tự nhiên, cảm giác như đang viết trên giấy. Thỏa sức sáng tạo, ghi chú với HP Envy x360. Màn hình cảm ứng kết hợp với thân máy xoay 360 độ giúp bạn có thể sử dụng máy với 4 chế độ khác nhau. Dù là dưới vai trò laptop thông thường; máy tính bảng hay trình chiếu, HP Envy x360 cũng đều thể hiện xuất sắc và hữu dụng.

Laptop HP Envy X360 13-bf0090TU 76B13PA

Với âm thanh được tinh chỉnh bởi công nghệ hàng đầu Bang & Olufsen, HP Envy X360 13 đem đến những giờ phút xem phim, nghe nhạc êm tai, thư giãn để bạn thỏa sức đắm chìm vào không gian riêng cực "chill".

Laptop HP Envy X360 13-bf0090TU 76B13PA
Phục vụ hoàn hảo các tác vụ

HP Envy x360 13-bf0090TU 76B13PA có tốc độ xử lý mượt mà nhờ bộ vi xử lý Intel Core i7-1250U. Mọi công việc sẽ được giải quyết một cách rất nhẹ nhàng nhờ hiệu suất cao và ổn định của Envy x360. Card đồ họa tích hợp Intel® Iris® Xe Graphics giúp các thao tác đồ họa mượt mà hơn.

Intel Core

Bên cạnh bộ vi xử lý mạnh mẽ, HP Envy x360 còn có tốc độ khởi động, mở ứng dụng cực nhanh nhờ ổ cứng SSD 512GB. Cùng với đó là 16GB RAM hiệu năng cao, cho khả năng đa nhiệm tuyệt vời. Chiếc laptop HP Envy của bạn sẽ luôn hoạt động mượt mà, đảm bảo cho công việc luôn trôi chảy.

Laptop HP Envy X360 13
Bảo mật tuyệt vời

Envy x360 13 cho phép bạn làm chủ hoàn toàn quyền riêng tư của mình khi sử dụng. Bạn sẽ có phím tắt để đóng màn trập camera và tắt micro khi không cần thiết. Như vậy hình ảnh và cuộc trò chuyện của bạn sẽ không bị các tin tặc xâm phạm. Thêm một ưu điểm nữa cho chiếc laptop HP Envy X360 này là tính năng bảo mật vân tay. Bạn có thể khởi động máy chỉ với 1 cái chạm tay, cực nhanh chóng mà vẫn bảo vệ an toàn cho dữ liệu trên máy.

Laptop HP Envy X360 13-bf0090TU 76B13PA
Trải nghiệm gõ tốt

Trong thân máy nhỏ gọn nhưng bàn phím của máy được thiết kế hợp lí, tràn ra sát cạnh giúp cho các phím to rõ không thua kém các mẫu laptop 14 inch. Máy trang bị đầy đủ các phím chức năng cần thiết, đặc biệt, với phím tắt camera tiện lợi giúp bảo mật tốt hơn, kiểm soát được thời gian sử dụng webcam. Bàn phím có trang bị đèn nền để dễ quan sát vào ban đêm, tránh gõ sai, giúp bạn có trải nghiệm gõ phím tốt.

 Laptop HP Envy X360 13-bf0090TU 76B13PA
Kết nối dễ dàng

Là một chiếc laptop mỏng nhẹ, nhưng HP Envy x360 13- bf0090TU 76B13PA vẫn có đủ những kết nối tiên tiến và phổ biến nhất để phục vụ công việc. Bạn sẽ có cổng USB Type-C tốc độ siêu nhanh 10Gpbs đóng vai trò đa năng từ sạc, DisplayPort 1.4 cho đến sạc điện trong khi tắt máy; cổng USB Type-A 5Gbps trong đó một cổng có thể sạc khi tắt máy; đầu đọc thẻ SD; cổng nguồn và jack tai nghe 3.5mm.',
        '32.990.000 ₫',
        '27.490.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        '5fe8de90-a2b6-47a4-b917-26bbae691f8a',
        'HP',
        ' HP ENVY 16-H0033TX 6K7F9PA ',
        'https://anphat.com.vn/media/product/42992_laptop_hp_envy_16_h0033tx_6k7f9pa789__4_.gif',
        'Laptop HP Envy 16-h0033TX 6K7F9PA - Xứng đáng là lựa chọn hàng đầu của bạn

 

Laptop HP Envy 16-h0033TX 6K7F9PA với thiết kế cao cấp, linh động, với vỏ ngoài màu bạc toát lên sự quý phái, sang trọng. Thiết kế máy là sự kết hợp hài hoà giữa sự quý phái với sự bền bỉ khi sở hữu trọng lượng chỉ nặng 2.32kg đem lại cảm giác chắc chắn, cùng với kích thước 35.74 x 25.18 x 1.99cm HP Envy 16-h0033TX 6K7F9PA rất nhỏ gọn, dễ dàng để mang theo bên người. Để hiểu rõ về chiếc máy chúng ta hãy điểm qua những tính năng vượt trội mà chiếc máy đem lại cho người dùng.
Thiết kế sang trọng, đẳng cấp

Laptop HP Envy 16-h0033TX6K7F9PA được người dùng vô cùng yêu thích với thiết kế hiện đại, sang trọng và vô cùng tinh tế. Vỏ laptop được sử dụng chất liệu kim loại nguyên khối siêu chắc chắn, bền bỉ trước mọi tác động. Kiểu dáng mỏng nhẹ, thanh thoát, viền màn hình siêu mỏng và vô cùng chắc chắn. Với bàn phím tràn viền toát sự tinh tế và gọn gàng. Lớp sơn ngoài phủ màu bạc cùng với những đường nét vuông vắn. Càng làm tăng lên sự sang trọng và thanh lịch vốn có của chiếc laptop này.

Thiết kế ấn tượng, tạo điểm nhấn

Logo HP được đặt giữa phần lưng của máy vô cùng nổi bật và rõ thấy, toát lên nét quý phái đặc trưng thường thấy của hãng. Chất liệu vỏ máy đem lại cảm giác mượt mà, thoải mái mỗi khi chạm vào và đặc biệt giúp chống bám vân tay.
Màn hình góc rộng, siêu mỏng

Với thiết kế là một chiếc máy tính đồ họa, phần màn hình chính là tâm điểm của chiếc Laptop HP Envy 16-h0033TX 6K7F9PA màn hình 16 inch WQXGA (2560 x 1600) mang đến chất lượng hình ảnh hiển thị sắc nét với độ sáng cao và màu sắc tốt. Ngoài ra, màn hình của Pavilion này sử dụng viền mỏng với các thông số 120Hz, IPS, edge-to-edge glass, micro-edge, Low Blue Light, 400 nits,100% sRGB  đáp ứng tiêu chuẩn cơ bản của màn hình laptop hiện nay.

Màn hình góc rộng, siêu mỏng
Bộ vi xử lý với hiệu năng cao, xử lý mọi nhu cầu nhanh chóng 

Máy được hỗ trợ RAM 16GB (2 x 8GB ) DDR5-4800MHz giúp xử lý đa nhiệm mềm mượt hơn, dịch chuyển giữa các ứng dụng nhanh chóng mà không bị đơ hay lag màn hình. Trang bị CPU intel Core i9-12900H (14 nhân, 20 luồng, 3.80 GHz upto 5.00 GHz, 24MB ) bộ vi xử lý mới nhất cho mọi tác vụ từ cơ bản đến nâng cao .

Laptop HP Envy 16-h0033TX 6K7F9PA với ổ cứng 512GB PCie  NVMe TLC M.2 SSD mang đến không gian lưu trữ rộng rãi cho các tài liệu văn phòng và học tập, đảm bảo máy khởi động và truy xuất dữ liệu nhanh chóng.
Bàn phím touchpad được hoàn thiện từng chi tiết

Bàn phím chất lượng cao, phím được thiết kế hợp lý, độ nảy và tốc độ phản hồi của từng phím rất nhanh nhạy. Kích thước từng phím khá lớn, hạn chế việc ấn nhầm phím của người sử dụng. Trải nghiệm gõ phím của Laptop này được gói gọn trong 2 từ êm ái và nhạy bén.

Về phần TouchPad cũng được thiết kế khá rộng rãi, khả năng cảm ứng đa chỗ vô cùng nhạy bén. Cho người dùng khả năng điều khiển chuột dễ dàng không kém gì khi sử dụng chuột một mình. 

Bàn phím và Touchpad hoàn thiện từng chi tiết
Cổng kết nối đầy đủ đáp ứng mọi nhu cầu từ cơ bản đến phức tạp 

Để đáp ứng nhu cầu kết nối ngoại vi, chiếc HP 16-h0033TX 6K7F9PA được trang bị đầy đủ những cổng kết nối thông dụng.

    2 Thunderbolt 4 with ÚB4 Type-C 40Gbps signaling rate (USB Power Delivery, DisplayPort 1.4, HP Sleep and Charge )
    1 SuperSpeed USB Type-A 10Gbps signaling rate
    1 HDMI 2.1
    1 x headphone/microphone combo
    1 microSD media card reader

Khả năng kết nối không dây diễn ra vô cùng mạnh. Khi được sở hữu Intel Wi-Fi 6E AX211 ( 2x2 ) và Bluetooth 5.2 cho khả năng truyền tải luôn ổn định.
Webcam HP TrueVision 

Laptop HP Envy 16-h0033TX 6K7F9PA sở hữu màn hình cỡ đại 16 inch và độ phân giải WQXGA (2560 X 1600) cho khả năng hiển thị hình ảnh ấn tượng. Sử dụng tấm nền IPS hỗ trợ góc nhìn rộng lớn từ nhiều góc nhìn mà không ảnh hưởng chất lượng nội dung. Các công nghệ hiện đại được tập hợp trong chiếc màn hình này. Khả năng hiển thị hình ảnh tới người sử dụng với chất lượng cao, nét và thời gian phản hồi nhanh.

Webcam HP TrueVision

NVIDIA GeForce RTX 3060 với dung lượng 6Gb VRAM cho khả năng xử lý hình ảnh nhanh. Đảm bảo những khung hình được hiển thị ra màn  luôn được trơn tru và ổn định. Mọi tác vụ từ thiết kế, chơi game, lướt web… Đều trở nên vô cùng mượt với tần số 120Hz.

Laptop HP Envy 16-h0033TX 6K7F9PA được đánh giá là một trong những dòng máy tính xách tay được ưa chuộng nhất dành cho dân văn phòng. Hiệu năng mạnh mẽ và thiết kế thời thượng là ưu điểm vượt trội của dòng máy tính xách tay của thương hiệu HP. Nếu bạn đang tìm kiếm một dòng laptop có thể đáp ứng được tất cả những công việc văn phòng thì đây chính là lựa chọn số 1 mà bạn nên sử dụng.',
        '59.990.000 ₫',
        '53.990.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        '1b0ba9d4-4182-4bcc-b59a-e72d362490f8',
        'HP',
        ' HP ENVY X360 13-BF0092TU 76V59PA ',
        '',
        'MÁY TÍNH XÁCH TAY HP ENVY X360 13-BF0092TU,CORE I7-1250U/ 8GB RAM/ 512GB SSD/ INTEL GRAPHICS/ 13.3INCH 2.8K TOUCH/ WEBCAM/ 4 CELL/ WLAN AX+BT/ PEN/ WIN11 HOME 64/ SPACE BLUE_(76V59PA)* - 01Y

HP ENVY X360 13-bf0092TU 76V59PA được thiết kế gọn nhẹ với kích thước 29.83 x 21.49 x 1.61 cm, nặng chỉ đến 1.34 kg. Với thiết kế nhỏ gọn trên các bạn có thể mang em nó trong cặp sách của mình và đi bất cứ đâu nhằm thoả mãn nhu cầu sử dụng của mình, từ học tập, làm việc, cho đến giải trí, chơi game.

Nắp lưng làm bằng kim loại màu xanh thời trang và độc đáo, cùng với những đường nét hoàn thiện tinh tế tôn lên nét thanh lịch và sang trọng. Logo của hãng được in tròn sáng bóng tô điểm thêm sự đình đám của dòng laptop danh tiếng này.

Ngoài ra, bản lề của chiếc laptop này cũng được thiết kế có thể gập lại được đến 360 độ. Bạn có thể chuyển đổi linh hoạt giữa chế độ sử dụng như laptop sang tablet và nhiều chế độ khác nhau tuỳ theo sự sáng tạo và nhu cầu của người dùng. Màn hình cảm ứng đi kèm với một chiếc bút cảm ứng cho việc ghi chú, và sử dụng chế độ máy tính bảng trở nên tiện ích hơn.

Màn hình 2.8K siêu sắc nét

Sở hữu một chiếc màn hình rộng 13.3 inch có độ phân giải đạt 2.8K (2880 x 1800), em Laptop HP ENVY X360 13-bf0092TU 76V59PA hứa hẹn sẽ cung cấp cho các bạn khả năng hiển thị sắc nét hơn, mật độ điểm ảnh cao hơn các loại màn hình laptop thông dụng khác. Độ phủ màu màn hình đạt 100% DCI-P3 cung cấp nhiều màu sắc hơn và nhiều tùy chọn cho sự sáng tạo hơn các độ phân giải cơ bản khác như sRGB,... Mức độ sáng 500 nits là mức độ sáng thông dụng trên các dòng laptop cao cấp hiện nay.

Bên cạnh đó, như đã nói ở trên chiếc laptop này sở hữu một chiếc màn hình cảm ứng. Chỉ với vài cử chỉ ngón tay đơn giản thay cho những thao tác rườm rà trên bàn phím và chuột, có thể giúp cho việc đóng mở ứng dụng trở nên nhanh chóng và tiện lợi.

Hiệu năng mạnh mẽ vượt bậc

Để có thể mang lại hiệu năng mạnh mẽ cũng như hỗ trợ bạn tối đa trong công việc, chiếc Laptop HP ENVY X360 13-bf0092TU 76V59PA đã được trang bị bộ vi xử lý Intel i7-1250U thế hệ thứ 12 đời mới nhất của dòng sản phẩm nhà Intel, gồm 10 nhân và 12 luồng, xung nhịp tối đa lên đến 4,70 GHz. Đi kèm với hậu tố U giúp laptop tiêu thụ ít điện năng hơn, máy sẽ ít bị nóng hơn và thời lượng sử dụng pin sẽ lâu hơn. 

Đi kèm với con chip Intel là chiếc card màn hình tích hợp Intel Iris Xe Graphics cho bạn trải nghiệm chất lượng hình ảnh lên đến 4K.

Ngoài ra, bộ nhớ trong 16GB RAM DDR4 giúp bạn có thể xử lý đa tác vụ, giảm thời gian chờ đợi của bạn với tốc độ kết nối giữa RAM và bộ điều khiển lên đến 4266 MHz. Ổ cứng 512GB SSD PCIe giúp bạn bạn có thể khởi động máy hay các ứng dụng nhanh chóng và lưu trữ được nhiều hơn.

Bàn phím và touchpad

Bàn phím của em laptop này được thiết kế chắc chắn, sử dụng layout phím cắt giảm (không có bàn phím số) để phù hợp với kích thước của máy. Tuy nhiên không vì thế mà không thoả mãn nhu cầu sử dụng của các bạn khi vẫn giữ được đầy đủ các chức năng cần thiết. Khoảng cách các phím được thiết kế tiêu chuẩn với bàn phím máy tính để bàn giúp bạn có thể gõ văn bản hàng giờ mà không bị mỏi tay.

Touchpad laptop rộng, được đặt ngay chính giữa chiếc máy. Cảm giác lướt trên touchpad cực nhạy và mượt, công nghệ cảm ứng đa điểm giúp bạn có thể hoàn thành tốt công việc mà không cần chuột rời đi kèm.

Đa dạng cổng kết nối

Nhằm thoả mãn đa dạng các nhu cầu sử dụng của người dùng, Laptop HP ENVY X360 13-bf0092TU 76V59PA được trang bị đầy đủ những cổng kết nối khác nhau phù hợp với các nghiệp vụ văn phòng khác nhau. Các cổng kết nối bao gồm:

1x microSD card reader.
1x headphone/microphone combo.
2x USB4 Type-C® 40Gbps with Thunderbolt 4.
2x SuperSpeed USB Type-A 10Gbps.
',
        '32.590.000 ₫',
        '26.390.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        '89cf7e6e-f10d-47dd-b551-9953bdc14794',
        'HP',
        ' HP Envy X360 13-bf0094TU 76B14PA ',
        'https://anphat.com.vn/media/lib/27-10-2022/laptop-hp-envy-x360-13-bf0097tu-76b17pa-5.jpg',
        'Laptop HP Envy X360 13-bf0094TU 76B14PA (Core i5 1230U/ 16GB/ 512GB SSD/ Intel Iris Xe Graphics/ 13.3inch OLED Touch/ Windows 11 Home/ Blue/ Vỏ nhôm/ Pen)

Thiết kế bản lề xoay gập linh hoạt cùng hiệu năng mạnh mẽ, HP Envy x360 13- bf0094TU 76B14PA thuộc dòng máy tính mỏng nhẹ, cao cấp, phù hợp cho người dùng là sinh viên, nhân viên văn phòng, những người trẻ năng động cần di chuyển thường xuyên.

Laptop HP Envy X360 13-bf0094TU 76B14PA
Mỏng nhẹ, cao cấp và đồng hành cùng bạn mọi nơi

Thiết kế bên ngoài HP Envy x360 13 toát lên sự cao cấp nhờ thiết kế nhỏ gọn, mạnh mẽ và độ mỏng ấn tượng. Được chế tác từ khung nhôm bóng bẩy, bền vững và siêu nhẹ, HP Envy x360 vừa sang trọng, vừa có độ bền đáng mơ ước. Phiên bản màu Xanh Blue sang trọng, tinh tế và nổi bật. Kiểu dáng thời thượng với viền màn hình siêu mỏng, những đường cắt vuông vắn và các chi tiết hoàn thiện tỉ mỉ tạo nên chiếc laptop đẳng cấp bậc nhất.

Laptop HP Envy X360 13-bf0094TU 76B14PA
Sáng tạo không ngừng và có thêm nhiều cảm hứng trong công việc

Màn hình HP Envy x360 có phần viền màn hình mỏng nâng cao trải nghiệm xem, cho hình ảnh thêm phần sống động. Độ phân giải Full HD trên màn hình 13.3 inch mang tới hình ảnh sắc nét, tạo cảm hứng cả khi làm việc và giải trí. Công nghệ màn hình OLED Touch, BrightView giúp mọi thứ trở nên tươi sáng, hấp dẫn, hiển thị hình ảnh và video rực rỡ hơn.

Laptop HP Envy X360 13-bf0094TU 76B14PA

Màn hình cảm ứng của laptop HP tương thích với bút cảm ứng để tạo thành một bàn vẽ linh hoạt. Bạn có thể dùng bút cảm ứng để viết vẽ tự nhiên, cảm giác như đang viết trên giấy. Thỏa sức sáng tạo, ghi chú với HP Envy x360. Màn hình cảm ứng kết hợp với thân máy xoay 360 độ giúp bạn có thể sử dụng máy với 4 chế độ khác nhau. Dù là dưới vai trò laptop thông thường; máy tính bảng hay trình chiếu, HP Envy x360 cũng đều thể hiện xuất sắc và hữu dụng.

Laptop HP Envy X360 13-bf0094TU 76B14PA

Với âm thanh được tinh chỉnh bởi công nghệ hàng đầu Bang & Olufsen, HP Envy X360 13 đem đến những giờ phút xem phim, nghe nhạc êm tai, thư giãn để bạn thỏa sức đắm chìm vào không gian riêng cực "chill".

Laptop HP Envy X360 13-bf0094TU 76B14PA
Hoàn thành mọi việc nhanh chóng bởi cấu hình mạnh mẽ

HP Envy x360 13- bf0094TU 76B14PA có tốc độ xử lý mượt mà nhờ bộ vi xử lý Intel Core i5-1230U. Mọi công việc sẽ được giải quyết một cách rất nhẹ nhàng nhờ hiệu suất cao và ổn định của Envy x360. Card đồ họa tích hợp Intel® Iris® Xe Graphics giúp các thao tác đồ họa mượt mà hơn.

Laptop HP Envy X360 13

Bên cạnh bộ vi xử lý mạnh mẽ, HP Envy x360 còn có tốc độ khởi động, mở ứng dụng cực nhanh nhờ ổ cứng SSD 512GB. Cùng với đó là 16GB RAM hiệu năng cao, cho khả năng đa nhiệm tuyệt vời. Chiếc laptop HP Envy của bạn sẽ luôn hoạt động mượt mà, đảm bảo cho công việc luôn trôi chảy.

Laptop HP Envy X360 13
Tối ưu bảo mật

Envy x360 13 cho phép bạn làm chủ hoàn toàn quyền riêng tư của mình khi sử dụng. Bạn sẽ có phím tắt để đóng màn trập camera và tắt micro khi không cần thiết. Như vậy hình ảnh và cuộc trò chuyện của bạn sẽ không bị các tin tặc xâm phạm. Thêm một ưu điểm nữa cho chiếc laptop HP Envy X360 này là tính năng bảo mật vân tay. Bạn có thể khởi động máy chỉ với 1 cái chạm tay, cực nhanh chóng mà vẫn bảo vệ an toàn cho dữ liệu trên máy.

 Laptop HP Envy X360 13-bf0094TU 76B14PA
Thiết kế bàn phím hợp lí mang lại trải nghiệm gõ phím tốt

Trong thân máy nhỏ gọn nhưng bàn phím của máy được thiết kế hợp lí, tràn ra sát cạnh giúp cho các phím to rõ không thua kém các mẫu laptop 14 inch. Máy trang bị đầy đủ các phím chức năng cần thiết, đặc biệt, với phím tắt camera tiện lợi giúp bảo mật tốt hơn, kiểm soát được thời gian sử dụng webcam. Bàn phím có trang bị đèn nền để dễ quan sát vào ban đêm, tránh gõ sai, giúp bạn có trải nghiệm gõ phím tốt.

 Laptop HP Envy X360 13-bf0094TU 76B14PA
Kết nối dễ dàng

Là một chiếc laptop mỏng nhẹ, nhưng HP Envy x360 13- bf0094TU 76B14PA vẫn có đủ những kết nối tiên tiến và phổ biến nhất để phục vụ công việc. Bạn sẽ có cổng USB Type-C tốc độ siêu nhanh 10Gpbs đóng vai trò đa năng từ sạc, DisplayPort 1.4 cho đến sạc điện trong khi tắt máy; cổng USB Type-A 5Gbps trong đó một cổng có thể sạc khi tắt máy; đầu đọc thẻ SD; cổng nguồn và jack tai nghe 3.5mm.',
        '29.590.000 ₫',
        '22.990.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        '572c965c-f231-4b3b-8511-ce903fd4271c',
        'HP',
        ' HP Envy X360 13-bf0096TU 76B16PA ',
        'https://vitinhnguyenkim.vn/uploads/product/laptop/HP/hp-envy-x360-13-bf0096tu-76b16pa.jpg',
        '
Đánh giá chi tiết Laptop HP Envy x360 13-bf0096TU i5-1230U

Linh hoạt trong thiết kế, mạnh mẽ trong cấu hình, thỏa mãn trong trải nghiệm sử dụng... tất cả những yếu tố này đều có mặt trên chiếc laptop HP Envy x360 13-bf0096TU.
Thiết kế đa dạng

HP Envy x360 13 (Ảnh 1)

HP Envy x360 13-bf0096TU có độ mỏng chỉ 1.61cm và khối lượng 1.34kg nên cực kì nhẹ nhàng khi cầm trên tay. Chiếc laptop này có thiết kế cực gọn gàng, nhỏ nhắn nên sẽ yên vị trong balo hoặc túi xách của bạn để theo bạn trong mọi chuyến đi. Phần mặt lưng của máy được phủ kim loại cao cấp cho cảm giác sang trọng, các đường viền xung quanh được vát mỏng ấn tượng. Máy được trang bị bản lề đôi siêu cứng cáp nhằm tăng cường độ bền lâu dài khi sử dụng.

HP Envy x360 13 (Ảnh 2)

Không những sử dụng được ở chế độ bình thường, bạn còn có thể biến chiếc laptop HP này sang máy tính bảng chỉ bằng thao tác gập màn hình về sau 360 độ hoặc dựng lên thành hình chiếc lều để giải trí thoải mái hơn.
Hình ảnh sinh động, rõ nét với màn hình OLED 2.8K

HP Envy x360 13 (Ảnh 3)

HP Envy x360 sở hữu màn hình 13.3 inch với công nghệ OLED mang lại chất lượng hiển thị trên cả mong đợi. Độ phân giải hình ảnh tối đa 2880 x 1800 pixels sẽ kết hợp với tần số quét 60Hz, bên cạnh đó là màu đen có độ sâu rất rõ ràng cùng độ chi tiết cực kì sắc nét... bạn sẽ không thể ngừng choáng ngợp trước những hình ảnh mà bạn nhìn thấy. Thời gian phản hồi hình ảnh được tính bằng mili-giây của màn hình này rất ngắn, vậy nên những khung hình được hiển thị luôn luôn mượt mà và liền mạch. Tình trạng xé rách hoặc gãy đôi khung hình sẽ bị loại bỏ hoàn toàn.
Cấu hình mạnh, thỏa sức sáng tạo và làm việc

HP Envy x360 13 (Ảnh 4)

HP Envy x360 13-bf0096TU mang trong mình sức mạnh của con chip Intel Core i5-1230U với mức xung nhịp lần lượt là 1.00GHz và 4.40GHz. Con chip tiết kiệm năng lượng này này có 10 nhân, 12 luồng nên sẽ nhanh chóng khởi chạy các chương trình hoặc ứng dụng mà bạn yêu cầu; đồng thời nó còn tiết kiệm pin hiệu quả trong quá trình sử dụng của bạn.

Đi cùng Intel Core i5-1230U là 8GB RAM LPDDR4X 4266MHz cùng 512GB SSD M.2 NVMe. Tốc độ bus của thanh RAM DDR4 này rất cao nên bạn có thể thoải mái thực hiện các tác vụ đa nhiệm cũng như chọn lựa các công cụ cần thiết cho quá trình giải trí, làm việc của mình; bên cạnh đó ổ cứng SSD có dung lượng lưu trữ lớn kèm tốc độ đọc/ghi dữ liệu nhanh ấn tượng sẽ thực hiện các yêu cầu truy xuất dữ liệu của bạn trong thời gian ngắn nhất.
Bàn phím gõ êm, Trackpad lướt nhạy

HP Envy x360 13 (Ảnh 5)

HP Envy x360 13-bf0096TU sở hữu bàn phím nhỏ, không có dãy phím số bên phải. Khi đặt tay lên bàn phím và bắt đầu gõ nhiều dòng chữ, bạn sẽ cảm nhận được tính êm ái và độ nảy cao của từng phím riêng biệt. Hành trình gõ tổng thể khá sâu, các phím đều được thiết kế to và vừa vặn với đầu ngón tay nên về lâu dài bạn sẽ không thấy mỏi. Khi hoạt động ở môi trường tối, đèn LED trắng chạy nền bên dưới sẽ giúp bạn nhìn rõ từng phím một và thao tác chính xác hơn.
Cổng kết nối cao cấp

HP Envy x360 13 (Ảnh 6)

HP Envy x360 13 (Ảnh 7)

HP Envy x360 13-bf0096TU có những cổng kết nối bao gồm 1 jack Audio 3.5mm - 1 khe cắm thẻ nhớ - 2 USB 3.2 Gen 1 - 2 USB Type-C. Dù số lượng cổng kết nối này khá ít nhưng chúng đều thuộc thế hệ mới và sở hữu tốc độ kết nối cao cùng với tính ổn định cực lâu dài. Chưa dừng lại ở đó, HP Envy x360 13-bf0096TU còn tương thích hoàn toàn với Wi-Fi 6E và Bluetooth 5.3 nên bạn có thể sử dụng thêm rất nhiều loại phụ kiện không dây khác với trải nghiệm hoàn hảo nhất.
',
        '27.690.000 ₫',
        '21.990.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        'ce01a3c2-78f8-4636-bddf-ab503e0f6638',
        'HP',
        ' HP Envy X360 13-bf0097TU 76B17PA ',
        'https://cdn.hoanghamobile.com/i/preview/Uploads/2023/03/23/76b17pa-8.png',
        'Laptop HP ENVY x360 là con máy 2 trong 1 tiện lợi đang “chiếm sóng" trên thị trường laptop hiện nay. Sở hữu màn hình cảm ứng, thiết kế mỏng nhẹ, hiệu suất mạnh mẽ,... hứa hẹn sản phẩm này sẽ mang đến những trải nghiệm làm việc và giải trí chất lượng cho bạn. Trong bài viết hôm nay, hãy cùng Hoàng Hà Mobile khám phá siêu phẩm đến từ nhà HP này nhé!

Sang trọng từ thiết kế mỏng nhẹ, cao cấp

Nhờ vào thiết kế nhỏ gọn, tinh tế cùng độ mỏng ấn tượng, HP ENVY x360 tạo nên cảm giác sang trọng ngay từ cái nhìn đầu tiên. Được chế tác từ khung nhôm siêu nhẹ, Laptop HP ENVY x360 sở hữu độ bền mà ai cũng hằng mong muốn. Những đường viền mỏng, đường cắt vuông được hoàn thiện tỉ mỉ, giúp tăng thêm sự tinh tế, sang trọng cho chiếc laptop HP này.


Lướt task mượt mà với cấu hình mạnh mẽ

HP ENVY x360 được tích hợp bộ vi xử lý Intel Core i5 1230U với 6 nhân 12 luồng, mang đến tốc độ xử lý tối đa 4.2GHz. Mọi tác vụ sẽ được HP ENVY x360 giải quyết nhanh chóng và nhẹ nhàng nhờ vào hiệu suất cao và ổn định của Envy x360. Thao tác đồ hoạ hoá mượt mà với card đồ họa tích hợp Intel Iris Xe Graphics.

Tốc độ khởi động máy, mở ứng dụng cũng trở nên nhanh hơn khi có ổ cứng SSD 512GB. Giải quyết đa nhiệm công việc, hiệu năng tăng cao cũng là chuyện nhỏ với 8GB RAM DDR4.


Màn hình chân thật đem tới cảm hứng vô tận

Độ phân giải Full HD cùng màn hình 13.3 inch, giúp đem đến những trải nghiệm hình ảnh sắc nét và sống động. Công nghệ IPS kết hợp với Brightview cho ra những hình ảnh và video có màu sắc tươi sáng, rực rỡ hơn bao giờ hết. Màn hình cảm ứng tích hợp cùng thân máy xoay 360 độ có thể biến máy thành bàn vẽ linh hoạt, cho người dùng thỏa sức sáng tạo, ghi chú.


Bàn phím êm ái, touchpad mượt mà

Bàn phím của HP ENVY x360 được thiết kế chắc chắn với các phím bấm vuông, có diện tích lớn vừa đủ, cho phép người dùng thao tác dễ dàng, thuận lợi. Độ nảy phù hợp và độ chính xác cao hỗ trợ việc soạn thảo văn bản trở nên nhanh chóng, nâng cao năng suất công việc.

Việc thao tác chuột cũng trở nên chuẩn xác và dễ dàng hơn với touchpad có diện tích lớn, độ nhạy và độ chính cao. Lớp phủ nhám mịn đem đến trải nghiệm di chuột mượt mà, không thua kém gì với một chiếc chuột rời.


Kết nối linh hoạt

Để có thể đáp ứng đa dạng nhu cầu của người sử dụng, HP ENVY x360 trang bị đầy đủ các cổng kết nối bao gồm: cổng USB Type-C có tốc độ 10Gpbs đóng vai trò đa năng từ sạc, DisplayPort 1.4; 2 cổng USB Type-A 5Gbps trong đó một cổng có thể sạc khi tắt máy, đầu đọc thẻ SD, cổng nguồn và jack tai nghe 3.5mm.


Laptop HP ENVY x360 13 bf0097TU-76B17PA hiện đang được bán tại Hoàng Hà Mobile với mức giá cực tốt. Hãy đến ngay chi nhánh Hoàng Hà Mobile gần nhất hoặc đặt hàng trên website để được miễn phí vận chuyển toàn quốc.',
        '27.690.000 ₫',
        '21.990.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        'e4d3343d-2cd8-458b-8155-289231608ace',
        'HP',
        ' HP Envy X360 13-bf0090TU 76B13PA ',
        'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoHCBESFRgRFRIRGBgSERIRGBIYEhISERIRGBQZGRgVGBgcIS4lHB4rHxgYJjgmKy80NTU1GiQ7QDszPy40NTEBDAwMEA8QGBISGjEhGiExNDQxNDExMTQ0NDE0PzQ1MTE0MTQ0NDE0NjExMTQ0MTQ/NDQ/MTQxNTQ0NDQxMTQ0NP/AABEIALcBEwMBIgACEQEDEQH/xAAcAAEAAgIDAQAAAAAAAAAAAAAAAgMFBgEEBwj/xABLEAACAQIDAgcLCAcHBQEAAAABAgADEQQSIQUxBhNBUWFxkQciMlJUgZKTodHSFEJTcnOxssEVFiMzYpTCF4Kio7PT4UR0w/DxQ//EABcBAQEBAQAAAAAAAAAAAAAAAAABAgP/xAAeEQEBAQEBAQEBAAMAAAAAAAAAARECEjEhQQNRcf/aAAwDAQACEQMRAD8A3fhntLE0mVaFUU7IHY5EctdiB4QNgLe2ai3CTavJix56FD4Zs3Djwx9kn43mnETpzzMc+rdXnhLtbywfy9H4ZA8KNreWD1FD4Z13WUss15ibXdPCra3lg/l6PwyP62bX8rX+Xo/DOg4lJjzDayf62bX8rX+Xo/DInhdtfytf5ej8MxpkGjzF2soeGG1/Kx/L0Phkf1x2v5WPUUPhmJaQaPMNrMHhltfyseoofDInhntfyseoofDMMZEx5htZr9dNr+Vj1FD4ZH9ddr+Vj1FD4ZhTIx5htZw8Ndr+V/5FD4Jx+u21/K/8ih8EwZkTJkNrPfrvtfyv/IofBA4c7W8rHqKHwzARGQ2tr2Xw42ka9JXrq6vWpoyGlSAZWcKdVUEGx557RPnTZh/b0f8AuKH+os+i5jqNRzERMtEREBERAREQEREBERAREQEREDSuGw78fZL+N5pzCbjw38IfZr+N5pzTtx8cuvqppU0uYSppUVPKWEuaVMIVW0gZNpAwK2kGk2kTArMiZMyBgQM4M5M4MDgyM5M4MDgxESKv2b+/o/8AcUf9RZ9GT5z2f++pfb0f9RZ9GTn01HMREy0REQEREBERAREQEREBERAREQNL4beEPs1/E005puXDXwx9mv4mmnMJ25+Ry6+qmlTy5hK3EqOu0g0sYSBgUsJAiWNIkQKWkGlrjoPVvvMrwnwVPDtSw6KM9OgrVnzMc1V9ctibAADkto0lrTBGQMmZEyogZEyRnBECBkZJpxIOIiIVfgP31L7el+NZ9GT50wH72l9vS/Gs+i5z6ajmIiZaIiICIiAiIgIiICIiAiIgIiIGmcNvDX7NfxNNQabhw28JfqD8TTTmnbj45dfUGlTSwytpUUsJBpY0raBU0gRJtIXhWW4L4NamJRn0SgDiXJ3BKeoJ/vZfMDLMZs/5SiYps/H7QxjLSS4yJQvlzMLXOWwG/cRMbh9ovTSrSTKBXRUdst3yC/eqb6A3N9JnNg492LYyoEybNwnF0kVSq8Y4yINSbsRcE9KzHW7rXOfHVxGw8Kr4xw1XicGiopzpmqYptMt8trBu9ItzazVpkH2nVNE4YlcjVjiHYKc9SqRa7NfUbtLcgnRM1Jf6lVmRMmZEiVESQNW3Dfbf1CS4/CfSVvUVD/TMfjGDEZWvZSP4c19T07gPMeedmni3RVUBdFtc35Le8zF6anLtUDhWZVNSuudsubiHyqTuLFgAByX5L81yM5+rlP6Z/Vp8c1s41+ZOw++dLi28d+0e6T1F8toxOzUw2WsWqOqPTbvUGYEMCMyi5tewuOeZ7E91HFX/AGeFpkW3umKVgeoKbjdPOkRgQRUfvWDchBsb2PRO38rqeMvon3yXqUksbt/ajj/JcP6OKP8ASI/tPx/k2H9XiffNI+VVPGX0T74+U1PGX0f+ZN5X9bwndNx1++w9G1jup1b3tpvfnkf7Tdo+T4f1dT/cmlfKH8Yej/zLaorKqO1wtRSynJYEBiOXqv1ERsP1t39pm0voMP6qp/uzg90vaX0GH9U3+9NM49/H9gnHHP457F90bD9b6ndOxYsTgw1hqoyICbcjcYbC/QZnaPD9HUNlpLcao9UB1PKrDnHZzTyXjH8dv8PulboGNzck9XujYZXp+0uH9ZBmpDDvcgcWGBcC2+5cXHvl3B/h89SoVxKJSphSc5vfNcWAClr+e08pWioIYaFTcEWFja0vzsfnN2xsMr6TBnMx2wMTxuGoVfpMPSc9ZQE+28yMikREBERA07hr4S/Zj8TTTnm48NfCX7Mfiaae4nbj45dfVRlTS1pUxlRU0raWNK2EKqaVmWtK2hFbTtttM/JvkioFBrcc75rtUIFlUrbQCy8u9ROo0rMNImQMsMrJhEDKK9dUte5LZgAL3sBq2motprzkS8zoYkqzXF/BC6nQWJOnNe9z09QktWR16SjQC2mltOTktLsQwUBjuCtfzan2CSRNb8278z/7+crqnMLcga3mYZfznOtxzji2HVHqpUQVVzISAc62U3FjzOp1550jtej/AB+iPfKNq7TFalSpE3OHUqp4tlJBCizEuRoFAFlEwszZFZ/9MUuZ/RX3zj9NU/FfsX3zAxJgzv6ap+I/+GP02niN2iYNRLVSXBl/02Poz6Y905bbzFQmQ5VJIBfcSAD83+ETGLTmw8FODDY52zOUpUxepVyhiCfBRATYsdT0AE8wN8msadtH6MemfdODttvo19Izt8IuD5wb2Dh0YkK+XI1x81lubG3MdZg3py3nDXfO3W8RO1pE7cqeIn+L3zGssgRM4Mp+nKvip2N75x+nKvMnon3zGRA+n+5jjDV2bQY71Doei1RiB6JWbbPMu4Zis2BqUr608QT1B1AH4TPTYCIiAiIgaZw48NPqf1Gai02zhz4afUP3mag5nbj459fUGlTSwyDSsqmlZljStoVBpU0taVNCK2lZljSswqJkGkzIHp64HXxL5R0n7p1ESSqMXa/Z1Sarac7W4Mt5w+EdUL5KmS6nOUYU99x31razN8F9lJia4FRkFOnZ3zOqBxfRNfGO/oDdE2vuibYpvh/kqOjtUKucjKy00Q3G46EkWtzX6JnVeY1aOFXCsGpoajmuyutQGslRKoCh0vohW/J09I1UzKY7GOhdATZwp8JtLjW1jbXlmJi3U55zf3dIEQJGlyLMnsvZdbEvxdGmzsFLlQVByggX74gco03zH0hNv4IJYVGBs16YvygAOf8A3qnTjnbjPXWTXWHBPaA34PEerJHnI0A6Zt9AJhqS0UN0p+Ey6cbXYd+/STaw5lUDkkDjKignMScpA1NhfQsegA9tpbh9o0hSWk9JKikmpmuyOHJ11U33ZR1TvOfLler1/wASrbNpY1OLzOjZ0Yi61CwU99kuBZ8uYWNxr5jjsTwZ2Qp1q436oeib+fi9J3KD08+eiXBGrUXYMSo3tTcAXK78puSL2JNgexiaSVc1RbZxcunjW3uvTzjzyXmdVrm5Hm239mrQqWTMab3ZC1s+W+qtbS401tyiYVhN14W1FZEAsTxl/NkNx7R2TT6qzj3z5uN83YoiInNp6/3AsZapiaF/DppVA+o2X+ue2z5w7jeOFLaKqTYVadWmSTYWCF9fOonqXCLukYageKwy/KapOUFSeIDXtbOLlz0IDfdcQN3r1kpqXdgqqCzMzBVUDeSToBMTsThLhMa9SnQqFzRsScrKGBJGZL+ELi1927kImiUOC21dqsKuPrNSp3zLRC2I+pS3L9ZrtN/2JwdwuCXLQphSRZqh76q/1nOp6t3RAzEREDSuHTd+n1D95mnPPQOFGxK2KZGpmnZVKnMzKb3vpYGYBuBmLPLQ9Y/wTpz1JGOpda2xkWmdr8BMcxuK6KLeCpSw87UyTz+eUnuf7Q8qXtp/7U16ieawTSDTZKPAPHKLGpSck3uzZSBYad7TA55I8Bsbz4f1j/BHqHmtVYyppth4B43xsP6x/gkDwBx3jYb1j/BHqHmtScyombge5/j/ABsN6yp8Ege57j/Gw3rKnwSeouVqBM6uLqfMHWfdNi2/wdr4BVqVnod8xVUR2Z2YC97FRoNO0c81UXJ6TFpIkiy0CESTtMtOAsll5OfTtgCSkGpbZXvlbnUr6LH3iY2ZrbqaX8Wow9IA/lMLMqQIgQO5Sm4cG9nYhA1UKhTiw7084FbiwLiqEtuAJ0vexJta00+gRpcXFxcc45RPRMZnBGOwzEqVvUQeHTNtXAHhIRvtqPu7/wCP/bPU1RjcVobeCRqOfTfMQMUdbddufokcLj6QcitRLodyrUdB5spEux2PwNhxWFYMLWZ61R1B+rfXzzp11L8Xnn+Yym06tNFw/FqEqKlFmYaNnZAxzdIJnVO1SCzqbaBxbkmBTFMXZ2Yk5XYnnJBH3sJGjVuuXnRh7NJi9NeZNjt7ZqiqoqruuQ6jcjm1iOYGx6j5pr1YTuYDFhWs2qOCjre11O/z8oPIQJZW2a2ZluMosRUt4akXUgc9iL8xuJz6u/qZjC2ma2LstHb9uaiplJCpl4x20st20Qbzcg7txk1SjQ1Y62v4znzcg6dPPOniNqO2id4Og98R0t7rTmNybF4QMmBpKtFKpp0qir35JLXZ6jmzVLXuFYgC2g109o4O8EcHgQDTp5qlrGu9nqnqO5R0LafLWGazKb2sy9l59ebOxPG0qdX6SlTqekob84HaiIgIiICIiAiIgIiICIiAkGYAXJAAFyToAJOaF3T9v8TRGERu/wASDmIOqYfc3nY971ZoGgcNNunHYhnBPF0/2dIcmQHV+tjr1WHJMLSSRRZytYHQBjbmUmbReDObSA4zkpVesrlHtMZKv0ajrqUx7JMEyYkRSqc9IdbO34RORRqctRB9Wm5++0ow23Kfev0FG/I/fNcm2bWokKQWLXpPrlCXINxpczU5mkIiJFX02mybB201Ky305PdNXQy9Hmubg2/F7OWvd6RVWOpX5pP5TA4um9NsjoVPJfcRzg7jGA2o9M2v/wDJbtfbVStZNMi2OXKCSfGuRceadPR8Y6pUsCOe3ZLsK/fLfkI/KdCrvkjVtumNWVkMItNCWe3esRbeTYkaDk3b5zjNsVXuqkItz3qC2nJc8/T0mdDNoB0Sp2kt/hv5iDHW/P7ZGDEyhPqbue4vjtnYZ77qXF+gxUewCfLM+hu4ljOMwBp8tKuy/wB1lU/fmgejREQEREBERAREQEREBERA4M8P2jsjamOr1MS+Erg1G0VlKCnTGioM1twtu3m55Z7jEsuDxbD8AtoEXNEDrqUx/VMhS7nuPbwqlJRzF2NuxTPWYjUx5jS7mVU+FikH1UY/mJtGzeBuCooqGjTqMurVKlNHdzy6sDYdA/5mzRIrXsZwRwVW16QULeyIqUlJPKcqgntnNLgds9f+nB63c/nNgiB5F3Wti0aIwz0qaIrNXpOFFsxZUKX6gH7Z4iwtpzT6P7r+HD4EVPoMTRqelen/AOQT52xq5Xcfxt2E3ECiIiABlitK4vAuZtJfW0HZOoGnfxtHIiEm5cFuoAD3+yalR03O7qkLTluScZpFTZpWTF5xGhERIE9l7geM1xNAnetOoo+qxDH/ABr2Txqei9xLF5NoZPpaNSn7M/30xA+h4iICIiAiIgIiICIiAiIgIiICIiAiIgIiIGu8PMNxuz8UlrkUGcDpp2cfhnzFtVf2hPjKrey35T63xtAVKb0zuqI6HqZSPznyZtZCCl94UoetW/5gY6IiAiIgJ28VWzin/BSC9jN+Vp1JZTsdCbcx5L80sEW5JGTqb9JyKTeKeuxtIK4nYXBufm20vckWtz9WhnYr7Kq02KVBkZfCUghlJF7EdREDHxO8uBHKx8wtLEwacxPn90DGzZO5/jOJ2hhn3ftkQn+FmAb2EypcFSy6JULWb5qhb65SS19N1/PO0EClWSmFKMGzarqL6ZczX5OXk6YH1HEowlcVESoN1REcdTKCPvl8BERAREQEREBERAREQEREBERAREQEREBPlzhzhDTxNdLeBjK4A/hdiy+y0+o54L3TMMae0qjKATUGGxIVgChsoQgjlUmmbjluYHmK0XO5W7DaWLhHPIB5xM9iUao71MtNM7s+RAwppc3yqDew6LyAwo5W9gEDEDBNysPaZNcCvKx7AJmMPhA5yorueZQXPYszOE4JY6p4GCrm/K1M0x2vaTRqS4ROYnrPumQODwwUZRUYth1JutwmK+cuoF03C4v1mbxhe5vtN96Uaf16o+5A0y+G7k9c61MXSXnCUnqdhZl+6XUx50TRBumFsL4cgPWZhdP3oIG8OeT5vJOxh8Y9KqtZKWHTLVeslM0y6DMpQpe4YoNdL7wOaerYbuV4NdXr4l+gGnTX2Lf2zMYXgDsun/0oY89SpUqX8zNb2QWSvB6zsyoj1LrTRqSiyi1NmLFe0ztLs7EYls60cTVY2BZadaoTYWF2A10HLPofCbIwtL93h6CW8WlTU9oEyEK8AwnAPaVS1sGyjxnaklusM2b2TNYTuXY5vDqYZB0NUqN2BQPbPZYgeZ4buT0//wBcW55xTpIntYt90zGG7muzE8JK1S3j1nA7EyibpECqjSVFCKoCqAoUCyqoFgAOQWlsRAREQEREBERAREQEREBERAREQEREBERATVOFHArDbQqJWqVKqMqcVdCnfpmLAHMp3Etr0xEDrYbua7MTwkrVPr1nHsTKJmMLwT2dSsVweGuNzNTV2H95rmIgZinSVRZVVRzAADsEsiICIiAiIgIiICIiAiIgIiICIiB//9k=',
        'Laptop HP Envy X360 13-bf0090TU 76B13PA (Core i7 1250U/ 16GB/ 512GB SSD/ Intel Iris Xe Graphics/ 13.3inch OLED Touch/ Windows 11 Home/ Blue/ Vỏ nhôm/ Pen)

Nếu bạn đang tìm kiếm một chiếc laptop văn phòng với chất lượng bền bỉ, thiết kế sang trọng gọn nhẹ, hiệu năng mạnh mẽ cùng chất lượng hiển thị tuyệt vời thì đừng bỏ qua chiếc laptop HP chính hãng Envy x360 13- bf0090TU 76B13PA nhé! Nào, bây giờ hãy cùng Phúc Anh tìm hiểu các thông tin chi tiết về sản phẩm này!

Laptop HP Envy X360 13-bf0090TU 76B13PA
Thiết kế mỏng nhẹ, sang trọng

Thiết kế bên ngoài HP Envy x360 13 toát lên sự cao cấp nhờ thiết kế nhỏ gọn, mạnh mẽ và độ mỏng ấn tượng. Được chế tác từ khung nhôm bóng bẩy, bền vững và siêu nhẹ, HP Envy x360 vừa sang trọng, vừa có độ bền đáng mơ ước. Phiên bản màu Xanh Blue sang trọng, tinh tế và nổi bật. Kiểu dáng thời thượng với viền màn hình siêu mỏng, những đường cắt vuông vắn và các chi tiết hoàn thiện tỉ mỉ tạo nên chiếc laptop đẳng cấp bậc nhất.

Laptop HP Envy X360 13-bf0090TU 76B13PA
Công nghệ màn hình OLED Touch

Màn hình laptop cao cấp HP Envy x360 có phần viền màn hình mỏng nâng cao trải nghiệm xem, cho hình ảnh thêm phần sống động. Độ phân giải Full HD trên màn hình 13.3 inch mang tới hình ảnh sắc nét, tạo cảm hứng cả khi làm việc và giải trí. Công nghệ màn hình OLED Touch, BrightView giúp mọi thứ trở nên tươi sáng, hấp dẫn, hiển thị hình ảnh và video rực rỡ hơn.

Laptop HP Envy X360 13-bf0090TU 76B13PA

Màn hình cảm ứng của laptop HP tương thích với bút cảm ứng để tạo thành một bàn vẽ linh hoạt. Bạn có thể dùng bút cảm ứng để viết vẽ tự nhiên, cảm giác như đang viết trên giấy. Thỏa sức sáng tạo, ghi chú với HP Envy x360. Màn hình cảm ứng kết hợp với thân máy xoay 360 độ giúp bạn có thể sử dụng máy với 4 chế độ khác nhau. Dù là dưới vai trò laptop thông thường; máy tính bảng hay trình chiếu, HP Envy x360 cũng đều thể hiện xuất sắc và hữu dụng.

Laptop HP Envy X360 13-bf0090TU 76B13PA

Với âm thanh được tinh chỉnh bởi công nghệ hàng đầu Bang & Olufsen, HP Envy X360 13 đem đến những giờ phút xem phim, nghe nhạc êm tai, thư giãn để bạn thỏa sức đắm chìm vào không gian riêng cực "chill".

Laptop HP Envy X360 13-bf0090TU 76B13PA
Phục vụ hoàn hảo các tác vụ

HP Envy x360 13-bf0090TU 76B13PA có tốc độ xử lý mượt mà nhờ bộ vi xử lý Intel Core i7-1250U. Mọi công việc sẽ được giải quyết một cách rất nhẹ nhàng nhờ hiệu suất cao và ổn định của Envy x360. Card đồ họa tích hợp Intel® Iris® Xe Graphics giúp các thao tác đồ họa mượt mà hơn.

Intel Core

Bên cạnh bộ vi xử lý mạnh mẽ, HP Envy x360 còn có tốc độ khởi động, mở ứng dụng cực nhanh nhờ ổ cứng SSD 512GB. Cùng với đó là 16GB RAM hiệu năng cao, cho khả năng đa nhiệm tuyệt vời. Chiếc laptop HP Envy của bạn sẽ luôn hoạt động mượt mà, đảm bảo cho công việc luôn trôi chảy.

Laptop HP Envy X360 13
Bảo mật tuyệt vời

Envy x360 13 cho phép bạn làm chủ hoàn toàn quyền riêng tư của mình khi sử dụng. Bạn sẽ có phím tắt để đóng màn trập camera và tắt micro khi không cần thiết. Như vậy hình ảnh và cuộc trò chuyện của bạn sẽ không bị các tin tặc xâm phạm. Thêm một ưu điểm nữa cho chiếc laptop HP Envy X360 này là tính năng bảo mật vân tay. Bạn có thể khởi động máy chỉ với 1 cái chạm tay, cực nhanh chóng mà vẫn bảo vệ an toàn cho dữ liệu trên máy.

Laptop HP Envy X360 13-bf0090TU 76B13PA
Trải nghiệm gõ tốt

Trong thân máy nhỏ gọn nhưng bàn phím của máy được thiết kế hợp lí, tràn ra sát cạnh giúp cho các phím to rõ không thua kém các mẫu laptop 14 inch. Máy trang bị đầy đủ các phím chức năng cần thiết, đặc biệt, với phím tắt camera tiện lợi giúp bảo mật tốt hơn, kiểm soát được thời gian sử dụng webcam. Bàn phím có trang bị đèn nền để dễ quan sát vào ban đêm, tránh gõ sai, giúp bạn có trải nghiệm gõ phím tốt.

 Laptop HP Envy X360 13-bf0090TU 76B13PA
Kết nối dễ dàng

Là một chiếc laptop mỏng nhẹ, nhưng HP Envy x360 13- bf0090TU 76B13PA vẫn có đủ những kết nối tiên tiến và phổ biến nhất để phục vụ công việc. Bạn sẽ có cổng USB Type-C tốc độ siêu nhanh 10Gpbs đóng vai trò đa năng từ sạc, DisplayPort 1.4 cho đến sạc điện trong khi tắt máy; cổng USB Type-A 5Gbps trong đó một cổng có thể sạc khi tắt máy; đầu đọc thẻ SD; cổng nguồn và jack tai nghe 3.5mm.',
        '32.990.000 ₫',
        '27.490.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        '344b56f5-b807-4730-8c45-0f694a52fb6d',
        'HP',
        ' HP ENVY X360 13-BF0112TU 7C0N9PA ',
        '',
        'Laptop HP Envy X360 13-bf0112TU 7C0N9PA (Core i5 1230U/ 16GB/ 512GB SSD/ Intel Iris Xe Graphics/ 13.3inch OLED Touch/ Windows 11 Home/ Silver/ Vỏ nhôm/ Pen)

Thiết kế bản lề xoay gập linh hoạt cùng hiệu năng mạnh mẽ, HP Envy x360 13-bf0112TU 7C0N9PA  là dòng máy tính mỏng nhẹ cao cấp, phù hợp cho người dùng là doanh nhân, nhân viên văn phòng, những người cần di chuyển thường xuyên.

Laptop HP Envy X360 13-bf0112TU 7C0N9PA
Thiết kế mỏng nhẹ, cao cấp

Thiết kế bên ngoài của laptop HP Envy x360 13-bf0112TU 7C0N9PA toát lên sự sang trọng, cao cấp nhờ thiết kế nhỏ gọn, mạnh mẽ và độ mỏng ấn tượng. Được chế tác từ khung nhôm bóng bẩy, bền vững và siêu nhẹ, HP Envy x360 vừa sang trọng, vừa có độ bền đáng mơ ước. Phiên bản màu Bạc Silver sang trọng, độc đáo và rất nổi bật. Kiểu dáng thời thượng với viền màn hình siêu mỏng, những đường cắt vuông vắn và các chi tiết hoàn thiện tỉ mỉ tạo nên chiếc laptop đẳng cấp bậc nhất.

Laptop HP Envy X360 13-bf0112TU 7C0N9PA
Cảm hứng bất tận

Màn hình HP Envy x360 có phần viền màn hình mỏng nâng cao trải nghiệm xem, cho hình ảnh thêm phần sống động. Độ phân giải Full HD trên màn hình 13.3 inch mang tới hình ảnh sắc nét, tạo cảm hứng cả khi làm việc và giải trí. Công nghệ màn hình IPS, BrightView giúp mọi thứ trở nên tươi sáng, hấp dẫn, hiển thị hình ảnh và video rực rỡ hơn.

Màn hình cảm ứng của laptop HP này tương thích với bút cảm ứng để tạo thành một bàn vẽ linh hoạt. Bạn có thể dùng bút cảm ứng để viết vẽ tự nhiên, cảm giác như đang viết trên giấy. Thỏa sức sáng tạo, ghi chú với HP Envy x360. Màn hình cảm ứng kết hợp với thân máy xoay 360 độ giúp bạn có thể sử dụng máy với 4 chế độ khác nhau. Dù là dưới vai trò laptop thông thường; máy tính bảng hay trình chiếu, HP Envy x360 cũng đều thể hiện xuất sắc và hữu dụng. Với âm thanh được tinh chỉnh bởi công nghệ hàng đầu Bang & Olufsen, HP Envy X360 13 mang đến cho bạn những giây phút giải trí, thư giãn tuyệt vời.

Laptop HP Envy X360 13-bf0112TU 7C0N9PA
Cấu hình mạnh mẽ

HP Envy x360 13-bf0092TU 76V59PA có tốc độ xử lý mượt mà nhờ bộ vi xử lý Intel Core i5 1230U với 10 nhân 12 luồng, tốc độ tối đa 4.4GHz. Mọi công việc sẽ được giải quyết một cách rất nhẹ nhàng nhờ hiệu suất cao và ổn định của Envy x360. Card đồ họa tích hợp Intel Iris Xe Graphics giúp các thao tác đồ họa mượt mà hơn.

Laptop HP Envy X360 13-bf0112TU 7C0N9PA

Bên cạnh bộ vi xử lý mạnh mẽ, HP Envy x360 13-bf0112TU 7C0N9PA còn có tốc độ khởi động, mở ứng dụng cực nhanh nhờ ổ cứng SSD 512GB. Cùng với đó là 16GB RAM hiệu năng cao, cho khả năng đa nhiệm tuyệt vời. Chiếc laptop HP Envy của bạn sẽ luôn hoạt động mượt mà, đảm bảo cho công việc luôn trôi chảy.

Laptop HP Envy X360 13-bf0112TU 7C0N9PA
Tối ưu bảo mật

HP Envy x360 13-bf0112TU 7C0N9PA  cho phép bạn làm chủ hoàn toàn quyền riêng tư của mình khi sử dụng. Bạn sẽ có phím tắt để đóng màn trập camera và tắt micro khi không cần thiết. Như vậy hình ảnh và cuộc trò chuyện của bạn sẽ không bị các tin tặc xâm phạm. Thêm một ưu điểm nữa cho chiếc laptop HP Envy X360 này là tính năng bảo mật vân tay. Khởi động máy chỉ với 1 cái chạm tay đồng thời bảo vệ an toàn cho dữ liệu trên máy.

 Laptop HP Envy X360 13-bf0112TU 7C0N9PA
Thiết kế bàn phím hợp lí mang lại trải nghiệm gõ phím tốt

Trong thân máy nhỏ gọn nhưng bàn phím của HP Envy x360 13-bf0112TU 7C0N9PA  được thiết kế hợp lí, tràn ra sát cạnh giúp cho các phím to rõ không thua kém các mẫu laptop 14 inch. Máy trang bị đầy đủ các phím chức năng cần thiết, đặc biệt, với phím tắt camera tiện lợi giúp bảo mật tốt hơn, kiểm soát được thời gian sử dụng webcam. Bàn phím có trang bị đèn nền để dễ quan sát vào ban đêm, tránh gõ sai, giúp bạn có trải nghiệm gõ phím tốt.

 Laptop HP Envy X360 13-bf0112TU 7C0N9PA
Kết nối dễ dàng

Là một chiếc laptop mỏng nhẹ, nhưng HP Envy x360 13-bf0112TU 7C0N9PA vẫn có đủ những kết nối tiên tiến và phổ biến nhất để phục vụ công việc. Bạn sẽ có cổng USB Type-C tốc độ siêu nhanh 10Gpbs đóng vai trò đa năng từ sạc, DisplayPort 1.4 cho đến sạc điện trong khi tắt máy; cổng USB Type-A 5Gbps trong đó một cổng có thể sạc khi tắt máy; đầu đọc thẻ SD; cổng nguồn và jack tai nghe 3.5mm.

 Laptop HP Envy X360 13-bf0112TU 7C0N9PA
Mua Laptop HP Envy x360 13-bf0112TU 7C0N9PA ở đâu uy tín?

Máy tính xách tay HP Envy x360 13-bf0112TU 7C0N9PA là mẫu laptop hoàn hảo đối với nhu cầu sử dụng của dân văn phòng, doanh nhân. Bạn có thể sử dụng mượt mà các tác vụ văn phòng như Word, Excel... ngoài ra còn có thể lướt web, xem phim và giải trí ấn tượng. Với hơn 20 năm kinh nghiệm chuyên sâu trong lĩnh vực cung cấp các thiết bị văn phòng và giải pháp công nghệ, Phúc Anh tự hào mang đến những sản phẩm chất lượng nhất đáp ứng mọi nhu cầu của khách hàng. Cùng với đội ngũ nhân viên chuyên nghiệp và dịch vụ chăm sóc khách hàng tận tâm uy tín, chúng tôi tin chắc rằng khách hàng sẽ có những trải nghiệm vô cùng thú vị khi đến với Phúc Anh. Còn chần chờ gì nữa, nhanh nhanh ghé cơ sở gần nhất của chúng tôi để được hỗ trợ!',
        '29.590.000 ₫',
        '24.690.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        '042f7644-80a3-43a7-bf65-79476e7f777c',
        'HP',
        ' HP ENVY X360 13-BF0114TU 7C0P0PA ',
        '',
        'Laptop HP Envy X360 được đánh giá là dòng laptop cảm ứng, mỏng nhẹ nhưng vẫn đảm bảo cấu hình vượt trội giúp đáp ứng mọi tác vụ cơ bản cần thiết cho người dùng. HP ENVY x360 13-bf0114TU 7C0P0PA sở hữu thiết kế đơn giản, tỉ mỉ với khung nhôm chắc chắn và vô cùng sang trọng. Với khả năng hiển thị ấn tượng, sắc nét chiếc laptop – máy tính xách tay này phù hợp với mọi nhu cầu cho công việc, giải trí, học tập,.., luôn góp phần tạo nên trải nghiệm mượt mà trong suốt quá trình sử dụng.
Thiết kế tinh tế, sang trọng

Laptop HP ENVY x360 13-bf0114TU 7C0P0PA có thiết kế nhỏ gọn. Thân máy được làm bằng kim loại nhôm sơn bạc toát lên vẻ sang trọng. Nổi bật ở phần mặt lưng là logo HP được làm bóng với nét chữ tinh tế, thời trang.

Máy có mức độ hoàn thiện cao, tỉ mỉ đến từng chi tiết. Phần dưới nắp máy được làm theo dạng đường cong để hạn chế bụi bẩn bám vào bản lề.

HP ENVY x360 13-bf0114TU 7C0P0PA sở hữu thiết kế độc đáo với lớp vỏ kim loại bền bỉ, kết hợp cùng thiết kế bản lề cho phép gập màn hình 360 độ, không chỉ nâng cao góc nhìn, dễ dàng chia sẻ dữ liệu mà còn có thể chuyển sang sử dụng như một chiếc máy tính bảng, một thiết bị mang hai công dụng khác nhau. Đây chính xác là điểm thu hút mọi sự quan tâm của người dùng thể hiện một đẳng cấp mới so với những dòng laptop văn phòng khác. 

Trọng lượng HP ENVY x360 13-bf0114TU 7C0P0PA vào khoảng 1.3kg nên việc mang máy đi bất cứ nơi đâu là vô cùng dễ dàng. Kích thước của chiếc laptop HP Envy X360 này là 290.83 x 210.49 x 10.61 (mm) cho một không gian làm việc rộng rãi hơn, tiết kiệm diện tích để người dùng có thể đặt những vật dụng khác trên mặt bàn. 

Hiệu năng vượt trội

HP ENVY x360 13-bf0114TU 7C0P0PA được trang bị bộ vi xử lý Intel Core i5-1230U, tốc độ xung nhịp 3.3 GHz cho phép xử lý công việc từ cơ bản đến nâng cao. Mọi tác vụ văn phòng như Word, Excel, PowerPoint,... đều có thể đáp ứng được một cách nhanh chóng. Card màn hình Intel Iris Xe Graphic còn hỗ trợ người dùng thỏa sức sáng tạo trong việc chỉnh sửa và thiết kế hình ảnh trên các phần mềm của nhà Adobe như Ai, Photoshop,... 

Bộ nhớ 8GB LPDDR4x 4266MHz trên laptop HP Envy mang lại khả năng xử lý đa nhiệm nhanh gọn. Mọi thao tác như lướt web, xem phim, mở nhiều ứng dụng cùng lúc cũng không gặp trở ngại giật lag. Sản phẩm còn sở hữu kho lưu trữ dữ liệu lên đến 512GB từ ổ cứng SSD để người dùng sao lưu các thông tin và ứng dụng cần thiết. Việc vận hành của máy cũng từ đó mà nhanh hơn, giảm tối thiểu độ trễ và sự chờ đợi trong quá trình sử dụng.
Trải nghiệm màn hình cảm ứng OLED chất lượng cao

So với thế hệ trước thì HP ENVY x360 13-bf0114TU 7C0P0PA đã có phần viền màn hình mỏng hơn đáng kể, nâng cao trải nghiệm xem, cho hình ảnh thêm phần sống động. 

Màn hình viền mỏng 13.3 inch của máy có độ phân giải 2.8K, trang bị tấm nền OLED tân tiến giữ cho hình ảnh được kết xuất luôn chất lượng ở mọi góc nhìn.

100% DCI -P3 sẽ mang đến cho bạn những trải nghiệm hình ảnh siêu chân thực, mật độ điểm ảnh cao hơn các loại màn hình máy tính thông dụng khác.

Bên ngoài màn hình phủ kính cường lực Gorilla Glass 6 hỗ trợ cảm ứng đa điểm và bút cảm ứng HP Active Pen tặng kèm trong hộp. Màn cho chất lượng hiển thị ở mức khá, độ tương phản và độ sáng cao, sai lệch màu thấp, phù hợp cho những bạn làm sáng tạo nội dung hoặc giải trí xem phim cơ bản.
Bật tung ý tưởng với bút cảm ứng

Màn hình cảm ứng của HP ENVY x360 13-bf0114TU 7C0P0PA có thể tương thích với bút cảm ứng để tạo thành một bàn vẽ linh hoạt. Bạn có thể dùng bút cảm ứng để viết vẽ tự nhiên, cảm giác như đang viết trên giấy. Thỏa sức sáng tạo, ghi chú với HP Envy x360.

Bàn phím tiêu chuẩn, hỗ trợ đèn nền

Bàn phím HP ENVY x360 13-bf0114TU 7C0P0PA rộng rãi, thoải mái cho việc thao tác, nhập liệu. Bề mặt keycap có dạng hình vuông và lớn, tăng độ chính xác khi gõ văn bản. Phím sâu, nút bấm có độ phản hồi êm, khá thoải mái cho người dùng.

Ngoài ra, bàn phím còn hỗ trợ hệ thống đèn nền như những sản phẩm laptop HP doanh nhân khác trên thị trường. Mọi thao tác trong điều kiện thiếu sáng đều diễn ra chính xác cho hiệu quả làm việc cao. 
Công nghệ bảo mật hiện đại

Màn hình máy được trang bị khả năng chống nhìn trộm HP Sure View. Khi kích hoạt tính năng này, người dùng sẽ tránh được các ánh nhìn lén.

Bàn phím sản phẩm còn được thiết kế đầu đọc vân tay, nâng cao tính bảo mật. Bên cạnh đó, laptop còn có nút tắt camera của micro và webcam để đảm bảo an toàn tuyệt đối.
Thời lượng pin ấn tượng

Dù rất nhỏ gọn nhưng HP ENVY x360 13-bf0114TU 7C0P0PA có thời lượng pin đáng kinh ngạc. Bạn có thể xem phim hoặc làm việc văn phòng trong thời gian lên tới 13 giờ. Công việc và sự sáng tạo sẽ không bị ngắt quãng vì nỗi lo hết pin. Ấn tượng hơn nữa, laptop HP này còn có tính năng sạc nhanh, sạc đầy 50% pin nhanh chóng chỉ sau 30 phút.
Cổng kết nối đa dạng

Là một chiếc máy 2-in-1 và rất mỏng nhẹ, nhưng HP ENVY x360 13-bf0114TU 7C0P0PA vẫn có đủ những kết nối tiên tiến và phổ biến nhất để phục vụ công việc. Bạn sẽ có 2 cổng Thunderbolt 4 with USB Type - C tốc độ siêu nhanh 40Gpbs đóng vai trò đa năng từ sạc; 2 cổng USB Type-A 10Gbps; đầu đọc thẻ SD; cổng nguồn và jack tai nghe 3.5mm.',
        '28.790.000 ₫',
        '24.790.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        'f12ff56a-bbaf-4612-8198-137361f3329f',
        'HP',
        ' HP ENVY X360 13-BF0097TU 76B17PA ',
        '',
        'Laptop HP ENVY x360 là con máy 2 trong 1 tiện lợi đang “chiếm sóng" trên thị trường laptop hiện nay. Sở hữu màn hình cảm ứng, thiết kế mỏng nhẹ, hiệu suất mạnh mẽ,... hứa hẹn sản phẩm này sẽ mang đến những trải nghiệm làm việc và giải trí chất lượng cho bạn. Trong bài viết hôm nay, hãy cùng Hoàng Hà Mobile khám phá siêu phẩm đến từ nhà HP này nhé!

Sang trọng từ thiết kế mỏng nhẹ, cao cấp

Nhờ vào thiết kế nhỏ gọn, tinh tế cùng độ mỏng ấn tượng, HP ENVY x360 tạo nên cảm giác sang trọng ngay từ cái nhìn đầu tiên. Được chế tác từ khung nhôm siêu nhẹ, Laptop HP ENVY x360 sở hữu độ bền mà ai cũng hằng mong muốn. Những đường viền mỏng, đường cắt vuông được hoàn thiện tỉ mỉ, giúp tăng thêm sự tinh tế, sang trọng cho chiếc laptop HP này.


Lướt task mượt mà với cấu hình mạnh mẽ

HP ENVY x360 được tích hợp bộ vi xử lý Intel Core i5 1230U với 6 nhân 12 luồng, mang đến tốc độ xử lý tối đa 4.2GHz. Mọi tác vụ sẽ được HP ENVY x360 giải quyết nhanh chóng và nhẹ nhàng nhờ vào hiệu suất cao và ổn định của Envy x360. Thao tác đồ hoạ hoá mượt mà với card đồ họa tích hợp Intel Iris Xe Graphics.

Tốc độ khởi động máy, mở ứng dụng cũng trở nên nhanh hơn khi có ổ cứng SSD 512GB. Giải quyết đa nhiệm công việc, hiệu năng tăng cao cũng là chuyện nhỏ với 8GB RAM DDR4.


Màn hình chân thật đem tới cảm hứng vô tận

Độ phân giải Full HD cùng màn hình 13.3 inch, giúp đem đến những trải nghiệm hình ảnh sắc nét và sống động. Công nghệ IPS kết hợp với Brightview cho ra những hình ảnh và video có màu sắc tươi sáng, rực rỡ hơn bao giờ hết. Màn hình cảm ứng tích hợp cùng thân máy xoay 360 độ có thể biến máy thành bàn vẽ linh hoạt, cho người dùng thỏa sức sáng tạo, ghi chú.


Bàn phím êm ái, touchpad mượt mà

Bàn phím của HP ENVY x360 được thiết kế chắc chắn với các phím bấm vuông, có diện tích lớn vừa đủ, cho phép người dùng thao tác dễ dàng, thuận lợi. Độ nảy phù hợp và độ chính xác cao hỗ trợ việc soạn thảo văn bản trở nên nhanh chóng, nâng cao năng suất công việc.

Việc thao tác chuột cũng trở nên chuẩn xác và dễ dàng hơn với touchpad có diện tích lớn, độ nhạy và độ chính cao. Lớp phủ nhám mịn đem đến trải nghiệm di chuột mượt mà, không thua kém gì với một chiếc chuột rời.


Kết nối linh hoạt

Để có thể đáp ứng đa dạng nhu cầu của người sử dụng, HP ENVY x360 trang bị đầy đủ các cổng kết nối bao gồm: cổng USB Type-C có tốc độ 10Gpbs đóng vai trò đa năng từ sạc, DisplayPort 1.4; 2 cổng USB Type-A 5Gbps trong đó một cổng có thể sạc khi tắt máy, đầu đọc thẻ SD, cổng nguồn và jack tai nghe 3.5mm.


Laptop HP ENVY x360 13 bf0097TU-76B17PA hiện đang được bán tại Hoàng Hà Mobile với mức giá cực tốt. Hãy đến ngay chi nhánh Hoàng Hà Mobile gần nhất hoặc đặt hàng trên website để được miễn phí vận chuyển toàn quốc.',
        '27.690.000 ₫',
        '21.990.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        '95b08cba-acb6-407d-8c3a-809e04f35425',
        'HP',
        ' HP Envy X360 13-bf0112TU 7C0N9PA ',
        '',
        'Laptop HP Envy X360 13-bf0112TU 7C0N9PA (Core i5 1230U/ 16GB/ 512GB SSD/ Intel Iris Xe Graphics/ 13.3inch OLED Touch/ Windows 11 Home/ Silver/ Vỏ nhôm/ Pen)

Thiết kế bản lề xoay gập linh hoạt cùng hiệu năng mạnh mẽ, HP Envy x360 13-bf0112TU 7C0N9PA  là dòng máy tính mỏng nhẹ cao cấp, phù hợp cho người dùng là doanh nhân, nhân viên văn phòng, những người cần di chuyển thường xuyên.

Laptop HP Envy X360 13-bf0112TU 7C0N9PA
Thiết kế mỏng nhẹ, cao cấp

Thiết kế bên ngoài của laptop HP Envy x360 13-bf0112TU 7C0N9PA toát lên sự sang trọng, cao cấp nhờ thiết kế nhỏ gọn, mạnh mẽ và độ mỏng ấn tượng. Được chế tác từ khung nhôm bóng bẩy, bền vững và siêu nhẹ, HP Envy x360 vừa sang trọng, vừa có độ bền đáng mơ ước. Phiên bản màu Bạc Silver sang trọng, độc đáo và rất nổi bật. Kiểu dáng thời thượng với viền màn hình siêu mỏng, những đường cắt vuông vắn và các chi tiết hoàn thiện tỉ mỉ tạo nên chiếc laptop đẳng cấp bậc nhất.

Laptop HP Envy X360 13-bf0112TU 7C0N9PA
Cảm hứng bất tận

Màn hình HP Envy x360 có phần viền màn hình mỏng nâng cao trải nghiệm xem, cho hình ảnh thêm phần sống động. Độ phân giải Full HD trên màn hình 13.3 inch mang tới hình ảnh sắc nét, tạo cảm hứng cả khi làm việc và giải trí. Công nghệ màn hình IPS, BrightView giúp mọi thứ trở nên tươi sáng, hấp dẫn, hiển thị hình ảnh và video rực rỡ hơn.

Màn hình cảm ứng của laptop HP này tương thích với bút cảm ứng để tạo thành một bàn vẽ linh hoạt. Bạn có thể dùng bút cảm ứng để viết vẽ tự nhiên, cảm giác như đang viết trên giấy. Thỏa sức sáng tạo, ghi chú với HP Envy x360. Màn hình cảm ứng kết hợp với thân máy xoay 360 độ giúp bạn có thể sử dụng máy với 4 chế độ khác nhau. Dù là dưới vai trò laptop thông thường; máy tính bảng hay trình chiếu, HP Envy x360 cũng đều thể hiện xuất sắc và hữu dụng. Với âm thanh được tinh chỉnh bởi công nghệ hàng đầu Bang & Olufsen, HP Envy X360 13 mang đến cho bạn những giây phút giải trí, thư giãn tuyệt vời.

Laptop HP Envy X360 13-bf0112TU 7C0N9PA
Cấu hình mạnh mẽ

HP Envy x360 13-bf0092TU 76V59PA có tốc độ xử lý mượt mà nhờ bộ vi xử lý Intel Core i5 1230U với 10 nhân 12 luồng, tốc độ tối đa 4.4GHz. Mọi công việc sẽ được giải quyết một cách rất nhẹ nhàng nhờ hiệu suất cao và ổn định của Envy x360. Card đồ họa tích hợp Intel Iris Xe Graphics giúp các thao tác đồ họa mượt mà hơn.

Laptop HP Envy X360 13-bf0112TU 7C0N9PA

Bên cạnh bộ vi xử lý mạnh mẽ, HP Envy x360 13-bf0112TU 7C0N9PA còn có tốc độ khởi động, mở ứng dụng cực nhanh nhờ ổ cứng SSD 512GB. Cùng với đó là 16GB RAM hiệu năng cao, cho khả năng đa nhiệm tuyệt vời. Chiếc laptop HP Envy của bạn sẽ luôn hoạt động mượt mà, đảm bảo cho công việc luôn trôi chảy.

Laptop HP Envy X360 13-bf0112TU 7C0N9PA
Tối ưu bảo mật

HP Envy x360 13-bf0112TU 7C0N9PA  cho phép bạn làm chủ hoàn toàn quyền riêng tư của mình khi sử dụng. Bạn sẽ có phím tắt để đóng màn trập camera và tắt micro khi không cần thiết. Như vậy hình ảnh và cuộc trò chuyện của bạn sẽ không bị các tin tặc xâm phạm. Thêm một ưu điểm nữa cho chiếc laptop HP Envy X360 này là tính năng bảo mật vân tay. Khởi động máy chỉ với 1 cái chạm tay đồng thời bảo vệ an toàn cho dữ liệu trên máy.

 Laptop HP Envy X360 13-bf0112TU 7C0N9PA
Thiết kế bàn phím hợp lí mang lại trải nghiệm gõ phím tốt

Trong thân máy nhỏ gọn nhưng bàn phím của HP Envy x360 13-bf0112TU 7C0N9PA  được thiết kế hợp lí, tràn ra sát cạnh giúp cho các phím to rõ không thua kém các mẫu laptop 14 inch. Máy trang bị đầy đủ các phím chức năng cần thiết, đặc biệt, với phím tắt camera tiện lợi giúp bảo mật tốt hơn, kiểm soát được thời gian sử dụng webcam. Bàn phím có trang bị đèn nền để dễ quan sát vào ban đêm, tránh gõ sai, giúp bạn có trải nghiệm gõ phím tốt.

 Laptop HP Envy X360 13-bf0112TU 7C0N9PA
Kết nối dễ dàng

Là một chiếc laptop mỏng nhẹ, nhưng HP Envy x360 13-bf0112TU 7C0N9PA vẫn có đủ những kết nối tiên tiến và phổ biến nhất để phục vụ công việc. Bạn sẽ có cổng USB Type-C tốc độ siêu nhanh 10Gpbs đóng vai trò đa năng từ sạc, DisplayPort 1.4 cho đến sạc điện trong khi tắt máy; cổng USB Type-A 5Gbps trong đó một cổng có thể sạc khi tắt máy; đầu đọc thẻ SD; cổng nguồn và jack tai nghe 3.5mm.',
        '29.590.000 ₫',
        '24.690.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        '1f9492e6-3326-4551-85a4-02c8a0aedf0b',
        'HP',
        ' HP Envy X360 13-bf0114TU 7C0P0PA ',
        '',
        'Laptop HP Envy x360 13-bf0114TU kết hợp con chip Intel Core i5-1230U thế hệ 12 hiện đại, hiệu năng vượt bậc cùng bộ lưu trữ rộng lớn RAM 8Gb 512Gb SSD. Màn hình 13 inch OLED màn hình gập đến 360 độ mang đến bạn trải nghiệm tuyệt vời, sắc nét phù hợp với nhu cầu học tập làm việc và giải trí đa màu sắc
Laptop HP Envy x360 13-bf0114TU
Laptop HP Envy x360 13-bf0114TU
Thiết kế thời trang sang trọng, kích thước gọn nhẹ

Laptop Laptop HP Envy x360 13-bf0114TU làm cho người xem dễ bị thu hút qua ánh nhìn đầu tiên bởi các cạnh viền được thiết kế mỏng manh, phong cách đầy năng động trẻ trung. Máy trang bị bằng một hỗn hợp kim loại nhôm và một màu bạc bao phủ toát lên vẻ sang trọng đầy cuốn hút. Phần mặt lưng laptop logo HP được làm bóng và nét chữ đầy tinh tế.
Thiết kế thời trang sang trọng, kích thước gọn nhẹ
Thiết kế thời trang sang trọng, kích thước gọn nhẹ

Với tiêu chí hướng tới những tệp khách hàng yêu thích sự năng động, thể thao. Máy được thiết kế với kích thước độ dày 1.61cm và khối lượng 1.3kg đáp ứng được nhu cầu gọn nhẹ, năng động của học sinh, sinh viên và người làm văn phòng. Như vậy, mọi người có thể làm việc ở bất cứ đâu mà mình muốn.
CPU Intel Core i5 thế hệ thứ 12, đồ họa Intel Iris Xe Graphics.

Intel Core i5 -1230U thế hệ thứ 12 là một phiên bản bản tối ưu về kích thước, tính năng để phù hợp với chiếc laptop. Tần số quét tới 4.4HGz cho ra hình ảnh mượt mà hơn, bộ nhớ đệm 12MB, tốc độ xử lý nhanh chóng và mạnh mẽ 10 nhân 12 luồng. Thông số trên cho thấy được chiếc laptop này cũng có thể cạnh tranh với những dòng cùng phân khúc.

Chip đồ họa Intel Iris Xe Graphics hỗ trợ chất lượng hình ảnh chơi game với độ phân giải 1080p, tần số quét màn hình 60FPS. Bạn cũng có thể làm các công việc cơ bản như photoshop, thiết kế đồ họa 2D, độ phân giải đạt mức 8K hoặc 4K HDR mang đến bạn cảm giác chân thật và sắc sảo hơn trong từng chi tiết.
CPU Intel Core i5 thế hệ thứ 12, đồ họa Intel Iris Xe Graphics.
CPU Intel Core i5 thế hệ thứ 12, đồ họa Intel Iris Xe Graphics.
RAM 8Gb LPDDR4X 4266MHz, Ổ cứng  512Gb SSD M.2 NVMe

Dung lượng RAM 8Gb cho phép bạn có thể thực hiện nhiều chức năng vừa phải như chỉnh sửa hình ảnh, chơi game ở mức cơ bản không quá nặng, sử dụng nhiều tab trong cùng một lúc, các tác vụ văn phòng Word, Excel, Power Point,.... Bộ nhớ RAM LPDDR4X cũng được nâng cấp hơn so với thế hệ cũ là LPDDR4 giúp kích thước RAM nhỏ gọn hơn để phù hợp với máy.
RAM 8Gb LPDDR4X 4266MHz, Ổ cứng 512Gb SSD M.2 NVMe
RAM 8Gb LPDDR4X 4266MHz, Ổ cứng  512Gb SSD M.2 NVMe

Ổ cứng 512Gb SSD M.2 NVMe cho bạn không gian rộng lớn để lưu trữ các tệp dữ liệu nặng. Tốc độ xử lý, ghi đọc dữ liệu nhanh chóng giúp máy có thể sử dụng nhiều công việc trơn tru hơn mà không bị giật lag. Quá trình bật tắt laptop, chạy ứng dụng cũng diễn ra cực kì nhanh. Nếu bạn muốn lưu trữ và nâng cao hiệu suất làm việc thì bạn có thể nâng cấp ổ cứng lên.
Màn hình 13.3 inch OLED chất lượng cao, cảm ứng thỏa sức sáng tạo

Màn hình 13.3 inch nhỏ gọn, độ phân giải lên tới 2.8K , được trang bị tấm nền OLED hiện đại cung cấp góc nhìn rộng, giúp máy tiết kiệm điện năng và bền hơn. Độ bao phủ màu của máy tính đạt 100 % DCI – P3 chuẩn Pantone về độ chính xác từng màu mang đến những trải nghiệm sắc nét và đắm chìm vào thế giới ảo.
Màn hình 13.3 inch OLED chất lượng cao, cảm ứng thỏa sức sáng tạo
Màn hình 13.3 inch OLED chất lượng cao, cảm ứng thỏa sức sáng tạo

Laptop HP Envy x360 cho phép người dùng gập đến 360 độ mang đến bạn cảm giác làm việc mới lạ giống như 1 chiếc IPAD cỡ lớn, màn hình được phủ 1 lớp kính cường lực  Gorilla Glass 6 hỗ trợ cảm ứng đa điểm. Với bút vẽ HP Active Pen bạn có thể thỏa sức sáng tạo ở mọi lúc mọi bằng cách vẽ, ghi chú, thiết kế 2D…. một cách nhanh gọn.
Cổng kết nối đa dạng, Hệ thống bảo mật an toàn

Mặc dù được thiết kế mỏng nhẹ, nhỏ gọn nhưng chiếc laptop này vẫn đầy đủ đa dạng cổng kết nối hiện đại và phổ biến nhất hiện nay. Máy được trang bị 2x USB 3.2 giúp tốc độ xử lý dữ liệu nhanh hơn, 2x Thunderbolt 4 hỗ trợ sạc điện, truyền tải dữ liệu với băng thông liên tục đến 40Gbps, 1x micro SD card slot lưu giữ hình ảnh , Audio combo cho ra âm thanh rõ ràng không bị nhiều tạp âm.
Cổng kết nối đa dạng, Hệ thống bảo mật an toàn
Cổng kết nối đa dạng, Hệ thống bảo mật an toàn

Hệ thống bảo mật an toàn hơn với công nghệ HP Sure View, tính năng này có khả năng chống nhìn trộm qua màn hình. Bên cạnh đó, bàn phím còn được trang bị đầu đọc tích hợp bằng mã vân tay, nút tắt camera trên micro và webcam để đảm bảo an toàn thông tin của người sử dụng tuyệt đối.',
        '28.790.000 ₫',
        '24.790.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        'cb3d58f6-0d5d-4973-a0c6-2a44e70b1e69',
        'HP',
        ' HP Envy X360 13-bf0092TU 76V59PA ',
        '',
        'MÁY TÍNH XÁCH TAY HP ENVY X360 13-BF0092TU,CORE I7-1250U/ 8GB RAM/ 512GB SSD/ INTEL GRAPHICS/ 13.3INCH 2.8K TOUCH/ WEBCAM/ 4 CELL/ WLAN AX+BT/ PEN/ WIN11 HOME 64/ SPACE BLUE_(76V59PA)* - 01Y

HP ENVY X360 13-bf0092TU 76V59PA được thiết kế gọn nhẹ với kích thước 29.83 x 21.49 x 1.61 cm, nặng chỉ đến 1.34 kg. Với thiết kế nhỏ gọn trên các bạn có thể mang em nó trong cặp sách của mình và đi bất cứ đâu nhằm thoả mãn nhu cầu sử dụng của mình, từ học tập, làm việc, cho đến giải trí, chơi game.

Nắp lưng làm bằng kim loại màu xanh thời trang và độc đáo, cùng với những đường nét hoàn thiện tinh tế tôn lên nét thanh lịch và sang trọng. Logo của hãng được in tròn sáng bóng tô điểm thêm sự đình đám của dòng laptop danh tiếng này.

Ngoài ra, bản lề của chiếc laptop này cũng được thiết kế có thể gập lại được đến 360 độ. Bạn có thể chuyển đổi linh hoạt giữa chế độ sử dụng như laptop sang tablet và nhiều chế độ khác nhau tuỳ theo sự sáng tạo và nhu cầu của người dùng. Màn hình cảm ứng đi kèm với một chiếc bút cảm ứng cho việc ghi chú, và sử dụng chế độ máy tính bảng trở nên tiện ích hơn.

Màn hình 2.8K siêu sắc nét

Sở hữu một chiếc màn hình rộng 13.3 inch có độ phân giải đạt 2.8K (2880 x 1800), em Laptop HP ENVY X360 13-bf0092TU 76V59PA hứa hẹn sẽ cung cấp cho các bạn khả năng hiển thị sắc nét hơn, mật độ điểm ảnh cao hơn các loại màn hình laptop thông dụng khác. Độ phủ màu màn hình đạt 100% DCI-P3 cung cấp nhiều màu sắc hơn và nhiều tùy chọn cho sự sáng tạo hơn các độ phân giải cơ bản khác như sRGB,... Mức độ sáng 500 nits là mức độ sáng thông dụng trên các dòng laptop cao cấp hiện nay.

Bên cạnh đó, như đã nói ở trên chiếc laptop này sở hữu một chiếc màn hình cảm ứng. Chỉ với vài cử chỉ ngón tay đơn giản thay cho những thao tác rườm rà trên bàn phím và chuột, có thể giúp cho việc đóng mở ứng dụng trở nên nhanh chóng và tiện lợi.

Hiệu năng mạnh mẽ vượt bậc

Để có thể mang lại hiệu năng mạnh mẽ cũng như hỗ trợ bạn tối đa trong công việc, chiếc Laptop HP ENVY X360 13-bf0092TU 76V59PA đã được trang bị bộ vi xử lý Intel i7-1250U thế hệ thứ 12 đời mới nhất của dòng sản phẩm nhà Intel, gồm 10 nhân và 12 luồng, xung nhịp tối đa lên đến 4,70 GHz. Đi kèm với hậu tố U giúp laptop tiêu thụ ít điện năng hơn, máy sẽ ít bị nóng hơn và thời lượng sử dụng pin sẽ lâu hơn. 

Đi kèm với con chip Intel là chiếc card màn hình tích hợp Intel Iris Xe Graphics cho bạn trải nghiệm chất lượng hình ảnh lên đến 4K.

Ngoài ra, bộ nhớ trong 16GB RAM DDR4 giúp bạn có thể xử lý đa tác vụ, giảm thời gian chờ đợi của bạn với tốc độ kết nối giữa RAM và bộ điều khiển lên đến 4266 MHz. Ổ cứng 512GB SSD PCIe giúp bạn bạn có thể khởi động máy hay các ứng dụng nhanh chóng và lưu trữ được nhiều hơn.

Bàn phím và touchpad

Bàn phím của em laptop này được thiết kế chắc chắn, sử dụng layout phím cắt giảm (không có bàn phím số) để phù hợp với kích thước của máy. Tuy nhiên không vì thế mà không thoả mãn nhu cầu sử dụng của các bạn khi vẫn giữ được đầy đủ các chức năng cần thiết. Khoảng cách các phím được thiết kế tiêu chuẩn với bàn phím máy tính để bàn giúp bạn có thể gõ văn bản hàng giờ mà không bị mỏi tay.

Touchpad laptop rộng, được đặt ngay chính giữa chiếc máy. Cảm giác lướt trên touchpad cực nhạy và mượt, công nghệ cảm ứng đa điểm giúp bạn có thể hoàn thành tốt công việc mà không cần chuột rời đi kèm.

Đa dạng cổng kết nối

Nhằm thoả mãn đa dạng các nhu cầu sử dụng của người dùng, Laptop HP ENVY X360 13-bf0092TU 76V59PA được trang bị đầy đủ những cổng kết nối khác nhau phù hợp với các nghiệp vụ văn phòng khác nhau. Các cổng kết nối bao gồm:

1x microSD card reader.
1x headphone/microphone combo.
2x USB4 Type-C® 40Gbps with Thunderbolt 4.
2x SuperSpeed USB Type-A 10Gbps.
',
        '32.590.000 ₫',
        '26.390.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        'ece2725c-3a08-4adf-83fa-090c73b697da',
        'HP',
        ' HP Envy X360 13-bf0114TU 7C0P0PA ',
        '',
        '

Laptop HP ENVY x360 13-bf0114TU 7C0P0PA có thiết kế nhỏ gọn. Thân máy được làm bằng kim loại nhôm sơn bạc toát lên vẻ sang trọng. Nổi bật ở phần mặt lưng là logo HP được làm bóng với nét chữ tinh tế, thời trang.

Máy có mức độ hoàn thiện cao, tỉ mỉ đến từng chi tiết. Phần dưới nắp máy được làm theo dạng đường cong để hạn chế bụi bẩn bám vào bản lề.

HP ENVY x360 13-bf0114TU 7C0P0PA sở hữu thiết kế độc đáo với lớp vỏ kim loại bền bỉ, kết hợp cùng thiết kế bản lề cho phép gập màn hình 360 độ, không chỉ nâng cao góc nhìn, dễ dàng chia sẻ dữ liệu mà còn có thể chuyển sang sử dụng như một chiếc máy tính bảng, một thiết bị mang hai công dụng khác nhau. Đây chính xác là điểm thu hút mọi sự quan tâm của người dùng thể hiện một đẳng cấp mới so với những dòng laptop văn phòng khác. 

Trọng lượng HP ENVY x360 13-bf0114TU 7C0P0PA vào khoảng 1.3kg nên việc mang máy đi bất cứ nơi đâu là vô cùng dễ dàng. Kích thước của chiếc laptop HP Envy X360 này là 290.83 x 210.49 x 10.61 (mm) cho một không gian làm việc rộng rãi hơn, tiết kiệm diện tích để người dùng có thể đặt những vật dụng khác trên mặt bàn. 

Hiệu năng vượt trội

HP ENVY x360 13-bf0114TU 7C0P0PA được trang bị bộ vi xử lý Intel Core i5-1230U, tốc độ xung nhịp 3.3 GHz cho phép xử lý công việc từ cơ bản đến nâng cao. Mọi tác vụ văn phòng như Word, Excel, PowerPoint,... đều có thể đáp ứng được một cách nhanh chóng. Card màn hình Intel Iris Xe Graphic còn hỗ trợ người dùng thỏa sức sáng tạo trong việc chỉnh sửa và thiết kế hình ảnh trên các phần mềm của nhà Adobe như Ai, Photoshop,... 

Bộ nhớ 8GB LPDDR4x 4266MHz trên laptop HP Envy mang lại khả năng xử lý đa nhiệm nhanh gọn. Mọi thao tác như lướt web, xem phim, mở nhiều ứng dụng cùng lúc cũng không gặp trở ngại giật lag. Sản phẩm còn sở hữu kho lưu trữ dữ liệu lên đến 512GB từ ổ cứng SSD để người dùng sao lưu các thông tin và ứng dụng cần thiết. Việc vận hành của máy cũng từ đó mà nhanh hơn, giảm tối thiểu độ trễ và sự chờ đợi trong quá trình sử dụng.
Trải nghiệm màn hình cảm ứng OLED chất lượng cao

So với thế hệ trước thì HP ENVY x360 13-bf0114TU 7C0P0PA đã có phần viền màn hình mỏng hơn đáng kể, nâng cao trải nghiệm xem, cho hình ảnh thêm phần sống động. 

Màn hình viền mỏng 13.3 inch của máy có độ phân giải 2.8K, trang bị tấm nền OLED tân tiến giữ cho hình ảnh được kết xuất luôn chất lượng ở mọi góc nhìn.

100% DCI -P3 sẽ mang đến cho bạn những trải nghiệm hình ảnh siêu chân thực, mật độ điểm ảnh cao hơn các loại màn hình máy tính thông dụng khác.

Bên ngoài màn hình phủ kính cường lực Gorilla Glass 6 hỗ trợ cảm ứng đa điểm và bút cảm ứng HP Active Pen tặng kèm trong hộp. Màn cho chất lượng hiển thị ở mức khá, độ tương phản và độ sáng cao, sai lệch màu thấp, phù hợp cho những bạn làm sáng tạo nội dung hoặc giải trí xem phim cơ bản.
Bật tung ý tưởng với bút cảm ứng

Màn hình cảm ứng của HP ENVY x360 13-bf0114TU 7C0P0PA có thể tương thích với bút cảm ứng để tạo thành một bàn vẽ linh hoạt. Bạn có thể dùng bút cảm ứng để viết vẽ tự nhiên, cảm giác như đang viết trên giấy. Thỏa sức sáng tạo, ghi chú với HP Envy x360.

Bàn phím tiêu chuẩn, hỗ trợ đèn nền

Bàn phím HP ENVY x360 13-bf0114TU 7C0P0PA rộng rãi, thoải mái cho việc thao tác, nhập liệu. Bề mặt keycap có dạng hình vuông và lớn, tăng độ chính xác khi gõ văn bản. Phím sâu, nút bấm có độ phản hồi êm, khá thoải mái cho người dùng.

Ngoài ra, bàn phím còn hỗ trợ hệ thống đèn nền như những sản phẩm laptop HP doanh nhân khác trên thị trường. Mọi thao tác trong điều kiện thiếu sáng đều diễn ra chính xác cho hiệu quả làm việc cao. 
Công nghệ bảo mật hiện đại

Màn hình máy được trang bị khả năng chống nhìn trộm HP Sure View. Khi kích hoạt tính năng này, người dùng sẽ tránh được các ánh nhìn lén.

Bàn phím sản phẩm còn được thiết kế đầu đọc vân tay, nâng cao tính bảo mật. Bên cạnh đó, laptop còn có nút tắt camera của micro và webcam để đảm bảo an toàn tuyệt đối.
Thời lượng pin ấn tượng

Dù rất nhỏ gọn nhưng HP ENVY x360 13-bf0114TU 7C0P0PA có thời lượng pin đáng kinh ngạc. Bạn có thể xem phim hoặc làm việc văn phòng trong thời gian lên tới 13 giờ. Công việc và sự sáng tạo sẽ không bị ngắt quãng vì nỗi lo hết pin. Ấn tượng hơn nữa, laptop HP này còn có tính năng sạc nhanh, sạc đầy 50% pin nhanh chóng chỉ sau 30 phút.
Cổng kết nối đa dạng

Là một chiếc máy 2-in-1 và rất mỏng nhẹ, nhưng HP ENVY x360 13-bf0114TU 7C0P0PA vẫn có đủ những kết nối tiên tiến và phổ biến nhất để phục vụ công việc. Bạn sẽ có 2 cổng Thunderbolt 4 with USB Type - C tốc độ siêu nhanh 40Gpbs đóng vai trò đa năng từ sạc; 2 cổng USB Type-A 10Gbps; đầu đọc thẻ SD; cổng nguồn và jack tai nghe 3.5mm.',
        '28.790.000 ₫',
        '24.790.000 ₫ [Giá đã có V',
        999
    ),
    (
        '6b7ba7dc-41b4-420d-b8e7-7a80ae327424',
        'HP',
        ' HP Pavilion 14-dv2076TU 7C0P4PA ',
        '',
        'Laptop HP Pavilion 14-dv2076TU 7C0P4PA (Core i5 1235U/ 8GB/ 256GB SSD/ Intel Iris Xe Graphics/ 14.0inch Full HD/ Windows 11 Home/ Gold/ Hợp kim nhôm)

Máy tính xách tay HP Pavilion 14-dv2076TU 7C0P4PA sở hữu hiệu năng ổn định với bộ vi xử lý Core i5 thế hệ thứ 12 của Intel cùng một thiết kế đơn giản, sang trọng những không kém phần hiện đại. Laptop học tập văn phòng chính hãng HP Pavilion 14-dv2076TU 7C0P4PA chắc chắn sẽ là trợ thủ cho bạn trong việc giải quyết những công việc văn phòng cũng như giải trí hằng ngày

Laptop HP Pavilion 14-dv2076TU 7C0P4PA
Sở hữu thiết kế cao cấp đầy ấn tượng cùng khối lượng vô cùng nhẹ

HP Pavilion 14 mang một vẻ ngoài nổi bật với ngôn ngữ thiết kế cao cấp. Sản phẩm có kiểu dáng mỏng nhẹ với 17mm và trọng lượng 1,41kg đủ để bạn có thể mang đi dễ dàng trong công việc hằng ngày. Vỏ máy làm từ hợp kim nhôm cao cấp với màu Gold sang trọng, tinh tế, thu hút ảnh hình
Sức mạnh vượt mong đợi với chip i5 thế hệ 12

Hiệu năng mạnh mẽ đáng kinh ngạc với trang bị chip Intel Core i5-1235U với 10 nhân, 12 luồng để bạn chạy mượt mà các tác vụ văn phòng hằng ngày và cả các tác vụ phức tạp hơn. Trải nghiệm khi sử dụng cực kỳ trơn, công việc được giải quyết nhanh chóng

Đi kèm với đó là nhân đồ họa tích hợp Intel Iris Xe Graphics hỗ trợ bạn xuất các nội dung đa phương tiện lên đến 8K hoặc 4K HDR cho bạn có những phút giây thư giãn thoải mái. Với nhân đồ họa tích hợp này bạn cũng dễ dàng thiết kế trên các ứng dụng Photoshop, AI hay chỉnh sửa video trên Premiere

Laptop HP Pavilion 14-dv2076TU 7C0P4PA
Đa nhiệm mượt mà với dung lượng Ram lớn kèm ổ cứng SSD siêu tốc

Laptop chính hãng HP Pavilion 14-dv2076TU 7C0P4PA được trang bị sẵn RAM 8GB DDR4 bus 3200MHz mang đến khả năng đa nhiệm mượt mà, bạn có thể mở nhiều ứng dụng cùng lúc mà không phải lo về giật Lag

Cùng với đó là ổ cứng SSD NVMe M.2 dung lượng 256GB màn đến cho người dùng tốc độ đọc ghi nhanh chóng, mở file, khởi động máy trong tích tắc để bạn làm việc đạt hiệu quả cao nhất
Chất lượng hình ảnh đáng kinh ngạc với độ phân giải cao cùng tấm nền chất lượng

HP Pavilion 14 được trang bị màn hình 14 inch tấm nền IPS độ phân giải Full HD kèm viền màn hình cực mỏng micro-edge cho ra trải nghiệm hình ảnh rất chân thực và sắc nét đến từng chi tiết , đáp ứng được tốt những nhu cầu sử dụng, giải trí thường ngày như xem phim, lướt web, chơi game,…
Làm việc linh hoạt mọi lúc mọi nơi với thời lượng pin đến 8 tiếng

Thời lượng pin của HP Pavilion 14-dv2076TU 7C0P4PA có thể lên đến 8 tiếng theo công bố. Với thời lượng pin này bạn có thể sử dụng trọn vẹn một ngày làm việc mà không cần đến nguồn sạc. Máy còn tích hợp tính năng sạc nhanh giúp bạn giảm bớt thời gian chờ đợi mỗi khi sạc máy
Laptop HP Pavilion 14-dv2076TU  tích hợp hệ thống Âm thanh B&O đỉnh cao

Tích hợp hệ thống âm thanh Audio by Bang & Olufsen danh tiếng, HP Pavilion 14-dv2076TU sẽ mang lại cho bạn một chất âm tốt với những giai điệu trầm bổng sâu lắng. Sẽ thật tuyệt vời nếu bạn xem một bộ phim hấp dẫn trên chiếc máy này vì cả hình ảnh và âm thanh đều hoàn hảo.

Laptop HP Pavilion 14-dv2076TU 7C0P4PA
Đa dạng các kết nối tốc độ cao phổ biến hiên nay

Với một chiếc máy tính xách tay được định hướng cho phân khúc văn phòng thì đa dạng các chuẩn kết nối là điều quan trọng. HP Pavilion 14 đem đến cho người dùng nhưng kết nối tốc độ, linh hoạt và phổ biến nhất như cổng USB Type-C tốc độ tối đa lên tới 10Gbps hỗ trợ xuất hình ảnh cũng như sạc máy. Ngoài ra còn có các cổng USB A, HDMI và jack tai nghe/mic. Bạn sẽ không cần các đầu chuyển mà vẫn kết nối linh hoạt các thiết bị

Laptop HP Pavilion 14-dv2076TU 7C0P4PA',
        '18.690.000 ₫',
        '15.690.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        '96463408-4b50-48ec-a249-242bd6eba3ec',
        'HP',
        ' HP Pavilion 14-dv2032TU 6K768PA ',
        '',
        'Đặc điểm nổi bật của HP Pavilion 14-dv2032TU i7 1255U/6K768PA
HP Pavilion 14-dv2032TU i7 1255U/6K768PA
HP Pavilion 14-dv2032TU i7 1255U/6K768PA
HP Pavilion 14-dv2032TU i7 1255U/6K768PA
HP Pavilion 14-dv2032TU i7 1255U/6K768PA
HP Pavilion 14-dv2032TU i7 1255U/6K768PA
Đánh giá chi tiết HP Pavilion 14-dv2032TU i7 1255U/6K768PA

Sức mạnh hiệu năng vượt trội trong một thiết kế di động, HP Pavilion 14-dv2032TU tự tin hoàn thành mọi công việc của bạn với bộ vi xử lý Intel Core i7 thế hệ thứ 12 vô cùng mạnh mẽ. Hơn nữa, màn hình Full HD IPS sắc nét và âm thanh B&O đỉnh cao sẽ giúp bạn nâng tầm trải nghiệm giải trí.

HP Pavilion 14-dv2032TU (ảnh 1)
Hiệu năng dẫn đầu với Intel Core i7 Alder Lake

HP Pavilion 14-dv2032TU là chiếc laptop di động mạnh mẽ hàng đầu hiện nay khi được trang bị bộ vi xử lý Intel Core i7 1255U. Đây là con chip thuộc thế hệ thứ 12 Alder Lake mới nhất, có tới 10 lõi 12 luồng, tốc độ xung nhịp tối đa lên tới 4.70GHz, xử lý cực đỉnh ở cả tác vụ đơn nhân và đa nhân. Hơn nữa, GPU đồ họa tích hợp Intel Iris Xe cũng đáp ứng tốt nhu cầu làm việc đồ họa cơ bản như chỉnh ảnh, video. Mọi công việc đều được hoàn thành dễ dàng trên HP Pavilion 14-dv2032TU, từ những tác vụ thường ngày cho đến các ứng dụng chuyên sâu.

HP Pavilion 14-dv2032TU (ảnh 2)
SSD dung lượng cao 512GB

Trên HP Pavilion 14 dv2032TU, bạn không cần phải chờ đợi khi laptop trang bị 512GB SSD PCIe siêu tốc, giúp máy khởi động cực nhanh với chỉ vài giây. Không chỉ khởi động, tất cả những thao tác đều trở nên nhanh hơn, từ mở ứng dụng, di chuyển dữ liệu cho đến tắt máy. Ngoài ra, HP Pavilion 14 còn có sẵn 8GB RAM bộ nhớ kênh đôi, thoải mái cho hoạt động đa nhiệm, làm nhiều công việc cùng lúc.
Thiết kế thời trang, đậm cá tính

Không cần phải cầu kỳ nhưng HP Pavilion 14-dv2032TU vẫn toát lên sự đẳng cấp của dòng laptop doanh nhân. Kiểu dáng mỏng nhẹ, ngôn ngữ thiết kế hiện đại và hoàn thiện tinh tế tạo nên nét đẹp sang trọng. Máy chỉ mỏng 17mm và trọng lượng 1,41kg, nghĩa là tương đương những mẫu laptop màn hình 13,3 inch. Tính di động được nâng cấp vượt bậc, rất nhẹ nhàng để bạn mang đi bất cứ đâu. Phiên bản HP Pavilion trong bài còn thêm phần quyến rũ với màu vàng Gold nhẹ nhàng, thanh lịch, đẹp và thời trang.
Đặc điểm nổi bật của HP Pavilion 14-dv2032TU i7 1255U/6K768PA
HP Pavilion 14-dv2032TU i7 1255U/6K768PA
HP Pavilion 14-dv2032TU i7 1255U/6K768PA
HP Pavilion 14-dv2032TU i7 1255U/6K768PA
HP Pavilion 14-dv2032TU i7 1255U/6K768PA
HP Pavilion 14-dv2032TU i7 1255U/6K768PA
Đánh giá chi tiết HP Pavilion 14-dv2032TU i7 1255U/6K768PA

Sức mạnh hiệu năng vượt trội trong một thiết kế di động, HP Pavilion 14-dv2032TU tự tin hoàn thành mọi công việc của bạn với bộ vi xử lý Intel Core i7 thế hệ thứ 12 vô cùng mạnh mẽ. Hơn nữa, màn hình Full HD IPS sắc nét và âm thanh B&O đỉnh cao sẽ giúp bạn nâng tầm trải nghiệm giải trí.

HP Pavilion 14-dv2032TU (ảnh 1)
Hiệu năng dẫn đầu với Intel Core i7 Alder Lake

HP Pavilion 14-dv2032TU là chiếc laptop di động mạnh mẽ hàng đầu hiện nay khi được trang bị bộ vi xử lý Intel Core i7 1255U. Đây là con chip thuộc thế hệ thứ 12 Alder Lake mới nhất, có tới 10 lõi 12 luồng, tốc độ xung nhịp tối đa lên tới 4.70GHz, xử lý cực đỉnh ở cả tác vụ đơn nhân và đa nhân. Hơn nữa, GPU đồ họa tích hợp Intel Iris Xe cũng đáp ứng tốt nhu cầu làm việc đồ họa cơ bản như chỉnh ảnh, video. Mọi công việc đều được hoàn thành dễ dàng trên HP Pavilion 14-dv2032TU, từ những tác vụ thường ngày cho đến các ứng dụng chuyên sâu.

HP Pavilion 14-dv2032TU (ảnh 2)
SSD dung lượng cao 512GB

Trên HP Pavilion 14 dv2032TU, bạn không cần phải chờ đợi khi laptop trang bị 512GB SSD PCIe siêu tốc, giúp máy khởi động cực nhanh với chỉ vài giây. Không chỉ khởi động, tất cả những thao tác đều trở nên nhanh hơn, từ mở ứng dụng, di chuyển dữ liệu cho đến tắt máy. Ngoài ra, HP Pavilion 14 còn có sẵn 8GB RAM bộ nhớ kênh đôi, thoải mái cho hoạt động đa nhiệm, làm nhiều công việc cùng lúc.
Thiết kế thời trang, đậm cá tính

Không cần phải cầu kỳ nhưng HP Pavilion 14-dv2032TU vẫn toát lên sự đẳng cấp của dòng laptop doanh nhân. Kiểu dáng mỏng nhẹ, ngôn ngữ thiết kế hiện đại và hoàn thiện tinh tế tạo nên nét đẹp sang trọng. Máy chỉ mỏng 17mm và trọng lượng 1,41kg, nghĩa là tương đương những mẫu laptop màn hình 13,3 inch. Tính di động được nâng cấp vượt bậc, rất nhẹ nhàng để bạn mang đi bất cứ đâu. Phiên bản HP Pavilion trong bài còn thêm phần quyến rũ với màu vàng Gold nhẹ nhàng, thanh lịch, đẹp và thời trang.

HP Pavilion 14-dv2032TU (ảnh 3)
Tận hưởng âm thanh B&O cực đã

Với loa kép HP Dual Speakers, công nghệ Audio Boost của HP và những tinh chỉnh từ đội ngũ chuyên gia tại B&O, bạn sẽ được trải nghiệm âm thanh mạnh mẽ đích thực trên HP Pavilion 14-dv2032TU. Những bộ phim, chương trình truyền hình hay tựa game yêu thích giờ đây sẽ được thể hiện một cách chân thực, sống động với âm thanh lớn và rõ ràng.

HP Pavilion 14-dv2032TU (ảnh 4)
Hiển thị đẹp, tấm nền bảo vệ mắt

Viền màn hình HP Pavilion 14-dv2032TU tiếp tục được thu gọn, tạo hiệu ứng màn hình tràn viền hấp dẫn. Bạn sẽ được tối đa hóa tầm nhìn, nhiều không gian hiển thị hơn, làm việc hiệu quả và giải trí hấp dẫn hơn. Chất lượng từ màn hình 14 inch IPS Full HD mang lại hình ảnh sắc nét, màu sắc chân thực và sống động đến từng chi tiết. Màn hình HP này còn có công nghệ DC Dimming chống nhấp nháy và công nghệ Eyesafe Display giảm ánh sáng xanh, giúp đôi mắt của bạn luôn thoải mái trong suốt quá trình sử dụng.

HP Pavilion 14-dv2032TU (ảnh 5)
Tăng cường chất lượng cuộc gọi video

Những cuộc gọi video của bạn giờ đây sẽ có chất lượng vượt trội ở cả hình ảnh lẫn âm thanh. Webcam HP Wide Vision 720p HD cho góc nhìn rộng, hình ảnh sắc nét và cả tính năng giảm nhiễu, giúp bạn luôn rõ nét trong khung hình. Bên cạnh đó, micro kép và khả năng chống ồn mang lại giọng nói rõ ràng, để bạn không bỏ qua bất kỳ khoảnh khắc nào trong cuộc họp.
Chế độ chờ thông minh

Chế độ chờ là tính năng mà người dùng thường xuyên sử dụng trên laptop. Máy tính HP này hiểu điều đó và tạo ra tính năng chế độ chờ luôn luôn kết nối. Email, thông báo đều sẽ được cập nhật kể cả khi bạn sử dụng chế độ chờ, vì thế tất cả sẽ diễn ra liền mạch khi bạn quay trở lại làm việc.

HP Pavilion 14-dv2032TU (ảnh 6)
Thời lượng pin ấn tượng

HP Pavilion 14-dv2032TU là chiếc laptop có thời lượng pin rất tốt khi bạn có thể sử dụng lên tới khoảng 7-8h, tương đương với một ngày làm việc mà không cần phải sạc. Ngay cả khi hết pin, máy cũng phục hồi năng lượng cực nhanh nhờ công nghệ sạc nhanh HP. Chỉ mất 45 phút, chiếc HP Pavilion 14 của bạn đã sạc đầy từ 0 lên 50% pin, sẵn sàng tiếp tục công việc.
HP Pavilion 14-dv2032TU (ảnh 3)
Tận hưởng âm thanh B&O cực đã

Với loa kép HP Dual Speakers, công nghệ Audio Boost của HP và những tinh chỉnh từ đội ngũ chuyên gia tại B&O, bạn sẽ được trải nghiệm âm thanh mạnh mẽ đích thực trên HP Pavilion 14-dv2032TU. Những bộ phim, chương trình truyền hình hay tựa game yêu thích giờ đây sẽ được thể hiện một cách chân thực, sống động với âm thanh lớn và rõ ràng.

HP Pavilion 14-dv2032TU (ảnh 4)
Hiển thị đẹp, tấm nền bảo vệ mắt

Viền màn hình HP Pavilion 14-dv2032TU tiếp tục được thu gọn, tạo hiệu ứng màn hình tràn viền hấp dẫn. Bạn sẽ được tối đa hóa tầm nhìn, nhiều không gian hiển thị hơn, làm việc hiệu quả và giải trí hấp dẫn hơn. Chất lượng từ màn hình 14 inch IPS Full HD mang lại hình ảnh sắc nét, màu sắc chân thực và sống động đến từng chi tiết. Màn hình HP này còn có công nghệ DC Dimming chống nhấp nháy và công nghệ Eyesafe Display giảm ánh sáng xanh, giúp đôi mắt của bạn luôn thoải mái trong suốt quá trình sử dụng.

HP Pavilion 14-dv2032TU (ảnh 5)
Tăng cường chất lượng cuộc gọi video

Những cuộc gọi video của bạn giờ đây sẽ có chất lượng vượt trội ở cả hình ảnh lẫn âm thanh. Webcam HP Wide Vision 720p HD cho góc nhìn rộng, hình ảnh sắc nét và cả tính năng giảm nhiễu, giúp bạn luôn rõ nét trong khung hình. Bên cạnh đó, micro kép và khả năng chống ồn mang lại giọng nói rõ ràng, để bạn không bỏ qua bất kỳ khoảnh khắc nào trong cuộc họp.
Chế độ chờ thông minh

Chế độ chờ là tính năng mà người dùng thường xuyên sử dụng trên laptop. Máy tính HP này hiểu điều đó và tạo ra tính năng chế độ chờ luôn luôn kết nối. Email, thông báo đều sẽ được cập nhật kể cả khi bạn sử dụng chế độ chờ, vì thế tất cả sẽ diễn ra liền mạch khi bạn quay trở lại làm việc.

HP Pavilion 14-dv2032TU (ảnh 6)
Thời lượng pin ấn tượng

HP Pavilion 14-dv2032TU là chiếc laptop có thời lượng pin rất tốt khi bạn có thể sử dụng lên tới khoảng 7-8h, tương đương với một ngày làm việc mà không cần phải sạc. Ngay cả khi hết pin, máy cũng phục hồi năng lượng cực nhanh nhờ công nghệ sạc nhanh HP. Chỉ mất 45 phút, chiếc HP Pavilion 14 của bạn đã sạc đầy từ 0 lên 50% pin, sẵn sàng tiếp tục công việc.',
        '22.890.000 ₫',
        '19.790.000 ₫ [Giá đã có V',
        999
    ),
    (
        '7ea4093e-4799-44ab-8f96-889cbe982110',
        'HP',
        ' HP Pavilion 15-eg2087TU 7C0Q9PA ',
        '',
        'Laptop HP Pavilion 15-eg2087TU 7C0Q9PA (Core i3 1215U/ 8GB/ 256GB SSD/ Intel UHD Graphics/ 15.6inch Full HD/ Windows 11 Home/ Silver/ Hợp kim nhôm)

Là dòng sản phẩm laptop văn phòng với thiết kế cực kỳ sang trọng, màn hình lớn cùng hiệu nẳng ổn định, laptop HP Pavilion 15-eg2087TU 7C0Q9PA hứa hẹn sẽ mang dến cho người dùng trải nghiệm sử dụng tốt nhất, trở thành cánh tay phải đắc lực hỗ trợ hoàn hảo cho các tác vụ công việc của bạn.

Laptop HP Pavilion 15-eg2087TU 7C0Q9PA
Ngoại hình trang nhã, sang trọng

Ngoại hình của laptop HP Pavilion 15-eg2087TU 7C0Q9PA được thiết kế rất tinh tế và tỉ mỉ, phần vỏ ngoài của máy được làm từ kim loại màu Bạc Silver lấp lánh, khi chạm vào cho cảm giác rất mịn và mát tay, ngoài ra còn rất cứng cáp và đảm bảo độ bền cho thiết bị. Bạn có thể thoải mái sử dụng laptop trong thời gian dài, vỏ ngoài của máy không bám vân tay và các góc máy cũng được bo tròn rất tinh tế. Chiếc laptop này có trọng lượng chỉ khoảng 1.74kg, dày 18mm cực thuận tiện để bạn bỏ vào túi xách hoặc balo để mang theo tới bất cứ nơi đâu.

Laptop HP Pavilion 15-eg2087TU 7C0Q9PA
Hiệu năng ổn định, bền bỉ

Được trang bị CPU Intel Core i3-1215U, laptop HP Pavilion 15-eg2087TU 7C0Q9PA sở hữu hiệu năng mạnh mẽ với tốc độ đạt 3.3Ghz – 4.4GHz, bộ nhớ đệm Cache 10MB cùng con chip 6 lõi CPU, 8 luồng.

HP Pavilion 15-eg2087TU 7C0Q9PA còn sở hữu bộ nhớ trong 8Gb RAM giúp máy thực hiện các công việc văn phòng một cách mượt mà, cho phép bạn xử lý nhiều tác vụ trong cùng lúc mà không xảy ra hiện tượng giật lag. Ổ cứng 256Gb SSD cung cấp cho bạn một không gian lưu trữ lớn để bạn thoải mái lưu lại các file dữ liệu mà không cần lo lắng về dung lượng bộ nhớ. Ngoài ra, ổ cứng dung lượng cao này còn góp phần giúp bạn khởi động máy tính nhanh hơn, truy cập và các ứng dụng tốc độ hơn.

Không những thế, chiếc máy laptop HP này còn được trang bị thêm một chiếc card đồ họa tích hợp Intel UHD Graphics giúp bạn xem phim, giải trí nhẹ nhàng

Laptop HP Pavilion 15-eg2087TU 7C0Q9PA
Màn hình hiển thị sống động

Sở hữu màn hình lớn 15.6inch, HP Pavilion 15-eg2087TU 7C0Q9PA mang lại cho bạn những khung hình sắc nét nhờ tấm nền IPS cao cấp góc nhìn rộng tới gần 180 độ. Màn hình có độ phân giản Full HD sắc nét, có khả năng hiển thị những khung hình sống động để bạn xử lý công việc một cách chính xác nhất. Với thiết kế viền màn hình mỏng, độ sáng 250 nits, 45% NTSC cho bạn tập trung hơn vào công việc, đắm chìm trong không gian riêng để đạt được hiệu suất làm việc tốt nhất.

Laptop HP Pavilion 15-eg2087TU 7C0Q9PA
Bàn phím và touchpad chất lượng

Laptop HP Pavilion 15-eg2087TU 7C0Q9PA được trang bị bàn phím kích thước fullsize với đầy đủ các phím chức năng và cụm phím số Numpad để bạn tha hồ thực hiện các tác vụ liên quan tới tính toán và nhập liệu hoặc làm việc với các con số. Khoảng cách giữa các phím được thiết kế hợp lý, độ nảy phím tốt cho bạn thoải mái gõ phím mà không bị mỏi tay. Phần Touchpad của laptop được thiết kế với bề mặt nhám lỳ với màu sắc tương đồng với vỏ máy, cho bạn cảm giác sử dụng mượt mà và chính xác khi thao tác.

Laptop HP Pavilion 15-eg2087TU 7C0Q9PA
Đầy đủ kết nối

Mặc dù sở hữu một vẻ ngoài rất mỏng và nhẹ, thế nhưng laptop HP Pavilion 15-eg2087TU 7C0Q9PA vẫn được trang bị đầy đủ các cổng kết nối Input và Output để bạn thoải mái sử dụng. Dọc hai bên thành máy là các cổng kết nối thông dụng giúp bạn kết nối dễ dàng với các thiết bị ngoại vi. Ngoài ra kết nối Wi-Fi và Bluetooth hiện đại cũng được trang bị, đảm bảo các kết nối trực tuyến của bạn luôn được ổn định, mượt mà.

Laptop HP Pavilion 15-eg2087TU 7C0Q9PA',
        '15.290.000 ₫',
        '11.990.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        'e71bd252-4349-412e-b562-d921a555bc94',
        'HP',
        ' HP Pavilion 15-eg2089TU 7C0R1PA ',
        '',
        'Đặc điểm nổi bật của Laptop HP Pavilion 15-eg2089TU i7-1260P

Mạnh mẽ, mỏng nhẹ và phong cách, HP Pavilion 15-eg2089TU chính là chiếc laptop hiện đại phù hợp cho cả sinh viên, nhân viên văn phòng, doanh nhân. Hiệu năng đáng kinh ngạc từ bộ vi xử lý Intel Core i7 1240P sẽ giúp bạn hoàn thành mọi việc trong giây lát.

HP Pavilion 15-eg2089TU (ảnh 1)
Kiểu dáng sang, xịn, mịn

HP Pavilion 15 eg2089TU là chiếc laptop có vẻ ngoài hiện đại, với phong cách tối giản nhưng vẫn hết sức thời trang. Phiên bản màu vàng Gold và chất liệu nhôm tạo nên sự cao cấp cả khi nhìn vào lẫn sử dụng. Logo HP bóng bẩy, màu vàng kim loại nhẹ nhàng, viền màn hình siêu mỏng cùng kích thước tổng thể mỏng nhẹ giúp laptop vừa hấp dẫn lại vừa có tính di động cao. HP Pavilion 15 có trọng lượng chỉ 1,72kg và độ mỏng 17,9mm, rất dễ dàng để cho vào cặp xách, balo di chuyển một cách nhẹ nhàng.

HP Pavilion 15-eg2089TU (ảnh 2)
Cấu hình cực đỉnh từ bộ vi xử lý chuyên nghiệp

HP Pavilion 15-eg2089TU xứng tầm là chiếc laptop doanh nhân hàng đầu khi trang bị bộ vi xử lý Intel Core i7 1260P. Đây là con chip thuộc dòng P hiệu năng cao với 12 nhân 16 luồng, tốc độ tối đa 4.70 GHz, mang đến khả năng xử lý tầm vóc máy tính để bàn trong một chiếc laptop mỏng nhẹ. Bạn có thể chạy các ứng dụng nặng, mở những tệp tin lớn, xử lý các phần mềm chuyên nghiệp một cách mượt mà.

HP Pavilion 15-eg2089TU (ảnh 3)
SSD dung lượng cao 512GB, thỏa sức lưu trữ, không phải chờ đợi

Trên HP Pavilion 15 eg2089TU, bạn không cần phải chờ đợi khi laptop trang bị 512GB SSD PCIe siêu tốc, giúp máy khởi động cực nhanh với chỉ vài giây. Không chỉ khởi động, tất cả những thao tác đều trở nên nhanh hơn, từ mở ứng dụng, di chuyển dữ liệu cho đến tắt máy. Đặc biệt, HP Pavilion 15-eg2089TU còn trang bị sẵn tới 16GB RAM, mang tới khả năng đa nhiệm hoàn hảo. Bạn có thể làm nhiều việc cùng lúc, chạy với nhiều chương trình, duyệt web nhiều tab mà máy tính vẫn chạy ổn định, không có bất cứ vấn đề gì.

HP Pavilion 15-eg2089TU (ảnh 4)
Chế độ chờ luôn luôn kết nối

Chế độ chờ là tính năng mà người dùng thường xuyên sử dụng trên laptop. HP Pavilion 15 eg2089TU hiểu điều đó và tạo ra tính năng chế độ chờ luôn luôn kết nối. Email, thông báo đều sẽ được cập nhật kể cả khi bạn sử dụng chế độ chờ, vì thế tất cả sẽ diễn ra liền mạch khi bạn quay trở lại làm việc.

HP Pavilion 15-eg2089TU (ảnh 5)
Thời lượng pin lên tới 8 giờ

HP Pavilion 15 eg2089TU là chiếc laptop có thời lượng pin rất tốt khi bạn có thể sử dụng lên tới khoảng 7-8h, tương đương với một ngày làm việc mà không cần phải sạc. Ngay cả lúc hết pin, máy cũng phục hồi năng lượng cực nhanh nhờ công nghệ sạc nhanh HP. Chỉ mất 45 phút, chiếc HP Pavilion 15 của bạn đã sạc đầy từ 0 lên 50% pin, sẵn sàng tiếp tục công việc.

HP Pavilion 15-eg2089TU (ảnh 6)
Tận hưởng chất âm riêng biệt từ B&O

Với loa kép HP Dual Speakers, công nghệ HP Audio Boost và những tinh chỉnh từ đội ngũ chuyên gia tại B&O, bạn sẽ được trải nghiệm âm thanh mạnh mẽ đích thực trên laptop HP Pavilion 15. Những bộ phim, chương trình truyền hình hay tựa game yêu thích giờ đây sẽ được thể hiện một cách chân thực, sống động với âm thanh lớn và rõ ràng.

HP Pavilion 15-eg2089TU (ảnh 7)
Kết nối dễ dàng

Tận hưởng tốc độ kết nối không dây mượt mà với chuẩn WiFi 6 và Bluetooth 5.2 chuẩn mới trên HP Pavilion 15 eg2089TU. Bạn có thể dễ dàng kết nối với các mạng WiFi công cộng nơi đông người, hay kết nối với các thiết bị không dây như chuột, tai nghe TrueWireless không độ trễ. Không chỉ kết nối có dây, phần kết nối không dây cũng rất đầy đủ với cổng USB Type-C (tích hợp Power Delivery, DisplayPort 1.4); 2 cổng USB Type-A; HDMI và jack tai nghe/mic.

HP Pavilion 15-eg2089TU (ảnh 8)
Chất lượng hình ảnh vượt trội

Thưởng thức hình ảnh rõ nét trên màn hình lớn 15,6 inch độ phân giải Full HD, tấm nền IPS cho góc rộng tới 178 độ trên HP Pavilion 15. Hình ảnh sẽ luôn hiển thị sáng, trong trẻo và sống động ở mọi góc nhìn. Màn hình HP 15 mới còn có công nghệ DC Dimming chống nhấp nháy và công nghệ Eyesafe Display giảm ánh sáng xanh, giúp đôi mắt của bạn luôn thoải mái trong suốt quá trình sử dụng.',
        '23.990.000 ₫',
        '19.900.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        'dd40d5e1-b512-488e-95f6-d0c91d3f1f4d',
        'HP',
        ' HP Pavilion 15-eg2085TU 7C0Q7PA ',
        '',
        '
Được tích hợp bộ vi xử lý Intel Core i5 thế hệ 12 tân tiến, màn hình rộng 15.6 inch cùng lối thiết kế tinh tế, laptop HP Pavilion 15 eg2085TU i5 (7C0Q7PA) là lựa chọn lý tưởng trong tầm giá khi chọn mua laptop học tập - văn phòng.

• Bộ vi xử lý Intel Core i5 1240P có tốc độ CPU cao, giúp cho máy hoạt động mượt mà nhằm hỗ trợ bạn xử lý công việc nhanh hơn. Card đồ họa tích hợp Intel Iris Xe Graphics có thể vận hành tác vụ đồ họa trên các ứng dụng Adobe một cách tốt hơn.

• Với hai thanh RAM 4 GB (tổng 8 GB) chạy Dual Channel, laptop HP Pavilion có thể xử lý nhiều tác vụ cùng lúc mà không bị giật lag. Ổ cứng SSD 256 GB NVMe PCIe rút ngắn thời gian mở và lưu trữ các tập tin.

• Màn hình 15.6 inch rộng rãi với độ phân giải Full HD (1920 x 1080) cho chất lượng hiển thị cao. Công nghệ BrightView và IPS của màn hình cung cấp màu sắc sống động, nịnh mắt, cho người dùng trải nghiệm giải trí và làm việc tốt hơn.

• Laptop HP được tích hợp công nghệ Realtek High Definition Audio đem đến cho người dùng chất lượng âm thanh stereo trung thực với bass tốt và treble đều khi nghe nhạc, xem phim hoặc chơi game.

• Thiết kế vỏ nhựa cứng cáp giúp bảo vệ laptop khỏi các tác nhân gây hư hỏng và trầy xước, chiếu nghỉ tay bằng kim loại làm tăng sự sang trọng khi cầm nắm trên tay.

• Cổng kết nối đáp ứng mọi nhu cầu: Jack tai nghe 3.5 mm, USB 3.2, HDMI, USB Type-C
',
        '18.790.000 ₫',
        '15.690.000 ₫ [Giá đã có VAT',
        999
    ),
    (
        '0ee3faff-c33f-4531-84a1-d40e469dfe5e',
        'HP',
        ' HP Pavilion 15-eg2086TU 7C0Q8PA ',
        '',
        '
Laptop HP Pavilion 15 eg2086TU i3 (7C0Q8PA) sở hữu cấu hình mạnh mẽ với bộ vi xử lý Intel thế hệ 12, RAM 8 GB và ổ cứng SSD NVMe PCIe giúp bạn hoàn thành các công việc văn phòng một cách nhanh chóng, hiệu quả. Một chiếc laptop học tập - văn phòng đáng để bạn cân nhắc chọn mua.

• Bộ vi xử lý Intel Core i3 1215U và card đồ họa Intel UHD Graphics cho phép người dùng vận hành hoàn hảo mọi tác vụ học tập, văn phòng trên Word, Excel, PowerPoint,... hay thậm chí thực hiện chỉnh sửa hình ảnh 2D đơn giản bằng Photoshop.

• Laptop HP Pavilion được trang bị một thanh RAM 8 GB cung cấp đủ không gian cho hệ điều hành và các chương trình hoạt động mượt mà, dễ dàng nâng cấp lên tối đa 32 GB để nâng cao hiệu suất xử lý.

• Ổ cứng SSD 256 GB NVMe PCIe cung cấp không gian lưu trữ vừa đủ để bạn tải hình ảnh, video, tài liệu,... đồng thời tăng tốc độ hoạt động của hệ điều hành và các chương trình đang chạy.

• Màn hình 15.6 inch độ phân giải Full HD (1920 x 1080) kèm tấm nền IPS mở rộng góc nhìn, có thể hiển thị với độ sắc nét cao để làm việc văn phòng. Công nghệ BrightView cung cấp độ sáng tự nhiên và giảm thiểu bóng rọi, giúp bạn có một trải nghiệm xem phim và làm việc tốt hơn.

• Công nghệ HP Audio Boost kết hợp với Bang & Olufsen audio cung cấp cho bạn trải nghiệm chất lượng âm thanh tuyệt vời, có thể tái tạo những âm sắc một cách sống động và chân thực hơn.

• Laptop HP được hoàn thiện bởi hai chất liệu: Vỏ nhựa và chiếu nghỉ tay bằng kim loại làm tăng thêm sự sang trọng cho laptop, khối lượng 1.74 kg không quá nặng để bạn có thể mang theo bên mình phục vụ cho công việc ở mọi nơi.

• Cổng kết nối đáp ứng mọi nhu cầu: USB Type-C, Jack tai nghe 3.5 mm, USB 3.2 và HDMI.
',
        '15.290.000 ₫',
        '11.990.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        '441545fb-974e-4ca5-ae8b-0a7a16c527b9',
        'HP',
        ' HP Pavilion 14-dv2077TU 7C0W3PA ',
        '',
        'Ngay từ cái nhìn đầu tiên, chúng ta sẽ có thể ngay lập tức bị thủ hút bởi vẻ ngoài cực kì ấn tượng của chiếc Laptop HP Pavilion 14-dv2077TU 7C0W3PA. Sở hữu hữu thiết kế tối giản cùng tông màu trắng bạc cực kì sang trọng, triết lý thiết kế tuyệt vời đã giúp những chiếc laptop HP có thể phù hợp với mọi nhu cầu, sở thích hay không gian làm việc. Với trọng lượng chỉ 1,41 kg cùng kích thước (Dài x Rộng x Cao) 32,5 x 21,66 x 1,7 cm siêu nhỏ gọn, Laptop HP Pavilion 14-dv2077TU 7C0W3PA sẽ là người bạn tuyệt vời cùng đồng hành với các bạn mọi lúc, mọi nơi mỗi khi cần sử dụng.',
        '18.690.000 ₫',
        '15.490.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        '55a16ad0-7a25-412a-935e-94518ce070a1',
        'HP',
        ' HP Pavilion 14-dv2071TU 7C0W0PA ',
        '',
        'Laptop HP Pavilion 14 dv2071TU i7 1255U (7C0W0PA) chắc chắn sẽ là sự lựa chọn hoàn toàn phù hợp với những bạn sinh viên còn đang đi học hay những người đi làm với diện mạo thời thượng, sang trọng cùng thông số cấu hình tân tiến, đáp ứng hiệu quả mọi tác vụ công việc và giải trí đa phương tiện hàng ngày.

• Laptop HP được trang bị chip Intel Core i7 1255U đi kèm card tích hợp Intel Iris Xe Graphics hỗ trợ vận hành trơn tru không chỉ đối với các tác vụ doanh nghiệp, học tập và giải trí thường ngày mà còn đáp ứng với các công việc thiết kế hình ảnh, edit video đơn giản và chơi game thịnh hành một cách hiệu quả.

• Dung lượng RAM 16 GB có hỗ trợ nâng lên tối đa 32 GB mang đến bộ nhớ tạm tương đối lớn để bạn vừa có thể mở nhiều trình duyệt cùng lúc khi làm việc, chuyển qua lại mượt mà, không bị giật lag. Ổ đĩa cứng SSD 512 GB NVMe PCIe xử lý và khởi động hệ thống nhanh chóng hơn đáng kể, lưu trữ thoải mái mà không lo hết tài nguyên.',
        '25.190.000 ₫',
        '20.990.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        '3087a918-7ce4-40b0-9765-616e94410a72',
        'HP',
        ' HP Pavilion x360 14-ek1047TU 80R25PA ',
        '',
        'Laptop HP Pavilion X360 14 ek1047TU i7 1355U (80R25PA) thuộc dòng laptop cao cấp - sang trọng với khả năng gập 360 độ cùng bộ xử lý i7 thế hệ 13, thích hợp cho những tác vụ văn phòng, sáng tạo hay đồ họa, sẽ là một người trợ thủ đắc lực của bạn.

• Bộ vi xử lý Intel Core i7 Raptor Lake - 1355U mạnh mẽ, ngoài cho phép bạn hoàn thành tốt các công việc văn phòng, xem phim, giải trí mà còn hỗ trợ viết code ổn. Card đồ họa tích hợp Intel Iris Xe Graphics hỗ trợ người dùng chỉnh sửa ảnh, render video ngắn,... trên các ứng dụng đồ họa Adobe và chơi được một số tựa game thông dụng hiện nay như Liên Quân Mobile, LOL,...

• RAM 16 GB biến việc mở nhiều tab trở nên dễ dàng, trơn tru, hạn chế tình trạng giật lag, đáp ứng tốt nhu cầu học tập và làm việc. Ổ cứng SSD 512 GB NVMe PCIe cho không gian lưu trữ tốt để phục vụ việc lưu trữ các dữ liệu, tài liệu học tập và hỗ trợ việc mở ứng dụng, khởi động máy nhanh hơn, cũng như tăng cường tốc độ truy xuất dữ liệu.

• Màn hình 14 inch có độ phân giải Full HD (1920 x 1080) kết hợp cùng tấm nền IPS cho pho phép hình ảnh hiển thị tốt, màu sắc tái tạo hài hòa, trung thực. Tích hợp thêm màn hình cảm ứng cho phép thao tác vuốt, chạm, note thông tin một cách nhanh chóng cùng khả năng gập 360 độ cho phép bạn lựa chọn các tư thế làm việc phù hợp, tạo thêm nguồn cảm hứng trong công việc và xem phim.',
        '27.290.000 ₫',
        '23.990.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        'e82cc807-90e4-4e63-96ba-e4df09657ae5',
        'HP',
        ' HP Pavilion 15-eg2088TU 7C0R0PA ',
        '',
        '
Laptop HP Pavilion 15 eg2088TU i7 (7C0R0PA) sẽ là lựa chọn tốt cho người dùng muốn tìm một chiếc laptop học tập - văn phòng đa năng, có thể đáp ứng hoàn hảo cho các tác vụ công việc và giải trí hằng ngày.

• Bội đôi hiệu năng cao Intel Core i7 1260P và card tích hợp Intel Iris Xe Graphics cho phép người dùng hoàn thành công việc văn phòng trên Word, Excel, PowerPoint hay các sản phẩm của Google mượt mà, thậm chí còn có thể chỉnh sửa hình ảnh 3D và chơi game ở mức cấu hình trung bình.

• Với RAM 16 GB bạn có thể mở nhiều tab trên trình duyệt, chạy nhiều chương trình một cùng lúc mà không bị chậm hay lag máy. Ổ cứng SSD 512 GB NVMe PCIe có khả năng đọc, ghi dữ liệu nhanh hơn so với các loại ổ cứng HDD cũ, khiến mọi thao tác đều trở nên mượt mà hơn.

• Kích thước màn hình 15.6 inch cung cấp cho bạn diện tích lớn để hiển thị nhiều thông tin cùng lúc và giúp bạn làm việc hiệu quả hơn. Tấm nền IPS giúp mở rộng góc nhìn, độ phân giải Full HD (1920 x 1080) cho hình ảnh rõ và chi tiết, công nghệ BrightView giúp cải thiện độ sáng nhằm tái tạo hình ảnh tốt hơn.

• Công nghệ Realtek High Definition Audio trên laptop HP tái tạo hoàn hảo âm thanh chất lượng cao, rõ ràng khi người dùng nghe nhạc, xem phim và chơi game, đi kèm tính năng âm thanh số như EQ để người dùng tinh chỉnh tùy theo nhu cầu.

• Laptop sở hữu lối thiết kế sang trọng nhờ sự kết hợp giữa lớp vỏ nhựa và chiếu nghỉ tay bằng kim loại sơn màu vàng đẹp mắt, thu hút mọi ánh nhìn khi bạn sử dụng ở nơi đông người.

• Laptop HP Pavilion có nhiều cổng kết nối: Jack tai nghe 3.5 mm, USB 3.2, HDMI và USB Type-C.
',
        '25.290.000 ₫',
        '21.490.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        '3afa5e8a-060a-4d87-8c36-16ac56f67679',
        'HP',
        ' HP Pavilion x360 14-ek1049TU 80R27PA ',
        '',
        'ĐẶC ĐIỂM NỔI BẬT

    Màn hình 14 inch Full HD giúp tái tạo hình ảnh với màu sắc tươi tắn và độ chi tiết cao
    CPU Intel Core i5 1335U đáp ứng mượt mà các tác vụ như Word, Excel,... hay chính sửa ảnh cơ bản
    RAM 16 GB rất mượt mà, chuyển qua lại giữa nhiều ứng dụng mà không lo lag, giật
    Ổ cứng SSD 512 GB NVMe PCIe có tốc độ truy xuất dữ liệu cao, khởi động máy nhanh chóng
    Hệ thống loa B&O tích hợp cùng công nghệ Realtek High Definition Audio nâng trải nghiệm giải trí',
        '24.190.000 ₫',
        '20.990.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        'ae782359-b3e6-4a8e-88c1-5657ae2057cb',
        'HP',
        ' HP Pavilion 15-eg3033TX 8U6L6PA ',
        '',
        'Laptop HP Pavilion 15-eg3033TX 8U6L6PA

Laptop HP Pavilion 15-eg3033TX 8U6L6PA với CPU Intel thế hệ 13, đáng kinh ngạc trong hiệu suất cùng với card đồ hoạ rời và các tính năng tân tiến khác hứa hẹn mang đến trải nghiệm sử dụng chuyên nghiệp, hoàn thành tốt cả công việc văn phòng và đồ họa, đồng thời thiết kế nhỏ gọn phù hợp với mọi không gian.

Con chip Intel Core i5 1335U mang lại khả năng xử lý ổn định với hiệu suất tốt, giúp bạn thực hiện các công việc từ văn phòng đến giải trí đa phương tiện một cách hiệu quả. Thêm vào đó, card đồ họa NVIDIA® GeForce® MX550 trên laptop HP Pavilion giúp tái tạo hình ảnh tốt hơn và xử lý tệp 4K nhanh chóng. Điều này mang đến chất lượng hình ảnh sắc nét đáng kinh ngạc khi xem phim và tương thích tốt với các phần mềm đồ hoạ và chỉnh sửa ảnh.',
        '22.290.000 ₫',
        '19.290.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        'ea2b7f01-a3b2-4b00-a2f8-bdfffafc18a4',
        'HP',
        ' HP Pavilion 15-eg3035TX 8U6L7PA ',
        '',
        'Laptop học tập - văn phòng đến từ thương hiệu HP mang ngoại hình hiện đại, tối giản đi kèm với thông số vượt trội của con chip Intel i7 thế hệ 13, card đồ hoạ rời cùng đầy đủ các tính năng tân tiến. Laptop HP Pavilion 15 eg3035TX i7 1355U (8U6L7PA) sẽ mang đến cho người dùng trải nghiệm sử dụng chuyên nghiệp và tuyệt vời.

• Laptop HP sở hữu chip Intel Core i7 1355U thế hệ 13 có tốc độ xung nhịp tối đa Turbo Boost 5.0 GHz nâng cao hiệu suất làm việc văn phòng, mang đến khả năng tạo nội dung trên các phần mềm thiết kế và tốc độ chơi game cũng nhanh hơn, thoải mái cho việc coding hay đáp ứng mạnh mẽ được nhu cầu của các dân văn phòng.

• Bên cạnh đó, việc tích hợp với card rời NVIDIA GeForce MX550 2 GB giúp việc tái tạo và dựng hình ảnh tốt hơn, xuất tệp 4K nhanh chóng để mang đến chất lượng hình ảnh sắc nét đáng kinh ngạc khi xem phim giải trí, đồng thời điều này cũng mang đến sự tương thích tuyệt vời với các phần mềm đồ hoạ, edit nhà Adobe.

• Laptop với RAM 16 GB cho phép chạy đa nhiệm mượt mà các tác vụ từ cơ bản đến nâng cao, có thể mở cùng lúc nhiều ứng dụng và đáp ứng tốt công việc thiết kế đồ họa bằng Photoshop, AI, Premiere,... Máy cũng hỗ trợ cho bạn có thể nâng cấp lên tối đa 32 GB để phục vụ các nhu cầu làm việc cao hơn.

• Ổ cứng SSD 512 GB NVMe PCIe vừa cung cấp dung lượng lưu trữ đầy đủ cho mọi tài liệu, vừa giúp truy xuất và khởi các ứng dụng nhanh chóng chỉ trong vài giây.

• Màn hình với kích thước 15.6 inch có độ phân giải Full HD (1920 x 1080) cho không gian trải nghiệm đa nội dung, thoáng mắt, hình ảnh chi tiết và rõ ràng nhất để bạn làm việc và giải trí thoải mái. Ngoài ra, công nghệ chống chói Anti Glare cùng với tấm nền IPS mang đến góc nhìn rộng hơn từ nhiều hướng và có thể sử dụng máy dưới ánh sáng gắt mà không lo bị chói mắt, mỏi mắt.',
        '26.590.000 ₫',
        '23.990.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        'e05a33e0-07f7-4cfe-9670-5ec2065a0188',
        'HP',
        ' HP Pavilion 15-eg3112TU 8U6L9PA ',
        '',
        'ĐẶC ĐIỂM NỔI BẬT

    Sở hữu thiết kế sang trọng với lớp vỏ màu bạc tinh tế
    Màn hình 15.6 inch Full HD cho hình ảnh sắc nét, màu sắc chân thực, hỗ trợ làm việc, học tập hay giải trí thoải mái
    CPU Intel Core i7-1335U đáp ứng tốt các tác vụ học tập và làm việc hay chỉnh sửa hình ảnh cơ bản
    Ổ cứng 512GB SSD cho không gian lưu trữ lớn, khởi động máy, mở ứng dụng nhanh chóng
    RAM 16GB cho phép laptop chạy nhiều tác vụ cùng lúc và xử lý dữ liệu mượt mà hơn
    Đầy đủ các cổng kết nối cho phép kết nối với các thiết bị ngoại vi dễ dàng’',
        '25.290.000 ₫',
        '21.990.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        'e6baccd9-ee71-42f6-beb1-a1158b476cff',
        'HP',
        ' HP Pavilion 14-dv2074TU 7C0P3PA ',
        '',
        'Laptop HP Pavilion 14 dv2074TU i5 (7C0P3PA) không chỉ sở hữu kiểu dáng thiết kế thời thượng với tông màu vàng bắt mắt mà còn mang trong mình sức mạnh tối ưu đến từ bộ vi xử lý Intel Gen 12 dòng U, một chiếc laptop học tập - văn phòng đáng để bạn thêm vào giỏ hàng.

• Bộ vi xử lý Intel Core i5 1235U cùng card tích hợp Intel Iris Xe Graphics đảm bảo vận hành hoàn hảo mọi tác vụ làm việc văn phòng như Word, Excel, PowerPoint,... hay thậm chí thực hiện những bản thiết kế đồ họa đặc sắc trên phần mềm của Adobe mà vẫn tối ưu mức độ điện năng tiêu thụ.

• Bộ nhớ RAM DDR4 8 GB cho phép bạn thực hiện đa nhiệm mượt mà, có thể nâng cấp lên đến tối đa 32 GB để nâng cao hiệu quả xử lý công việc. Ổ cứng SSD 512 GB chuẩn NVMe PCIe có tốc độ truy xuất dữ liệu siêu nhanh, khiến cho mọi thao tác đều được phản hồi tức thì, không gian đủ cho những tệp tài liệu cần thiết.

• Laptop HP Pavilion được trang bị màn hình 14 inch độ phân giải Full HD (1920 x 1080), kết hợp cùng tấm nền IPS giúp nâng cao trải nghiệm xem, góc nhìn rộng, màu sắc tái tạo hài hòa và bắt mắt. Bên cạnh đó công nghệ BrightView hạn chế đáng kể tình trạng hắt sáng gây khó chịu trong quá trình sử dụng.',
        '19.690.000 ₫',
        '16.490.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        '0474a452-3dcb-4888-ba98-cd7dd9b843f6',
        'HP',
        ' HP Pavilion 15-eg3091TU 8C5L2PA ',
        '',
        'Thiết kế trẻ trung sang trọng

Chiếc HP Pavilion 15-eg3091TU 8C5L2PA kế thừa phong cách tối giản nhưng đầy sang trọng đặc trưng của các dòng máy đến từ nhà HP nói chung và series Pavilion nói riêng. HP Pavilion 15 là sự kết hợp hoàn hảo của các đường nét vuông vức, đơn giản mà mạnh mẽ với sự mềm mại đến từ những đường vát mép cong nhẹ nhàng. HP cũng vô cùng khéo léo khi đặt một Logo sáng bóng nổi bật ở vị trí chính giữa của nắp máy, vừa tạo điểm nhấn thương hiệu, vừa giúp tổng thể thiết kế của chiếc laptop không quá đơn điệu.',
        '25.290.000 ₫',
        '21.990.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        'fa402966-371d-4304-b6b7-f42b2faba02b',
        'HP',
        ' HP Pavilion 15-eg3092TU 8C5L3PA ',
        '',
        'HP Pavilion 15 EG3092TU là chiếc máy tính xách tay/ laptop chạy chip i7 gen 13 MỚI NHẤT - siêu KHỦNG ra mắt năm 2023. Chiếc laptop HP này giúp đáp ứng tốt từ công việc văn phòng thiết kế cho đến chiến game giải trí. Thêm vào đó chiếc laptop văn phòng này thuộc dòng HP Pavilion - HP Pavilion 15 nên có thiết kế cực thời thượng, bền bỉ đảm bảo làm hài lòng mọi người dùng. Cùng tìm hiểu ngay chiếc laptop HP core i7 này trong bài viết dưới đây nhé!

- Cấu hình cực khỏe từ chip Intel Gen 13 mới nhất 2023: i7 - 1355U gồm 10 nhân 12 luồng kết hợp cùng card Iris Xe, không những làm mượt mọi tác vụ công việc từ đơn giản đến phức tạp chiến game, đồ họa trên PS, Ai cũng cực tốt


- Thiết kế mỏng nhẹ, sang trọng với lớp vỏ kim loại hoàn thiện cứng cáp, cho độ bền cao. Tiện lợi mang theo khi đi làm đi học

- Màn hình lớn IPS 15.6 inch Full HD sắc nét, cho góc nhìn rộng làm việc với bảng biểu, số liệu tiện lợi. Giải trí cực sướng mắt',
        '23.990.000 ₫',
        '20.990.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        'ada490f4-96a6-4e1a-bbd8-c50d64a6faf3',
        'HP',
        ' HP Pavilion 15-eg2083TU 7C0W9PA ',
        '',
        'Laptop HP Pavilion 15-eg2083TU 7C0W9PA (Core i5 1240P/ 8GB/ 512GB SSD/ Intel Iris Xe Graphics/ 15.6inch Full HD/ Windows 11 Home/ Silver/ Hợp kim nhôm)

Với thiết kế vừa sang trọng hiện đại lại vừa chắc chắc bền bỉ, Laptop HP giá rẻ Pavilion 15-eg2083TU 7C0W9PA chắc chắn sẽ là thiết bị hỗ trợ đắc lực cho bạn trong học tập, công việc và giải trí đỉnh cao. Cảm giác cầm nắm rất dễ chịu và mát tay nhờ lớp vỏ được làm từ kim loại cao cấp, thiết kế mỏng nhẹ để bạn có thể mang theo thiết bị tới bất cứ nơi đâu mà vẫn đảm bảo công việc được hoàn thành hiệu quả nhờ hiệu năng mạnh mẽ vượt trội của chiếc Laptop HP này.',
        '19.790.000 ₫',
        '16.490.000 ₫ [Giá đã có VAT',
        999
    ),
    (
        '75bbc78d-1ce3-4f7b-ad00-8786df5e4b88',
        'HP',
        ' HP Pavilion 15-eg2085TU 7C0Q7PA ',
        '',
        '
Được tích hợp bộ vi xử lý Intel Core i5 thế hệ 12 tân tiến, màn hình rộng 15.6 inch cùng lối thiết kế tinh tế, laptop HP Pavilion 15 eg2085TU i5 (7C0Q7PA) là lựa chọn lý tưởng trong tầm giá khi chọn mua laptop học tập - văn phòng.

• Bộ vi xử lý Intel Core i5 1240P có tốc độ CPU cao, giúp cho máy hoạt động mượt mà nhằm hỗ trợ bạn xử lý công việc nhanh hơn. Card đồ họa tích hợp Intel Iris Xe Graphics có thể vận hành tác vụ đồ họa trên các ứng dụng Adobe một cách tốt hơn.

• Với hai thanh RAM 4 GB (tổng 8 GB) chạy Dual Channel, laptop HP Pavilion có thể xử lý nhiều tác vụ cùng lúc mà không bị giật lag. Ổ cứng SSD 256 GB NVMe PCIe rút ngắn thời gian mở và lưu trữ các tập tin.

• Màn hình 15.6 inch rộng rãi với độ phân giải Full HD (1920 x 1080) cho chất lượng hiển thị cao. Công nghệ BrightView và IPS của màn hình cung cấp màu sắc sống động, nịnh mắt, cho người dùng trải nghiệm giải trí và làm việc tốt hơn.

• Laptop HP được tích hợp công nghệ Realtek High Definition Audio đem đến cho người dùng chất lượng âm thanh stereo trung thực với bass tốt và treble đều khi nghe nhạc, xem phim hoặc chơi game.

• Thiết kế vỏ nhựa cứng cáp giúp bảo vệ laptop khỏi các tác nhân gây hư hỏng và trầy xước, chiếu nghỉ tay bằng kim loại làm tăng sự sang trọng khi cầm nắm trên tay.

• Cổng kết nối đáp ứng mọi nhu cầu: Jack tai nghe 3.5 mm, USB 3.2, HDMI, USB Type-C
',
        '18.790.000 ₫',
        '15.690.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        '044c4074-c33b-4633-8ca0-593a17b2bbc4',
        'HP',
        ' HP Pavilion 15-eg2083TU 7C0W9PA ',
        '',
        'Laptop HP Pavilion 15-eg2083TU 7C0W9PA (Core i5 1240P/ 8GB/ 512GB SSD/ Intel Iris Xe Graphics/ 15.6inch Full HD/ Windows 11 Home/ Silver/ Hợp kim nhôm)

Với thiết kế vừa sang trọng hiện đại lại vừa chắc chắc bền bỉ, Laptop HP giá rẻ Pavilion 15-eg2083TU 7C0W9PA chắc chắn sẽ là thiết bị hỗ trợ đắc lực cho bạn trong học tập, công việc và giải trí đỉnh cao. Cảm giác cầm nắm rất dễ chịu và mát tay nhờ lớp vỏ được làm từ kim loại cao cấp, thiết kế mỏng nhẹ để bạn có thể mang theo thiết bị tới bất cứ nơi đâu mà vẫn đảm bảo công việc được hoàn thành hiệu quả nhờ hiệu năng mạnh mẽ vượt trội của chiếc Laptop HP này.

 ',
        '19.790.000 ₫',
        '16.490.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        'e8eada39-fab9-4a47-b5a9-7e4255ebf8d0',
        'HP',
        'HP ENVY X360 13-BF0094TU 76B14PA ',
        '',
        'Laptop HP Envy X360 được đánh giá là dòng laptop mỏng nhẹ nhưng vẫn đảm bảo cấu hình vượt trội giúp đáp ứng mọi tác vụ cơ bản cần thiết cho người dùng. Từ đó, chiếc HP Envy này luôn góp phần tạo nên trải nghiệm mượt mà trong suốt quá trình sử dụng.

Laptop HP Envy X360 13-BF0094TU 76B14PA - khả năng đa nhiệm, hình ảnh sắc nét

Laptop HP Envy X360 13-BF0094TU 76B14PA sở hữu thiết kế đơn giản, tỉ mỏ với khung nhôm chắc chắn và vô cùng sang trọng. Với khả năng hiển thị ấn tượng, sắc nét chiếc laptop này phù hợp với mọi nhu cầu cho công việc, giải trí, học tập,..
Thiết kế tinh tế, hiển thị sắc nét

Laptop HP Envy X360 13-BF0094TU 76B14PA sở hữu thiết kế bằng chất liệu kim nhôm màu xanh sáng bóng kết hợp với phần logo HP in nghiêng thể hiện sự mạnh mẽ nhưng không kém phần tinh tế. Trọng lượng nhẹ chỉ 1.34kg cùng kiểu dáng mỏng giúp người dùng dễ dàng di chuyển và mang theo máy ở bất cứ đâu.',
        '29.590.000 ₫',
        '22.990.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        '33af3565-ded4-4dfe-9499-0a21244f467f',
        'HP',
        ' HP Gaming Victus 16-e1104AX 7C0S9PA ',
        '',
        'Thiết kế mới lạ - Hiệu năng vượt trên giá thành

Tối giản nhưng vẫn toát lên khí thế mạnh mẽ của một chiếc laptop gaming, HP VICTUS 16-e1104AX 7C0S9PA sẽ cùng bạn chiến đấu trên các chiến trường ảo, bất bại ở mọi thể loại game. Được trang bị CPU AMD Ryzen thế hệ mới, màn hình Full HD tiêu chuẩn và card đồ họa mạnh. HP Gaming Victus 16 chính là item mà nhiều game thủ hay sinh viên hằng mong đợi - một chiếc laptop – máy tính xách tay có cấu hình mạnh nhưng sở hữu mức giá hợp lý.
Thiết kế hiện đại, thanh lịch, phù hợp nhiều môi trường làm việc

HP VICTUS 16-e1104AX 7C0S9PA sở hữu thiết kế mạnh mẽ với các cạnh sắc nét, Logo biểu tượng “V” phản kim loại đồng bộ hợp thời trang cùng với tông màu đen huyền bí mang lại một tổng thể trang nhã, lịch sự điểm một chút nét gaming.   

Khe thoát khí nóng siêu rộng vừa tạo điểm nhấn vừa nâng cao hiệu suất tản nhiệt. Chiếc laptop HP này được chế tác bền bỉ với vỏ nhựa chắc chắn, sở hữu trọng lượng 2.4 kg và độ dày 23.5 mm, là kích thước phù hợp cho một chiếc gaming, sẵn sàng đồng hành cùng bạn đến khắp mọi nơi.
Chiến game mượt mà ở mọi đấu trường nhờ bộ vi xử lý tân tiến

HP VICTUS 16-e1104AX 7C0S9PA cho phép người dùng không chỉ chiến đấu ở mọi tựa game hấp dẫn một cách trơn tru mà còn thao tác hiệu quả các tác vụ văn phòng như Word, Excel,... nhờ chip AMD Ryzen 7 dòng 6800H có 8 nhân 16 luồng, với tốc độ tối đa lên đến 4.7 GHz nhờ Turbo Boost. Không chỉ vậy, máy còn hỗ trợ bạn xử lý hình ảnh, làm poster, banner, render video cơ bản một cách hiệu quả.

Mang đến hiệu suất chơi game đáng kinh ngạc cùng giải pháp đồ họa vượt bậc nhờ card đồ họa rời NVIDIA Geforce RTX 3050, 4GB, cho bạn thỏa sức sáng tạo với các ứng dụng nhà Adobe, hay tận hưởng chất lượng hình ảnh 8K rõ nét trong từng chuyển động ở thế ảo của cả các tựa game có đồ họa cao như Cyberpunk 2077, Valorant, CS:GO, Fifa Online 4,…',
        '29.290.000 ₫',
        '23.800.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        '7974da35-2a01-4812-ba55-77dea0d0eb94',
        'HP',
        ' HP Gaming Victus 16-d1187TX 7C0S4PA ',
        '',
        'Thiết kế mới lạ - Hiệu năng vượt trên giá thành

Tối giản nhưng vẫn toát lên khí thế mạnh mẽ của một chiếc laptop gaming, HP VICTUS 16-e1104AX 7C0S9PA sẽ cùng bạn chiến đấu trên các chiến trường ảo, bất bại ở mọi thể loại game. Được trang bị CPU AMD Ryzen thế hệ mới, màn hình Full HD tiêu chuẩn và card đồ họa mạnh. HP Gaming Victus 16 chính là item mà nhiều game thủ hay sinh viên hằng mong đợi - một chiếc laptop – máy tính xách tay có cấu hình mạnh nhưng sở hữu mức giá hợp lý.
Thiết kế hiện đại, thanh lịch, phù hợp nhiều môi trường làm việc

HP VICTUS 16-e1104AX 7C0S9PA sở hữu thiết kế mạnh mẽ với các cạnh sắc nét, Logo biểu tượng “V” phản kim loại đồng bộ hợp thời trang cùng với tông màu đen huyền bí mang lại một tổng thể trang nhã, lịch sự điểm một chút nét gaming.   

Khe thoát khí nóng siêu rộng vừa tạo điểm nhấn vừa nâng cao hiệu suất tản nhiệt. Chiếc laptop HP này được chế tác bền bỉ với vỏ nhựa chắc chắn, sở hữu trọng lượng 2.4 kg và độ dày 23.5 mm, là kích thước phù hợp cho một chiếc gaming, sẵn sàng đồng hành cùng bạn đến khắp mọi nơi.
Chiến game mượt mà ở mọi đấu trường nhờ bộ vi xử lý tân tiến

HP VICTUS 16-e1104AX 7C0S9PA cho phép người dùng không chỉ chiến đấu ở mọi tựa game hấp dẫn một cách trơn tru mà còn thao tác hiệu quả các tác vụ văn phòng như Word, Excel,... nhờ chip AMD Ryzen 7 dòng 6800H có 8 nhân 16 luồng, với tốc độ tối đa lên đến 4.7 GHz nhờ Turbo Boost. Không chỉ vậy, máy còn hỗ trợ bạn xử lý hình ảnh, làm poster, banner, render video cơ bản một cách hiệu quả.

Mang đến hiệu suất chơi game đáng kinh ngạc cùng giải pháp đồ họa vượt bậc nhờ card đồ họa rời NVIDIA Geforce RTX 3050, 4GB, cho bạn thỏa sức sáng tạo với các ứng dụng nhà Adobe, hay tận hưởng chất lượng hình ảnh 8K rõ nét trong từng chuyển động ở thế ảo của cả các tựa game có đồ họa cao như Cyberpunk 2077, Valorant, CS:GO, Fifa Online 4,…',
        '32.990.000 ₫',
        '24.990.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        'b9f2e909-1055-4afe-b13e-1f9b7747fab8',
        'HP',
        ' HP Gaming Victus 16-d1193TX 7C138PA ',
        '',
        'Thiết kế mới lạ - Hiệu năng vượt trên giá thành

Tối giản nhưng vẫn toát lên khí thế mạnh mẽ của một chiếc laptop gaming, HP VICTUS 16-e1104AX 7C0S9PA sẽ cùng bạn chiến đấu trên các chiến trường ảo, bất bại ở mọi thể loại game. Được trang bị CPU AMD Ryzen thế hệ mới, màn hình Full HD tiêu chuẩn và card đồ họa mạnh. HP Gaming Victus 16 chính là item mà nhiều game thủ hay sinh viên hằng mong đợi - một chiếc laptop – máy tính xách tay có cấu hình mạnh nhưng sở hữu mức giá hợp lý.
Thiết kế hiện đại, thanh lịch, phù hợp nhiều môi trường làm việc

HP VICTUS 16-e1104AX 7C0S9PA sở hữu thiết kế mạnh mẽ với các cạnh sắc nét, Logo biểu tượng “V” phản kim loại đồng bộ hợp thời trang cùng với tông màu đen huyền bí mang lại một tổng thể trang nhã, lịch sự điểm một chút nét gaming.   

Khe thoát khí nóng siêu rộng vừa tạo điểm nhấn vừa nâng cao hiệu suất tản nhiệt. Chiếc laptop HP này được chế tác bền bỉ với vỏ nhựa chắc chắn, sở hữu trọng lượng 2.4 kg và độ dày 23.5 mm, là kích thước phù hợp cho một chiếc gaming, sẵn sàng đồng hành cùng bạn đến khắp mọi nơi.
Chiến game mượt mà ở mọi đấu trường nhờ bộ vi xử lý tân tiến

HP VICTUS 16-e1104AX 7C0S9PA cho phép người dùng không chỉ chiến đấu ở mọi tựa game hấp dẫn một cách trơn tru mà còn thao tác hiệu quả các tác vụ văn phòng như Word, Excel,... nhờ chip AMD Ryzen 7 dòng 6800H có 8 nhân 16 luồng, với tốc độ tối đa lên đến 4.7 GHz nhờ Turbo Boost. Không chỉ vậy, máy còn hỗ trợ bạn xử lý hình ảnh, làm poster, banner, render video cơ bản một cách hiệu quả.

Mang đến hiệu suất chơi game đáng kinh ngạc cùng giải pháp đồ họa vượt bậc nhờ card đồ họa rời NVIDIA Geforce RTX 3050, 4GB, cho bạn thỏa sức sáng tạo với các ứng dụng nhà Adobe, hay tận hưởng chất lượng hình ảnh 8K rõ nét trong từng chuyển động ở thế ảo của cả các tựa game có đồ họa cao như Cyberpunk 2077, Valorant, CS:GO, Fifa Online 4,…',
        '27.690.000 ₫',
        '22.490.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        'b372961a-e233-4475-8373-6d2c5176a897',
        'HP',
        ' HP Gaming Victus 15-fa0110TX 7C0R3PA ',
        '',
        'Thiết kế mới lạ - Hiệu năng vượt trên giá thành

Tối giản nhưng vẫn toát lên khí thế mạnh mẽ của một chiếc laptop gaming, HP VICTUS 16-e1104AX 7C0S9PA sẽ cùng bạn chiến đấu trên các chiến trường ảo, bất bại ở mọi thể loại game. Được trang bị CPU AMD Ryzen thế hệ mới, màn hình Full HD tiêu chuẩn và card đồ họa mạnh. HP Gaming Victus 16 chính là item mà nhiều game thủ hay sinh viên hằng mong đợi - một chiếc laptop – máy tính xách tay có cấu hình mạnh nhưng sở hữu mức giá hợp lý.
Thiết kế hiện đại, thanh lịch, phù hợp nhiều môi trường làm việc

HP VICTUS 16-e1104AX 7C0S9PA sở hữu thiết kế mạnh mẽ với các cạnh sắc nét, Logo biểu tượng “V” phản kim loại đồng bộ hợp thời trang cùng với tông màu đen huyền bí mang lại một tổng thể trang nhã, lịch sự điểm một chút nét gaming.   

Khe thoát khí nóng siêu rộng vừa tạo điểm nhấn vừa nâng cao hiệu suất tản nhiệt. Chiếc laptop HP này được chế tác bền bỉ với vỏ nhựa chắc chắn, sở hữu trọng lượng 2.4 kg và độ dày 23.5 mm, là kích thước phù hợp cho một chiếc gaming, sẵn sàng đồng hành cùng bạn đến khắp mọi nơi.
Chiến game mượt mà ở mọi đấu trường nhờ bộ vi xử lý tân tiến

HP VICTUS 16-e1104AX 7C0S9PA cho phép người dùng không chỉ chiến đấu ở mọi tựa game hấp dẫn một cách trơn tru mà còn thao tác hiệu quả các tác vụ văn phòng như Word, Excel,... nhờ chip AMD Ryzen 7 dòng 6800H có 8 nhân 16 luồng, với tốc độ tối đa lên đến 4.7 GHz nhờ Turbo Boost. Không chỉ vậy, máy còn hỗ trợ bạn xử lý hình ảnh, làm poster, banner, render video cơ bản một cách hiệu quả.

Mang đến hiệu suất chơi game đáng kinh ngạc cùng giải pháp đồ họa vượt bậc nhờ card đồ họa rời NVIDIA Geforce RTX 3050, 4GB, cho bạn thỏa sức sáng tạo với các ứng dụng nhà Adobe, hay tận hưởng chất lượng hình ảnh 8K rõ nét trong từng chuyển động ở thế ảo của cả các tựa game có đồ họa cao như Cyberpunk 2077, Valorant, CS:GO, Fifa Online 4,…',
        '30.490.000 ₫',
        '23.990.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        '75ecb01e-2388-4277-97cc-58a21b03245f',
        'HP',
        ' HP Gaming Victus 16-e1105AX 7C0T0PA ',
        '',
        'Thiết kế mới lạ - Hiệu năng vượt trên giá thành

Tối giản nhưng vẫn toát lên khí thế mạnh mẽ của một chiếc laptop gaming, HP VICTUS 16-e1104AX 7C0S9PA sẽ cùng bạn chiến đấu trên các chiến trường ảo, bất bại ở mọi thể loại game. Được trang bị CPU AMD Ryzen thế hệ mới, màn hình Full HD tiêu chuẩn và card đồ họa mạnh. HP Gaming Victus 16 chính là item mà nhiều game thủ hay sinh viên hằng mong đợi - một chiếc laptop – máy tính xách tay có cấu hình mạnh nhưng sở hữu mức giá hợp lý.
Thiết kế hiện đại, thanh lịch, phù hợp nhiều môi trường làm việc

HP VICTUS 16-e1104AX 7C0S9PA sở hữu thiết kế mạnh mẽ với các cạnh sắc nét, Logo biểu tượng “V” phản kim loại đồng bộ hợp thời trang cùng với tông màu đen huyền bí mang lại một tổng thể trang nhã, lịch sự điểm một chút nét gaming.   

Khe thoát khí nóng siêu rộng vừa tạo điểm nhấn vừa nâng cao hiệu suất tản nhiệt. Chiếc laptop HP này được chế tác bền bỉ với vỏ nhựa chắc chắn, sở hữu trọng lượng 2.4 kg và độ dày 23.5 mm, là kích thước phù hợp cho một chiếc gaming, sẵn sàng đồng hành cùng bạn đến khắp mọi nơi.
Chiến game mượt mà ở mọi đấu trường nhờ bộ vi xử lý tân tiến

HP VICTUS 16-e1104AX 7C0S9PA cho phép người dùng không chỉ chiến đấu ở mọi tựa game hấp dẫn một cách trơn tru mà còn thao tác hiệu quả các tác vụ văn phòng như Word, Excel,... nhờ chip AMD Ryzen 7 dòng 6800H có 8 nhân 16 luồng, với tốc độ tối đa lên đến 4.7 GHz nhờ Turbo Boost. Không chỉ vậy, máy còn hỗ trợ bạn xử lý hình ảnh, làm poster, banner, render video cơ bản một cách hiệu quả.

Mang đến hiệu suất chơi game đáng kinh ngạc cùng giải pháp đồ họa vượt bậc nhờ card đồ họa rời NVIDIA Geforce RTX 3050, 4GB, cho bạn thỏa sức sáng tạo với các ứng dụng nhà Adobe, hay tận hưởng chất lượng hình ảnh 8K rõ nét trong từng chuyển động ở thế ảo của cả các tựa game có đồ họa cao như Cyberpunk 2077, Valorant, CS:GO, Fifa Online 4,…',
        '27.990.000 ₫',
        '20.990.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        '0ba9dc16-3e85-4c8d-8077-b61ccfca28fa',
        'HP',
        ' HP Gaming Victus 15-fa0108TX 7C0X0PA ',
        '',
        'Thiết kế mới lạ - Hiệu năng vượt trên giá thành

Tối giản nhưng vẫn toát lên khí thế mạnh mẽ của một chiếc laptop gaming, HP VICTUS 16-e1104AX 7C0S9PA sẽ cùng bạn chiến đấu trên các chiến trường ảo, bất bại ở mọi thể loại game. Được trang bị CPU AMD Ryzen thế hệ mới, màn hình Full HD tiêu chuẩn và card đồ họa mạnh. HP Gaming Victus 16 chính là item mà nhiều game thủ hay sinh viên hằng mong đợi - một chiếc laptop – máy tính xách tay có cấu hình mạnh nhưng sở hữu mức giá hợp lý.
Thiết kế hiện đại, thanh lịch, phù hợp nhiều môi trường làm việc

HP VICTUS 16-e1104AX 7C0S9PA sở hữu thiết kế mạnh mẽ với các cạnh sắc nét, Logo biểu tượng “V” phản kim loại đồng bộ hợp thời trang cùng với tông màu đen huyền bí mang lại một tổng thể trang nhã, lịch sự điểm một chút nét gaming.   

Khe thoát khí nóng siêu rộng vừa tạo điểm nhấn vừa nâng cao hiệu suất tản nhiệt. Chiếc laptop HP này được chế tác bền bỉ với vỏ nhựa chắc chắn, sở hữu trọng lượng 2.4 kg và độ dày 23.5 mm, là kích thước phù hợp cho một chiếc gaming, sẵn sàng đồng hành cùng bạn đến khắp mọi nơi.
Chiến game mượt mà ở mọi đấu trường nhờ bộ vi xử lý tân tiến

HP VICTUS 16-e1104AX 7C0S9PA cho phép người dùng không chỉ chiến đấu ở mọi tựa game hấp dẫn một cách trơn tru mà còn thao tác hiệu quả các tác vụ văn phòng như Word, Excel,... nhờ chip AMD Ryzen 7 dòng 6800H có 8 nhân 16 luồng, với tốc độ tối đa lên đến 4.7 GHz nhờ Turbo Boost. Không chỉ vậy, máy còn hỗ trợ bạn xử lý hình ảnh, làm poster, banner, render video cơ bản một cách hiệu quả.

Mang đến hiệu suất chơi game đáng kinh ngạc cùng giải pháp đồ họa vượt bậc nhờ card đồ họa rời NVIDIA Geforce RTX 3050, 4GB, cho bạn thỏa sức sáng tạo với các ứng dụng nhà Adobe, hay tận hưởng chất lượng hình ảnh 8K rõ nét trong từng chuyển động ở thế ảo của cả các tựa game có đồ họa cao như Cyberpunk 2077, Valorant, CS:GO, Fifa Online 4,…',
        '32.990.000 ₫',
        '25.990.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        'a7cda7c1-2c8b-4c05-a08f-17296f332e9b',
        'HP',
        ' HP Gaming Victus 15-fa1087TX 8C5M4PA ',
        '',
        'Thiết kế mới lạ - Hiệu năng vượt trên giá thành

Tối giản nhưng vẫn toát lên khí thế mạnh mẽ của một chiếc laptop gaming, HP VICTUS 16-e1104AX 7C0S9PA sẽ cùng bạn chiến đấu trên các chiến trường ảo, bất bại ở mọi thể loại game. Được trang bị CPU AMD Ryzen thế hệ mới, màn hình Full HD tiêu chuẩn và card đồ họa mạnh. HP Gaming Victus 16 chính là item mà nhiều game thủ hay sinh viên hằng mong đợi - một chiếc laptop – máy tính xách tay có cấu hình mạnh nhưng sở hữu mức giá hợp lý.
Thiết kế hiện đại, thanh lịch, phù hợp nhiều môi trường làm việc

HP VICTUS 16-e1104AX 7C0S9PA sở hữu thiết kế mạnh mẽ với các cạnh sắc nét, Logo biểu tượng “V” phản kim loại đồng bộ hợp thời trang cùng với tông màu đen huyền bí mang lại một tổng thể trang nhã, lịch sự điểm một chút nét gaming.   

Khe thoát khí nóng siêu rộng vừa tạo điểm nhấn vừa nâng cao hiệu suất tản nhiệt. Chiếc laptop HP này được chế tác bền bỉ với vỏ nhựa chắc chắn, sở hữu trọng lượng 2.4 kg và độ dày 23.5 mm, là kích thước phù hợp cho một chiếc gaming, sẵn sàng đồng hành cùng bạn đến khắp mọi nơi.
Chiến game mượt mà ở mọi đấu trường nhờ bộ vi xử lý tân tiến

HP VICTUS 16-e1104AX 7C0S9PA cho phép người dùng không chỉ chiến đấu ở mọi tựa game hấp dẫn một cách trơn tru mà còn thao tác hiệu quả các tác vụ văn phòng như Word, Excel,... nhờ chip AMD Ryzen 7 dòng 6800H có 8 nhân 16 luồng, với tốc độ tối đa lên đến 4.7 GHz nhờ Turbo Boost. Không chỉ vậy, máy còn hỗ trợ bạn xử lý hình ảnh, làm poster, banner, render video cơ bản một cách hiệu quả.

Mang đến hiệu suất chơi game đáng kinh ngạc cùng giải pháp đồ họa vượt bậc nhờ card đồ họa rời NVIDIA Geforce RTX 3050, 4GB, cho bạn thỏa sức sáng tạo với các ứng dụng nhà Adobe, hay tận hưởng chất lượng hình ảnh 8K rõ nét trong từng chuyển động ở thế ảo của cả các tựa game có đồ họa cao như Cyberpunk 2077, Valorant, CS:GO, Fifa Online 4,…',
        '32.290.000 ₫',
        '31.590.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        '0fab299a-c9b9-4581-b68b-39415e276ffa',
        'HP',
        ' HP Gaming Victus 16-e1106AX 7C0T1PA ',
        '',
        'Thiết kế mới lạ - Hiệu năng vượt trên giá thành

Tối giản nhưng vẫn toát lên khí thế mạnh mẽ của một chiếc laptop gaming, HP VICTUS 16-e1104AX 7C0S9PA sẽ cùng bạn chiến đấu trên các chiến trường ảo, bất bại ở mọi thể loại game. Được trang bị CPU AMD Ryzen thế hệ mới, màn hình Full HD tiêu chuẩn và card đồ họa mạnh. HP Gaming Victus 16 chính là item mà nhiều game thủ hay sinh viên hằng mong đợi - một chiếc laptop – máy tính xách tay có cấu hình mạnh nhưng sở hữu mức giá hợp lý.
Thiết kế hiện đại, thanh lịch, phù hợp nhiều môi trường làm việc

HP VICTUS 16-e1104AX 7C0S9PA sở hữu thiết kế mạnh mẽ với các cạnh sắc nét, Logo biểu tượng “V” phản kim loại đồng bộ hợp thời trang cùng với tông màu đen huyền bí mang lại một tổng thể trang nhã, lịch sự điểm một chút nét gaming.   

Khe thoát khí nóng siêu rộng vừa tạo điểm nhấn vừa nâng cao hiệu suất tản nhiệt. Chiếc laptop HP này được chế tác bền bỉ với vỏ nhựa chắc chắn, sở hữu trọng lượng 2.4 kg và độ dày 23.5 mm, là kích thước phù hợp cho một chiếc gaming, sẵn sàng đồng hành cùng bạn đến khắp mọi nơi.
Chiến game mượt mà ở mọi đấu trường nhờ bộ vi xử lý tân tiến

HP VICTUS 16-e1104AX 7C0S9PA cho phép người dùng không chỉ chiến đấu ở mọi tựa game hấp dẫn một cách trơn tru mà còn thao tác hiệu quả các tác vụ văn phòng như Word, Excel,... nhờ chip AMD Ryzen 7 dòng 6800H có 8 nhân 16 luồng, với tốc độ tối đa lên đến 4.7 GHz nhờ Turbo Boost. Không chỉ vậy, máy còn hỗ trợ bạn xử lý hình ảnh, làm poster, banner, render video cơ bản một cách hiệu quả.

Mang đến hiệu suất chơi game đáng kinh ngạc cùng giải pháp đồ họa vượt bậc nhờ card đồ họa rời NVIDIA Geforce RTX 3050, 4GB, cho bạn thỏa sức sáng tạo với các ứng dụng nhà Adobe, hay tận hưởng chất lượng hình ảnh 8K rõ nét trong từng chuyển động ở thế ảo của cả các tựa game có đồ họa cao như Cyberpunk 2077, Valorant, CS:GO, Fifa Online 4,…',
        '26.490.000 ₫',
        '22.490.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        '352a54d1-d01c-4a70-8560-0d9c40f15d54',
        'HP',
        ' HP Gaming Victus 16-s0078AX 8C5N7PA ',
        '',
        'Thiết kế mới lạ - Hiệu năng vượt trên giá thành

Tối giản nhưng vẫn toát lên khí thế mạnh mẽ của một chiếc laptop gaming, HP VICTUS 16-e1104AX 7C0S9PA sẽ cùng bạn chiến đấu trên các chiến trường ảo, bất bại ở mọi thể loại game. Được trang bị CPU AMD Ryzen thế hệ mới, màn hình Full HD tiêu chuẩn và card đồ họa mạnh. HP Gaming Victus 16 chính là item mà nhiều game thủ hay sinh viên hằng mong đợi - một chiếc laptop – máy tính xách tay có cấu hình mạnh nhưng sở hữu mức giá hợp lý.
Thiết kế hiện đại, thanh lịch, phù hợp nhiều môi trường làm việc

HP VICTUS 16-e1104AX 7C0S9PA sở hữu thiết kế mạnh mẽ với các cạnh sắc nét, Logo biểu tượng “V” phản kim loại đồng bộ hợp thời trang cùng với tông màu đen huyền bí mang lại một tổng thể trang nhã, lịch sự điểm một chút nét gaming.   

Khe thoát khí nóng siêu rộng vừa tạo điểm nhấn vừa nâng cao hiệu suất tản nhiệt. Chiếc laptop HP này được chế tác bền bỉ với vỏ nhựa chắc chắn, sở hữu trọng lượng 2.4 kg và độ dày 23.5 mm, là kích thước phù hợp cho một chiếc gaming, sẵn sàng đồng hành cùng bạn đến khắp mọi nơi.
Chiến game mượt mà ở mọi đấu trường nhờ bộ vi xử lý tân tiến

HP VICTUS 16-e1104AX 7C0S9PA cho phép người dùng không chỉ chiến đấu ở mọi tựa game hấp dẫn một cách trơn tru mà còn thao tác hiệu quả các tác vụ văn phòng như Word, Excel,... nhờ chip AMD Ryzen 7 dòng 6800H có 8 nhân 16 luồng, với tốc độ tối đa lên đến 4.7 GHz nhờ Turbo Boost. Không chỉ vậy, máy còn hỗ trợ bạn xử lý hình ảnh, làm poster, banner, render video cơ bản một cách hiệu quả.

Mang đến hiệu suất chơi game đáng kinh ngạc cùng giải pháp đồ họa vượt bậc nhờ card đồ họa rời NVIDIA Geforce RTX 3050, 4GB, cho bạn thỏa sức sáng tạo với các ứng dụng nhà Adobe, hay tận hưởng chất lượng hình ảnh 8K rõ nét trong từng chuyển động ở thế ảo của cả các tựa game có đồ họa cao như Cyberpunk 2077, Valorant, CS:GO, Fifa Online 4,…',
        '27.390.000 ₫',
        '26.590.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        '11f70eb7-b14a-48f0-b762-ad09dc5ad4c6',
        'HP',
        ' HP Gaming Victus 16-d1185TX 7C0S3PA ',
        '',
        'Thiết kế mới lạ - Hiệu năng vượt trên giá thành

Tối giản nhưng vẫn toát lên khí thế mạnh mẽ của một chiếc laptop gaming, HP VICTUS 16-e1104AX 7C0S9PA sẽ cùng bạn chiến đấu trên các chiến trường ảo, bất bại ở mọi thể loại game. Được trang bị CPU AMD Ryzen thế hệ mới, màn hình Full HD tiêu chuẩn và card đồ họa mạnh. HP Gaming Victus 16 chính là item mà nhiều game thủ hay sinh viên hằng mong đợi - một chiếc laptop – máy tính xách tay có cấu hình mạnh nhưng sở hữu mức giá hợp lý.
Thiết kế hiện đại, thanh lịch, phù hợp nhiều môi trường làm việc

HP VICTUS 16-e1104AX 7C0S9PA sở hữu thiết kế mạnh mẽ với các cạnh sắc nét, Logo biểu tượng “V” phản kim loại đồng bộ hợp thời trang cùng với tông màu đen huyền bí mang lại một tổng thể trang nhã, lịch sự điểm một chút nét gaming.   

Khe thoát khí nóng siêu rộng vừa tạo điểm nhấn vừa nâng cao hiệu suất tản nhiệt. Chiếc laptop HP này được chế tác bền bỉ với vỏ nhựa chắc chắn, sở hữu trọng lượng 2.4 kg và độ dày 23.5 mm, là kích thước phù hợp cho một chiếc gaming, sẵn sàng đồng hành cùng bạn đến khắp mọi nơi.
Chiến game mượt mà ở mọi đấu trường nhờ bộ vi xử lý tân tiến

HP VICTUS 16-e1104AX 7C0S9PA cho phép người dùng không chỉ chiến đấu ở mọi tựa game hấp dẫn một cách trơn tru mà còn thao tác hiệu quả các tác vụ văn phòng như Word, Excel,... nhờ chip AMD Ryzen 7 dòng 6800H có 8 nhân 16 luồng, với tốc độ tối đa lên đến 4.7 GHz nhờ Turbo Boost. Không chỉ vậy, máy còn hỗ trợ bạn xử lý hình ảnh, làm poster, banner, render video cơ bản một cách hiệu quả.

Mang đến hiệu suất chơi game đáng kinh ngạc cùng giải pháp đồ họa vượt bậc nhờ card đồ họa rời NVIDIA Geforce RTX 3050, 4GB, cho bạn thỏa sức sáng tạo với các ứng dụng nhà Adobe, hay tận hưởng chất lượng hình ảnh 8K rõ nét trong từng chuyển động ở thế ảo của cả các tựa game có đồ họa cao như Cyberpunk 2077, Valorant, CS:GO, Fifa Online 4,…',
        '37.990.000 ₫',
        '29.990.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        '937df060-1d0a-492e-a5b9-a22e9c1b66db',
        'HP',
        ' HP Gaming Victus 16-r0129TX 8C5N4PA ',
        '',
        'Thiết kế mới lạ - Hiệu năng vượt trên giá thành

Tối giản nhưng vẫn toát lên khí thế mạnh mẽ của một chiếc laptop gaming, HP VICTUS 16-e1104AX 7C0S9PA sẽ cùng bạn chiến đấu trên các chiến trường ảo, bất bại ở mọi thể loại game. Được trang bị CPU AMD Ryzen thế hệ mới, màn hình Full HD tiêu chuẩn và card đồ họa mạnh. HP Gaming Victus 16 chính là item mà nhiều game thủ hay sinh viên hằng mong đợi - một chiếc laptop – máy tính xách tay có cấu hình mạnh nhưng sở hữu mức giá hợp lý.
Thiết kế hiện đại, thanh lịch, phù hợp nhiều môi trường làm việc

HP VICTUS 16-e1104AX 7C0S9PA sở hữu thiết kế mạnh mẽ với các cạnh sắc nét, Logo biểu tượng “V” phản kim loại đồng bộ hợp thời trang cùng với tông màu đen huyền bí mang lại một tổng thể trang nhã, lịch sự điểm một chút nét gaming.   

Khe thoát khí nóng siêu rộng vừa tạo điểm nhấn vừa nâng cao hiệu suất tản nhiệt. Chiếc laptop HP này được chế tác bền bỉ với vỏ nhựa chắc chắn, sở hữu trọng lượng 2.4 kg và độ dày 23.5 mm, là kích thước phù hợp cho một chiếc gaming, sẵn sàng đồng hành cùng bạn đến khắp mọi nơi.
Chiến game mượt mà ở mọi đấu trường nhờ bộ vi xử lý tân tiến

HP VICTUS 16-e1104AX 7C0S9PA cho phép người dùng không chỉ chiến đấu ở mọi tựa game hấp dẫn một cách trơn tru mà còn thao tác hiệu quả các tác vụ văn phòng như Word, Excel,... nhờ chip AMD Ryzen 7 dòng 6800H có 8 nhân 16 luồng, với tốc độ tối đa lên đến 4.7 GHz nhờ Turbo Boost. Không chỉ vậy, máy còn hỗ trợ bạn xử lý hình ảnh, làm poster, banner, render video cơ bản một cách hiệu quả.

Mang đến hiệu suất chơi game đáng kinh ngạc cùng giải pháp đồ họa vượt bậc nhờ card đồ họa rời NVIDIA Geforce RTX 3050, 4GB, cho bạn thỏa sức sáng tạo với các ứng dụng nhà Adobe, hay tận hưởng chất lượng hình ảnh 8K rõ nét trong từng chuyển động ở thế ảo của cả các tựa game có đồ họa cao như Cyberpunk 2077, Valorant, CS:GO, Fifa Online 4,…',
        '32.690.000 ₫',
        '30.990.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        'c409941d-f835-43ca-9b5e-c1fc15b1f8c0',
        'HP',
        ' HP Gaming Victus 16-r0127TX 8C5N2PA ',
        '',
        'Thiết kế mới lạ - Hiệu năng vượt trên giá thành

Tối giản nhưng vẫn toát lên khí thế mạnh mẽ của một chiếc laptop gaming, HP VICTUS 16-e1104AX 7C0S9PA sẽ cùng bạn chiến đấu trên các chiến trường ảo, bất bại ở mọi thể loại game. Được trang bị CPU AMD Ryzen thế hệ mới, màn hình Full HD tiêu chuẩn và card đồ họa mạnh. HP Gaming Victus 16 chính là item mà nhiều game thủ hay sinh viên hằng mong đợi - một chiếc laptop – máy tính xách tay có cấu hình mạnh nhưng sở hữu mức giá hợp lý.
Thiết kế hiện đại, thanh lịch, phù hợp nhiều môi trường làm việc

HP VICTUS 16-e1104AX 7C0S9PA sở hữu thiết kế mạnh mẽ với các cạnh sắc nét, Logo biểu tượng “V” phản kim loại đồng bộ hợp thời trang cùng với tông màu đen huyền bí mang lại một tổng thể trang nhã, lịch sự điểm một chút nét gaming.   

Khe thoát khí nóng siêu rộng vừa tạo điểm nhấn vừa nâng cao hiệu suất tản nhiệt. Chiếc laptop HP này được chế tác bền bỉ với vỏ nhựa chắc chắn, sở hữu trọng lượng 2.4 kg và độ dày 23.5 mm, là kích thước phù hợp cho một chiếc gaming, sẵn sàng đồng hành cùng bạn đến khắp mọi nơi.
Chiến game mượt mà ở mọi đấu trường nhờ bộ vi xử lý tân tiến

HP VICTUS 16-e1104AX 7C0S9PA cho phép người dùng không chỉ chiến đấu ở mọi tựa game hấp dẫn một cách trơn tru mà còn thao tác hiệu quả các tác vụ văn phòng như Word, Excel,... nhờ chip AMD Ryzen 7 dòng 6800H có 8 nhân 16 luồng, với tốc độ tối đa lên đến 4.7 GHz nhờ Turbo Boost. Không chỉ vậy, máy còn hỗ trợ bạn xử lý hình ảnh, làm poster, banner, render video cơ bản một cách hiệu quả.

Mang đến hiệu suất chơi game đáng kinh ngạc cùng giải pháp đồ họa vượt bậc nhờ card đồ họa rời NVIDIA Geforce RTX 3050, 4GB, cho bạn thỏa sức sáng tạo với các ứng dụng nhà Adobe, hay tận hưởng chất lượng hình ảnh 8K rõ nét trong từng chuyển động ở thế ảo của cả các tựa game có đồ họa cao như Cyberpunk 2077, Valorant, CS:GO, Fifa Online 4,…',
        '38.390.000 ₫',
        '37.590.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        '4463af30-7d7a-4d3d-81f3-d362916b2afc',
        'HP',
        ' HP Gaming Victus 15-fa1089TX 8C5M6PA ',
        '',
        'Thiết kế mới lạ - Hiệu năng vượt trên giá thành

Tối giản nhưng vẫn toát lên khí thế mạnh mẽ của một chiếc laptop gaming, HP VICTUS 16-e1104AX 7C0S9PA sẽ cùng bạn chiến đấu trên các chiến trường ảo, bất bại ở mọi thể loại game. Được trang bị CPU AMD Ryzen thế hệ mới, màn hình Full HD tiêu chuẩn và card đồ họa mạnh. HP Gaming Victus 16 chính là item mà nhiều game thủ hay sinh viên hằng mong đợi - một chiếc laptop – máy tính xách tay có cấu hình mạnh nhưng sở hữu mức giá hợp lý.
Thiết kế hiện đại, thanh lịch, phù hợp nhiều môi trường làm việc

HP VICTUS 16-e1104AX 7C0S9PA sở hữu thiết kế mạnh mẽ với các cạnh sắc nét, Logo biểu tượng “V” phản kim loại đồng bộ hợp thời trang cùng với tông màu đen huyền bí mang lại một tổng thể trang nhã, lịch sự điểm một chút nét gaming.   

Khe thoát khí nóng siêu rộng vừa tạo điểm nhấn vừa nâng cao hiệu suất tản nhiệt. Chiếc laptop HP này được chế tác bền bỉ với vỏ nhựa chắc chắn, sở hữu trọng lượng 2.4 kg và độ dày 23.5 mm, là kích thước phù hợp cho một chiếc gaming, sẵn sàng đồng hành cùng bạn đến khắp mọi nơi.
Chiến game mượt mà ở mọi đấu trường nhờ bộ vi xử lý tân tiến

HP VICTUS 16-e1104AX 7C0S9PA cho phép người dùng không chỉ chiến đấu ở mọi tựa game hấp dẫn một cách trơn tru mà còn thao tác hiệu quả các tác vụ văn phòng như Word, Excel,... nhờ chip AMD Ryzen 7 dòng 6800H có 8 nhân 16 luồng, với tốc độ tối đa lên đến 4.7 GHz nhờ Turbo Boost. Không chỉ vậy, máy còn hỗ trợ bạn xử lý hình ảnh, làm poster, banner, render video cơ bản một cách hiệu quả.

Mang đến hiệu suất chơi game đáng kinh ngạc cùng giải pháp đồ họa vượt bậc nhờ card đồ họa rời NVIDIA Geforce RTX 3050, 4GB, cho bạn thỏa sức sáng tạo với các ứng dụng nhà Adobe, hay tận hưởng chất lượng hình ảnh 8K rõ nét trong từng chuyển động ở thế ảo của cả các tựa game có đồ họa cao như Cyberpunk 2077, Valorant, CS:GO, Fifa Online 4,…',
        '31.290.000 ₫',
        '30.590.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        'f7bced87-fd12-48aa-848e-8e766042d747',
        'HP',
        ' HP Gaming Victus 15-fa1085TX 8C5M2PA ',
        '',
        'Thiết kế mới lạ - Hiệu năng vượt trên giá thành

Tối giản nhưng vẫn toát lên khí thế mạnh mẽ của một chiếc laptop gaming, HP VICTUS 16-e1104AX 7C0S9PA sẽ cùng bạn chiến đấu trên các chiến trường ảo, bất bại ở mọi thể loại game. Được trang bị CPU AMD Ryzen thế hệ mới, màn hình Full HD tiêu chuẩn và card đồ họa mạnh. HP Gaming Victus 16 chính là item mà nhiều game thủ hay sinh viên hằng mong đợi - một chiếc laptop – máy tính xách tay có cấu hình mạnh nhưng sở hữu mức giá hợp lý.
Thiết kế hiện đại, thanh lịch, phù hợp nhiều môi trường làm việc

HP VICTUS 16-e1104AX 7C0S9PA sở hữu thiết kế mạnh mẽ với các cạnh sắc nét, Logo biểu tượng “V” phản kim loại đồng bộ hợp thời trang cùng với tông màu đen huyền bí mang lại một tổng thể trang nhã, lịch sự điểm một chút nét gaming.   

Khe thoát khí nóng siêu rộng vừa tạo điểm nhấn vừa nâng cao hiệu suất tản nhiệt. Chiếc laptop HP này được chế tác bền bỉ với vỏ nhựa chắc chắn, sở hữu trọng lượng 2.4 kg và độ dày 23.5 mm, là kích thước phù hợp cho một chiếc gaming, sẵn sàng đồng hành cùng bạn đến khắp mọi nơi.
Chiến game mượt mà ở mọi đấu trường nhờ bộ vi xử lý tân tiến

HP VICTUS 16-e1104AX 7C0S9PA cho phép người dùng không chỉ chiến đấu ở mọi tựa game hấp dẫn một cách trơn tru mà còn thao tác hiệu quả các tác vụ văn phòng như Word, Excel,... nhờ chip AMD Ryzen 7 dòng 6800H có 8 nhân 16 luồng, với tốc độ tối đa lên đến 4.7 GHz nhờ Turbo Boost. Không chỉ vậy, máy còn hỗ trợ bạn xử lý hình ảnh, làm poster, banner, render video cơ bản một cách hiệu quả.

Mang đến hiệu suất chơi game đáng kinh ngạc cùng giải pháp đồ họa vượt bậc nhờ card đồ họa rời NVIDIA Geforce RTX 3050, 4GB, cho bạn thỏa sức sáng tạo với các ứng dụng nhà Adobe, hay tận hưởng chất lượng hình ảnh 8K rõ nét trong từng chuyển động ở thế ảo của cả các tựa game có đồ họa cao như Cyberpunk 2077, Valorant, CS:GO, Fifa Online 4,…',
        '33.990.000 ₫',
        '32.790.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        'b6404d6b-f82e-4f0c-b773-9ee2225f1b12',
        'HP',
        ' HP Gaming Victus 15-fa1139TX 8Y6W3PA ',
        '',
        'Thiết kế mới lạ - Hiệu năng vượt trên giá thành

Tối giản nhưng vẫn toát lên khí thế mạnh mẽ của một chiếc laptop gaming, HP VICTUS 16-e1104AX 7C0S9PA sẽ cùng bạn chiến đấu trên các chiến trường ảo, bất bại ở mọi thể loại game. Được trang bị CPU AMD Ryzen thế hệ mới, màn hình Full HD tiêu chuẩn và card đồ họa mạnh. HP Gaming Victus 16 chính là item mà nhiều game thủ hay sinh viên hằng mong đợi - một chiếc laptop – máy tính xách tay có cấu hình mạnh nhưng sở hữu mức giá hợp lý.
Thiết kế hiện đại, thanh lịch, phù hợp nhiều môi trường làm việc

HP VICTUS 16-e1104AX 7C0S9PA sở hữu thiết kế mạnh mẽ với các cạnh sắc nét, Logo biểu tượng “V” phản kim loại đồng bộ hợp thời trang cùng với tông màu đen huyền bí mang lại một tổng thể trang nhã, lịch sự điểm một chút nét gaming.   

Khe thoát khí nóng siêu rộng vừa tạo điểm nhấn vừa nâng cao hiệu suất tản nhiệt. Chiếc laptop HP này được chế tác bền bỉ với vỏ nhựa chắc chắn, sở hữu trọng lượng 2.4 kg và độ dày 23.5 mm, là kích thước phù hợp cho một chiếc gaming, sẵn sàng đồng hành cùng bạn đến khắp mọi nơi.
Chiến game mượt mà ở mọi đấu trường nhờ bộ vi xử lý tân tiến

HP VICTUS 16-e1104AX 7C0S9PA cho phép người dùng không chỉ chiến đấu ở mọi tựa game hấp dẫn một cách trơn tru mà còn thao tác hiệu quả các tác vụ văn phòng như Word, Excel,... nhờ chip AMD Ryzen 7 dòng 6800H có 8 nhân 16 luồng, với tốc độ tối đa lên đến 4.7 GHz nhờ Turbo Boost. Không chỉ vậy, máy còn hỗ trợ bạn xử lý hình ảnh, làm poster, banner, render video cơ bản một cách hiệu quả.

Mang đến hiệu suất chơi game đáng kinh ngạc cùng giải pháp đồ họa vượt bậc nhờ card đồ họa rời NVIDIA Geforce RTX 3050, 4GB, cho bạn thỏa sức sáng tạo với các ứng dụng nhà Adobe, hay tận hưởng chất lượng hình ảnh 8K rõ nét trong từng chuyển động ở thế ảo của cả các tựa game có đồ họa cao như Cyberpunk 2077, Valorant, CS:GO, Fifa Online 4,…',
        '22.900.000 ₫',
        '19.890.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        '62c06647-4724-4ca1-bdce-bda364fee458',
        'HP',
        ' HP Gaming Victus 16-e1107AX 7C140PA ',
        '',
        'Thiết kế mới lạ - Hiệu năng vượt trên giá thành

Tối giản nhưng vẫn toát lên khí thế mạnh mẽ của một chiếc laptop gaming, HP VICTUS 16-e1104AX 7C0S9PA sẽ cùng bạn chiến đấu trên các chiến trường ảo, bất bại ở mọi thể loại game. Được trang bị CPU AMD Ryzen thế hệ mới, màn hình Full HD tiêu chuẩn và card đồ họa mạnh. HP Gaming Victus 16 chính là item mà nhiều game thủ hay sinh viên hằng mong đợi - một chiếc laptop – máy tính xách tay có cấu hình mạnh nhưng sở hữu mức giá hợp lý.
Thiết kế hiện đại, thanh lịch, phù hợp nhiều môi trường làm việc

HP VICTUS 16-e1104AX 7C0S9PA sở hữu thiết kế mạnh mẽ với các cạnh sắc nét, Logo biểu tượng “V” phản kim loại đồng bộ hợp thời trang cùng với tông màu đen huyền bí mang lại một tổng thể trang nhã, lịch sự điểm một chút nét gaming.   

Khe thoát khí nóng siêu rộng vừa tạo điểm nhấn vừa nâng cao hiệu suất tản nhiệt. Chiếc laptop HP này được chế tác bền bỉ với vỏ nhựa chắc chắn, sở hữu trọng lượng 2.4 kg và độ dày 23.5 mm, là kích thước phù hợp cho một chiếc gaming, sẵn sàng đồng hành cùng bạn đến khắp mọi nơi.
Chiến game mượt mà ở mọi đấu trường nhờ bộ vi xử lý tân tiến

HP VICTUS 16-e1104AX 7C0S9PA cho phép người dùng không chỉ chiến đấu ở mọi tựa game hấp dẫn một cách trơn tru mà còn thao tác hiệu quả các tác vụ văn phòng như Word, Excel,... nhờ chip AMD Ryzen 7 dòng 6800H có 8 nhân 16 luồng, với tốc độ tối đa lên đến 4.7 GHz nhờ Turbo Boost. Không chỉ vậy, máy còn hỗ trợ bạn xử lý hình ảnh, làm poster, banner, render video cơ bản một cách hiệu quả.

Mang đến hiệu suất chơi game đáng kinh ngạc cùng giải pháp đồ họa vượt bậc nhờ card đồ họa rời NVIDIA Geforce RTX 3050, 4GB, cho bạn thỏa sức sáng tạo với các ứng dụng nhà Adobe, hay tận hưởng chất lượng hình ảnh 8K rõ nét trong từng chuyển động ở thế ảo của cả các tựa game có đồ họa cao như Cyberpunk 2077, Valorant, CS:GO, Fifa Online 4,…',
        '25.490.000 ₫',
        '17.590.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        'f5b51e73-7906-46a9-b8f0-1b6552fe1ac8',
        'HP',
        'Laptop HP Gaming Victus 16-d1187TX 7C0S4PA ',
        '',
        'Thiết kế mới lạ - Hiệu năng vượt trên giá thành

Tối giản nhưng vẫn toát lên khí thế mạnh mẽ của một chiếc laptop gaming, HP VICTUS 16-e1104AX 7C0S9PA sẽ cùng bạn chiến đấu trên các chiến trường ảo, bất bại ở mọi thể loại game. Được trang bị CPU AMD Ryzen thế hệ mới, màn hình Full HD tiêu chuẩn và card đồ họa mạnh. HP Gaming Victus 16 chính là item mà nhiều game thủ hay sinh viên hằng mong đợi - một chiếc laptop – máy tính xách tay có cấu hình mạnh nhưng sở hữu mức giá hợp lý.
Thiết kế hiện đại, thanh lịch, phù hợp nhiều môi trường làm việc

HP VICTUS 16-e1104AX 7C0S9PA sở hữu thiết kế mạnh mẽ với các cạnh sắc nét, Logo biểu tượng “V” phản kim loại đồng bộ hợp thời trang cùng với tông màu đen huyền bí mang lại một tổng thể trang nhã, lịch sự điểm một chút nét gaming.   

Khe thoát khí nóng siêu rộng vừa tạo điểm nhấn vừa nâng cao hiệu suất tản nhiệt. Chiếc laptop HP này được chế tác bền bỉ với vỏ nhựa chắc chắn, sở hữu trọng lượng 2.4 kg và độ dày 23.5 mm, là kích thước phù hợp cho một chiếc gaming, sẵn sàng đồng hành cùng bạn đến khắp mọi nơi.
Chiến game mượt mà ở mọi đấu trường nhờ bộ vi xử lý tân tiến

HP VICTUS 16-e1104AX 7C0S9PA cho phép người dùng không chỉ chiến đấu ở mọi tựa game hấp dẫn một cách trơn tru mà còn thao tác hiệu quả các tác vụ văn phòng như Word, Excel,... nhờ chip AMD Ryzen 7 dòng 6800H có 8 nhân 16 luồng, với tốc độ tối đa lên đến 4.7 GHz nhờ Turbo Boost. Không chỉ vậy, máy còn hỗ trợ bạn xử lý hình ảnh, làm poster, banner, render video cơ bản một cách hiệu quả.

Mang đến hiệu suất chơi game đáng kinh ngạc cùng giải pháp đồ họa vượt bậc nhờ card đồ họa rời NVIDIA Geforce RTX 3050, 4GB, cho bạn thỏa sức sáng tạo với các ứng dụng nhà Adobe, hay tận hưởng chất lượng hình ảnh 8K rõ nét trong từng chuyển động ở thế ảo của cả các tựa game có đồ họa cao như Cyberpunk 2077, Valorant, CS:GO, Fifa Online 4,…',
        '32.990.000 ₫',
        '24.990.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        '5b5bf20a-28b8-493d-ad3a-c7a3de216f59',
        'HP',
        'Laptop Victus Gaming\n\n\nLaptop HP Gaming Victus 16-e1104AX 7C0S9PA ',
        '',
        'Thiết kế mới lạ - Hiệu năng vượt trên giá thành

Tối giản nhưng vẫn toát lên khí thế mạnh mẽ của một chiếc laptop gaming, HP VICTUS 16-e1104AX 7C0S9PA sẽ cùng bạn chiến đấu trên các chiến trường ảo, bất bại ở mọi thể loại game. Được trang bị CPU AMD Ryzen thế hệ mới, màn hình Full HD tiêu chuẩn và card đồ họa mạnh. HP Gaming Victus 16 chính là item mà nhiều game thủ hay sinh viên hằng mong đợi - một chiếc laptop – máy tính xách tay có cấu hình mạnh nhưng sở hữu mức giá hợp lý.
Thiết kế hiện đại, thanh lịch, phù hợp nhiều môi trường làm việc

HP VICTUS 16-e1104AX 7C0S9PA sở hữu thiết kế mạnh mẽ với các cạnh sắc nét, Logo biểu tượng “V” phản kim loại đồng bộ hợp thời trang cùng với tông màu đen huyền bí mang lại một tổng thể trang nhã, lịch sự điểm một chút nét gaming.   

Khe thoát khí nóng siêu rộng vừa tạo điểm nhấn vừa nâng cao hiệu suất tản nhiệt. Chiếc laptop HP này được chế tác bền bỉ với vỏ nhựa chắc chắn, sở hữu trọng lượng 2.4 kg và độ dày 23.5 mm, là kích thước phù hợp cho một chiếc gaming, sẵn sàng đồng hành cùng bạn đến khắp mọi nơi.
Chiến game mượt mà ở mọi đấu trường nhờ bộ vi xử lý tân tiến

HP VICTUS 16-e1104AX 7C0S9PA cho phép người dùng không chỉ chiến đấu ở mọi tựa game hấp dẫn một cách trơn tru mà còn thao tác hiệu quả các tác vụ văn phòng như Word, Excel,... nhờ chip AMD Ryzen 7 dòng 6800H có 8 nhân 16 luồng, với tốc độ tối đa lên đến 4.7 GHz nhờ Turbo Boost. Không chỉ vậy, máy còn hỗ trợ bạn xử lý hình ảnh, làm poster, banner, render video cơ bản một cách hiệu quả.

Mang đến hiệu suất chơi game đáng kinh ngạc cùng giải pháp đồ họa vượt bậc nhờ card đồ họa rời NVIDIA Geforce RTX 3050, 4GB, cho bạn thỏa sức sáng tạo với các ứng dụng nhà Adobe, hay tận hưởng chất lượng hình ảnh 8K rõ nét trong từng chuyển động ở thế ảo của cả các tựa game có đồ họa cao như Cyberpunk 2077, Valorant, CS:GO, Fifa Online 4,…',
        '29.290.000 ₫',
        '23.800.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        'a4fa3546-58c5-4468-87fd-6a01d70308e2',
        'HP',
        'Laptop Victus Gaming\n\n\nLaptop HP Gaming Victus 16-d1193TX 7C138PA ',
        '',
        'Thiết kế mới lạ - Hiệu năng vượt trên giá thành

Tối giản nhưng vẫn toát lên khí thế mạnh mẽ của một chiếc laptop gaming, HP VICTUS 16-e1104AX 7C0S9PA sẽ cùng bạn chiến đấu trên các chiến trường ảo, bất bại ở mọi thể loại game. Được trang bị CPU AMD Ryzen thế hệ mới, màn hình Full HD tiêu chuẩn và card đồ họa mạnh. HP Gaming Victus 16 chính là item mà nhiều game thủ hay sinh viên hằng mong đợi - một chiếc laptop – máy tính xách tay có cấu hình mạnh nhưng sở hữu mức giá hợp lý.
Thiết kế hiện đại, thanh lịch, phù hợp nhiều môi trường làm việc

HP VICTUS 16-e1104AX 7C0S9PA sở hữu thiết kế mạnh mẽ với các cạnh sắc nét, Logo biểu tượng “V” phản kim loại đồng bộ hợp thời trang cùng với tông màu đen huyền bí mang lại một tổng thể trang nhã, lịch sự điểm một chút nét gaming.   

Khe thoát khí nóng siêu rộng vừa tạo điểm nhấn vừa nâng cao hiệu suất tản nhiệt. Chiếc laptop HP này được chế tác bền bỉ với vỏ nhựa chắc chắn, sở hữu trọng lượng 2.4 kg và độ dày 23.5 mm, là kích thước phù hợp cho một chiếc gaming, sẵn sàng đồng hành cùng bạn đến khắp mọi nơi.
Chiến game mượt mà ở mọi đấu trường nhờ bộ vi xử lý tân tiến

HP VICTUS 16-e1104AX 7C0S9PA cho phép người dùng không chỉ chiến đấu ở mọi tựa game hấp dẫn một cách trơn tru mà còn thao tác hiệu quả các tác vụ văn phòng như Word, Excel,... nhờ chip AMD Ryzen 7 dòng 6800H có 8 nhân 16 luồng, với tốc độ tối đa lên đến 4.7 GHz nhờ Turbo Boost. Không chỉ vậy, máy còn hỗ trợ bạn xử lý hình ảnh, làm poster, banner, render video cơ bản một cách hiệu quả.

Mang đến hiệu suất chơi game đáng kinh ngạc cùng giải pháp đồ họa vượt bậc nhờ card đồ họa rời NVIDIA Geforce RTX 3050, 4GB, cho bạn thỏa sức sáng tạo với các ứng dụng nhà Adobe, hay tận hưởng chất lượng hình ảnh 8K rõ nét trong từng chuyển động ở thế ảo của cả các tựa game có đồ họa cao như Cyberpunk 2077, Valorant, CS:GO, Fifa Online 4,…',
        '27.690.000 ₫',
        '22.490.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        '968823b4-9a31-4eb1-9287-a4a22a02c927',
        'HP',
        'Laptop HP Gaming Victus 15-fa0110TX 7C0R3PA ',
        '',
        'Thiết kế mới lạ - Hiệu năng vượt trên giá thành

Tối giản nhưng vẫn toát lên khí thế mạnh mẽ của một chiếc laptop gaming, HP VICTUS 16-e1104AX 7C0S9PA sẽ cùng bạn chiến đấu trên các chiến trường ảo, bất bại ở mọi thể loại game. Được trang bị CPU AMD Ryzen thế hệ mới, màn hình Full HD tiêu chuẩn và card đồ họa mạnh. HP Gaming Victus 16 chính là item mà nhiều game thủ hay sinh viên hằng mong đợi - một chiếc laptop – máy tính xách tay có cấu hình mạnh nhưng sở hữu mức giá hợp lý.
Thiết kế hiện đại, thanh lịch, phù hợp nhiều môi trường làm việc

HP VICTUS 16-e1104AX 7C0S9PA sở hữu thiết kế mạnh mẽ với các cạnh sắc nét, Logo biểu tượng “V” phản kim loại đồng bộ hợp thời trang cùng với tông màu đen huyền bí mang lại một tổng thể trang nhã, lịch sự điểm một chút nét gaming.   

Khe thoát khí nóng siêu rộng vừa tạo điểm nhấn vừa nâng cao hiệu suất tản nhiệt. Chiếc laptop HP này được chế tác bền bỉ với vỏ nhựa chắc chắn, sở hữu trọng lượng 2.4 kg và độ dày 23.5 mm, là kích thước phù hợp cho một chiếc gaming, sẵn sàng đồng hành cùng bạn đến khắp mọi nơi.
Chiến game mượt mà ở mọi đấu trường nhờ bộ vi xử lý tân tiến

HP VICTUS 16-e1104AX 7C0S9PA cho phép người dùng không chỉ chiến đấu ở mọi tựa game hấp dẫn một cách trơn tru mà còn thao tác hiệu quả các tác vụ văn phòng như Word, Excel,... nhờ chip AMD Ryzen 7 dòng 6800H có 8 nhân 16 luồng, với tốc độ tối đa lên đến 4.7 GHz nhờ Turbo Boost. Không chỉ vậy, máy còn hỗ trợ bạn xử lý hình ảnh, làm poster, banner, render video cơ bản một cách hiệu quả.

Mang đến hiệu suất chơi game đáng kinh ngạc cùng giải pháp đồ họa vượt bậc nhờ card đồ họa rời NVIDIA Geforce RTX 3050, 4GB, cho bạn thỏa sức sáng tạo với các ứng dụng nhà Adobe, hay tận hưởng chất lượng hình ảnh 8K rõ nét trong từng chuyển động ở thế ảo của cả các tựa game có đồ họa cao như Cyberpunk 2077, Valorant, CS:GO, Fifa Online 4,…',
        '30.490.000 ₫',
        '23.990.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        '60c49929-f517-4a2b-9e78-cca687d123af',
        'HP',
        'Laptop HP Gaming Victus 16-e1105AX 7C0T0PA ',
        '',
        'Thiết kế mới lạ - Hiệu năng vượt trên giá thành

Tối giản nhưng vẫn toát lên khí thế mạnh mẽ của một chiếc laptop gaming, HP VICTUS 16-e1104AX 7C0S9PA sẽ cùng bạn chiến đấu trên các chiến trường ảo, bất bại ở mọi thể loại game. Được trang bị CPU AMD Ryzen thế hệ mới, màn hình Full HD tiêu chuẩn và card đồ họa mạnh. HP Gaming Victus 16 chính là item mà nhiều game thủ hay sinh viên hằng mong đợi - một chiếc laptop – máy tính xách tay có cấu hình mạnh nhưng sở hữu mức giá hợp lý.
Thiết kế hiện đại, thanh lịch, phù hợp nhiều môi trường làm việc

HP VICTUS 16-e1104AX 7C0S9PA sở hữu thiết kế mạnh mẽ với các cạnh sắc nét, Logo biểu tượng “V” phản kim loại đồng bộ hợp thời trang cùng với tông màu đen huyền bí mang lại một tổng thể trang nhã, lịch sự điểm một chút nét gaming.   

Khe thoát khí nóng siêu rộng vừa tạo điểm nhấn vừa nâng cao hiệu suất tản nhiệt. Chiếc laptop HP này được chế tác bền bỉ với vỏ nhựa chắc chắn, sở hữu trọng lượng 2.4 kg và độ dày 23.5 mm, là kích thước phù hợp cho một chiếc gaming, sẵn sàng đồng hành cùng bạn đến khắp mọi nơi.
Chiến game mượt mà ở mọi đấu trường nhờ bộ vi xử lý tân tiến

HP VICTUS 16-e1104AX 7C0S9PA cho phép người dùng không chỉ chiến đấu ở mọi tựa game hấp dẫn một cách trơn tru mà còn thao tác hiệu quả các tác vụ văn phòng như Word, Excel,... nhờ chip AMD Ryzen 7 dòng 6800H có 8 nhân 16 luồng, với tốc độ tối đa lên đến 4.7 GHz nhờ Turbo Boost. Không chỉ vậy, máy còn hỗ trợ bạn xử lý hình ảnh, làm poster, banner, render video cơ bản một cách hiệu quả.

Mang đến hiệu suất chơi game đáng kinh ngạc cùng giải pháp đồ họa vượt bậc nhờ card đồ họa rời NVIDIA Geforce RTX 3050, 4GB, cho bạn thỏa sức sáng tạo với các ứng dụng nhà Adobe, hay tận hưởng chất lượng hình ảnh 8K rõ nét trong từng chuyển động ở thế ảo của cả các tựa game có đồ họa cao như Cyberpunk 2077, Valorant, CS:GO, Fifa Online 4,…',
        '27.990.000 ₫',
        '20.990.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        'bbe68c1e-2512-4de7-927c-78973eecf4cb',
        'HP',
        'Laptop Victus Gaming\n\n\nLaptop HP Gaming Victus 15-fa0108TX 7C0X0PA ',
        '',
        'Thiết kế mới lạ - Hiệu năng vượt trên giá thành

Tối giản nhưng vẫn toát lên khí thế mạnh mẽ của một chiếc laptop gaming, HP VICTUS 16-e1104AX 7C0S9PA sẽ cùng bạn chiến đấu trên các chiến trường ảo, bất bại ở mọi thể loại game. Được trang bị CPU AMD Ryzen thế hệ mới, màn hình Full HD tiêu chuẩn và card đồ họa mạnh. HP Gaming Victus 16 chính là item mà nhiều game thủ hay sinh viên hằng mong đợi - một chiếc laptop – máy tính xách tay có cấu hình mạnh nhưng sở hữu mức giá hợp lý.
Thiết kế hiện đại, thanh lịch, phù hợp nhiều môi trường làm việc

HP VICTUS 16-e1104AX 7C0S9PA sở hữu thiết kế mạnh mẽ với các cạnh sắc nét, Logo biểu tượng “V” phản kim loại đồng bộ hợp thời trang cùng với tông màu đen huyền bí mang lại một tổng thể trang nhã, lịch sự điểm một chút nét gaming.   

Khe thoát khí nóng siêu rộng vừa tạo điểm nhấn vừa nâng cao hiệu suất tản nhiệt. Chiếc laptop HP này được chế tác bền bỉ với vỏ nhựa chắc chắn, sở hữu trọng lượng 2.4 kg và độ dày 23.5 mm, là kích thước phù hợp cho một chiếc gaming, sẵn sàng đồng hành cùng bạn đến khắp mọi nơi.
Chiến game mượt mà ở mọi đấu trường nhờ bộ vi xử lý tân tiến

HP VICTUS 16-e1104AX 7C0S9PA cho phép người dùng không chỉ chiến đấu ở mọi tựa game hấp dẫn một cách trơn tru mà còn thao tác hiệu quả các tác vụ văn phòng như Word, Excel,... nhờ chip AMD Ryzen 7 dòng 6800H có 8 nhân 16 luồng, với tốc độ tối đa lên đến 4.7 GHz nhờ Turbo Boost. Không chỉ vậy, máy còn hỗ trợ bạn xử lý hình ảnh, làm poster, banner, render video cơ bản một cách hiệu quả.

Mang đến hiệu suất chơi game đáng kinh ngạc cùng giải pháp đồ họa vượt bậc nhờ card đồ họa rời NVIDIA Geforce RTX 3050, 4GB, cho bạn thỏa sức sáng tạo với các ứng dụng nhà Adobe, hay tận hưởng chất lượng hình ảnh 8K rõ nét trong từng chuyển động ở thế ảo của cả các tựa game có đồ họa cao như Cyberpunk 2077, Valorant, CS:GO, Fifa Online 4,…',
        '32.990.000 ₫',
        '25.990.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        'bbd53b40-6889-49f9-b968-2602159ce73f',
        'HP',
        'Laptop HP Gaming Victus 16-e1106AX 7C0T1PA ',
        '',
        'Thiết kế mới lạ - Hiệu năng vượt trên giá thành

Tối giản nhưng vẫn toát lên khí thế mạnh mẽ của một chiếc laptop gaming, HP VICTUS 16-e1104AX 7C0S9PA sẽ cùng bạn chiến đấu trên các chiến trường ảo, bất bại ở mọi thể loại game. Được trang bị CPU AMD Ryzen thế hệ mới, màn hình Full HD tiêu chuẩn và card đồ họa mạnh. HP Gaming Victus 16 chính là item mà nhiều game thủ hay sinh viên hằng mong đợi - một chiếc laptop – máy tính xách tay có cấu hình mạnh nhưng sở hữu mức giá hợp lý.
Thiết kế hiện đại, thanh lịch, phù hợp nhiều môi trường làm việc

HP VICTUS 16-e1104AX 7C0S9PA sở hữu thiết kế mạnh mẽ với các cạnh sắc nét, Logo biểu tượng “V” phản kim loại đồng bộ hợp thời trang cùng với tông màu đen huyền bí mang lại một tổng thể trang nhã, lịch sự điểm một chút nét gaming.   

Khe thoát khí nóng siêu rộng vừa tạo điểm nhấn vừa nâng cao hiệu suất tản nhiệt. Chiếc laptop HP này được chế tác bền bỉ với vỏ nhựa chắc chắn, sở hữu trọng lượng 2.4 kg và độ dày 23.5 mm, là kích thước phù hợp cho một chiếc gaming, sẵn sàng đồng hành cùng bạn đến khắp mọi nơi.
Chiến game mượt mà ở mọi đấu trường nhờ bộ vi xử lý tân tiến

HP VICTUS 16-e1104AX 7C0S9PA cho phép người dùng không chỉ chiến đấu ở mọi tựa game hấp dẫn một cách trơn tru mà còn thao tác hiệu quả các tác vụ văn phòng như Word, Excel,... nhờ chip AMD Ryzen 7 dòng 6800H có 8 nhân 16 luồng, với tốc độ tối đa lên đến 4.7 GHz nhờ Turbo Boost. Không chỉ vậy, máy còn hỗ trợ bạn xử lý hình ảnh, làm poster, banner, render video cơ bản một cách hiệu quả.

Mang đến hiệu suất chơi game đáng kinh ngạc cùng giải pháp đồ họa vượt bậc nhờ card đồ họa rời NVIDIA Geforce RTX 3050, 4GB, cho bạn thỏa sức sáng tạo với các ứng dụng nhà Adobe, hay tận hưởng chất lượng hình ảnh 8K rõ nét trong từng chuyển động ở thế ảo của cả các tựa game có đồ họa cao như Cyberpunk 2077, Valorant, CS:GO, Fifa Online 4,…',
        '26.490.000 ₫',
        '22.490.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        '6c786c40-f99a-40ce-a6fc-b652063e2c28',
        'HP',
        'Laptop Victus Gaming\n\n\nLaptop HP Gaming Victus 16-d1185TX 7C0S3PA ',
        '',
        'Thiết kế mới lạ - Hiệu năng vượt trên giá thành

Tối giản nhưng vẫn toát lên khí thế mạnh mẽ của một chiếc laptop gaming, HP VICTUS 16-e1104AX 7C0S9PA sẽ cùng bạn chiến đấu trên các chiến trường ảo, bất bại ở mọi thể loại game. Được trang bị CPU AMD Ryzen thế hệ mới, màn hình Full HD tiêu chuẩn và card đồ họa mạnh. HP Gaming Victus 16 chính là item mà nhiều game thủ hay sinh viên hằng mong đợi - một chiếc laptop – máy tính xách tay có cấu hình mạnh nhưng sở hữu mức giá hợp lý.
Thiết kế hiện đại, thanh lịch, phù hợp nhiều môi trường làm việc

HP VICTUS 16-e1104AX 7C0S9PA sở hữu thiết kế mạnh mẽ với các cạnh sắc nét, Logo biểu tượng “V” phản kim loại đồng bộ hợp thời trang cùng với tông màu đen huyền bí mang lại một tổng thể trang nhã, lịch sự điểm một chút nét gaming.   

Khe thoát khí nóng siêu rộng vừa tạo điểm nhấn vừa nâng cao hiệu suất tản nhiệt. Chiếc laptop HP này được chế tác bền bỉ với vỏ nhựa chắc chắn, sở hữu trọng lượng 2.4 kg và độ dày 23.5 mm, là kích thước phù hợp cho một chiếc gaming, sẵn sàng đồng hành cùng bạn đến khắp mọi nơi.
Chiến game mượt mà ở mọi đấu trường nhờ bộ vi xử lý tân tiến

HP VICTUS 16-e1104AX 7C0S9PA cho phép người dùng không chỉ chiến đấu ở mọi tựa game hấp dẫn một cách trơn tru mà còn thao tác hiệu quả các tác vụ văn phòng như Word, Excel,... nhờ chip AMD Ryzen 7 dòng 6800H có 8 nhân 16 luồng, với tốc độ tối đa lên đến 4.7 GHz nhờ Turbo Boost. Không chỉ vậy, máy còn hỗ trợ bạn xử lý hình ảnh, làm poster, banner, render video cơ bản một cách hiệu quả.

Mang đến hiệu suất chơi game đáng kinh ngạc cùng giải pháp đồ họa vượt bậc nhờ card đồ họa rời NVIDIA Geforce RTX 3050, 4GB, cho bạn thỏa sức sáng tạo với các ứng dụng nhà Adobe, hay tận hưởng chất lượng hình ảnh 8K rõ nét trong từng chuyển động ở thế ảo của cả các tựa game có đồ họa cao như Cyberpunk 2077, Valorant, CS:GO, Fifa Online 4,…',
        '37.990.000 ₫',
        '29.990.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        '8b3d8c3d-29c3-49f3-bd24-3ce865462a4d',
        'HP',
        'Laptop Victus Gaming\n\n\nLaptop HP Gaming Victus 15-fa1087TX 8C5M4PA ',
        '',
        'Thiết kế mới lạ - Hiệu năng vượt trên giá thành

Tối giản nhưng vẫn toát lên khí thế mạnh mẽ của một chiếc laptop gaming, HP VICTUS 16-e1104AX 7C0S9PA sẽ cùng bạn chiến đấu trên các chiến trường ảo, bất bại ở mọi thể loại game. Được trang bị CPU AMD Ryzen thế hệ mới, màn hình Full HD tiêu chuẩn và card đồ họa mạnh. HP Gaming Victus 16 chính là item mà nhiều game thủ hay sinh viên hằng mong đợi - một chiếc laptop – máy tính xách tay có cấu hình mạnh nhưng sở hữu mức giá hợp lý.
Thiết kế hiện đại, thanh lịch, phù hợp nhiều môi trường làm việc

HP VICTUS 16-e1104AX 7C0S9PA sở hữu thiết kế mạnh mẽ với các cạnh sắc nét, Logo biểu tượng “V” phản kim loại đồng bộ hợp thời trang cùng với tông màu đen huyền bí mang lại một tổng thể trang nhã, lịch sự điểm một chút nét gaming.   

Khe thoát khí nóng siêu rộng vừa tạo điểm nhấn vừa nâng cao hiệu suất tản nhiệt. Chiếc laptop HP này được chế tác bền bỉ với vỏ nhựa chắc chắn, sở hữu trọng lượng 2.4 kg và độ dày 23.5 mm, là kích thước phù hợp cho một chiếc gaming, sẵn sàng đồng hành cùng bạn đến khắp mọi nơi.
Chiến game mượt mà ở mọi đấu trường nhờ bộ vi xử lý tân tiến

HP VICTUS 16-e1104AX 7C0S9PA cho phép người dùng không chỉ chiến đấu ở mọi tựa game hấp dẫn một cách trơn tru mà còn thao tác hiệu quả các tác vụ văn phòng như Word, Excel,... nhờ chip AMD Ryzen 7 dòng 6800H có 8 nhân 16 luồng, với tốc độ tối đa lên đến 4.7 GHz nhờ Turbo Boost. Không chỉ vậy, máy còn hỗ trợ bạn xử lý hình ảnh, làm poster, banner, render video cơ bản một cách hiệu quả.

Mang đến hiệu suất chơi game đáng kinh ngạc cùng giải pháp đồ họa vượt bậc nhờ card đồ họa rời NVIDIA Geforce RTX 3050, 4GB, cho bạn thỏa sức sáng tạo với các ứng dụng nhà Adobe, hay tận hưởng chất lượng hình ảnh 8K rõ nét trong từng chuyển động ở thế ảo của cả các tựa game có đồ họa cao như Cyberpunk 2077, Valorant, CS:GO, Fifa Online 4,…',
        '32.290.000 ₫',
        '31.590.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        '852c2253-a44c-475f-9311-66e0ea39a652',
        'HP',
        'Laptop HP Gaming Victus 16-s0078AX 8C5N7PA ',
        '',
        'Thiết kế mới lạ - Hiệu năng vượt trên giá thành

Tối giản nhưng vẫn toát lên khí thế mạnh mẽ của một chiếc laptop gaming, HP VICTUS 16-e1104AX 7C0S9PA sẽ cùng bạn chiến đấu trên các chiến trường ảo, bất bại ở mọi thể loại game. Được trang bị CPU AMD Ryzen thế hệ mới, màn hình Full HD tiêu chuẩn và card đồ họa mạnh. HP Gaming Victus 16 chính là item mà nhiều game thủ hay sinh viên hằng mong đợi - một chiếc laptop – máy tính xách tay có cấu hình mạnh nhưng sở hữu mức giá hợp lý.
Thiết kế hiện đại, thanh lịch, phù hợp nhiều môi trường làm việc

HP VICTUS 16-e1104AX 7C0S9PA sở hữu thiết kế mạnh mẽ với các cạnh sắc nét, Logo biểu tượng “V” phản kim loại đồng bộ hợp thời trang cùng với tông màu đen huyền bí mang lại một tổng thể trang nhã, lịch sự điểm một chút nét gaming.   

Khe thoát khí nóng siêu rộng vừa tạo điểm nhấn vừa nâng cao hiệu suất tản nhiệt. Chiếc laptop HP này được chế tác bền bỉ với vỏ nhựa chắc chắn, sở hữu trọng lượng 2.4 kg và độ dày 23.5 mm, là kích thước phù hợp cho một chiếc gaming, sẵn sàng đồng hành cùng bạn đến khắp mọi nơi.
Chiến game mượt mà ở mọi đấu trường nhờ bộ vi xử lý tân tiến

HP VICTUS 16-e1104AX 7C0S9PA cho phép người dùng không chỉ chiến đấu ở mọi tựa game hấp dẫn một cách trơn tru mà còn thao tác hiệu quả các tác vụ văn phòng như Word, Excel,... nhờ chip AMD Ryzen 7 dòng 6800H có 8 nhân 16 luồng, với tốc độ tối đa lên đến 4.7 GHz nhờ Turbo Boost. Không chỉ vậy, máy còn hỗ trợ bạn xử lý hình ảnh, làm poster, banner, render video cơ bản một cách hiệu quả.

Mang đến hiệu suất chơi game đáng kinh ngạc cùng giải pháp đồ họa vượt bậc nhờ card đồ họa rời NVIDIA Geforce RTX 3050, 4GB, cho bạn thỏa sức sáng tạo với các ứng dụng nhà Adobe, hay tận hưởng chất lượng hình ảnh 8K rõ nét trong từng chuyển động ở thế ảo của cả các tựa game có đồ họa cao như Cyberpunk 2077, Valorant, CS:GO, Fifa Online 4,…',
        '27.390.000 ₫',
        '26.590.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        'd3e24ea6-6d79-4e38-93f6-c752530b7553',
        'HP',
        'Laptop Victus Gaming\n\n\nLaptop HP Gaming Victus 16-r0129TX 8C5N4PA ',
        '',
        'Thiết kế mới lạ - Hiệu năng vượt trên giá thành

Tối giản nhưng vẫn toát lên khí thế mạnh mẽ của một chiếc laptop gaming, HP VICTUS 16-e1104AX 7C0S9PA sẽ cùng bạn chiến đấu trên các chiến trường ảo, bất bại ở mọi thể loại game. Được trang bị CPU AMD Ryzen thế hệ mới, màn hình Full HD tiêu chuẩn và card đồ họa mạnh. HP Gaming Victus 16 chính là item mà nhiều game thủ hay sinh viên hằng mong đợi - một chiếc laptop – máy tính xách tay có cấu hình mạnh nhưng sở hữu mức giá hợp lý.
Thiết kế hiện đại, thanh lịch, phù hợp nhiều môi trường làm việc

HP VICTUS 16-e1104AX 7C0S9PA sở hữu thiết kế mạnh mẽ với các cạnh sắc nét, Logo biểu tượng “V” phản kim loại đồng bộ hợp thời trang cùng với tông màu đen huyền bí mang lại một tổng thể trang nhã, lịch sự điểm một chút nét gaming.   

Khe thoát khí nóng siêu rộng vừa tạo điểm nhấn vừa nâng cao hiệu suất tản nhiệt. Chiếc laptop HP này được chế tác bền bỉ với vỏ nhựa chắc chắn, sở hữu trọng lượng 2.4 kg và độ dày 23.5 mm, là kích thước phù hợp cho một chiếc gaming, sẵn sàng đồng hành cùng bạn đến khắp mọi nơi.
Chiến game mượt mà ở mọi đấu trường nhờ bộ vi xử lý tân tiến

HP VICTUS 16-e1104AX 7C0S9PA cho phép người dùng không chỉ chiến đấu ở mọi tựa game hấp dẫn một cách trơn tru mà còn thao tác hiệu quả các tác vụ văn phòng như Word, Excel,... nhờ chip AMD Ryzen 7 dòng 6800H có 8 nhân 16 luồng, với tốc độ tối đa lên đến 4.7 GHz nhờ Turbo Boost. Không chỉ vậy, máy còn hỗ trợ bạn xử lý hình ảnh, làm poster, banner, render video cơ bản một cách hiệu quả.

Mang đến hiệu suất chơi game đáng kinh ngạc cùng giải pháp đồ họa vượt bậc nhờ card đồ họa rời NVIDIA Geforce RTX 3050, 4GB, cho bạn thỏa sức sáng tạo với các ứng dụng nhà Adobe, hay tận hưởng chất lượng hình ảnh 8K rõ nét trong từng chuyển động ở thế ảo của cả các tựa game có đồ họa cao như Cyberpunk 2077, Valorant, CS:GO, Fifa Online 4,…',
        '32.690.000 ₫',
        '30.990.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        '824dc3cd-0815-4d47-824c-ae4e5ffab686',
        'HP',
        'Laptop Victus Gaming\n\n\nLaptop HP Gaming Victus 16-r0127TX 8C5N2PA ',
        '',
        'Thiết kế mới lạ - Hiệu năng vượt trên giá thành

Tối giản nhưng vẫn toát lên khí thế mạnh mẽ của một chiếc laptop gaming, HP VICTUS 16-e1104AX 7C0S9PA sẽ cùng bạn chiến đấu trên các chiến trường ảo, bất bại ở mọi thể loại game. Được trang bị CPU AMD Ryzen thế hệ mới, màn hình Full HD tiêu chuẩn và card đồ họa mạnh. HP Gaming Victus 16 chính là item mà nhiều game thủ hay sinh viên hằng mong đợi - một chiếc laptop – máy tính xách tay có cấu hình mạnh nhưng sở hữu mức giá hợp lý.
Thiết kế hiện đại, thanh lịch, phù hợp nhiều môi trường làm việc

HP VICTUS 16-e1104AX 7C0S9PA sở hữu thiết kế mạnh mẽ với các cạnh sắc nét, Logo biểu tượng “V” phản kim loại đồng bộ hợp thời trang cùng với tông màu đen huyền bí mang lại một tổng thể trang nhã, lịch sự điểm một chút nét gaming.   

Khe thoát khí nóng siêu rộng vừa tạo điểm nhấn vừa nâng cao hiệu suất tản nhiệt. Chiếc laptop HP này được chế tác bền bỉ với vỏ nhựa chắc chắn, sở hữu trọng lượng 2.4 kg và độ dày 23.5 mm, là kích thước phù hợp cho một chiếc gaming, sẵn sàng đồng hành cùng bạn đến khắp mọi nơi.
Chiến game mượt mà ở mọi đấu trường nhờ bộ vi xử lý tân tiến

HP VICTUS 16-e1104AX 7C0S9PA cho phép người dùng không chỉ chiến đấu ở mọi tựa game hấp dẫn một cách trơn tru mà còn thao tác hiệu quả các tác vụ văn phòng như Word, Excel,... nhờ chip AMD Ryzen 7 dòng 6800H có 8 nhân 16 luồng, với tốc độ tối đa lên đến 4.7 GHz nhờ Turbo Boost. Không chỉ vậy, máy còn hỗ trợ bạn xử lý hình ảnh, làm poster, banner, render video cơ bản một cách hiệu quả.

Mang đến hiệu suất chơi game đáng kinh ngạc cùng giải pháp đồ họa vượt bậc nhờ card đồ họa rời NVIDIA Geforce RTX 3050, 4GB, cho bạn thỏa sức sáng tạo với các ứng dụng nhà Adobe, hay tận hưởng chất lượng hình ảnh 8K rõ nét trong từng chuyển động ở thế ảo của cả các tựa game có đồ họa cao như Cyberpunk 2077, Valorant, CS:GO, Fifa Online 4,…',
        '38.390.000 ₫',
        '37.590.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        'd5ded554-cdaf-4b82-b2ad-4062ed4e1730',
        'HP',
        'Laptop Victus Gaming\n\n\nLaptop HP Gaming Victus 15-fa1089TX 8C5M6PA ',
        '',
        'Thiết kế mới lạ - Hiệu năng vượt trên giá thành

Tối giản nhưng vẫn toát lên khí thế mạnh mẽ của một chiếc laptop gaming, HP VICTUS 16-e1104AX 7C0S9PA sẽ cùng bạn chiến đấu trên các chiến trường ảo, bất bại ở mọi thể loại game. Được trang bị CPU AMD Ryzen thế hệ mới, màn hình Full HD tiêu chuẩn và card đồ họa mạnh. HP Gaming Victus 16 chính là item mà nhiều game thủ hay sinh viên hằng mong đợi - một chiếc laptop – máy tính xách tay có cấu hình mạnh nhưng sở hữu mức giá hợp lý.
Thiết kế hiện đại, thanh lịch, phù hợp nhiều môi trường làm việc

HP VICTUS 16-e1104AX 7C0S9PA sở hữu thiết kế mạnh mẽ với các cạnh sắc nét, Logo biểu tượng “V” phản kim loại đồng bộ hợp thời trang cùng với tông màu đen huyền bí mang lại một tổng thể trang nhã, lịch sự điểm một chút nét gaming.   

Khe thoát khí nóng siêu rộng vừa tạo điểm nhấn vừa nâng cao hiệu suất tản nhiệt. Chiếc laptop HP này được chế tác bền bỉ với vỏ nhựa chắc chắn, sở hữu trọng lượng 2.4 kg và độ dày 23.5 mm, là kích thước phù hợp cho một chiếc gaming, sẵn sàng đồng hành cùng bạn đến khắp mọi nơi.
Chiến game mượt mà ở mọi đấu trường nhờ bộ vi xử lý tân tiến

HP VICTUS 16-e1104AX 7C0S9PA cho phép người dùng không chỉ chiến đấu ở mọi tựa game hấp dẫn một cách trơn tru mà còn thao tác hiệu quả các tác vụ văn phòng như Word, Excel,... nhờ chip AMD Ryzen 7 dòng 6800H có 8 nhân 16 luồng, với tốc độ tối đa lên đến 4.7 GHz nhờ Turbo Boost. Không chỉ vậy, máy còn hỗ trợ bạn xử lý hình ảnh, làm poster, banner, render video cơ bản một cách hiệu quả.

Mang đến hiệu suất chơi game đáng kinh ngạc cùng giải pháp đồ họa vượt bậc nhờ card đồ họa rời NVIDIA Geforce RTX 3050, 4GB, cho bạn thỏa sức sáng tạo với các ứng dụng nhà Adobe, hay tận hưởng chất lượng hình ảnh 8K rõ nét trong từng chuyển động ở thế ảo của cả các tựa game có đồ họa cao như Cyberpunk 2077, Valorant, CS:GO, Fifa Online 4,…',
        '31.290.000 ₫',
        '30.590.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        'eebcb1bf-465b-41a2-9832-98d3a44b6a4f',
        'HP',
        'Laptop Victus Gaming\n\n\nLaptop HP Gaming Victus 15-fa1085TX 8C5M2PA ',
        '',
        'Thiết kế mới lạ - Hiệu năng vượt trên giá thành

Tối giản nhưng vẫn toát lên khí thế mạnh mẽ của một chiếc laptop gaming, HP VICTUS 16-e1104AX 7C0S9PA sẽ cùng bạn chiến đấu trên các chiến trường ảo, bất bại ở mọi thể loại game. Được trang bị CPU AMD Ryzen thế hệ mới, màn hình Full HD tiêu chuẩn và card đồ họa mạnh. HP Gaming Victus 16 chính là item mà nhiều game thủ hay sinh viên hằng mong đợi - một chiếc laptop – máy tính xách tay có cấu hình mạnh nhưng sở hữu mức giá hợp lý.
Thiết kế hiện đại, thanh lịch, phù hợp nhiều môi trường làm việc

HP VICTUS 16-e1104AX 7C0S9PA sở hữu thiết kế mạnh mẽ với các cạnh sắc nét, Logo biểu tượng “V” phản kim loại đồng bộ hợp thời trang cùng với tông màu đen huyền bí mang lại một tổng thể trang nhã, lịch sự điểm một chút nét gaming.   

Khe thoát khí nóng siêu rộng vừa tạo điểm nhấn vừa nâng cao hiệu suất tản nhiệt. Chiếc laptop HP này được chế tác bền bỉ với vỏ nhựa chắc chắn, sở hữu trọng lượng 2.4 kg và độ dày 23.5 mm, là kích thước phù hợp cho một chiếc gaming, sẵn sàng đồng hành cùng bạn đến khắp mọi nơi.
Chiến game mượt mà ở mọi đấu trường nhờ bộ vi xử lý tân tiến

HP VICTUS 16-e1104AX 7C0S9PA cho phép người dùng không chỉ chiến đấu ở mọi tựa game hấp dẫn một cách trơn tru mà còn thao tác hiệu quả các tác vụ văn phòng như Word, Excel,... nhờ chip AMD Ryzen 7 dòng 6800H có 8 nhân 16 luồng, với tốc độ tối đa lên đến 4.7 GHz nhờ Turbo Boost. Không chỉ vậy, máy còn hỗ trợ bạn xử lý hình ảnh, làm poster, banner, render video cơ bản một cách hiệu quả.

Mang đến hiệu suất chơi game đáng kinh ngạc cùng giải pháp đồ họa vượt bậc nhờ card đồ họa rời NVIDIA Geforce RTX 3050, 4GB, cho bạn thỏa sức sáng tạo với các ứng dụng nhà Adobe, hay tận hưởng chất lượng hình ảnh 8K rõ nét trong từng chuyển động ở thế ảo của cả các tựa game có đồ họa cao như Cyberpunk 2077, Valorant, CS:GO, Fifa Online 4,…',
        '33.990.000 ₫',
        '32.790.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        'd71f00e3-ef78-4c23-92bb-580f8fa7ce52',
        'HP',
        'Laptop Victus Gaming\n\n\nLaptop HP Gaming Victus 15-fa1139TX 8Y6W3PA ',
        '',
        'Thiết kế mới lạ - Hiệu năng vượt trên giá thành

Tối giản nhưng vẫn toát lên khí thế mạnh mẽ của một chiếc laptop gaming, HP VICTUS 16-e1104AX 7C0S9PA sẽ cùng bạn chiến đấu trên các chiến trường ảo, bất bại ở mọi thể loại game. Được trang bị CPU AMD Ryzen thế hệ mới, màn hình Full HD tiêu chuẩn và card đồ họa mạnh. HP Gaming Victus 16 chính là item mà nhiều game thủ hay sinh viên hằng mong đợi - một chiếc laptop – máy tính xách tay có cấu hình mạnh nhưng sở hữu mức giá hợp lý.
Thiết kế hiện đại, thanh lịch, phù hợp nhiều môi trường làm việc

HP VICTUS 16-e1104AX 7C0S9PA sở hữu thiết kế mạnh mẽ với các cạnh sắc nét, Logo biểu tượng “V” phản kim loại đồng bộ hợp thời trang cùng với tông màu đen huyền bí mang lại một tổng thể trang nhã, lịch sự điểm một chút nét gaming.   

Khe thoát khí nóng siêu rộng vừa tạo điểm nhấn vừa nâng cao hiệu suất tản nhiệt. Chiếc laptop HP này được chế tác bền bỉ với vỏ nhựa chắc chắn, sở hữu trọng lượng 2.4 kg và độ dày 23.5 mm, là kích thước phù hợp cho một chiếc gaming, sẵn sàng đồng hành cùng bạn đến khắp mọi nơi.
Chiến game mượt mà ở mọi đấu trường nhờ bộ vi xử lý tân tiến

HP VICTUS 16-e1104AX 7C0S9PA cho phép người dùng không chỉ chiến đấu ở mọi tựa game hấp dẫn một cách trơn tru mà còn thao tác hiệu quả các tác vụ văn phòng như Word, Excel,... nhờ chip AMD Ryzen 7 dòng 6800H có 8 nhân 16 luồng, với tốc độ tối đa lên đến 4.7 GHz nhờ Turbo Boost. Không chỉ vậy, máy còn hỗ trợ bạn xử lý hình ảnh, làm poster, banner, render video cơ bản một cách hiệu quả.

Mang đến hiệu suất chơi game đáng kinh ngạc cùng giải pháp đồ họa vượt bậc nhờ card đồ họa rời NVIDIA Geforce RTX 3050, 4GB, cho bạn thỏa sức sáng tạo với các ứng dụng nhà Adobe, hay tận hưởng chất lượng hình ảnh 8K rõ nét trong từng chuyển động ở thế ảo của cả các tựa game có đồ họa cao như Cyberpunk 2077, Valorant, CS:GO, Fifa Online 4,…',
        '22.900.000 ₫',
        '19.890.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        '8f845ef2-5ba7-4e60-92d6-7a2172ca9db2',
        'HP',
        'Laptop HP Gaming Victus 16-e1107AX 7C140PA ',
        '',
        'Thiết kế mới lạ - Hiệu năng vượt trên giá thành

Tối giản nhưng vẫn toát lên khí thế mạnh mẽ của một chiếc laptop gaming, HP VICTUS 16-e1104AX 7C0S9PA sẽ cùng bạn chiến đấu trên các chiến trường ảo, bất bại ở mọi thể loại game. Được trang bị CPU AMD Ryzen thế hệ mới, màn hình Full HD tiêu chuẩn và card đồ họa mạnh. HP Gaming Victus 16 chính là item mà nhiều game thủ hay sinh viên hằng mong đợi - một chiếc laptop – máy tính xách tay có cấu hình mạnh nhưng sở hữu mức giá hợp lý.
Thiết kế hiện đại, thanh lịch, phù hợp nhiều môi trường làm việc

HP VICTUS 16-e1104AX 7C0S9PA sở hữu thiết kế mạnh mẽ với các cạnh sắc nét, Logo biểu tượng “V” phản kim loại đồng bộ hợp thời trang cùng với tông màu đen huyền bí mang lại một tổng thể trang nhã, lịch sự điểm một chút nét gaming.   

Khe thoát khí nóng siêu rộng vừa tạo điểm nhấn vừa nâng cao hiệu suất tản nhiệt. Chiếc laptop HP này được chế tác bền bỉ với vỏ nhựa chắc chắn, sở hữu trọng lượng 2.4 kg và độ dày 23.5 mm, là kích thước phù hợp cho một chiếc gaming, sẵn sàng đồng hành cùng bạn đến khắp mọi nơi.
Chiến game mượt mà ở mọi đấu trường nhờ bộ vi xử lý tân tiến

HP VICTUS 16-e1104AX 7C0S9PA cho phép người dùng không chỉ chiến đấu ở mọi tựa game hấp dẫn một cách trơn tru mà còn thao tác hiệu quả các tác vụ văn phòng như Word, Excel,... nhờ chip AMD Ryzen 7 dòng 6800H có 8 nhân 16 luồng, với tốc độ tối đa lên đến 4.7 GHz nhờ Turbo Boost. Không chỉ vậy, máy còn hỗ trợ bạn xử lý hình ảnh, làm poster, banner, render video cơ bản một cách hiệu quả.

Mang đến hiệu suất chơi game đáng kinh ngạc cùng giải pháp đồ họa vượt bậc nhờ card đồ họa rời NVIDIA Geforce RTX 3050, 4GB, cho bạn thỏa sức sáng tạo với các ứng dụng nhà Adobe, hay tận hưởng chất lượng hình ảnh 8K rõ nét trong từng chuyển động ở thế ảo của cả các tựa game có đồ họa cao như Cyberpunk 2077, Valorant, CS:GO, Fifa Online 4,…',
        '25.490.000 ₫',
        '17.590.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        'd2126575-2b97-4b35-bd85-79c12d576813',
        'HP',
        ' HP 240 G9 6L1Y2PA ',
        '',
        'Laptop HP 240 G9 6L1Y2PA - Laptop nhỏ gọn với dung lượng bộ nhớ vượt trội

Laptop HP 240 G9 6L1Y2PA thuộc dòng laptop dành cho dân văn phòng và học sinh, sinh viên với ngoại hình nhỏ gọn cùng dung lượng RAM và bộ nhớ trong vượt trội. Chiếc laptop HP này có khả năng xử lý các tác vụ mượt mà cũng như hỗ trợ bạn lưu trữ mọi dữ liệu cần thiết. 
Xử lý mượt mà các tác vụ và lưu trữ mọi dữ liệu với bộ nhớ ấn tượng

Laptop HP 240 G9 6L1Y2PA được trang bị RAM 8GB và có thể mở rộng dung lượng lên tối đa 16GB với thông qua 1 khe rời. Với 8GB RAM, laptop HP có khả năng xử lý tốt các tác vụ văn phòng cũng như giải trí. Bạn có thể mở cùng lúc nhiều tab và không gặp hiện tượng giật, lag.',
        '18.590.000 ₫',
        '15.490.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        '4a75f37e-56d6-4d13-96e7-ca271d132d22',
        'HP',
        ' HP 240 G9 6L1Y4PA ',
        '',
        'Laptop HP 240 G9 6L1Y2PA - Laptop nhỏ gọn với dung lượng bộ nhớ vượt trội

Laptop HP 240 G9 6L1Y2PA thuộc dòng laptop dành cho dân văn phòng và học sinh, sinh viên với ngoại hình nhỏ gọn cùng dung lượng RAM và bộ nhớ trong vượt trội. Chiếc laptop HP này có khả năng xử lý các tác vụ mượt mà cũng như hỗ trợ bạn lưu trữ mọi dữ liệu cần thiết. 
Xử lý mượt mà các tác vụ và lưu trữ mọi dữ liệu với bộ nhớ ấn tượng

Laptop HP 240 G9 6L1Y2PA được trang bị RAM 8GB và có thể mở rộng dung lượng lên tối đa 16GB với thông qua 1 khe rời. Với 8GB RAM, laptop HP có khả năng xử lý tốt các tác vụ văn phòng cũng như giải trí. Bạn có thể mở cùng lúc nhiều tab và không gặp hiện tượng giật, lag.',
        '21.190.000 ₫',
        '17.990.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        'd9af5580-9f2d-40a5-877d-92b6f58830ef',
        'HP',
        ' HP 240 G10 8F134PA ',
        '',
        'Laptop HP 240 G9 6L1Y2PA - Laptop nhỏ gọn với dung lượng bộ nhớ vượt trội

Laptop HP 240 G9 6L1Y2PA thuộc dòng laptop dành cho dân văn phòng và học sinh, sinh viên với ngoại hình nhỏ gọn cùng dung lượng RAM và bộ nhớ trong vượt trội. Chiếc laptop HP này có khả năng xử lý các tác vụ mượt mà cũng như hỗ trợ bạn lưu trữ mọi dữ liệu cần thiết. 
Xử lý mượt mà các tác vụ và lưu trữ mọi dữ liệu với bộ nhớ ấn tượng

Laptop HP 240 G9 6L1Y2PA được trang bị RAM 8GB và có thể mở rộng dung lượng lên tối đa 16GB với thông qua 1 khe rời. Với 8GB RAM, laptop HP có khả năng xử lý tốt các tác vụ văn phòng cũng như giải trí. Bạn có thể mở cùng lúc nhiều tab và không gặp hiện tượng giật, lag.',
        '18.790.000 ₫',
        '17.190.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        '720af988-1477-4e68-9a81-7c76ff603d5b',
        'HP',
        ' HP 240 G10 8F131PA ',
        '',
        'Laptop HP 240 G9 6L1Y2PA - Laptop nhỏ gọn với dung lượng bộ nhớ vượt trội

Laptop HP 240 G9 6L1Y2PA thuộc dòng laptop dành cho dân văn phòng và học sinh, sinh viên với ngoại hình nhỏ gọn cùng dung lượng RAM và bộ nhớ trong vượt trội. Chiếc laptop HP này có khả năng xử lý các tác vụ mượt mà cũng như hỗ trợ bạn lưu trữ mọi dữ liệu cần thiết. 
Xử lý mượt mà các tác vụ và lưu trữ mọi dữ liệu với bộ nhớ ấn tượng

Laptop HP 240 G9 6L1Y2PA được trang bị RAM 8GB và có thể mở rộng dung lượng lên tối đa 16GB với thông qua 1 khe rời. Với 8GB RAM, laptop HP có khả năng xử lý tốt các tác vụ văn phòng cũng như giải trí. Bạn có thể mở cùng lúc nhiều tab và không gặp hiện tượng giật, lag.',
        '13.790.000 ₫',
        '13.290.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        'ef932b37-d0c7-4d98-9e6e-3a8e6bb39cb8',
        'HP',
        ' HP 240 G10 8F133PA ',
        '',
        'Laptop HP 240 G9 6L1Y2PA - Laptop nhỏ gọn với dung lượng bộ nhớ vượt trội

Laptop HP 240 G9 6L1Y2PA thuộc dòng laptop dành cho dân văn phòng và học sinh, sinh viên với ngoại hình nhỏ gọn cùng dung lượng RAM và bộ nhớ trong vượt trội. Chiếc laptop HP này có khả năng xử lý các tác vụ mượt mà cũng như hỗ trợ bạn lưu trữ mọi dữ liệu cần thiết. 
Xử lý mượt mà các tác vụ và lưu trữ mọi dữ liệu với bộ nhớ ấn tượng

Laptop HP 240 G9 6L1Y2PA được trang bị RAM 8GB và có thể mở rộng dung lượng lên tối đa 16GB với thông qua 1 khe rời. Với 8GB RAM, laptop HP có khả năng xử lý tốt các tác vụ văn phòng cũng như giải trí. Bạn có thể mở cùng lúc nhiều tab và không gặp hiện tượng giật, lag.',
        '17.990.000 ₫',
        '16.490.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        '00838b69-8fdb-44be-a19a-2b2bbeb21522',
        'HP',
        ' HP 240 G10 8F136PA ',
        '',
        'Laptop HP 240 G9 6L1Y2PA - Laptop nhỏ gọn với dung lượng bộ nhớ vượt trội

Laptop HP 240 G9 6L1Y2PA thuộc dòng laptop dành cho dân văn phòng và học sinh, sinh viên với ngoại hình nhỏ gọn cùng dung lượng RAM và bộ nhớ trong vượt trội. Chiếc laptop HP này có khả năng xử lý các tác vụ mượt mà cũng như hỗ trợ bạn lưu trữ mọi dữ liệu cần thiết. 
Xử lý mượt mà các tác vụ và lưu trữ mọi dữ liệu với bộ nhớ ấn tượng

Laptop HP 240 G9 6L1Y2PA được trang bị RAM 8GB và có thể mở rộng dung lượng lên tối đa 16GB với thông qua 1 khe rời. Với 8GB RAM, laptop HP có khả năng xử lý tốt các tác vụ văn phòng cũng như giải trí. Bạn có thể mở cùng lúc nhiều tab và không gặp hiện tượng giật, lag.',
        '19.590.000 ₫',
        '17.690.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        'a8723e52-b9df-4ad5-8bdc-fa2a8036c8d6',
        'HP',
        ' HP 240 G10 8F129PA ',
        '',
        'Laptop HP 240 G9 6L1Y2PA - Laptop nhỏ gọn với dung lượng bộ nhớ vượt trội

Laptop HP 240 G9 6L1Y2PA thuộc dòng laptop dành cho dân văn phòng và học sinh, sinh viên với ngoại hình nhỏ gọn cùng dung lượng RAM và bộ nhớ trong vượt trội. Chiếc laptop HP này có khả năng xử lý các tác vụ mượt mà cũng như hỗ trợ bạn lưu trữ mọi dữ liệu cần thiết. 
Xử lý mượt mà các tác vụ và lưu trữ mọi dữ liệu với bộ nhớ ấn tượng

Laptop HP 240 G9 6L1Y2PA được trang bị RAM 8GB và có thể mở rộng dung lượng lên tối đa 16GB với thông qua 1 khe rời. Với 8GB RAM, laptop HP có khả năng xử lý tốt các tác vụ văn phòng cũng như giải trí. Bạn có thể mở cùng lúc nhiều tab và không gặp hiện tượng giật, lag.',
        '12.990.000 ₫',
        '12.590.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        '93eaea8a-1d4a-412c-8dae-dd5ab579a16a',
        'HP',
        ' HP 240 G9 6L1X8PA ',
        '',
        'Laptop HP 240 G9 6L1Y2PA - Laptop nhỏ gọn với dung lượng bộ nhớ vượt trội

Laptop HP 240 G9 6L1Y2PA thuộc dòng laptop dành cho dân văn phòng và học sinh, sinh viên với ngoại hình nhỏ gọn cùng dung lượng RAM và bộ nhớ trong vượt trội. Chiếc laptop HP này có khả năng xử lý các tác vụ mượt mà cũng như hỗ trợ bạn lưu trữ mọi dữ liệu cần thiết. 
Xử lý mượt mà các tác vụ và lưu trữ mọi dữ liệu với bộ nhớ ấn tượng

Laptop HP 240 G9 6L1Y2PA được trang bị RAM 8GB và có thể mở rộng dung lượng lên tối đa 16GB với thông qua 1 khe rời. Với 8GB RAM, laptop HP có khả năng xử lý tốt các tác vụ văn phòng cũng như giải trí. Bạn có thể mở cùng lúc nhiều tab và không gặp hiện tượng giật, lag.',
        '0.990.000 ₫',
        'nBán hàng trực tuyến',
        999
    ),
    (
        '7be1a51a-37ff-4ebe-a244-14335104384c',
        'HP',
        ' HP 240 G10 8F139PA ',
        '',
        'Laptop HP 240 G9 6L1Y2PA - Laptop nhỏ gọn với dung lượng bộ nhớ vượt trội

Laptop HP 240 G9 6L1Y2PA thuộc dòng laptop dành cho dân văn phòng và học sinh, sinh viên với ngoại hình nhỏ gọn cùng dung lượng RAM và bộ nhớ trong vượt trội. Chiếc laptop HP này có khả năng xử lý các tác vụ mượt mà cũng như hỗ trợ bạn lưu trữ mọi dữ liệu cần thiết. 
Xử lý mượt mà các tác vụ và lưu trữ mọi dữ liệu với bộ nhớ ấn tượng

Laptop HP 240 G9 6L1Y2PA được trang bị RAM 8GB và có thể mở rộng dung lượng lên tối đa 16GB với thông qua 1 khe rời. Với 8GB RAM, laptop HP có khả năng xử lý tốt các tác vụ văn phòng cũng như giải trí. Bạn có thể mở cùng lúc nhiều tab và không gặp hiện tượng giật, lag.',
        '20.990.000 ₫',
        '19.490.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        '8f8681ba-fc99-4ad0-8a1d-3d7c9ed2f7bb',
        'HP',
        'Laptop HP 240 G9 6L1Y4PA ',
        '',
        'Laptop HP 240 G9 6L1Y2PA - Laptop nhỏ gọn với dung lượng bộ nhớ vượt trội

Laptop HP 240 G9 6L1Y2PA thuộc dòng laptop dành cho dân văn phòng và học sinh, sinh viên với ngoại hình nhỏ gọn cùng dung lượng RAM và bộ nhớ trong vượt trội. Chiếc laptop HP này có khả năng xử lý các tác vụ mượt mà cũng như hỗ trợ bạn lưu trữ mọi dữ liệu cần thiết. 
Xử lý mượt mà các tác vụ và lưu trữ mọi dữ liệu với bộ nhớ ấn tượng

Laptop HP 240 G9 6L1Y2PA được trang bị RAM 8GB và có thể mở rộng dung lượng lên tối đa 16GB với thông qua 1 khe rời. Với 8GB RAM, laptop HP có khả năng xử lý tốt các tác vụ văn phòng cũng như giải trí. Bạn có thể mở cùng lúc nhiều tab và không gặp hiện tượng giật, lag.',
        '21.190.000 ₫',
        '17.990.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        '20c4273d-3a2c-4d5d-9fbc-b19102a702f1',
        'HP',
        ' HP 240 G10 8F140PA ',
        '',
        'Laptop HP 240 G9 6L1Y2PA - Laptop nhỏ gọn với dung lượng bộ nhớ vượt trội

Laptop HP 240 G9 6L1Y2PA thuộc dòng laptop dành cho dân văn phòng và học sinh, sinh viên với ngoại hình nhỏ gọn cùng dung lượng RAM và bộ nhớ trong vượt trội. Chiếc laptop HP này có khả năng xử lý các tác vụ mượt mà cũng như hỗ trợ bạn lưu trữ mọi dữ liệu cần thiết. 
Xử lý mượt mà các tác vụ và lưu trữ mọi dữ liệu với bộ nhớ ấn tượng

Laptop HP 240 G9 6L1Y2PA được trang bị RAM 8GB và có thể mở rộng dung lượng lên tối đa 16GB với thông qua 1 khe rời. Với 8GB RAM, laptop HP có khả năng xử lý tốt các tác vụ văn phòng cũng như giải trí. Bạn có thể mở cùng lúc nhiều tab và không gặp hiện tượng giật, lag.',
        '21.990.000 ₫',
        '19.990.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        'a98c1bb6-715e-45f6-b9d0-fbe378ffd8a8',
        'HP',
        ' HP ProBook 450 G10 873D3PA ',
        '',
        'Laptop HP Probook 450 G10 i7 1355U (873D3PA) chắc chắn sẽ trở thành một mẫu laptop học tập - văn phòng quốc dân trong năm nay với việc sở hữu những thông số cấu hình mạnh mẽ, thiết kế sang trọng nhỏ gọn mang lại những trải nghiệm sử dụng cho công việc hay giải trí đều tuyệt vời.

• Laptop HP được định hình với phong cách hiện đại, lớp vỏ bên ngoài máy được chế tác bằng kim loại đi cùng tông màu bạc sáng tạo nên kết cấu vừa bền chắc về tổng thể, vừa mang đến sự sang trọng và thanh lịch nhất định. Khối lượng máy nhẹ nhàng 1.79 kg để bạn có thể mang theo bên mình cả ngày.

• Tính năng bảo mật vân tay được tích hợp hỗ trợ việc truy cập thiết bị thêm an toàn và thuận tiện. Ngoài ra, bàn phím với đèn nền cũng giúp các thao tác gõ, soạn thảo văn bản, nội dung tốt hơn ngay cả khi thiếu sáng.

• Thiết bị có đầy đủ các cổng kết nối như: HDMI, Jack tai nghe 3.5 mm, USB Type-A, LAN (RJ45), USB Type-C để giao tiếp dễ dàng với chuột, bàn phím ngoài, màn hình rời,...

• Laptop HP Probook sử dụng chip Intel Core i7 1355U kết hợp cùng card Intel UHD Graphics cho hiệu năng xử lý mạnh mẽ, đáp ứng mượt mà việc chạy coding, thực hiện công việc đồ họa 2D, 3D, chỉnh sửa hình ảnh, video và chiến các tựa game đang thịnh hành. Ngoài ra, người dùng cũng có thể gắn thêm một thanh RAM để kích hoạt Dual Channel cho phép máy sử dụng card Iris Xe Graphics đáp ứng khả năng vận hành ở mức cao hơn.

• Bộ nhớ RAM 16 GB có khả năng nâng cấp tối đa 32 GB cho khả năng đa nhiệm ấn tượng, người dùng có thể mở hàng chục tab Chrome cùng nhiều tác vụ khác mà không gặp tình trạng đơ máy hay lag, chuyển qua lại giữa nhiều ứng dụng mà không cảm thấy có độ trễ.

• Ổ cứng SSD 512 GB NVMe PCIe hỗ trợ truy xuất và khởi động các ứng dụng nhanh hơn đáng kể, đồng thời cung cấp một không gian lưu trữ rộng rãi cho bạn thỏa sức tải các tệp tin và hình ảnh.

• Màn hình laptop 15.6 inch mang đến không gian hiển thị rộng rãi, độ phân giải Full HD (1920 x 1080) kết hợp với công nghệ Anti Glare cho các nội dung hình ảnh được hiển thị chi tiết hơn và hạn chế được tình trạng chói lóa, bóng mờ khi có ánh sáng chiếu vào màn hình.',
        '27.000.000 ₫',
        '24.590.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        '92faa663-98ac-490a-8956-abb83bf9a5cd',
        'HP',
        ' HP ProBook 440 G10 873A8PA ',
        '',
        'Laptop HP ProBook 440 G10 873A8PA

HP Probook đã và đang là một trong những dòng máy tính xách tay dành cho doanh nhân tốt và có giá thành hợp lý nhất thị trường. Thế hệ thứ 10 của dòng máy này, HP ProBook 440 G10 873A8PA cũng đang được đánh giá nằm trong top những mẫu Laptop doanh nhân đáng sở hữu nhất ở thời điểm hiện tại. Cùng tìm hiểu ngay về mẫu Laptop này qua bài viết dưới đây.
Ngoại hình cao cấp

HP ProBook 440 G10 873A8PA  vẫn kế thừa thiết kế truyền thống của dòng Probook với thân máy được làm hoàn toàn bằng nhôm cực kỳ cứng cáp. Tính gọn nhẹ của những mẫu Laptop doanh nhân cũng đặc biệt cần quan tâm, HP ProBook 440 G10 873A8PA  có trọng lượng vào khoảng 1.38Kg, không quá bất tiện để mang theo bên người làm việc mọi lúc mọi nơi.',
        '21.490.000 ₫',
        '20.290.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        '82f65056-4e80-4cb6-a558-c0b2109ff420',
        'HP',
        ' HP ProBook 440 G9 6M0X3PA ',
        '',
        'Laptop HP ProBook 440 G10 873A8PA

HP Probook đã và đang là một trong những dòng máy tính xách tay dành cho doanh nhân tốt và có giá thành hợp lý nhất thị trường. Thế hệ thứ 10 của dòng máy này, HP ProBook 440 G10 873A8PA cũng đang được đánh giá nằm trong top những mẫu Laptop doanh nhân đáng sở hữu nhất ở thời điểm hiện tại. Cùng tìm hiểu ngay về mẫu Laptop này qua bài viết dưới đây.
Ngoại hình cao cấp

HP ProBook 440 G10 873A8PA  vẫn kế thừa thiết kế truyền thống của dòng Probook với thân máy được làm hoàn toàn bằng nhôm cực kỳ cứng cáp. Tính gọn nhẹ của những mẫu Laptop doanh nhân cũng đặc biệt cần quan tâm, HP ProBook 440 G10 873A8PA  có trọng lượng vào khoảng 1.38Kg, không quá bất tiện để mang theo bên người làm việc mọi lúc mọi nơi.',
        '20.990.000 ₫',
        '17.990.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        '9476f33b-ae56-447a-b4ba-10f05b2edcbf',
        'HP',
        ' HP EliteBook 640 G9 6M154PA ',
        '',
        'Laptop HP EliteBook 640 G9 6M154PA được xây dựng với chất liệu kim loại toàn bộ thân máy, khu vực bàn phím, viền xung quanh màn hình hoàn thiện với chất liệu nhựa, cảm giác vô cùng chắc chắn, khi có một lực nhấn vào phần nắp máy, không thấy hiện tượng lõm hay flex xuất hiện tại đây. Nói chung vẻ bề ngoài của sản phẩm đánh giá với độ hoàn thiện cao, độ bóng bảy, sang trọng rất phù hợp với người dùng là doanh nhân hay phải di chuyển đi hội họp, công tác…

Phần nắp máy là một bề mặt mịn màng, logo của sản phẩm được thiết kế với 4 dòng kẻ sáng bóng, nó giống như thiết kế của dòng sản phẩm laptop HP Envy Cao cấp. Phía trên của nắp máy hãng đã tích hợp một dải nhựa Ăng ten để giúp ích cho việc dễ dàng bắt tín hiệu wifi mạnh nhất từ các bộ phát xung quanh.

Bản lề được thiết kế chắc chắn, khả năng gập mở linh hoạt và bạn cũng có thể mở chúng bằng một tay một cách dễ dàng. Màn hình được thiết kế với lớp viền mỏng hơn, tuy rằng chưa thật sự xuất sắc nhưng đây cũng là sự cố gắng để tối ưu cho phần khung máy nhỏ gọn hơn. Lớp viền trên được tích hợp webcam HD sắc nét và một màn trập riêng tư.

Phía trên bàn phím bạn sẽ nhìn thấy vị trí của hệ thống loa âm thanh, nó được hướng trực tiếp tới bạn để mang tới những âm thanh sống động, giải trí đắm chìm với những bản nhạc, bộ phim và nhiều hơn thế nữa.

Đáy máy của sản phẩm được thiết kế khá đơn giản, nó chỉ bao gồm một hệ thống lưới thông gió và một dải cao su để giữ máy được đứng cố định, không bị xê dịch trên bàn làm việc.',
        '21.590.000 ₫',
        '19.290.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        '7221f71f-63c6-4856-bbe8-c8810ca54898',
        'HP',
        ' HP EliteBook 630 G9 6M146PA ',
        '',
        'Hiệu suất đỉnh cao: Được trang bị bộ vi xử lý Intel thế hệ 12, máy tính này mang lại khả năng phục vụ toàn cầu, dễ dàng bảo dưỡng, hiệu suất cao, và thời lượng pin dài. Tích hợp Thunderbolt™ Docking giúp kết nối linh hoạt.

Bảo mật bởi HP Wolf Security: Đảm bảo an toàn với HP Wolf Security, cung cấp một hệ thống phòng thủ hardware liên tục, từ BIOS đến trình duyệt, giúp bảo vệ máy tính của bạn khỏi các mối đe dọa hiện đại.

Camera và âm thanh cải tiến: Camera HD được tối ưu hóa cho cuộc gọi video ở điều kiện ánh sáng yếu, kèm theo chức năng giảm tiếng ồn thời gian. HP Dynamic Audio và HP AI Noise Reduction cung cấp trải nghiệm âm thanh rõ ràng và chất lượng.

Màn hình chất lượng cao: Màn hình FHD IPS với nhiều tùy chọn cung cấp hình ảnh sắc nét, kết hợp với các công nghệ như HP Sure View để bảo vệ sự riêng tư.

Tính năng nâng cao: Hỗ trợ nhiều hệ điều hành, tùy chọn lớn về bộ nhớ và ổ cứng, bàn phím chất lượng cao, và các tính năng như quét vân tay, đèn nền bàn phím, và cổng Thunderbolt™ 4.

Bảo vệ môi trường: Máy tính này chứa ít nhất 30% nhựa tái chế sau tiêu thụ, hộp đựng ngoại vi 100% nguồn gốc bền vững.',
        '26.390.000 ₫',
        '23.990.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        '3855823f-a3a5-49ba-8eb8-70a58c1fdcf1',
        'HP',
        ' HP EliteBook X360 1040 G9 6Z982PA ',
        '',
        'Laptop HP EliteBook x360 1040 G9 6Z982PA
Công nghệ bảo mật màn hình đẳng cấp – Sạc nhanh ấn tượng

HP EliteBook x360 1040 G9 6Z982PA là chiếc laptop doanh nhân cao cấp được trang bị nhiều công nghệ bảo mật tân tiến phục vụ cho công việc, xứng đáng là lựa chọn hàng đầu cho những doanh nhân hiện đại. Thiết kế sang trọng, bản lề xoay gập 360 độ cùng khả năng vận hành và xử lý mọi tác vụ mạnh mẽ đến từ chiếc laptop – máy tính xách tay này chắc chắn sẽ mang đến những trải nghiệm trọn vẹn, khó quên cho người dùng.
Vẻ ngoài thu hút mọi ánh nhìn, xứng tầm doanh nhân

Với mức giá nằm ở phân khúc đắt tiền, cao cấp, chắc chắn sản phẩm này không thể mang trong mình một thiết kế hay chất liệu hoàn thiện tầm thường. Vẻ bề ngoài không quá hào nhoáng vì là dòng laptop doanh nhân, nhưng HP EliteBook x360 1040 G9 6Z982PA vẫn toát lên sự sang trọng, lịch lãm và đẳng cấp ngay từ cái nhìn đầu tiên. Khung máy được làm từ chất liệu nhôm dày bản, gia công tỉ mỉ và cầu kỳ đem lại cảm giác vô cùng cao cấp khi chạm vào. Các đường nét thiết kế vuông vức và dứt khoát nhưng vẫn rất tinh tế ở mọi chi tiết dù là nhỏ nhất. Khe tản nhiệt song song với cạnh dưới màn hình của máy, thiết kế đơn giản nhưng hữu ích, hiệu quả tản nhiệt cao.',
        '49.990.000 ₫',
        '47.990.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        '0ad4f188-bcc5-4d50-b4ee-81fadcaf15f8',
        'HP',
        ' HP EliteBook Dragonfly G3 6Z980PA ',
        '',
        'Laptop HP Elitebook Dragonfly G3 i7 1255U (6Z980PA) thuộc dòng sản phẩm laptop cao cấp - sang trọng của nhà sản xuất HP, mang những đặc tính thiết kế nhằm đáp ứng cho nhu cầu của đối tượng người dùng thường xuyên di chuyển, cần một chiếc máy có tính di động cao đồng thời sở hữu cấu hình mạnh mẽ, ngoại hình thời thượng.',
        '52.590.000 ₫',
        '48.590.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        '52658251-4576-4a1d-be4a-529322d6fefd',
        'HP',
        ' HP EliteBook 630 G9 6M145PA ',
        '',
        'Mỏng nhẹ, đẳng cấp và mạnh mẽ là những gì mà người ta nghĩ đến khi nhắc đến laptop doanh nhân, và cũng chính là những ưu điểm mà HP Elitebook - dòng laptop cao cấp nhà HP sở hữu. Nổi bật trong dòng máy này chính là HP EliteBook 630 G9 6M145PA - chiếc laptop - máy tính xách tay được rất nhiều người dùng, đặc biệt là các doanh nhân yêu thích và lựa chọn. Trong bài viết này, An Phát Computer sẽ cùng các bạn khám phá những điều thú vị về em nó nhé! Đừng chần chừ nữa, hãy bắt đầu ngay thôi! 
 Thiết kế đẳng cấp và cực kì sang chảnh

Là một sản phẩm laptop doanh nhân cao cấp nên chắc chắn HP EliteBook 630 G9 6M145PA phải sở hữu một ngoại hình sang trọng và đẳng cấp rồi! Thật không quá lời khi nói chiếc laptop này là một “viên kim cương” nhà HP bởi mọi thứ từ đường nét cho đến các chi tiết đều được hoàn thiện rất tỉ mỉ và kĩ lưỡng. ',
        '26.390.000 ₫',
        '22.990.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        '3cd36111-6553-4f83-8450-dfd5507ab2ff',
        'HP',
        ' HP EliteBook 630 G9 6M142PA ',
        '',
        'Mỏng nhẹ, đẳng cấp và mạnh mẽ là những gì mà người ta nghĩ đến khi nhắc đến laptop doanh nhân, và cũng chính là những ưu điểm mà HP Elitebook - dòng laptop cao cấp nhà HP sở hữu. Nổi bật trong dòng máy này chính là HP EliteBook 630 G9 6M145PA - chiếc laptop - máy tính xách tay được rất nhiều người dùng, đặc biệt là các doanh nhân yêu thích và lựa chọn. Trong bài viết này, An Phát Computer sẽ cùng các bạn khám phá những điều thú vị về em nó nhé! Đừng chần chừ nữa, hãy bắt đầu ngay thôi! 
 Thiết kế đẳng cấp và cực kì sang chảnh

Là một sản phẩm laptop doanh nhân cao cấp nên chắc chắn HP EliteBook 630 G9 6M145PA phải sở hữu một ngoại hình sang trọng và đẳng cấp rồi! Thật không quá lời khi nói chiếc laptop này là một “viên kim cương” nhà HP bởi mọi thứ từ đường nét cho đến các chi tiết đều được hoàn thiện rất tỉ mỉ và kĩ lưỡng. ',
        '21.190.000 ₫',
        '18.690.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        '4dda0a73-813f-4ec9-9073-f55f6bbe90df',
        'HP',
        ' HP EliteBook 840 G9 6Z970PA ',
        '',
        'Laptop được trang bị bộ vi xử lý Intel Core i7-1260P, với tốc độ lên đến 4.7Ghz và bộ nhớ cache 18MB. Đây là một chip mạnh mẽ, cho phép xử lý các tác vụ đa nhiệm và ứng dụng nặng một cách nhanh chóng và hiệu quả.

HP EliteBook 840 G9 đi kèm với 8GB DDR5 4800Mhz RAM (1 x 8GB) và có 2 khe cắm RAM. Điều này cho phép bạn nâng cấp RAM lên tối đa 16GB hoặc thậm chí cao hơn nữa, để đáp ứng nhu cầu sử dụng công việc và giải trí cao cấp.

Laptop được trang bị ổ đĩa cứng 512GB SSD PCIe NVMe, cung cấp tốc độ truy xuất nhanh và khả năng khởi động hệ điều hành cũng như các ứng dụng một cách nhanh chóng.',
        '40.000.000 ₫',
        '35.990.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        '8b25ff4e-ef6f-4ad6-b0a3-92405085d386',
        'HP',
        ' HP EliteBook 630 G9 873F2PA ',
        '',
        'Mỏng nhẹ, đẳng cấp và mạnh mẽ là những gì mà người ta nghĩ đến khi nhắc đến laptop doanh nhân, và cũng chính là những ưu điểm mà HP Elitebook - dòng laptop cao cấp nhà HP sở hữu. Nổi bật trong dòng máy này chính là HP EliteBook 630 G9 6M145PA - chiếc laptop - máy tính xách tay được rất nhiều người dùng, đặc biệt là các doanh nhân yêu thích và lựa chọn. Trong bài viết này, An Phát Computer sẽ cùng các bạn khám phá những điều thú vị về em nó nhé! Đừng chần chừ nữa, hãy bắt đầu ngay thôi! 
 Thiết kế đẳng cấp và cực kì sang chảnh

Là một sản phẩm laptop doanh nhân cao cấp nên chắc chắn HP EliteBook 630 G9 6M145PA phải sở hữu một ngoại hình sang trọng và đẳng cấp rồi! Thật không quá lời khi nói chiếc laptop này là một “viên kim cương” nhà HP bởi mọi thứ từ đường nét cho đến các chi tiết đều được hoàn thiện rất tỉ mỉ và kĩ lưỡng. ',
        '2.590.000 ₫',
        'nBán hàng trực tuyến',
        999
    ),
    (
        '1257e877-7718-4f7c-8655-41ab67e76ac7',
        'HP',
        'Laptop HP EliteBook 640 G9 6M154PA ',
        '',
        'Thiết kế mỏng nhẹ bất ngờ

Sở hữu một vẻ ngoài cực sang trọng, laptop giá rẻ HP Elitebook 640 G9 6M154PA hoàn hảo từ những đường nét tổng quát cho đến các chi tiết nhỏ. Máy được bao phủ một tông màu Bạc sáng lấp lánh với phần vỏ máy được thiết kế từ kim loại nguyên khối, mang lại cảm giác cầm nắm cực chắc chắn, mịn mát, đảm bảo độ bền cho máy. Nguyên liệu kim loại nguyen khối cũng giúp cho thiết bị sở hữu một vẻ ngoài cực sang trọng và đẳng cấp.

Logo HP được khắc tỉ mỉ ở chính giữa mặt lưng của thiết bị, vừa mang lại cho máy cảm giác trang nhã tối giản, vừa giúp người dùng nhận diện được thương hiệu của máy ngay cả khi quan sát từ phía xa. Laptop HP Elitebook 640 G9 6M154PA sở hữu một ngoại hình cực nhỏ gọn với trọng lượng chỉ vỏn vẹn 1.38kg, độ dày 19.9mm để bạn thoải mái cho thiết bị vào túi xách, ba lô và mang theo sử dụng mọi lúc mọi nơi.',
        '21.590.000 ₫',
        '19.290.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        '7eb55ceb-c9bd-4ea0-bb55-2ccb3d82e963',
        'HP',
        ' HP EliteBook 640 G9 6M156PA ',
        '',
        'Thiết kế trang nhã

Sở hữu một vẻ ngoài cực sang trọng, Laptop HP Elitebook 640 G9 6M154PA hoàn hảo từ những đường nét tổng quát cho đến các chi tiết nhỏ. Máy được bao phủ một tông màu Bạc sáng lấp lánh với phần vỏ máy được thiết kế từ kim loại nguyên khối, mang lại cảm giác cầm nắm cực chắc chắn, mịn mát, đảm bảo độ bền cho máy. Nguyên liệu kim loại nguyen khối cũng giúp cho thiết bị sở hữu một vẻ ngoài cực sang trọng và đẳng cấp.

Logo HP được khắc tỉ mỉ ở chính giữa mặt lưng của thiết bị, vừa mang lại cho máy cảm giác trang nhã tối giản, vừa giúp người dùng nhận diện được thương hiệu của máy ngay cả khi quan sát từ phía xa. Laptop HP Elitebook 640 G9 6M154PA sở hữu một ngoại hình cực nhỏ gọn với trọng lượng chỉ vỏn vẹn 1.38kg, độ dày 19.9mm để bạn thoải mái cho thiết bị vào túi xách, ba lô và mang theo sử dụng mọi lúc mọi nơi.',
        '22.590.000 ₫',
        '22.490.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        '569c7f59-ecbc-4a87-8b80-12126518366d',
        'HP',
        'Laptop HP EliteBook 630 G9 6M146PA ',
        '',
        'Laptop HP EliteBook 630 G9 i7 (6M146PA) là một trong những siêu phẩm đáng cân nhắc khi bạn chọn mua laptop học tập - văn phòng. Máy sở hữu cấu hình mạnh mẽ đến từ con chip Intel Gen 12 cùng vẻ ngoài đẳng cấp, mỏng nhẹ có thể đáp ứng đầy đủ các nhu cầu khác nhau. 
Cấu hình chạy mượt mà đa tác vụ khác nhau

Laptop HP EliteBook được trang bị bộ vi xử lý Intel Core i7 1255U sở hữu kiến trúc Hybrid với các lõi hiệu năng P-core và lõi tiết kiệm điện E-core có khả năng vận hành hoàn hảo mọi tác vụ văn phòng như Word, Excel, PowerPoint,... card đồ họa Intel UHD đáp ứng nhu cầu thiết kế cơ bản trên Photoshop hay chơi một số tựa game nhẹ như Liên Minh Huyền Thoại, CS:GO một cách mượt mà. ',
        '26.390.000 ₫',
        '23.990.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        '7664f70d-5c4a-4f98-bfd2-a1de0a29532d',
        '',
        'Elitebook',
        '',
        'Laptop HP EliteBook 630 G9 i7 (6M146PA) là một trong những siêu phẩm đáng cân nhắc khi bạn chọn mua laptop học tập - văn phòng. Máy sở hữu cấu hình mạnh mẽ đến từ con chip Intel Gen 12 cùng vẻ ngoài đẳng cấp, mỏng nhẹ có thể đáp ứng đầy đủ các nhu cầu khác nhau. 
Cấu hình chạy mượt mà đa tác vụ khác nhau

Laptop HP EliteBook được trang bị bộ vi xử lý Intel Core i7 1255U sở hữu kiến trúc Hybrid với các lõi hiệu năng P-core và lõi tiết kiệm điện E-core có khả năng vận hành hoàn hảo mọi tác vụ văn phòng như Word, Excel, PowerPoint,... card đồ họa Intel UHD đáp ứng nhu cầu thiết kế cơ bản trên Photoshop hay chơi một số tựa game nhẹ như Liên Minh Huyền Thoại, CS:GO một cách mượt mà. ',
        'Windows 11 Pro',
        '49.990.000 ₫',
        999
    ),
    (
        '2472ea64-9267-469a-9904-e5f09511400f',
        '',
        'Elitebook',
        '',
        'Laptop HP EliteBook 630 G9 i7 (6M146PA) là một trong những siêu phẩm đáng cân nhắc khi bạn chọn mua laptop học tập - văn phòng. Máy sở hữu cấu hình mạnh mẽ đến từ con chip Intel Gen 12 cùng vẻ ngoài đẳng cấp, mỏng nhẹ có thể đáp ứng đầy đủ các nhu cầu khác nhau. 
Cấu hình chạy mượt mà đa tác vụ khác nhau

Laptop HP EliteBook được trang bị bộ vi xử lý Intel Core i7 1255U sở hữu kiến trúc Hybrid với các lõi hiệu năng P-core và lõi tiết kiệm điện E-core có khả năng vận hành hoàn hảo mọi tác vụ văn phòng như Word, Excel, PowerPoint,... card đồ họa Intel UHD đáp ứng nhu cầu thiết kế cơ bản trên Photoshop hay chơi một số tựa game nhẹ như Liên Minh Huyền Thoại, CS:GO một cách mượt mà. ',
        'Windows 11 Pro',
        '52.590.000 ₫',
        999
    ),
    (
        '336f0dc5-c2e1-49be-89a3-3357cbdb3bbc',
        'HP',
        'Laptop HP EliteBook 630 G9 6M145PA ',
        '',
        'Laptop HP EliteBook 630 G9 i7 (6M146PA) là một trong những siêu phẩm đáng cân nhắc khi bạn chọn mua laptop học tập - văn phòng. Máy sở hữu cấu hình mạnh mẽ đến từ con chip Intel Gen 12 cùng vẻ ngoài đẳng cấp, mỏng nhẹ có thể đáp ứng đầy đủ các nhu cầu khác nhau. 
Cấu hình chạy mượt mà đa tác vụ khác nhau

Laptop HP EliteBook được trang bị bộ vi xử lý Intel Core i7 1255U sở hữu kiến trúc Hybrid với các lõi hiệu năng P-core và lõi tiết kiệm điện E-core có khả năng vận hành hoàn hảo mọi tác vụ văn phòng như Word, Excel, PowerPoint,... card đồ họa Intel UHD đáp ứng nhu cầu thiết kế cơ bản trên Photoshop hay chơi một số tựa game nhẹ như Liên Minh Huyền Thoại, CS:GO một cách mượt mà. ',
        '26.390.000 ₫',
        '22.990.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        'dd1884c2-012b-45e6-add7-3a2735e5f9dc',
        'HP',
        'Laptop HP EliteBook 630 G9 6M142PA ',
        '',
        'Laptop HP EliteBook 630 G9 i7 (6M146PA) là một trong những siêu phẩm đáng cân nhắc khi bạn chọn mua laptop học tập - văn phòng. Máy sở hữu cấu hình mạnh mẽ đến từ con chip Intel Gen 12 cùng vẻ ngoài đẳng cấp, mỏng nhẹ có thể đáp ứng đầy đủ các nhu cầu khác nhau. 
Cấu hình chạy mượt mà đa tác vụ khác nhau

Laptop HP EliteBook được trang bị bộ vi xử lý Intel Core i7 1255U sở hữu kiến trúc Hybrid với các lõi hiệu năng P-core và lõi tiết kiệm điện E-core có khả năng vận hành hoàn hảo mọi tác vụ văn phòng như Word, Excel, PowerPoint,... card đồ họa Intel UHD đáp ứng nhu cầu thiết kế cơ bản trên Photoshop hay chơi một số tựa game nhẹ như Liên Minh Huyền Thoại, CS:GO một cách mượt mà. ',
        '21.190.000 ₫',
        '18.690.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        '132e8f21-01f4-4495-b4e5-d89154637b52',
        'HP',
        'Laptop HP EliteBook 840 G9 6Z970PA ',
        '',
        'Laptop HP EliteBook 630 G9 i7 (6M146PA) là một trong những siêu phẩm đáng cân nhắc khi bạn chọn mua laptop học tập - văn phòng. Máy sở hữu cấu hình mạnh mẽ đến từ con chip Intel Gen 12 cùng vẻ ngoài đẳng cấp, mỏng nhẹ có thể đáp ứng đầy đủ các nhu cầu khác nhau. 
Cấu hình chạy mượt mà đa tác vụ khác nhau

Laptop HP EliteBook được trang bị bộ vi xử lý Intel Core i7 1255U sở hữu kiến trúc Hybrid với các lõi hiệu năng P-core và lõi tiết kiệm điện E-core có khả năng vận hành hoàn hảo mọi tác vụ văn phòng như Word, Excel, PowerPoint,... card đồ họa Intel UHD đáp ứng nhu cầu thiết kế cơ bản trên Photoshop hay chơi một số tựa game nhẹ như Liên Minh Huyền Thoại, CS:GO một cách mượt mà. ',
        '40.000.000 ₫',
        '35.990.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        '4745a51a-15e6-41be-bb12-b4bd04c0302c',
        'HP',
        'Laptop HP EliteBook 630 G9 873F2PA ',
        '',
        'Laptop HP EliteBook 630 G9 i7 (6M146PA) là một trong những siêu phẩm đáng cân nhắc khi bạn chọn mua laptop học tập - văn phòng. Máy sở hữu cấu hình mạnh mẽ đến từ con chip Intel Gen 12 cùng vẻ ngoài đẳng cấp, mỏng nhẹ có thể đáp ứng đầy đủ các nhu cầu khác nhau. 
Cấu hình chạy mượt mà đa tác vụ khác nhau

Laptop HP EliteBook được trang bị bộ vi xử lý Intel Core i7 1255U sở hữu kiến trúc Hybrid với các lõi hiệu năng P-core và lõi tiết kiệm điện E-core có khả năng vận hành hoàn hảo mọi tác vụ văn phòng như Word, Excel, PowerPoint,... card đồ họa Intel UHD đáp ứng nhu cầu thiết kế cơ bản trên Photoshop hay chơi một số tựa game nhẹ như Liên Minh Huyền Thoại, CS:GO một cách mượt mà. ',
        'àng',
        'ang chủ / Laptop & Linh phụ kiện / Laptop theo hãng / Laptop HP',
        999
    ),
    (
        'ab7730a1-1c3d-41d7-8e20-f16bf42816ee',
        'HP',
        'Laptop HP EliteBook 640 G9 6M156PA ',
        '',
        'Laptop HP EliteBook 630 G9 i7 (6M146PA) là một trong những siêu phẩm đáng cân nhắc khi bạn chọn mua laptop học tập - văn phòng. Máy sở hữu cấu hình mạnh mẽ đến từ con chip Intel Gen 12 cùng vẻ ngoài đẳng cấp, mỏng nhẹ có thể đáp ứng đầy đủ các nhu cầu khác nhau. 
Cấu hình chạy mượt mà đa tác vụ khác nhau

Laptop HP EliteBook được trang bị bộ vi xử lý Intel Core i7 1255U sở hữu kiến trúc Hybrid với các lõi hiệu năng P-core và lõi tiết kiệm điện E-core có khả năng vận hành hoàn hảo mọi tác vụ văn phòng như Word, Excel, PowerPoint,... card đồ họa Intel UHD đáp ứng nhu cầu thiết kế cơ bản trên Photoshop hay chơi một số tựa game nhẹ như Liên Minh Huyền Thoại, CS:GO một cách mượt mà. ',
        '22.590.000 ₫',
        '22.490.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        '4327cffc-1225-4a94-9997-c8a342e92a7c',
        'HP',
        ' HP EliteBook 640 G9 6M158PA ',
        '',
        'Laptop HP EliteBook 630 G9 i7 (6M146PA) là một trong những siêu phẩm đáng cân nhắc khi bạn chọn mua laptop học tập - văn phòng. Máy sở hữu cấu hình mạnh mẽ đến từ con chip Intel Gen 12 cùng vẻ ngoài đẳng cấp, mỏng nhẹ có thể đáp ứng đầy đủ các nhu cầu khác nhau. 
Cấu hình chạy mượt mà đa tác vụ khác nhau

Laptop HP EliteBook được trang bị bộ vi xử lý Intel Core i7 1255U sở hữu kiến trúc Hybrid với các lõi hiệu năng P-core và lõi tiết kiệm điện E-core có khả năng vận hành hoàn hảo mọi tác vụ văn phòng như Word, Excel, PowerPoint,... card đồ họa Intel UHD đáp ứng nhu cầu thiết kế cơ bản trên Photoshop hay chơi một số tựa game nhẹ như Liên Minh Huyền Thoại, CS:GO một cách mượt mà. ',
        '26.890.000 ₫',
        '23.990.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        'af725516-b5b6-43de-8afe-490740d0f58e',
        'HP',
        'Laptop HP EliteBook 640 G9 6M158PA ',
        '',
        'Laptop HP EliteBook 630 G9 i7 (6M146PA) là một trong những siêu phẩm đáng cân nhắc khi bạn chọn mua laptop học tập - văn phòng. Máy sở hữu cấu hình mạnh mẽ đến từ con chip Intel Gen 12 cùng vẻ ngoài đẳng cấp, mỏng nhẹ có thể đáp ứng đầy đủ các nhu cầu khác nhau. 
Cấu hình chạy mượt mà đa tác vụ khác nhau

Laptop HP EliteBook được trang bị bộ vi xử lý Intel Core i7 1255U sở hữu kiến trúc Hybrid với các lõi hiệu năng P-core và lõi tiết kiệm điện E-core có khả năng vận hành hoàn hảo mọi tác vụ văn phòng như Word, Excel, PowerPoint,... card đồ họa Intel UHD đáp ứng nhu cầu thiết kế cơ bản trên Photoshop hay chơi một số tựa game nhẹ như Liên Minh Huyền Thoại, CS:GO một cách mượt mà. ',
        '26.890.000 ₫',
        '23.990.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        '487afe26-b214-446c-9141-1f1d4935b868',
        'HP',
        'HP Workstation Zbook Power 15.6 G8 33D91AV ',
        '',
        'Laptop HP ZBook Power G8 (33D91AV) nổi bật với thiết kế hoàn thiện cùng hiệu năng đáng trải nghiệm ở phân khúc cao cấp. Chiếc laptop khai thác tiềm năng từ Intel Core i5 thế hệ thứ 11 cùng chip đồ họa, sẵn sàng để bạn chơi game hay làm việc thoải mái mượt mà.
Kiểu dáng gọn nhẹ hiện đại, trải nghiệm khung hình sắc nét 

HP ZBook Power G8 được thiết kế với trọng lượng 1.9 kg và độ dày 2.28 cm, đảm bảo tạo hình gọn nhẹ di động để người dùng có thể thoải mái mang theo khi đi làm, đi du lịch,...Laptop cao cấp được thiết kế nguyên khối cùng gam màu bạc đặc trưng của HP tạo nên vẻ ngoài sang trọng. ',
        '47.990.000 ₫',
        '35.990.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        '951a9f02-4067-494d-ae4f-160f2538e703',
        'HP',
        'Laptop HP Workstation Zbook Power 15.6 G8 33D91AV ',
        '',
        'Laptop HP ZBook Power G8 33D91AV là một chiếc laptop Workstation cực kì mạnh mẽ đến từ hãng HP. Được trang bị con chip i5-11500H dành cho các dòng máy laptop mạnh mẽ, kết hợp card đồ họa NVIDIA Quadro T600 được chứng nhận tương thích cho các phần mềm chuyên dụng hàng đầu, máy vẫn giữ được vóc dáng mỏng nhẹ mà nó vốn có.',
        '47.990.000 ₫',
        '35.990.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        '6a12a4e1-48c3-48c6-a101-fd329bdee404',
        'HP',
        ' HP Workstation Zbook Power 15.6 G8 33D91AV ',
        '',
        'Laptop HP Workstation Zbook Power 15.6 G8 33D91AV (Core i5 11500H/ 16GB/ 512GB SSD/ Nvidia Quadro T600 4GB GDDR6/ 15.6inch Full HD)

Laptop HP Zbook Power 33D91AV là một thiết bị di động với thiết kế hiện đại và gọn nhẹ, mang lại hiệu năng mạnh mẽ cho người dùng văn phòng, đồ họa và giải trí. Với vỏ máy làm từ kim loại màu ghi xmas, máy có vẻ ngoại hình sang trọng và khả năng chống bám vân tay.

Hiệu Năng Mạnh Mẽ: Máy được trang bị CPU Intel Core i5-11500H với tốc độ cơ bản 2.9 GHz và tối đa 4.6 GHz, 12MB bộ nhớ đệm, 6 nhân và 12 luồng. Điều này cho phép máy xử lý nhanh chóng các tác vụ đa dạng. Card đồ họa NVIDIA Quadro T600 4GB GDDR6 và card đồ họa tích hợp Intel UHD Graphics cùng với RAM 16GB DDR4 3200MHz giúp máy mượt mà trong xử lý đồ họa và công việc cấu hình cao.',
        '47.990.000 ₫',
        '35.990.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        '42f3f754-f0fa-438b-bf9b-be0d5491b09b',
        'HP',
        '  HP ENVY X360 13-BF0094TU 76B14PA ',
        '',
        'ĐẶC ĐIỂM NỔI BẬT

    Thuộc phân khúc laptop học tập - văn phòng với CPU Intel Core i51230U kết hợp cùng card Intel Iris Xe Graphics giải quyết nhẹ nhàng các tác vụ hằng ngày trên Word, Excel, PowerPoint,... thiết kế, chỉnh sửa ảnh cơ bản hay giải trí một cách trơn tru.
    Kích thước nhỏ gọn với màn hình cảm ứng kích thước 13.3 inch dễ dàng mang theo khắp mọi nơi.
    RAM 16 GB và ổ cứng 512 GB SSD cho tốc độ đọc ghi nhanh chóng cùng không gian lưu trữ ổn định, người dùng có thể vừa nghe nhạc vừa đọc báo hay chạy nhiều tab cùng lúc.
    Trang bị các cổng kết nối: USB, Thunderbolt 4,... giúp kết nối với các thiết bị ngoại vi khác nhanh chóng hơn.
    Laptop đi kèm bút cảm ứng, hỗ trợ thao tác ghi chú, thiết kế thêm dễ dàng hơn',
        '29.590.000 ₫',
        '22.990.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        '580a004f-be04-47e7-846a-87189039becc',
        'HP',
        'HP Envy X360 13-bf0094TU 76B14PA ',
        '',
        'ĐẶC ĐIỂM NỔI BẬT

    Thuộc phân khúc laptop học tập - văn phòng với CPU Intel Core i51230U kết hợp cùng card Intel Iris Xe Graphics giải quyết nhẹ nhàng các tác vụ hằng ngày trên Word, Excel, PowerPoint,... thiết kế, chỉnh sửa ảnh cơ bản hay giải trí một cách trơn tru.
    Kích thước nhỏ gọn với màn hình cảm ứng kích thước 13.3 inch dễ dàng mang theo khắp mọi nơi.
    RAM 16 GB và ổ cứng 512 GB SSD cho tốc độ đọc ghi nhanh chóng cùng không gian lưu trữ ổn định, người dùng có thể vừa nghe nhạc vừa đọc báo hay chạy nhiều tab cùng lúc.
    Trang bị các cổng kết nối: USB, Thunderbolt 4,... giúp kết nối với các thiết bị ngoại vi khác nhanh chóng hơn.
    Laptop đi kèm bút cảm ứng, hỗ trợ thao tác ghi chú, thiết kế thêm dễ dàng hơn',
        '29.590.000 ₫',
        '22.990.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        '82ffd0be-385d-41c0-902a-7184e5c9305b',
        'HP',
        'HP Envy X360 13-bf0090TU 76B13PA ',
        '',
        'ĐẶC ĐIỂM NỔI BẬT

    Thuộc phân khúc laptop học tập - văn phòng với CPU Intel Core i51230U kết hợp cùng card Intel Iris Xe Graphics giải quyết nhẹ nhàng các tác vụ hằng ngày trên Word, Excel, PowerPoint,... thiết kế, chỉnh sửa ảnh cơ bản hay giải trí một cách trơn tru.
    Kích thước nhỏ gọn với màn hình cảm ứng kích thước 13.3 inch dễ dàng mang theo khắp mọi nơi.
    RAM 16 GB và ổ cứng 512 GB SSD cho tốc độ đọc ghi nhanh chóng cùng không gian lưu trữ ổn định, người dùng có thể vừa nghe nhạc vừa đọc báo hay chạy nhiều tab cùng lúc.
    Trang bị các cổng kết nối: USB, Thunderbolt 4,... giúp kết nối với các thiết bị ngoại vi khác nhanh chóng hơn.
    Laptop đi kèm bút cảm ứng, hỗ trợ thao tác ghi chú, thiết kế thêm dễ dàng hơn',
        '32.990.000 ₫',
        '27.490.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        '7ee7d3a8-5323-4309-b993-41da08f73780',
        'HP',
        'HP Envy X360 13-bf0096TU 76B16PA ',
        '',
        'ĐẶC ĐIỂM NỔI BẬT

    Thuộc phân khúc laptop học tập - văn phòng với CPU Intel Core i51230U kết hợp cùng card Intel Iris Xe Graphics giải quyết nhẹ nhàng các tác vụ hằng ngày trên Word, Excel, PowerPoint,... thiết kế, chỉnh sửa ảnh cơ bản hay giải trí một cách trơn tru.
    Kích thước nhỏ gọn với màn hình cảm ứng kích thước 13.3 inch dễ dàng mang theo khắp mọi nơi.
    RAM 16 GB và ổ cứng 512 GB SSD cho tốc độ đọc ghi nhanh chóng cùng không gian lưu trữ ổn định, người dùng có thể vừa nghe nhạc vừa đọc báo hay chạy nhiều tab cùng lúc.
    Trang bị các cổng kết nối: USB, Thunderbolt 4,... giúp kết nối với các thiết bị ngoại vi khác nhanh chóng hơn.
    Laptop đi kèm bút cảm ứng, hỗ trợ thao tác ghi chú, thiết kế thêm dễ dàng hơn',
        '27.690.000 ₫',
        '21.990.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        'c19e0dd9-919c-44da-b622-a9d19b56628f',
        'HP',
        'HP Envy 16-h0033TX 6K7F9PA ',
        '',
        'ĐẶC ĐIỂM NỔI BẬT

    Thuộc phân khúc laptop học tập - văn phòng với CPU Intel Core i51230U kết hợp cùng card Intel Iris Xe Graphics giải quyết nhẹ nhàng các tác vụ hằng ngày trên Word, Excel, PowerPoint,... thiết kế, chỉnh sửa ảnh cơ bản hay giải trí một cách trơn tru.
    Kích thước nhỏ gọn với màn hình cảm ứng kích thước 13.3 inch dễ dàng mang theo khắp mọi nơi.
    RAM 16 GB và ổ cứng 512 GB SSD cho tốc độ đọc ghi nhanh chóng cùng không gian lưu trữ ổn định, người dùng có thể vừa nghe nhạc vừa đọc báo hay chạy nhiều tab cùng lúc.
    Trang bị các cổng kết nối: USB, Thunderbolt 4,... giúp kết nối với các thiết bị ngoại vi khác nhanh chóng hơn.
    Laptop đi kèm bút cảm ứng, hỗ trợ thao tác ghi chú, thiết kế thêm dễ dàng hơn',
        '59.990.000 ₫',
        '53.990.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        'dd3721ab-36ac-4ac8-9378-1367b2852533',
        'HP',
        'HP Envy X360 13-bf0092TU 76V59PA "',
        '',
        'ĐẶC ĐIỂM NỔI BẬT

    Thuộc phân khúc laptop học tập - văn phòng với CPU Intel Core i51230U kết hợp cùng card Intel Iris Xe Graphics giải quyết nhẹ nhàng các tác vụ hằng ngày trên Word, Excel, PowerPoint,... thiết kế, chỉnh sửa ảnh cơ bản hay giải trí một cách trơn tru.
    Kích thước nhỏ gọn với màn hình cảm ứng kích thước 13.3 inch dễ dàng mang theo khắp mọi nơi.
    RAM 16 GB và ổ cứng 512 GB SSD cho tốc độ đọc ghi nhanh chóng cùng không gian lưu trữ ổn định, người dùng có thể vừa nghe nhạc vừa đọc báo hay chạy nhiều tab cùng lúc.
    Trang bị các cổng kết nối: USB, Thunderbolt 4,... giúp kết nối với các thiết bị ngoại vi khác nhanh chóng hơn.
    Laptop đi kèm bút cảm ứng, hỗ trợ thao tác ghi chú, thiết kế thêm dễ dàng hơn',
        '32.590.000 ₫',
        '26.390.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        '6ea5bd17-9e54-4881-93db-b0d131af9afe',
        'HP',
        ' HP Envy 16-h0033TX 6K7F9PA ',
        '',
        'ĐẶC ĐIỂM NỔI BẬT

    Thuộc phân khúc laptop học tập - văn phòng với CPU Intel Core i51230U kết hợp cùng card Intel Iris Xe Graphics giải quyết nhẹ nhàng các tác vụ hằng ngày trên Word, Excel, PowerPoint,... thiết kế, chỉnh sửa ảnh cơ bản hay giải trí một cách trơn tru.
    Kích thước nhỏ gọn với màn hình cảm ứng kích thước 13.3 inch dễ dàng mang theo khắp mọi nơi.
    RAM 16 GB và ổ cứng 512 GB SSD cho tốc độ đọc ghi nhanh chóng cùng không gian lưu trữ ổn định, người dùng có thể vừa nghe nhạc vừa đọc báo hay chạy nhiều tab cùng lúc.
    Trang bị các cổng kết nối: USB, Thunderbolt 4,... giúp kết nối với các thiết bị ngoại vi khác nhanh chóng hơn.
    Laptop đi kèm bút cảm ứng, hỗ trợ thao tác ghi chú, thiết kế thêm dễ dàng hơn',
        '59.990.000 ₫',
        '53.990.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        '3982acdd-ffcb-4812-95a1-e034ea630917',
        'HP',
        'HP Envy X360 13-bf0112TU 7C0N9PA "',
        '',
        'ĐẶC ĐIỂM NỔI BẬT

    Thuộc phân khúc laptop học tập - văn phòng với CPU Intel Core i51230U kết hợp cùng card Intel Iris Xe Graphics giải quyết nhẹ nhàng các tác vụ hằng ngày trên Word, Excel, PowerPoint,... thiết kế, chỉnh sửa ảnh cơ bản hay giải trí một cách trơn tru.
    Kích thước nhỏ gọn với màn hình cảm ứng kích thước 13.3 inch dễ dàng mang theo khắp mọi nơi.
    RAM 16 GB và ổ cứng 512 GB SSD cho tốc độ đọc ghi nhanh chóng cùng không gian lưu trữ ổn định, người dùng có thể vừa nghe nhạc vừa đọc báo hay chạy nhiều tab cùng lúc.
    Trang bị các cổng kết nối: USB, Thunderbolt 4,... giúp kết nối với các thiết bị ngoại vi khác nhanh chóng hơn.
    Laptop đi kèm bút cảm ứng, hỗ trợ thao tác ghi chú, thiết kế thêm dễ dàng hơn',
        '29.590.000 ₫',
        '24.690.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        'b05d3505-c35c-43e7-abe8-35a9f6fad15e',
        '',
        'Laptop Envy',
        '',
        'ĐẶC ĐIỂM NỔI BẬT

    Thuộc phân khúc laptop học tập - văn phòng với CPU Intel Core i51230U kết hợp cùng card Intel Iris Xe Graphics giải quyết nhẹ nhàng các tác vụ hằng ngày trên Word, Excel, PowerPoint,... thiết kế, chỉnh sửa ảnh cơ bản hay giải trí một cách trơn tru.
    Kích thước nhỏ gọn với màn hình cảm ứng kích thước 13.3 inch dễ dàng mang theo khắp mọi nơi.
    RAM 16 GB và ổ cứng 512 GB SSD cho tốc độ đọc ghi nhanh chóng cùng không gian lưu trữ ổn định, người dùng có thể vừa nghe nhạc vừa đọc báo hay chạy nhiều tab cùng lúc.
    Trang bị các cổng kết nối: USB, Thunderbolt 4,... giúp kết nối với các thiết bị ngoại vi khác nhanh chóng hơn.
    Laptop đi kèm bút cảm ứng, hỗ trợ thao tác ghi chú, thiết kế thêm dễ dàng hơn',
        '22.990.000 ₫ [Giá đã có VAT]',
        '',
        999
    ),
    (
        'af2cf994-16fd-4067-9581-beefc1e8f813',
        'HP',
        'HP Envy X360 13-bf0114TU 7C0P0PA ',
        '',
        'ĐẶC ĐIỂM NỔI BẬT

    Thuộc phân khúc laptop học tập - văn phòng với CPU Intel Core i51230U kết hợp cùng card Intel Iris Xe Graphics giải quyết nhẹ nhàng các tác vụ hằng ngày trên Word, Excel, PowerPoint,... thiết kế, chỉnh sửa ảnh cơ bản hay giải trí một cách trơn tru.
    Kích thước nhỏ gọn với màn hình cảm ứng kích thước 13.3 inch dễ dàng mang theo khắp mọi nơi.
    RAM 16 GB và ổ cứng 512 GB SSD cho tốc độ đọc ghi nhanh chóng cùng không gian lưu trữ ổn định, người dùng có thể vừa nghe nhạc vừa đọc báo hay chạy nhiều tab cùng lúc.
    Trang bị các cổng kết nối: USB, Thunderbolt 4,... giúp kết nối với các thiết bị ngoại vi khác nhanh chóng hơn.
    Laptop đi kèm bút cảm ứng, hỗ trợ thao tác ghi chú, thiết kế thêm dễ dàng hơn',
        '28.790.000 ₫',
        '24.790.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        '9e97265d-0353-48fe-b4ee-e37e843a16f0',
        'HP',
        'HP Envy X360 13-bf0097TU 76B17PA ',
        '',
        'ĐẶC ĐIỂM NỔI BẬT

    Thuộc phân khúc laptop học tập - văn phòng với CPU Intel Core i51230U kết hợp cùng card Intel Iris Xe Graphics giải quyết nhẹ nhàng các tác vụ hằng ngày trên Word, Excel, PowerPoint,... thiết kế, chỉnh sửa ảnh cơ bản hay giải trí một cách trơn tru.
    Kích thước nhỏ gọn với màn hình cảm ứng kích thước 13.3 inch dễ dàng mang theo khắp mọi nơi.
    RAM 16 GB và ổ cứng 512 GB SSD cho tốc độ đọc ghi nhanh chóng cùng không gian lưu trữ ổn định, người dùng có thể vừa nghe nhạc vừa đọc báo hay chạy nhiều tab cùng lúc.
    Trang bị các cổng kết nối: USB, Thunderbolt 4,... giúp kết nối với các thiết bị ngoại vi khác nhanh chóng hơn.
    Laptop đi kèm bút cảm ứng, hỗ trợ thao tác ghi chú, thiết kế thêm dễ dàng hơn',
        '27.690.000 ₫',
        '21.990.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        '5b3a624a-8a2b-405c-b9d0-88c75f2daecd',
        'HP',
        ' HP Envy X360 13-bf0094TU 76B14PA ',
        '',
        'ĐẶC ĐIỂM NỔI BẬT

    Thuộc phân khúc laptop học tập - văn phòng với CPU Intel Core i51230U kết hợp cùng card Intel Iris Xe Graphics giải quyết nhẹ nhàng các tác vụ hằng ngày trên Word, Excel, PowerPoint,... thiết kế, chỉnh sửa ảnh cơ bản hay giải trí một cách trơn tru.
    Kích thước nhỏ gọn với màn hình cảm ứng kích thước 13.3 inch dễ dàng mang theo khắp mọi nơi.
    RAM 16 GB và ổ cứng 512 GB SSD cho tốc độ đọc ghi nhanh chóng cùng không gian lưu trữ ổn định, người dùng có thể vừa nghe nhạc vừa đọc báo hay chạy nhiều tab cùng lúc.
    Trang bị các cổng kết nối: USB, Thunderbolt 4,... giúp kết nối với các thiết bị ngoại vi khác nhanh chóng hơn.
    Laptop đi kèm bút cảm ứng, hỗ trợ thao tác ghi chú, thiết kế thêm dễ dàng hơn.',
        '29.590.000 ₫',
        '22.990.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        '4e8673b8-507b-445d-88f0-449be85cee25',
        'Dell',
        'Dell Vostro 3430 i7U165W11GRD2 ',
        '',
        'Laptop Dell Vostro 3430 i7U165W11GRD2 - Laptop chuyên văn phòng với cấu hình cao

Laptop Dell Vostro 3430 i7U165W11GRD2 với thiết kế thanh lịch, sang trọng với thiết kế mỏng nhẹ cùng hiệu năng đỉnh cao từ Intel Core thế hệ 13 kết hợp với card đồ họa rời GeForce MX 550 cho người dùng khả năng làm việc đa tác vụ hiệu quả và là một lựa chọn hợp lý cho người dùng quan tâm đến dòng Laptop học tập - Văn phòng hiệu năng cao',
        '26.990.000 ₫',
        '23.990.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        'b7b76479-e3d5-4085-b81b-53338f244009',
        'Dell',
        'Dell Vostro 5630 i5U165W11GRU ',
        '',
        'Laptop Dell Vostro 5630 i5U165W11GRU (Core i5 1335U/ 16GB/ 512GB SSD/ Intel UHD Graphics/ 16.0inch FHD+/ Windows 11 Home + Office Student/ Grey/ Vỏ nhôm/ 1 Year)

Laptop Dell Vostro 5630 là dòng sản phẩm vượt trội phù hợp với học sinh, sinh viên khi sản phẩm được trang bị Win 11 Home + Office Student, dù bạn là dân văn phòng cũng sẽ khá phù hợp để xử lý các tác vụ văn phòng đơn giản nhất đến khả năng làm việc với cường độ dữ liệu tính toán cao. Chất liệu vỏ nhôm màu ghi sáng tao nhã cùng khung hợp kim chắc chắn cho bạn sử dụng chiếc máy này bển vững. An toàn bảo mật dữ liệu với khả năng bảo mật sinh trắc, tính năng bảo mật cá nhân hóa vô cùng hiệu quả.',
        '25.790.000 ₫',
        '23.390.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        '69e44a14-d5c2-4204-8bfd-9ac091484c6d',
        'Dell',
        'Dell Vostro 3530 i7U085W11GRD2 ',
        '',
        'Laptop Dell Vostro 3530 (V3530-i7U085W11GRD2) là một sản phẩm mới trong dòng Dell Vostro, đem lại cho người dùng một sự kết hợp hoàn hảo giữa hiệu năng, thiết kế mỏng nhẹ và tính di động. 

Thiết kế mỏng và sang trọng

Laptop Dell Vostro 3530 (V3530-i7U085W11GRD2) thể hiện sự chú trọng vào thiết kế với ngoại hình mỏng và sang trọng. Vỏ ngoài được làm bằng chất liệu chất lượng cao, mang đến cảm giác vững chắc và đẳng cấp. Màu sắc xám tinh tế tạo nên sự thanh lịch và chuyên nghiệp, phù hợp cho cả môi trường làm việc và dịp gặp gỡ quan trọng.',
        '25.790.000 ₫',
        '21.790.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        '62c31d47-ccdf-4222-8478-c117257708dd',
        'Dell',
        'Dell Vostro 3430 ',
        '',
        'Laptop Dell Vostro 3430 71011900 là chiếc laptop mang kiểu dáng đặc trưng của phân khúc laptop văn phòng phù hợp cho nhiều đối tượng người dùng, đặc biệt là người dùng phổ thông. Sản phẩm ngoài sở hữu thiết kế trẻ trung, tối giản, thanh lịch thì còn được trang bị những linh kiện mới nhất cho hiệu năng mạnh mẽ cùng thiết kế bền bỉ, mẫu laptop Dell Vostro này chắc chắn sẽ là người bạn đồng hành đắc lực trong công việc cũng như cuộc sống bận rộn.',
        '13.990.000 ₫',
        '11.390.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        '723e9919-f024-459b-8508-2e2172f82e2b',
        'Dell',
        'Dell Vostro 3430 71015715 ',
        '',
        'Laptop Dell Vostro 3430 71015715 (Core i3 1305U/ 8GB/ 256GB SSD/ Intel UHD Graphics/ 14.0inch Full HD/ Windows 11 Home + Office Student/ Titan Grey/ 1 Year)

Dell Vostro 3430 71015715 bản lề thiết kế đặc biệt vát tròn khi mở ra sẽ nâng máy lên tạo cho máy khe hở ở phần dưới, giúp tản nhiệt tốt hơn, khung máy hợp kim vỏ bọc titan chắc chắn chống sốc hiệu quả, kích thước nhỏ gọn 321 x 220 x 18.6 mm, khá nhẹ 1,49 Kg tiện lợi cho bạn mang đi làm, đi công tác, du lịch dễ dàng. Ngoài ra, phần trên có trang bị Webcam full HD, có nắp đậy vật lý bảo vệ cam, bạn dễ dàng sử dụng trong việc học tập, làm việc, nói chuyện trực tuyến ở bất kì đâu. Hỗ trợ bạn làm việc bên ngoài với pin 3-cell đắc lực hoạt động khoảng thời gian 3-4 tiếng, cho bạn 1 buổi làm việc hiệu quả, công nghệ sạc nhanh ExpressCharge 1 tiếng có thể nạp đc 80% dung lượng pin khi bạn nghỉ trưa, sạc đủ năng lượng cho 1 buổi chiều làm việc hiệu quả. 

Laptop Dell Vostro 3430 71015715',
        '13.990.000 ₫',
        '11.990.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        'ba8357e5-0c0d-4884-801d-78c2dfe05758',
        'Dell',
        'Dell Vostro 3430 60YGM ',
        '',
        'Laptop Dell Vostro 3430 60YGM (Core i5 1335U/ 8GB/ 512GB SSD/ Nvidia GeForce MX550 2GB GDDR6/ 14.0inch Full HD/ Windows 11 Home + Office Student/ Titan Grey/ 1 Year)

Thể hiện cá tính mạnh mẽ cũng DELL Vostro 3430 60YGM, bản lề thiết kế đặc biệt vát tròn khi mở ra sẽ nâng máy lên tạo cho máy khe hở ở phần dưới, giúp tản nhiệt tốt hơn, khung máy vỏ bọc chắc chắn chống sốc hiệu quả, kích thước nhỏ gọn 321 x 220 x 18.6 mm, khá nhẹ 1,49 Kg tiện lợi cho bạn mang đi làm, đi công tác, du lịch dễ dàng. Pin 3-cell hỗ trợ đắc lực khoảng thời gian 3-4 tiếng hoạt động, cho bạn 1 buổi làm việc hiệu quả, công nghệ sạc nhanh ExpressCharge 1 tiếng có thể nạp đc 80% dung lượng pin khi bạn nghỉ trưa, sạc đủ năng lượng cho 1 buổi chiều làm việc hiệu quả. Windows 11 Home + Office Student trang bị sẵn cho bạn không mất thêm chi phí mua bản quyền hệ điều hành. Phần trên có màn hình trang bị Webcam full HD, có nắp đậy vật lý bảo vệ cam, bạn dễ dàng sử dụng trong việc học tập, làm việc, nói chuyện trực tuyến',
        '22.990.000 ₫',
        '18.790.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        '836031fe-7123-418a-a82b-43822d026714',
        'Dell',
        'Dell Vostro 5630 THT7N ',
        '',
        'Laptop Dell Vostro 5630 THT7N (Core i7 1360P/ 16GB/ 512GB SSD/ Nvidia GeForce RTX 2050 4GB GDDR6/ 16.1inch FHD+/ Windows 11 Home + Office Student/ Grey/ Vỏ nhôm/ 1 Year)

Nếu bạn đang tìm 1 chiếc laptop có màn hình lớn, sử dụng cho mục đích học tập, làm việc hay kể cả chơi game cấu hình nhẹ thì Dell Vostro 5630 THT7N sẽ là một sự lựa chọn đang chú ý. Mặc dù kích thước 356 x 251 x 17.9 mm và nặng 1,8kg , bạn vẫn có thể đem theo bỏ túi và xách chiếc laptop này đi làm đầy năng động. Bề ngoài là lớp vỏ nhôm xám cùng cho cảm giác chạm khá mượt, không để lại dấu tay trên máy. ',
        '33.979.000 ₫',
        '28.590.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        'eda851ec-2496-4772-84ba-f2227fcf9801',
        'Dell',
        'Dell Inspiron 1355U 1.7GHz',
        '',
        '
ĐẶC ĐIỂM NỔI BẬT

Thiết kế chuẩn văn phòng

Không màu mè, không kiểu cách, Dell Inspiron 3530 71011775 hướng tới sự tối giản nhưng vẫn toát ra sự sang trọng, thanh lịch. Kích thước 358.5 x 235.56 x 16.96~18.99 mm và trọng lượng chỉ 1.62 kg, không quá bất tiện để đem chiếc Laptop Dell này theo bên người để làm việc mọi lúc mọi nơi. 

Chất lượng Build siêu cấp, lớp vỏ cứng cáp là thứ tạo nên sự bền bỉ vốn đã tạo nên thương hiệu Dell như ngày hôm nay.',
        '23.690.000 ₫ [Giá đã có VAT]',
        '',
        999
    ),
    (
        'c42045bd-4ecf-48b6-83d4-a04091578857',
        'Dell',
        'Dell Vostro 3530 80GG9 ',
        '',
        '
Đặc điểm nổi bật
Video
Sản phẩm giá tương đương
Bình luận người dùng
Đánh giá sản phẩm
Đặc điểm nổi bật

Laptop Dell Vostro 3530 80GG9 (Core i5 1335U/ 8GB/ 512GB SSD/ Intel UHD Graphics/ 15.6inch Full HD/ Windows 11 Home + Office Student/ Grey/ Vỏ nhựa/ 1 Year) hiện đang được bày bán với giá siêu ưu đãi cùng thời hạn bảo hành chính hãng 12 tháng tại Phúc Anh - doanh nghiệp hàng đầu chuyên cung cấp giải pháp công nghệ trong lĩnh vực máy tính, máy tính xách tay, điện thoại, thiết bị văn phòng và phần mềm, máy tính đồng bộ, thiết bị siêu thị, thiết bị hội nghị và phòng học, camera, …
Laptop Dell Vostro 3530 80GG9 (Core i5 1335U/ 8GB/ 512GB SSD/ Intel UHD Graphics/ 15.6inch Full HD/ Windows 11 Home + Office Student/ Grey/ Vỏ nhựa/ 1 Year)

Laptop Dell Vostro 3530 80GG9 với những hiệu năng cao cấp cho bạn trải nghiệm tuyệt vời, trang bị cho laptop con chip đời mới thì việc xử lý các tác vụ văn phòng, học tập đều rất đơn giản, hỗ trợ đắc lực cho việc sử dụng các phần mềm của nhà Adobe, còn việc chơi các con game cấu hình nhẹ thì đếu khá là mượt mà. Kích thước cho 1 laptop thông dụng 358 x 235 x 16.69 mm, nặng 1,66kg thì việc bạn cầm laptop đi làm, đi chơi đếu khá là nhẹ nhàng.',
        '20.669.000 ₫',
        '16.190.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        '6a9a6fde-0ab7-484e-bd33-c816a29cdd4b',
        'Dell',
        ' Dell Vostro 3430 i7U165W11GRD2 ',
        '',
        'Laptop Dell Vostro 3430 i7U165W11GRD2 - Laptop chuyên văn phòng với cấu hình cao

Laptop Dell Vostro 3430 i7U165W11GRD2 với thiết kế thanh lịch, sang trọng với thiết kế mỏng nhẹ cùng hiệu năng đỉnh cao từ Intel Core thế hệ 13 kết hợp với card đồ họa rời GeForce MX 550 cho người dùng khả năng làm việc đa tác vụ hiệu quả và là một lựa chọn hợp lý cho người dùng quan tâm đến dòng Laptop học tập - Văn phòng hiệu năng cao',
        '26.990.000 ₫',
        '23.990.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        '0c1f9dac-5484-4f2a-bf07-cd9a9ad71e93',
        'Dell',
        ' Dell Vostro 3530 V5I5267W1 ',
        '',
        'Laptop Dell Vostro 3530 V5I5267W1 (Core i5 1335U/ 8GB/ 256GB SSD/ Intel UHD Graphics/ 15.6inch Full HD/ Windows 11 Home + Office Student/ Grey/ Vỏ nhựa/ 1 Year)

Bạn đang cần một chiếc laptop phục vụ cho nhu cầu học tập, hay bạn dân văn phòng thì hiệu năng của Dell Vostro 3530 V5I5267W1 đều xử lý các tác vụ ổn định nhất. Thiết kế tinh tế nhỏ gọn 358 x 235 x 16.69 mm, phù hợp với tính chất công việc linh động của bạn, chỉ nhẹ có 1,66kg dễ dàng cho bạn mang đi bất kỳ đâu. Phục vụ nhu cầu của bạn xuyên suốt  khoảng 3 đến 4 tiếng với pin 3-cell cho bạn thời gian sử dụng vừa đủ cho một buổi làm việc. ',
        '17.990.000 ₫',
        '15.990.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        'ebf0d9cb-8752-4b5d-b607-b5e528ac8383',
        'Dell',
        ' Dell Vostro 3430 ',
        '',
        'Laptop Dell Vostro 3430 i5 1335U (71011900) sẽ làm cho bạn phải say mê không chỉ bởi vẻ ngoại hình tinh tế, mà còn bởi sức mạnh ấn tượng của nó. Với bộ vi xử lý Intel Core i5 1335U thế hệ 13 hoàn toàn mới, em laptop học tập - văn phòng này sẽ là người bạn đồng hành đáng tin cậy trong việc xử lý mọi tác vụ công việc, từ việc soạn thảo văn bản, trình bày thuyết trình, tạo bảng tính, thậm chí là làm việc trên mã nguồn đơn giản và chỉnh sửa hình ảnh cơ bản, mang đến trải nghiệm đa tác vụ để bạn thỏa sức khám phá.
Thiết kế tối giản với sự tinh tế từ mọi góc nhìn

Chiếc laptop Dell Vostro với ngoại hình nhỏ gọn, tối giản tạo cảm giác khi mình nâng máy lên xuống rất nhẹ nhàng. Sở hữu màn hình lớn 14 inch với thiết kế của em máy vô cùng gọn gàng, khung vỏ gam màu xám thời thượng nhưng không quá bóng bảy. 

Ngoại hình được trang bị vỏ nhựa nhưng em laptop này lại thể hiện tính chắc chắn vượt trội, không biến dạng dưới tác động mạnh ở các vị trí nhạy cảm như nắp máy và bàn phím. Với khối lượng nhẹ chỉ 1.44 kg, sản phẩm này trở nên vô cùng linh hoạt và thuận tiện, giúp mình dễ dàng mang theo mọi lúc mọi nơi.',
        '13.990.000 ₫',
        '11.390.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        'd9b05da9-a687-4223-af09-9c96e741f1a1',
        'Dell',
        ' Dell Vostro 5630 i5U165W11GRU ',
        '',
        'Laptop Dell Vostro 5630 i5 1335U (V5630-i5U165W11GRU) có thể nói là sự lựa chọn đầy hấp dẫn trong những mẫu laptop học tập - văn phòng trên thị trường với hiệu năng tốt từ CPU Gen 13, RAM 16 GB cùng thiết kế đầy cao cấp đáp ứng đa dạng nhu cầu sử dụng từ làm việc, thiết kế đến giải trí đa phương tiện.

• Laptop Dell Vostro sở hữu thiết kế tuân theo xu hướng hiện đại, lớp vỏ được phủ tông màu xám cùng phần nắp lưng và chiếu nghỉ tay bằng kim loại thể hiện rõ ra được tính sang trọng và cao cấp nổi trội hơn hẳn những mẫu máy cùng phân khúc. Khối lượng tổng thể 1.9 kg, không gây quá khó khăn khi bạn bỏ vào balo và mang theo bên mình cả ngày.

• Full HD Webcam luôn giữ cho hình ảnh của bạn rõ nét khi tham gia các buổi họp online hay học tập trực tuyến. Truy cập vào máy một cách dễ dàng và an toàn hơn với tính năng bảo mật vân tay.

• Được trang bị đầy đủ các cổng kết nối nên thiết bị có thể đáp ứng các nhu cầu sử dụng thông thường: Thunderbolt 4, Jack tai nghe 3.5 mm, USB 3.2, HDMI, LAN và khe SD.

• Laptop Dell sở hữu chip Intel Core i5 1335U thế hệ mới của Intel có tốc độ xung nhịp tối đa 4.6 GHz đi kèm với card Intel Iris Xe Graphics mang đến quá trình vận hành hoàn hảo đối với mọi tác vụ công việc doanh nghiệp và học tập, giải trí cho người dùng. Thêm nữa, thông số cấu hình trên cũng rất phù hợp để bạn có khả năng thiết kế được các poster, banner và edit video ngắn.

• Dell Vostro đi kèm với RAM 16 GB LPDDR5 mang đến quá trình làm việc suôn sẻ nhất cho người dùng, chuyển qua lại, mở nhiều tab nội dung hay các phần mềm nặng vẫn mượt mà. Được trang bị ổ cứng SSD 512 GB NVMe PCIe, laptop có khả năng truy xuất dữ liệu nhanh, mở ứng dụng, tải dữ liệu nhanh chóng và cải thiện trải nghiệm sử dụng, đồng thời không gian lưu trữ có thể mở rộng lên đến 2 TB.',
        '25.790.000 ₫',
        '23.390.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        'c529d92f-b209-4e47-9fbd-43ba8704570e',
        'Dell',
        ' Dell Vostro 3430 71015715 ',
        '',
        'Laptop Dell Vostro 3430 71015715 (Core i3 1305U/ 8GB/ 256GB SSD/ Intel UHD Graphics/ 14.0inch Full HD/ Windows 11 Home + Office Student/ Titan Grey/ 1 Year)

Dell Vostro 3430 71015715 bản lề thiết kế đặc biệt vát tròn khi mở ra sẽ nâng máy lên tạo cho máy khe hở ở phần dưới, giúp tản nhiệt tốt hơn, khung máy hợp kim vỏ bọc titan chắc chắn chống sốc hiệu quả, kích thước nhỏ gọn 321 x 220 x 18.6 mm, khá nhẹ 1,49 Kg tiện lợi cho bạn mang đi làm, đi công tác, du lịch dễ dàng. Ngoài ra, phần trên có trang bị Webcam full HD, có nắp đậy vật lý bảo vệ cam, bạn dễ dàng sử dụng trong việc học tập, làm việc, nói chuyện trực tuyến ở bất kì đâu. Hỗ trợ bạn làm việc bên ngoài với pin 3-cell đắc lực hoạt động khoảng thời gian 3-4 tiếng, cho bạn 1 buổi làm việc hiệu quả, công nghệ sạc nhanh ExpressCharge 1 tiếng có thể nạp đc 80% dung lượng pin khi bạn nghỉ trưa, sạc đủ năng lượng cho 1 buổi chiều làm việc hiệu quả.   Laptop Dell Vostro 3430 71015715',
        '13.990.000 ₫',
        '11.990.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        '02fcfed1-564c-4d14-8c5c-c38993a12ee4',
        'Dell',
        ' Dell Vostro 3430 60YGM ',
        '',
        'Laptop Dell Vostro 3430 60YGM (Core i5 1335U/ 8GB/ 512GB SSD/ Nvidia GeForce MX550 2GB GDDR6/ 14.0inch Full HD/ Windows 11 Home + Office Student/ Titan Grey/ 1 Year)

Thể hiện cá tính mạnh mẽ cũng DELL Vostro 3430 60YGM, bản lề thiết kế đặc biệt vát tròn khi mở ra sẽ nâng máy lên tạo cho máy khe hở ở phần dưới, giúp tản nhiệt tốt hơn, khung máy vỏ bọc chắc chắn chống sốc hiệu quả, kích thước nhỏ gọn 321 x 220 x 18.6 mm, khá nhẹ 1,49 Kg tiện lợi cho bạn mang đi làm, đi công tác, du lịch dễ dàng. Pin 3-cell hỗ trợ đắc lực khoảng thời gian 3-4 tiếng hoạt động, cho bạn 1 buổi làm việc hiệu quả, công nghệ sạc nhanh ExpressCharge 1 tiếng có thể nạp đc 80% dung lượng pin khi bạn nghỉ trưa, sạc đủ năng lượng cho 1 buổi chiều làm việc hiệu quả. Windows 11 Home + Office Student trang bị sẵn cho bạn không mất thêm chi phí mua bản quyền hệ điều hành. Phần trên có màn hình trang bị Webcam full HD, có nắp đậy vật lý bảo vệ cam, bạn dễ dàng sử dụng trong việc học tập, làm việc, nói chuyện trực tuyến.',
        '22.990.000 ₫',
        '18.790.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        'fd50fcb7-a332-4c21-a959-ced0acfdeea1',
        'Dell',
        ' Dell Vostro 5630 THT7N ',
        '',
        'Laptop Dell Vostro 5630 THT7N (Core i7 1360P/ 16GB/ 512GB SSD/ Nvidia GeForce RTX 2050 4GB GDDR6/ 16.1inch FHD+/ Windows 11 Home + Office Student/ Grey/ Vỏ nhôm/ 1 Year)

Nếu bạn đang tìm 1 chiếc laptop có màn hình lớn, sử dụng cho mục đích học tập, làm việc hay kể cả chơi game cấu hình nhẹ thì Dell Vostro 5630 THT7N sẽ là một sự lựa chọn đang chú ý. Mặc dù kích thước 356 x 251 x 17.9 mm và nặng 1,8kg , bạn vẫn có thể đem theo bỏ túi và xách chiếc laptop này đi làm đầy năng động. Bề ngoài là lớp vỏ nhôm xám cùng cho cảm giác chạm khá mượt, không để lại dấu tay trên máy. ',
        '33.979.000 ₫',
        '28.590.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        'c641d6d1-2f1c-4bef-b608-db653de15cbe',
        'Dell',
        ' Dell Vostro 3530 i7U085W11GRD2 ',
        '',
        'Laptop Dell Vostro 3530 (V3530-i7U085W11GRD2) thể hiện sự chú trọng vào thiết kế với ngoại hình mỏng và sang trọng. Vỏ ngoài được làm bằng chất liệu chất lượng cao, mang đến cảm giác vững chắc và đẳng cấp. Màu sắc xám tinh tế tạo nên sự thanh lịch và chuyên nghiệp, phù hợp cho cả môi trường làm việc và dịp gặp gỡ quan trọng.',
        '25.790.000 ₫',
        '21.790.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        'd7f24513-35a6-457f-bf17-38ba685cc30a',
        'Dell',
        ' Dell Vostro 3530 V5I3465W1 ',
        '',
        'Laptop Dell Vostro 3530 V5I3465W1 (Core i3 1305U/ 8GB/ 512GB SSD/ Intel UHD Graphics/ 15.6inch Full HD/ Windows 11 Home + Office Student/ Grey/ Vỏ nhựa/ 1 Year)

Dell Vostro là dòng sản phẩm chuyên dùng làm việc văn phòng, tác vụ cơ bản, với kích thước siêu nhỏ gọn, có thể cho bạn thoải mái trong khi di chuyển. Khả năng tản nhiệt hiệu quả hơn khi phần nắp trên máy tính khi mở ra sẽ tạo nên một khoảng trống giữa máy tính với mặt bàn, tránh được việc tiếp xúc trực tiếp, cho phần tản nhiệt phía dưới máy được lưu thông tốt hơn.',
        '14.690.000 ₫',
        '12.190.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        '72e10de5-ee41-4bda-b44c-0b42e86ffd77',
        'Dell',
        ' Dell Vostro 3530 80GG91 ',
        '',
        'Laptop Dell Vostro 15 3530 80GG91

Laptop Dell Vostro 15 3530 80GG91 là chiếc laptop mang kiểu dáng đặc trưng của phân khúc laptop văn phòng phù hợp cho nhiều đối tượng người dùng, đặc biệt là người dùng phổ thông. Sản phẩm ngoài sở hữu thiết kế trẻ trung, tối giản, thanh lịch thì còn được trang bị những linh kiện mới nhất cho hiệu năng mạnh mẽ. Laptop Dell Vostro này chắc chắn sẽ là người bạn đồng hành đắc lực trong công việc cũng như cuộc sống bận rộn.',
        '28.039.000 ₫',
        '23.690.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        '2c578c1e-5bac-4e31-b704-e2eceb6e3a89',
        'Dell',
        ' Dell Vostro 3530 80GG9 ',
        '',
        'Laptop Dell Vostro 3530 80GG9 (Core i5 1335U/ 8GB/ 512GB SSD/ Intel UHD Graphics/ 15.6inch Full HD/ Windows 11 Home + Office Student/ Grey/ Vỏ nhựa/ 1 Year)

Laptop Dell Vostro 3530 80GG9 với những hiệu năng cao cấp cho bạn trải nghiệm tuyệt vời, trang bị cho laptop con chip đời mới thì việc xử lý các tác vụ văn phòng, học tập đều rất đơn giản, hỗ trợ đắc lực cho việc sử dụng các phần mềm của nhà Adobe, còn việc chơi các con game cấu hình nhẹ thì đếu khá là mượt mà. Kích thước cho 1 laptop thông dụng 358 x 235 x 16.69 mm, nặng 1,66kg thì việc bạn cầm laptop đi làm, đi chơi đếu khá là nhẹ nhàng.

Kèm theo pin 3 Cell cũng không hẳn là tối ưu, nhưng vẫn cho bạn khoảng thời gian giải quyết công tác từ 3-4 tiếng. Bàn phím thiết kế kèm thêm bàn phím số phụ cho các kế toàn làm việc dễ dàng hơn. Webcam phía trên màn hỗ trợ gọi điện trực truyền, họp nhóm, học hành trực tuyền dễ dàng, tích hợp với mọi ứng dụng như Zalo, Viber, Message, Meet, Zoom,..',
        '20.669.000 ₫',
        '16.190.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        'e78e4b45-6633-4551-bcbf-52e410024962',
        'Dell',
        ' Dell Vostro 3530 80GG92 ',
        '',
        'Laptop Dell Vostro 3530 80GG92 – Giá thành hấp dẫn, mỏng nhẹ di động cao

Laptop Dell Vostro 3530 80GG92 là dòng sản phẩm mới của Dell Vostro hướng đến cho người dùng một sự kết hợp tốt giữa giá thành, hiệu năng cùng thiết kế mỏng nhẹ
Thiết kế mỏng và sang trọng

Dell Vostro 3530 80GG92 sở hữu cho mình một ngoại hình đẹp mắt theo phong  cách sang trọng và tinh tế, phù hợp với môi trường làm việc văn phòng hoặc trong trường học. Vỏ ngoài được làm với chất liệu nhựa cao cấp để sản phẩm này có trọng lượng chỉ 1,66Kg để bạn có thể dễ dàng mang theo bên mình

Kết hợp với màu xám sang trọng được làm dạng nhám chống bám vân tay giữ cho máy luôn chỉnh chu chuyên nghiệp, phù hợp cho cả môi trường làm việc và dịp gặp gỡ quan trọng',
        '12.990.000 ₫',
        '12.190.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        '66f3abf6-041c-4e86-a910-5722754a00fe',
        'Dell',
        'Dell Vostro 3530 V5I5267W1 ',
        '',
        'Laptop Dell Vostro 3530 V5I5267W1

Laptop Dell Vostro 3530 V5I5267W1 là một sản phẩm công nghệ mới ra mắt từ Dell, hướng đến người dùng có nhu cầu làm việc và giải trí đa phương tiện. Với cấu hình mạnh mẽ và nhiều tính năng tiện ích, chiếc laptop Dell Vostro này là sự lựa chọn hoàn hảo cho sinh viên với thiết kế siêu mỏng và nhẹ, kèm theo nhiều tính năng ấn tượng giúp bạn nâng cao hiệu suất học tập và tận hưởng trải nghiệm game ưa thích.',
        '17.990.000 ₫',
        '15.990.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        '51b7146b-0bd9-4554-99d1-ce583549954e',
        'Dell',
        'Dell Vostro 3530 V5I3465W1 ',
        '',
        'Laptop Dell Vostro 3530 V5I3465W1 (Core i3 1305U/ 8GB/ 512GB SSD/ Intel UHD Graphics/ 15.6inch Full HD/ Windows 11 Home + Office Student/ Grey/ Vỏ nhựa/ 1 Year)

Dell Vostro là dòng sản phẩm chuyên dùng làm việc văn phòng, tác vụ cơ bản, với kích thước siêu nhỏ gọn, có thể cho bạn thoải mái trong khi di chuyển. Khả năng tản nhiệt hiệu quả hơn khi phần nắp trên máy tính khi mở ra sẽ tạo nên một khoảng trống giữa máy tính với mặt bàn, tránh được việc tiếp xúc trực tiếp, cho phần tản nhiệt phía dưới máy được lưu thông tốt hơn.',
        '14.690.000 ₫',
        '12.190.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        '32caf512-ee14-4fd1-acf2-d43134215b3b',
        'Dell',
        'Dell Vostro 3530 80GG91 ',
        '',
        'Laptop Dell Vostro 15 3530 80GG91

Laptop Dell Vostro 15 3530 80GG91 là chiếc laptop mang kiểu dáng đặc trưng của phân khúc laptop văn phòng phù hợp cho nhiều đối tượng người dùng, đặc biệt là người dùng phổ thông. Sản phẩm ngoài sở hữu thiết kế trẻ trung, tối giản, thanh lịch thì còn được trang bị những linh kiện mới nhất cho hiệu năng mạnh mẽ. Laptop Dell Vostro này chắc chắn sẽ là người bạn đồng hành đắc lực trong công việc cũng như cuộc sống bận rộn.
Thiết kế thanh lịch phù hợp người dùng phổ thông

Laptop Dell Vostro 15 3530 80GG91 tuy sở hữu mức giá rẻ nhưng cũng được hãng chú trọng thiết kế đánh sâu vào độ bền với chất liệu cao cấp, bản lề cứng cáp, chắc chắn, khi đóng mở máy cho cảm giác rất chắc tay không hề ọp ẹp, mang lại sự "cao cấp". Không chỉ đẹp về hình thức, độ bền bỉ của máy cũng được đánh giá cao khi có khả năng chống chịu các tác động của ngoại lực tốt, hạn chế hỏng hóc linh kiện khi bị va đập nên bạn có thể yên tâm sử dụng trong nhiều năm. ',
        '28.039.000 ₫',
        '23.690.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        '7743636a-0dcc-4f9b-ade8-078f35cb7fcb',
        'Dell',
        'Dell Vostro 3530 80GG92 ',
        '',
        'Laptop Dell Vostro 15 3530 80GG91

Laptop Dell Vostro 15 3530 80GG91 là chiếc laptop mang kiểu dáng đặc trưng của phân khúc laptop văn phòng phù hợp cho nhiều đối tượng người dùng, đặc biệt là người dùng phổ thông. Sản phẩm ngoài sở hữu thiết kế trẻ trung, tối giản, thanh lịch thì còn được trang bị những linh kiện mới nhất cho hiệu năng mạnh mẽ. Laptop Dell Vostro này chắc chắn sẽ là người bạn đồng hành đắc lực trong công việc cũng như cuộc sống bận rộn.
Thiết kế thanh lịch phù hợp người dùng phổ thông

Laptop Dell Vostro 15 3530 80GG91 tuy sở hữu mức giá rẻ nhưng cũng được hãng chú trọng thiết kế đánh sâu vào độ bền với chất liệu cao cấp, bản lề cứng cáp, chắc chắn, khi đóng mở máy cho cảm giác rất chắc tay không hề ọp ẹp, mang lại sự "cao cấp". Không chỉ đẹp về hình thức, độ bền bỉ của máy cũng được đánh giá cao khi có khả năng chống chịu các tác động của ngoại lực tốt, hạn chế hỏng hóc linh kiện khi bị va đập nên bạn có thể yên tâm sử dụng trong nhiều năm. ',
        '12.990.000 ₫',
        '12.190.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        '10865393-38f5-43bb-a482-ba5a462b2b50',
        'HP',
        ' HP Envy X360 13-bf0097TU 76B17PA ',
        '',
        'Laptop HP ENVY x360 là con máy 2 trong 1 tiện lợi đang “chiếm sóng" trên thị trường laptop hiện nay. Sở hữu màn hình cảm ứng, thiết kế mỏng nhẹ, hiệu suất mạnh mẽ,... hứa hẹn sản phẩm này sẽ mang đến những trải nghiệm làm việc và giải trí chất lượng cho bạn. Trong bài viết hôm nay, hãy cùng Hoàng Hà Mobile khám phá siêu phẩm đến từ nhà HP này nhé!

Sang trọng từ thiết kế mỏng nhẹ, cao cấp

Nhờ vào thiết kế nhỏ gọn, tinh tế cùng độ mỏng ấn tượng, HP ENVY x360 tạo nên cảm giác sang trọng ngay từ cái nhìn đầu tiên. Được chế tác từ khung nhôm siêu nhẹ, Laptop HP ENVY x360 sở hữu độ bền mà ai cũng hằng mong muốn. Những đường viền mỏng, đường cắt vuông được hoàn thiện tỉ mỉ, giúp tăng thêm sự tinh tế, sang trọng cho chiếc laptop HP này.   Lướt task mượt mà với cấu hình mạnh mẽ  HP ENVY x360 được tích hợp bộ vi xử lý Intel Core i5 1230U với 6 nhân 12 luồng, mang đến tốc độ xử lý tối đa 4.2GHz. Mọi tác vụ sẽ được HP ENVY x360 giải quyết nhanh chóng và nhẹ nhàng nhờ vào hiệu suất cao và ổn định của Envy x360. Thao tác đồ hoạ hoá mượt mà với card đồ họa tích hợp Intel Iris Xe Graphics.  Tốc độ khởi động máy, mở ứng dụng cũng trở nên nhanh hơn khi có ổ cứng SSD 512GB. Giải quyết đa nhiệm công việc, hiệu năng tăng cao cũng là chuyện nhỏ với 8GB RAM DDR4.   Màn hình chân thật đem tới cảm hứng vô tận  Độ phân giải Full HD cùng màn hình 13.3 inch, giúp đem đến những trải nghiệm hình ảnh sắc nét và sống động. Công nghệ IPS kết hợp với Brightview cho ra những hình ảnh và video có màu sắc tươi sáng, rực rỡ hơn bao giờ hết. Màn hình cảm ứng tích hợp cùng thân máy xoay 360 độ có thể biến máy thành bàn vẽ linh hoạt, cho người dùng thỏa sức sáng tạo, ghi chú.   Bàn phím êm ái, touchpad mượt mà  Bàn phím của HP ENVY x360 được thiết kế chắc chắn với các phím bấm vuông, có diện tích lớn vừa đủ, cho phép người dùng thao tác dễ dàng, thuận lợi. Độ nảy phù hợp và độ chính xác cao hỗ trợ việc soạn thảo văn bản trở nên nhanh chóng, nâng cao năng suất công việc.  Việc thao tác chuột cũng trở nên chuẩn xác và dễ dàng hơn với touchpad có diện tích lớn, độ nhạy và độ chính cao. Lớp phủ nhám mịn đem đến trải nghiệm di chuột mượt mà, không thua kém gì với một chiếc chuột rời.   Kết nối linh hoạt  Để có thể đáp ứng đa dạng nhu cầu của người sử dụng, HP ENVY x360 trang bị đầy đủ các cổng kết nối bao gồm: cổng USB Type-C có tốc độ 10Gpbs đóng vai trò đa năng từ sạc, DisplayPort 1.4; 2 cổng USB Type-A 5Gbps trong đó một cổng có thể sạc khi tắt máy, đầu đọc thẻ SD, cổng nguồn và jack tai nghe 3.5mm.   Laptop HP ENVY x360 13 bf0097TU-76B17PA hiện đang được bán tại Hoàng Hà Mobile với mức giá cực tốt. Hãy đến ngay chi nhánh Hoàng Hà Mobile gần nhất hoặc đặt hàng trên website để được miễn phí vận chuyển toàn quốc.',
        '27.690.000 ₫',
        '21.990.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        '292e6bea-daac-4221-808e-7ce68feb6830',
        'Dell',
        ' Dell Inspiron 5430 20DY31 ',
        '',
        'Laptop Dell Inspiron 14 5430 20DY31 có thiết kế sang trọng và hiện đại với màu bạc lấp lánh. Laptop 14-inch mỏng nhẹ, với mặt trước và khung phím bằng kim loại và nắp dưới bằng nhựa sần, tạo nên sự cứng cáp, thời trang và độ bền cho sản phẩm. Với trọng lượng 1.80 kg, laptop này dễ dàng mang đi bất kỳ đâu mà không gặp khó khăn.',
        '28.490.000 ₫',
        '25.290.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        '5b7ed3c0-6ae4-44b0-ba3b-b6d91d128583',
        'Dell',
        ' Dell Inspiron 5430 N4I5497W1 ',
        '',
        'Laptop Dell Inspiron 5430 N4I5497W1 (Core i5 1340P/ 16GB/ 512GB SSD/ Intel Iris Xe Graphics/ 14.0inch Full HD+/ Windows 11 Home + Office Student/ Silver/ Vỏ nhôm/ 1 Year)

Laptop Dell Inspiron 5430 có kích thước 314 x 226 x 16.49 mm và cân nặng 1,69 kg cảm giác khi chạm và cầm máy khá là chắc tay và mượt, dễ dàng cầm di chuyển đi nhiều nơi. Đây là 1 chiếc laptop chuẩn cho giới văn phòng cũng như bạn mang đến trường học, hay mang ra thư viện, quán cafe,...Với màu bạc, chất liệu nhôm cao cấp cho ra đời sản phảm hiện đại Laptop Dell Inspiron 5430 N4I5497W1 đầy thu hút, sang trọng và hiện đại. Chắc chắn bạn sẽ khá hài lòng khi sử dụng sản phẩm này, vừa nhỏ gọn, vừa đầm.',
        '25.990.000 ₫',
        '21.990.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        '9ce75a6e-d85f-48ef-895e-9dc4a1974225',
        'Dell',
        ' Dell Inspiron 3530 71014840 ',
        '',
        'Laptop Dell Inspiron 15 3530 i5 1335U (71014840) sở hữu dáng vẻ hiện đại đầy sang trọng, hiệu năng miễn chê với chip Intel thế hệ 13 hoàn toàn mới cùng card đồ hoạ rời. Chiếc laptop học tập - văn phòng này chắc chắn là sẽ sự lựa chọn tuyệt vời giúp bạn đáp ứng đầy đủ mọi nhu cầu.

• Laptop được trang bị bộ vi xử lý Intel Core i5 1335U thuộc thế hệ 13 có tốc độ xung nhịp tối đa lên đến 4.6 GHz nhờ công nghệ Turbo Boost, có hiệu năng xử lý vượt trội, giải quyết nhẹ nhàng cho bạn mọi tác vụ học tập, làm việc trên Office, Google,... hoặc nâng cao hơn như các phần mềm máy học đơn giản, coding và đồ hoạ.

• Card rời NVIDIA GeForce MX550 2 GB mang đến khả năng xử lý đồ họa vượt trội, đáp ứng tốt các nhu cầu sáng tạo của người dùng trên các nền tảng như Photoshop, Figma, Lightroom, Illustrator,... hay chơi một số tựa game hot.

• Bộ nhớ RAM 8 GB có tốc độ Bus tối đa 3200 MHz cho khả năng đa nhiệm đáng kinh ngạc, bạn có thể thoải mái thao tác trên nhiều ứng dụng mà không lo gặp hiện tượng giật lag hay gián đoạn.',
        '20.490.000 ₫',
        '18.490.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        '4ac1e5bd-db7e-4bd2-ad0c-04f1c07f0c54',
        'Dell',
        ' Dell Inspiron 3530 I5U085W11BLU ',
        '',
        'Laptop Dell Inspiron 3530 i5 1335U (N3530-i5U085W11BLU) sở hữu kiểu dáng thiết kế thanh lịch, hiệu năng mạnh mẽ đến từ chip Intel Gen 13 hoàn toàn mới cùng màn hình với tần số quét cao 120 Hz, chắc chắn sẽ thỏa mãn đa nhu cầu từ làm việc đến giải trí cho người dùng.

• Laptop Dell được trang bị bộ vi xử lý Intel Core i5 1335U kết hợp cùng card Intel UHD Graphics giúp hoàn thành tốt mọi tác vụ công việc thường ngày hay giải trí xem phim, lướt web,... hiệu năng mạnh mẽ cũng có thể đáp ứng bạn với các công việc thiết kế, sáng tạo và chỉnh sửa video, hình ảnh cơ bản. Hơn nữa, người dùng có thể nâng cấp RAM kênh đôi để chạy card Iris Xe Graphics thực hiện được yêu cầu xử lý đồ họa cao hơn.

• Bộ nhớ RAM 8 GB có khả năng nâng cấp tối đa 16 GB giúp đa nhiệm hiệu quả, chuyển qua lại giữa nhiều tác vụ nhanh chóng và không gặp hiện tượng đơ máy, gián đoạn. Ổ cứng 512 GB SSD NVMe PCIe vừa giúp truy xuất dữ liệu nhanh chóng, vừa mang đến không gian lưu trữ thoải mái cho tệp tin và các ứng dụng.',
        '20.990.000 ₫',
        '16.190.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        'e00edd6a-c994-455f-a02d-069be2787aec',
        'Dell',
        ' Dell Inspiron 3530 71011775 ',
        '',
        '• Laptop Dell Inspiron được trang bị CPU Intel Core i7 1355U tân tiến giúp tối ưu hệ thống, cải thiện hiệu suất xử lý, vận hành trơn tru mọi tác vụ văn phòng, học tập và giải trí thường ngày. Ngoài ra, với card đồ họa tích hợp Intel UHD Graphics, bạn cũng có thể chạy các ứng dụng đồ họa nặng như thiết kế đồ họa trên Photoshop, AI, Canva, chơi những tựa game hot hay xem video.

• Bộ nhớ RAM 8 GB có hỗ trợ nâng cấp tối đa 16 GB cho phép bạn làm việc đa tác vụ mượt mà, liên tục chuyển qua lại giữa các ứng dụng làm việc, nghe nhạc, đồ hoạ mà không lo giật lag, đơ máy. Ổ cứng SSD 512 GB cho khả năng lưu trữ đầy đủ đối với hầu hết nhu cầu của người dùng, hơn nữa chuẩn NVMe PCIe còn cho phép khởi động hệ thống, phần mềm chỉ trong vài giây.',
        '22.990.000 ₫',
        '18.490.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        'b2adb13a-503c-4c18-8f9c-30c3dae45e97',
        'Dell',
        ' Dell Inspiron T7430 I7U165W11SLU ',
        '',
        'Laptop Dell Inspiron T7430 I7U165W11SLU - Sở hữu công nghệ thời thượng, hiện đại trong tầm tay

Laptop Dell Inspiron T7430 I7U165W11SLU là một sản phẩm rất thú vị, với khả năng gập 360 độ của bản lề, bạn có thể sử dụng như một chiếc tablet, cùng màn hình cảm ứng đầy nhạy bén, cho bạn trả nghiệm laptop đấy thời thượng, đẳng cấp. Kích thước nhỏ gọn 314 x 226 x 17.4 mm cùng cân nặng 1,64kg, sẽ là chiếc laptop đầy tiện lợi dành cho bạn, có thể đồng hành cùng bạn trên mọi chặng đường thành công. Phần nắp và phần nghỉ tay được sử dụng vật liệu kim loại cho bạn cảm giác thoải mái khi sử dụng laptop. Bạn còn được Dell ưu ái tặng 1 chiếc bút, cho bạn sử dụng màn hình cảm ứng hiệu quả hơn.',
        '30.990.000 ₫',
        '27.590.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        'be2c5085-48af-4b68-9bf3-9065867f120c',
        'Dell',
        ' Dell Inspiron 3530 N5I5489W1 ',
        '',
        'Thiết kế tinh tế với tính di động cao

Laptop Dell Inspiron 3530 N5I5489W1 có một ngoại hình ấn tượng với kích thước 381 x 256 x 25 mm và cân nặng 1,65KG. Với thông số như vậy thì sản phẩm này rất phù hợp với những người dùng di chuyển nhiều hoặc sử dụng trên không gian hẹp, cho vào balo hay túi xách để mang theo bất cứ đâu bạn muốn, trở thành sự lựa chọn tốt trong phân khúc cho người dùng làm việc và giải trí trên đường

Với lớp vỏ bằng nhựa cao cấp cùng màu sắc Platinum Silver tạo nên vẻ sang trọng, hiện đại. Ngoại hình như vậy đảm bảo cho sản phẩm nổi bật, tinh tế phù hợp với bất cứ môi trường sử dụng nào',
        '21.490.000 ₫',
        '19.990.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        '0e33ef30-1ccd-46e9-85f2-e3a7a9cd7b45',
        'Dell',
        ' Dell Inspiron 3530 N3530I716W1 ',
        '',
        '• Bộ vi xử lý Intel Core i7 1355U đảm bảo sức mạnh xử lý vượt trội, không chỉ vận hành hoàn hảo mọi tác vụ học tập, doanh nghiệp, giải trí thường ngày mà còn đáp ứng hiệu quả cho người dùng với các chương trình học phức tạp, chạy code hoặc làm việc đồ hoạ.

• Card rời NVIDIA GeForce MX550 2 GB cung cấp khả năng xử lý đồ hoạ tốt, giúp bạn làm việc thiết kế, sáng tạo dễ dàng trên các nền tảng: Photoshop, AI, Figma,... hoặc chơi các game hot như: LOL, Valorant, CS:GO,...

• Với RAM 16 GB DDR4 mang đến dung lượng ấn tượng để người dùng thao tác cùng lúc hiệu quả trên nhiều ứng dụng làm việc, giải trí, đồ hoạ, chuyển qua lại linh hoạt mà không lo bị đơ hay lag.

• Ổ cứng SSD 512 GB trên chiếc laptop học tập - văn phòng này cho người dùng đủ không gian để lưu trữ các tệp tin, dữ liệu, tài liệu học tập và công việc của mình, nâng cấp dung lượng lên đến 2 TB dễ dàng bằng cách tháo lắp. Ngoài ra, ổ SSD còn cung cấp tốc độ đọc và ghi nhanh hơn so với ổ đĩa cứng thông thường, từ đó cải thiện tốc độ truy cập và lưu trữ dữ liệu.

• Màn hình 15.6 inch độ phân giải Full HD (1920 x 1080) đi cùng công nghệ LED Backlit cung cấp màu sắc chân thực, góc nhìn rộng, giúp người dùng có trải nghiệm giải trí tuyệt vời, màn hình lớn đặc biệt phù hợp với các công việc bàn giấy hay đồ hoạ. 

• Tần số quét cao 120 Hz cho khả năng hiển thị chuyển động thêm mượt mà và chính xác, hình ảnh không bị nhoè mờ hay rách khi trải nghiệm các bộ phim hành động hoặc những tựa game đua xe có tốc độ cao. Công nghệ chống chói Anti Glare cũng khắc phục tối đa tình trạng hiển thị bị mờ khi có nguồn sáng cao chiếu trực tiếp vào màn hình.',
        '25.990.000 ₫',
        '22.490.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        '0d1656fb-c9b3-4c26-b26d-f040c53098fb',
        'Dell',
        'Dell Inspiron 5430 20DY31 ',
        '',
        'Laptop Dell Inspiron 5430 20DY31 (Core i7 1360P/ 16GB/ 1TB SSD/ Intel Iris Xe Graphics/ 14.0inch Full HD+/ Windows 11 Home + Office Student/ Silver/ Vỏ nhôm/ 1 Year)

Laptop Dell Inspiron 5430 20DY31 với khả năng kết hợp mạnh mẽ giữ các linh kiện cho ra mắt sản phẩm hỗ trợ các tác vụ văn phòng từ cơ bản đến khả năng làm việc dân thiết kế đồ họa đều sẽ rất ổn định. Kích thước 314 x 226 x 16.49 mm, nặng khoảng 1,6 kg, bạn sẽ dễ dàng mang đi làm, đi công tác, đi học hay đi du lịch đều rất nhẹ nhàng và tiện dụng, cùng pin 4 cell cho bạn sử dụng máy sau khi sạc đầy lên đến 5 tiếng.  Vỏ hợp kim nhôm cao cấp, cùng khung hợp kim giữ gìn an toàn chiếc máy của bạn, chống sốc tốt, bảo vệ ổn định cho linh kiện trong suốt thời gian sử dụng.',
        '28.490.000 ₫',
        '25.290.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        'e51f5e4b-a1ad-4d21-a9ff-f6c55ce97b1d',
        'Dell',
        'Dell Inspiron 5430 N4I5497W1 ',
        '',
        'Laptop Dell Inspiron 5430 N4I5497W1 (Core i5 1340P/ 16GB/ 512GB SSD/ Intel Iris Xe Graphics/ 14.0inch Full HD+/ Windows 11 Home + Office Student/ Silver/ Vỏ nhôm/ 1 Year)

Laptop Dell Inspiron 5430 có kích thước 314 x 226 x 16.49 mm và cân nặng 1,69 kg cảm giác khi chạm và cầm máy khá là chắc tay và mượt, dễ dàng cầm di chuyển đi nhiều nơi. Đây là 1 chiếc laptop chuẩn cho giới văn phòng cũng như bạn mang đến trường học, hay mang ra thư viện, quán cafe,...Với màu bạc, chất liệu nhôm cao cấp cho ra đời sản phảm hiện đại Laptop Dell Inspiron 5430 N4I5497W1 đầy thu hút, sang trọng và hiện đại. Chắc chắn bạn sẽ khá hài lòng khi sử dụng sản phẩm này, vừa nhỏ gọn, vừa đầm.',
        '25.990.000 ₫',
        '21.990.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        'f7aea815-ba65-4139-9111-18a1d9ae4885',
        'Dell',
        'Dell Inspiron 3530 71014840 ',
        '',
        '• Laptop được trang bị bộ vi xử lý Intel Core i5 1335U thuộc thế hệ 13 có tốc độ xung nhịp tối đa lên đến 4.6 GHz nhờ công nghệ Turbo Boost, có hiệu năng xử lý vượt trội, giải quyết nhẹ nhàng cho bạn mọi tác vụ học tập, làm việc trên Office, Google,... hoặc nâng cao hơn như các phần mềm máy học đơn giản, coding và đồ hoạ.

• Card rời NVIDIA GeForce MX550 2 GB mang đến khả năng xử lý đồ họa vượt trội, đáp ứng tốt các nhu cầu sáng tạo của người dùng trên các nền tảng như Photoshop, Figma, Lightroom, Illustrator,... hay chơi một số tựa game hot.

• Bộ nhớ RAM 8 GB có tốc độ Bus tối đa 3200 MHz cho khả năng đa nhiệm đáng kinh ngạc, bạn có thể thoải mái thao tác trên nhiều ứng dụng mà không lo gặp hiện tượng giật lag hay gián đoạn.

• Ổ cứng SSD 512 GB mang đến một không gian lưu trữ tương đối rộng lớn và đầy đủ cho các ứng dụng, tài liệu của bạn, đồng thời cũng cho phép khởi động các phần mềm ứng dụng nhanh chóng chỉ trong vài giây',
        '20.490.000 ₫',
        '18.490.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        'ac3c66e2-47d5-4378-93c5-71e822ec7665',
        'Dell',
        'Dell Inspiron 3530 I5U085W11BLU ',
        '',
        ' Laptop Dell Inspiron được hoàn thiện với tông màu đen sang trọng, kiểu dáng máy được thiết kế với phần bản lề ErgoLift có độ nâng nhất định khi mở vừa giúp tản nhiệt hiệu quả, vừa mang những nét thẩm mỹ và tinh tế nhất định khi sử dụng. Chiếc laptop học tập - văn phòng có khối lượng 1.66 kg vẫn rất vừa vặn trong chiếc balo của bạn, linh động mang theo bên mình để phục vụ công việc.',
        '20.990.000 ₫',
        '16.190.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        'e4659458-a957-4840-a120-c533cab7681b',
        'Dell',
        'Dell Inspiron 3530 71011775 ',
        '',
        'Laptop Dell Inspiron 15 3530 nổi bật khi sở hữu chip Core i7, 10 nhân 12 luồng mang đến cấu hình mạnh mẽ, đa nhiệm cùng một lúc. Thêm vào đó, dung lượng RAM 8GB DDR4 giúp bạn có thể lưu trữ dữ liệu thoải mái, nâng cấp tối đa trải nghiệm của bạn. Sản phẩm sẽ là trợ thủ đắc lực dành cho khối văn phòng, học sinh, sinh viên nằm trong phân khúc giá tầm trung.',
        '22.990.000 ₫',
        '18.490.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        'f3ae86f5-f7a9-425d-a2ae-21f9eab1c80c',
        'Dell',
        'Dell Inspiron T7430 I7U165W11SLU ',
        '',
        'Laptop Dell Inspiron T7430 I7U165W11SLU là một sản phẩm rất thú vị, với khả năng gập 360 độ của bản lề, bạn có thể sử dụng như một chiếc tablet, cùng màn hình cảm ứng đầy nhạy bén, cho bạn trả nghiệm laptop đấy thời thượng, đẳng cấp. Kích thước nhỏ gọn 314 x 226 x 17.4 mm cùng cân nặng 1,64kg, sẽ là chiếc laptop đầy tiện lợi dành cho bạn, có thể đồng hành cùng bạn trên mọi chặng đường thành công. Phần nắp và phần nghỉ tay được sử dụng vật liệu kim loại cho bạn cảm giác thoải mái khi sử dụng laptop. Bạn còn được Dell ưu ái tặng 1 chiếc bút, cho bạn sử dụng màn hình cảm ứng hiệu quả hơn.',
        '30.990.000 ₫',
        '27.590.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        'a2aff99f-ae19-4718-be67-6f54a4c6a518',
        'Dell',
        'Dell Inspiron 3530 N5I5489W1 ',
        '',
        'Laptop Laptop Dell Inspiron 3530 N5I5489W1 – Thiết kế tinh tế, cấu hình mạnh mẽ

Laptop Dell Inspiron 3530 N5I5489W1 với thiết kế tinh tế kèm cấu hình mạnh mẽ sẽ đem lại trải nghiệm tốt cho người dùng đang tìm kiếm một sản phẩm laptop học tập văn phòng chất lượng cao
Thiết kế tinh tế với tính di động cao

Laptop Dell Inspiron 3530 N5I5489W1 có một ngoại hình ấn tượng với kích thước 381 x 256 x 25 mm và cân nặng 1,65KG. Với thông số như vậy thì sản phẩm này rất phù hợp với những người dùng di chuyển nhiều hoặc sử dụng trên không gian hẹp, cho vào balo hay túi xách để mang theo bất cứ đâu bạn muốn, trở thành sự lựa chọn tốt trong phân khúc cho người dùng làm việc và giải trí trên đường

Với lớp vỏ bằng nhựa cao cấp cùng màu sắc Platinum Silver tạo nên vẻ san',
        '21.490.000 ₫',
        '19.990.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        'e54346ce-964c-4b5e-b4b4-ec0eeae1639f',
        'Dell',
        'Dell Inspiron 3530 N3530I716W1 ',
        '',
        'Bạn là sinh viên hoặc nhân viên văn phòng muốn tìm mua một chiếc laptop phù hợp cho các tác vụ nặng công việc - học tập, laptop Dell Inspiron 15 3530 i7 1355U (N3530I716W1) với đường nét sang trọng, thông số vượt trội cùng đa tính năng hấp dẫn, là sự lựa chọn mà bạn nên cân nhắc.

• Bộ vi xử lý Intel Core i7 1355U đảm bảo sức mạnh xử lý vượt trội, không chỉ vận hành hoàn hảo mọi tác vụ học tập, doanh nghiệp, giải trí thường ngày mà còn đáp ứng hiệu quả cho người dùng với các chương trình học phức tạp, chạy code hoặc làm việc đồ hoạ.

• Card rời NVIDIA GeForce MX550 2 GB cung cấp khả năng xử lý đồ hoạ tốt, giúp bạn làm việc thiết kế, sáng tạo dễ dàng trên các nền tảng: Photoshop, AI, Figma,... hoặc chơi các game hot như: LOL, Valorant, CS:GO,...

• Với RAM 16 GB DDR4 mang đến dung lượng ấn tượng để người dùng thao tác cùng lúc hiệu quả trên nhiều ứng dụng làm việc, giải trí, đồ hoạ, chuyển qua lại linh hoạt mà không lo bị đơ hay lag.

• Ổ cứng SSD 512 GB trên chiếc laptop học tập - văn phòng này cho người dùng đủ không gian để lưu trữ các tệp tin, dữ liệu, tài liệu học tập và công việc của mình, nâng cấp dung lượng lên đến 2 TB dễ dàng bằng cách tháo lắp. Ngoài ra, ổ SSD còn cung cấp tốc độ đọc và ghi nhanh hơn so với ổ đĩa cứng thông thường, từ đó cải thiện tốc độ truy cập và lưu trữ dữ liệu.',
        '25.990.000 ₫',
        '22.490.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        'b6943496-fc98-4712-baff-6dbc8d68d670',
        'Dell',
        ' Dell Latitude 5520 ',
        '',
        'Laptop Dell Latitude 5520 42LT552003
Tinh Tế - Sang trọng - Bền bỉ

Đã nhắc đến dòng Laptop Dell Latitude đình đám của thương hiệu Laptop Dell thì không thể nào không nhắc đến sự sang trọng, tinh tế nhưng vẫn đảm bảo độ bề bỉ, chắc chắn và sở hữu một cấu hình vô cùng mạnh mẽ!

Với xu hướng laptop nhỏ gọn đang thịnh hành những năm gần đây, Dell đã cho ra mắt những sản phẩm sở hữu tính cơ động cao. Dell cho ra mắt Laptop Dell Latitude 5520 mang trong mình nét đẹp sang trọng và kèm theo đó là một cấu hình cực mạnh mà các laptop trong cùng phân khúc phải dè chừng.
 Thiết sang trọng nhỏ gọn

Laptop Dell Latitude 5520 với lớp hoàn thiện bóng bẩy, mịn màng mang tới nét sang trọng, hiện đại phù hợp với xu hướng thời nay. Thiết kế tạo sự liền mạch, sở hữu kiểu dáng tinh tế, thanh mảnh đáp ứng được đúng ý thích thẩm mĩ cho dân văn phòng. Giữa mặt nắp capo là logo Dell nổi bật giúp người dùng dễ dàng nhận diện thương hiệu.

Laptop Dell Latitude 5520 thiết kế các góc cạnh máy khá tỉ mỉ với bo tròn tạo nên nét tinh tế, mềm mại hơn  đồng thời cũng mang đến cho người dùng cảm giác cầm nắm chắc chắn.  Sở hữu khung máy cứng cáp, chắc chắn giúp ưu giúp bảo vệ linh kiện bên trong trước tác động của ngoại lực. Đây là chiếc máy đạt chuẩn về độ bền của mỹ về bao gồm các tiêu chuẩn về độ rung, độ ẩm, nhiệt độ, độ cao, bụi bẩn,...

Máy có thiết kế nhỏ hơn , mỏng hơn và hoàn thiện hơn với trọng lượng máy cũng khá nhẹ chỉ 1.59 kg và kích thước 15.6 inch gọn gàng giúp người dùng thuận tiện hơn khi mang theo hay cất giữ. Nhờ tính cơ động này mà bạn có thể bỏ em máy vào túi để mang theo những cuộc họp, những lần ngồi cà phê hay cả những chuyến công tác dài ngày một cách dễ dàng đấy! Thật tiện lợi phải không nào!',
        '17.990.000 ₫',
        '15.990.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        'a069298f-e5a0-45b7-8fb7-9f7f16d2fe7a',
        'Dell',
        ' Dell Latitude 7340 42LT734001 ',
        '',
        'Laptop Dell Latitude 7340 XCTO 42LT734001

Laptop Dell Latitude 7340 XCTO 42LT734001 là một trong  những laptop mới nhất của Dell, được thiết kế dành riêng cho người dùng doanh nhân và sử dụng trong môi trường làm việc chuyên nghiệp. Với cấu hình mạnh mẽ, thiết kế gọn gàng và nhiều tính năng tiện ích, chiếc máy tính xách tay 13 inch này hứa hẹn mang lại trải nghiệm tuyệt vời cho người dùng. ',
        '35.490.000 ₫',
        '34.990.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        'ef11bad0-759c-4fca-9b0c-a6cb34feb5b7',
        'Dell',
        ' Dell Latitude 5440 42LT544002 ',
        '',
        'Laptop Dell Latitude 5440 42LT544002 (Core i5 1335U/ 16GB/ 512GB SSD/ Intel Iris Xe Graphics/ 14.0inch Full HD/ NoOS/ Grey/ Aluminium/ 3 Year)

Laptop Dell Latitude 5440 42LT544002 được thiết kế ấn tượng với vỏ aluminium màu ghi, kích thước 321 x 212 x 19.3 mm, cân nặng 1,36 kg. Sản phẩm phù hợp với phân khúc laptop văn phòng, rất gọn nhẹ tiện lợi cho bạn đi công tác hay mang đi du lịch. Chiếc laptop sẽ không cho bạn cảm thấy vướng khi nằm trong chiếc túi của bạn. Sử dụng pin 3-cell cho bạn sử dụng liên tục từ 3 - 4 tiếng tùy thuộc vào các thao tác của người sử dụng. Máy tính sử dụng bảo mật dấu vân tay, chỉ với 1 chạm có thể mở máy tính dễ dàng, tích kiệm thời gian.',
        '30.490.000 ₫',
        '28.690.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        'a72fbefc-58ca-477a-9463-e5bc77f634d4',
        'Dell',
        ' Dell Latitude 5440 ',
        '',
        'Laptop cũ Dell Latitude E5440 là chiếc laptop văn phòng giá rẻ nhưng có thiết kế siêu bền bỉ đặc trưng của dòng laptop Dell và cấu hình khỏe nhất tầm giá. Vậy nên chiếc laptop Dell cũ này chính là sản phẩm laptop/máy tính xách tay mà người dùng có ngân sách thấp không thể bỏ qua: 

- Có mức giá thành rẻ, thiết kế có độ bền cao đạt chuẩn quân sự Mỹ. Hạn chế hỏng hóc linh kiện khi bị va đập

- Cấu hình ổn định xử lý gọn các tác vụ công việc văn phòng, học tập, xem phim giải trí

- Có option card rời NVIDIA GeForce GT 720M chơi mượt được cả game online LOL và đồ họa nhẹ',
        '32.990.000 ₫',
        '30.490.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        '9cfa5463-8195-4e3f-a803-692eadb49aa4',
        'Dell',
        ' Dell Latitude 7440 42LT744001 ',
        '',
        'Laptop Dell Latitude 7440 42LT744001

Laptop Dell Latitude 7440 42LT744001 đã nhanh chóng thu hút sự chú ý của nhiều người với cấu hình mạnh mẽ và thiết kế tinh tế. Với cấu hình ấn tượng, màn hình chất lượng và trọng lượng nhẹ, Laptop Dell này là một lựa chọn tốt cho những người đang tìm kiếm một chiếc Ultrabook nhỏ gọn. Thiết kế tinh tế

Laptop Dell Latitude 7440 42LT744001 nổi bật với thiết kế tinh tế và sang trọng, phản ánh sự chất lượng và sự đầu tư của Dell vào sản phẩm này. Màu sắc Titan Gray tạo nên vẻ ngoại hình đẳng cấp và chuyên nghiệp. Màu sắc này không chỉ giúp máy trông thời trang mà còn giúp tránh bám vân tay và dấu vết bẩn dễ dàng hơn. Logo Dell được đặt một cách tinh tế trên nắp máy, tạo điểm nhấn cho thiết kế tổng thể của laptop',
        '31.490.000 ₫',
        '30.390.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        'b0aa7458-a485-4903-a0b9-5b2d6080d9b3',
        'Dell',
        ' Dell Latitude 7340 42LT734002 ',
        '',
        '
    Laptop Dell Latitude 7340 là một chiếc máy tính xách tay thương mại cao cấp 13.3″ siêu nhẹ và nhỏ nhất trên thế giới, hoàn hảo cho các chuyên gia di chuyển bận rộn.
    Laptop Dell Latitude 7340 được thiết kế siêu nhẹ với khung nhôm chắc chắn và có màu sắc River tuyệt đẹp.
    Khung nhôm Titan Gray cũng có sẵn dưới dạng máy tính xách tay hoặc dạng 2 trong 1, mang đến 4 chế độ khác nhau cho bạn lựa chọn – chế độ máy tính xách tay truyền thống, chế độ lều, chế độ đứng hoặc chế độ máy tính bảng.
',
        '37.490.000 ₫',
        '36.990.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        '66e7b3b9-07f6-424a-bb30-1a68532daad3',
        'Dell',
        ' Dell Latitude 3420 L3420I5SSDF512B ',
        '',
        'Đã nhắc đến Dell thì không thể nào không nhắc đến các sản phẩm hiện đại, mạnh mẽ và bền bỉ  đặc biệt mà chỉ hãng mới có. Laptop Dell Latitude nổi tiếng với độ bề bỉ và có chất lượng cao, chiếc Laptop Dell Latitude 3420 L3420I5SSDF512B mang trong mình nét đẹp sang trọng và kèm theo đó là một cấu hình cực mạnh mà các laptop trong cùng phân khúc phải dè chừng.

Nếu bạn đang định lựa chọn chiếc laptop này cho doanh nghiệp của mình hay cá nhân bạn mà còn đang băn khoăn thì hãy tham khảo bài viết này của An Phát nhé!
Thiết kế hiện đại trẻ trung

Dell Latitude 3420 L3420I5SSDF512B mang lớp hoàn thiện bóng bẩy, mịn màng mang tới nét sang trọng, hiện đại phù hợp với xu hướng thời nay. Với thiết kế tạo sự liền mạch, sở hữu kiểu dáng tinh tế, thanh mảnh đáp ứng được đúng ý thích thẩm mĩ cho dân văn phòng.

',
        '19.999.000 ₫',
        '16.990.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        '19a3ea78-b95e-4937-aa0c-460e225ad994',
        'Dell',
        'Laptop Dell Latitude 5520 ',
        '',
        'Laptop Dell Latitude 5520 (Core i5 1145G7/ 8GB/ 256GB SSD/ Intel Iris Xe Graphics/ 15.6inch Full HD/ NoOS/ Grey/ Aluminium/ 1 Year)

Laptop Dell Latitude 5520 sản phẩm tối ưu hóa xử lý các tác vụ văn phòng, thiết kế tỉ mỉ bắt mắt, bề mặt sản phẩm sử dụng chất liệu cao cấp Aluminium, Dell Latitude 5520 chỉ nặng có 1,59 kg. Với 357 x 233 x 19.8 mm, kích thước vô cùng nhỏ gọn này chiếc máy tính phù hợp với những bạn có nhu cầu làm việc di chuyển nhiều, tính chất công việc cơ động cao, phù hợp với doanh nhân, nhân viên văn phòng, học sinh, sinh viên.  Tính năng mở khóa dấu vân tay của sản phẩm là một bước cải tiến đáng chú ý cho sản phẩm này, tăng độ bảo mật thông tin cao. Bạn có thể ra ngoài mà vẫn họp mặt, làm việc, học tập trực tuyến dễ dàng khi tích hợp Webcam HD.',
        '17.990.000 ₫',
        '15.990.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        '5b50f2ec-18b7-4b6d-b242-f2c99d4d45b7',
        'Dell',
        'Laptop Dell Latitude 7340 42LT734001 ',
        '',
        'Laptop Dell Latitude 7340 XCTO 42LT734001 là một trong  những laptop mới nhất của Dell, được thiết kế dành riêng cho người dùng doanh nhân và sử dụng trong môi trường làm việc chuyên nghiệp. Với cấu hình mạnh mẽ, thiết kế gọn gàng và nhiều tính năng tiện ích, chiếc máy tính xách tay 13 inch này hứa hẹn mang lại trải nghiệm tuyệt vời cho người dùng. ',
        '35.490.000 ₫',
        '34.990.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        'a2030c69-aee1-4269-9f59-ec86724748a2',
        'Dell',
        'Laptop Dell Latitude 5440 42LT544002 ',
        '',
        'Laptop Dell Latitude 5440 42LT544002 (Core i5 1335U/ 16GB/ 512GB SSD/ Intel Iris Xe Graphics/ 14.0inch Full HD/ NoOS/ Grey/ Aluminium/ 3 Year)

Laptop Dell Latitude 5440 42LT544002 được thiết kế ấn tượng với vỏ aluminium màu ghi, kích thước 321 x 212 x 19.3 mm, cân nặng 1,36 kg. Sản phẩm phù hợp với phân khúc laptop văn phòng, rất gọn nhẹ tiện lợi cho bạn đi công tác hay mang đi du lịch. Chiếc laptop sẽ không cho bạn cảm thấy vướng khi nằm trong chiếc túi của bạn. Sử dụng pin 3-cell cho bạn sử dụng liên tục từ 3 - 4 tiếng tùy thuộc vào các thao tác của người sử dụng. Máy tính sử dụng bảo mật dấu vân tay, chỉ với 1 chạm có thể mở máy tính dễ dàng, tích kiệm thời gian.',
        '30.490.000 ₫',
        '28.690.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        '97e0e8ec-c90d-4d9d-9556-bf719b2cfc53',
        'Dell',
        'Laptop Dell Latitude 5440 ',
        '',
        'Dell Latitude E5440
Siêu bền - Làm việc mượt mà, ổn định

 

Laptop cũ Dell Latitude E5440 là chiếc laptop văn phòng giá rẻ nhưng có thiết kế siêu bền bỉ đặc trưng của dòng laptop Dell và cấu hình khỏe nhất tầm giá. Vậy nên chiếc laptop Dell cũ này chính là sản phẩm laptop/máy tính xách tay mà người dùng có ngân sách thấp không thể bỏ qua: 

- Có mức giá thành rẻ, thiết kế có độ bền cao đạt chuẩn quân sự Mỹ. Hạn chế hỏng hóc linh kiện khi bị va đập

- Cấu hình ổn định xử lý gọn các tác vụ công việc văn phòng, học tập, xem phim giải trí

- Có option card rời NVIDIA GeForce GT 720M chơi mượt được cả game online LOL và đồ họa nhẹ',
        '32.990.000 ₫',
        '30.490.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        '35026950-8b4c-403d-a660-e5bfea806918',
        'Dell',
        'Laptop Dell Latitude 7440 42LT744001 ',
        '',
        'Laptop Dell Latitude 7440 42LT744001

Laptop Dell Latitude 7440 42LT744001 đã nhanh chóng thu hút sự chú ý của nhiều người với cấu hình mạnh mẽ và thiết kế tinh tế. Với cấu hình ấn tượng, màn hình chất lượng và trọng lượng nhẹ, Laptop Dell này là một lựa chọn tốt cho những người đang tìm kiếm một chiếc Ultrabook nhỏ gọn. Thiết kế tinh tế  Laptop Dell Latitude 7440 42LT744001 nổi bật với thiết kế tinh tế và sang trọng, phản ánh sự chất lượng và sự đầu tư của Dell vào sản phẩm này. Màu sắc Titan Gray tạo nên vẻ ngoại hình đẳng cấp và chuyên nghiệp. Màu sắc này không chỉ giúp máy trông thời trang mà còn giúp tránh bám vân tay và dấu vết bẩn dễ dàng hơn. Logo Dell được đặt một cách tinh tế trên nắp máy, tạo điểm nhấn cho thiết kế tổng thể của laptop',
        '31.490.000 ₫',
        '30.390.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        'dae8bcb8-880d-4342-a1ab-22b3a193549e',
        'Dell',
        'Laptop Dell Latitude 3420 L3420I5SSDF512B ',
        '',
        'Thiết kế để tăng năng suất làm việc

Laptop Dell Latitude 3420 được thiết kế tương đối gọn gàng so với các laptop chuyên dụng cho doanh nghiệp khác, với lớp vỏ hoàn thiện tông tối hơn, các cạnh viền mỏng và được đánh bóng. 

Bàn phím của sản phẩm máy tính xách tay Dell này cũng được nâng cấp với tràn cạnh lớn hơn, các phím bấm và bàn di chuột cũng lớn hơn giúp việc thao tác gõ và điều hướng dễ dàng, nhanh chóng hơn. Màn hình 14 inch Full HD (1920x1080) với độ sáng lên đến 300 nits, làm việc ngoài trời dễ dàng hơn mà không bị lóa. ',
        '19.999.000 ₫',
        '16.990.000 ₫ [Giá đã có VAT]',
        999
    ),
    (
        '0da90c6c-5d1d-45cc-84d2-4c781419935a',
        'Dell',
        'Laptop Dell Latitude 7340 42LT734002 ',
        '',
        '
    Laptop Dell Latitude 7340 là một chiếc máy tính xách tay thương mại cao cấp 13.3″ siêu nhẹ và nhỏ nhất trên thế giới, hoàn hảo cho các chuyên gia di chuyển bận rộn.
    Laptop Dell Latitude 7340 được thiết kế siêu nhẹ với khung nhôm chắc chắn và có màu sắc River tuyệt đẹp.
    Khung nhôm Titan Gray cũng có sẵn dưới dạng máy tính xách tay hoặc dạng 2 trong 1, mang đến 4 chế độ khác nhau cho bạn lựa chọn – chế độ máy tính xách tay truyền thống, chế độ lều, chế độ đứng hoặc chế độ máy tính bảng.
',
        '37.490.000 ₫',
        '36.990.000 ₫ [Giá đã có VAT]',
        999
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
        'cbab07cd-aa39-4ae4-bdc2-b255b2f76083',
        '13.3inch OLED Touch',
        ' 512Gb SSD',
        'Core i5 1230U 3.3GHz',
        'Windows 11 Home',
        'VGA onboard - Intel Iris Xe Graphics',
        '16GB'
    ),
    (
        'd8d01ee3-bb3a-4ab6-adb6-9d751a5ec0dc',
        '13.3inch OLED Touch',
        ' 512Gb SSD',
        'Core i5 1230U 3.3GHz',
        'Windows 11 Home',
        'VGA onboard - Intel Iris Xe Graphics',
        '8Gb (Onboard) DDR4 3200'
    ),
    (
        '6eacf674-2af8-49bd-b9c8-9ef03d44a668',
        '13.3inch OLED Touch',
        ' 512Gb SSD',
        'Core i7 1250U 3.5GHz',
        'Windows 11 Home',
        'VGA onboard - Intel Iris Xe Graphics',
        '16GB'
    ),
    (
        '5fe8de90-a2b6-47a4-b917-26bbae691f8a',
        'Khoảng 16 inch',
        ' 512Gb SSD',
        'Core i9 12900HK 3.8GHz',
        'Windows 11 Home',
        'VGA Nvidia',
        '16Gb (2x8Gb) DDR5 4800'
    ),
    (
        '1b0ba9d4-4182-4bcc-b59a-e72d362490f8',
        '13.3inch OLED Touch',
        ' 512Gb SSD',
        'Core i7 1250U 3.5GHz',
        'Windows 11 Home',
        'VGA onboard - Intel Iris Xe Graphics',
        '8Gb (Onboard) DDR4 3200'
    ),
    (
        '89cf7e6e-f10d-47dd-b551-9953bdc14794',
        '13.3inch OLED Touch',
        ' 512Gb SSD',
        'Core i5 1230U 3.3GHz',
        'Windows 11 Home',
        'VGA onboard - Intel Iris Xe Graphics',
        '16GB'
    ),
    (
        '572c965c-f231-4b3b-8511-ce903fd4271c',
        '13.3inch OLED Touch',
        ' 512Gb SSD',
        'Core i5 1230U 3.3GHz',
        'Windows 11 Home',
        'VGA onboard - Intel Iris Xe Graphics',
        '8Gb (Onboard) DDR4 3200'
    ),
    (
        'ce01a3c2-78f8-4636-bddf-ab503e0f6638',
        '13.3inch OLED Touch',
        ' 512Gb SSD',
        'Core i5 1230U 3.3GHz',
        'Windows 11 Home',
        'VGA onboard - Intel Iris Xe Graphics',
        '8Gb (Onboard) DDR4 3200'
    ),
    (
        'e4d3343d-2cd8-458b-8155-289231608ace',
        '13.3inch OLED Touch',
        ' 512Gb SSD',
        'Core i7 1250U 3.5GHz',
        'Windows 11 Home',
        'VGA onboard - Intel Iris Xe Graphics',
        '16GB'
    ),
    (
        '344b56f5-b807-4730-8c45-0f694a52fb6d',
        '13.3inch OLED Touch',
        ' 512Gb SSD',
        'Core i5 1230U 3.3GHz',
        'Windows 11 Home',
        'VGA onboard - Intel Iris Xe Graphics',
        '16GB'
    ),
    (
        '042f7644-80a3-43a7-bf65-79476e7f777c',
        '13.3inch OLED Touch',
        ' 512Gb SSD',
        'Core i5 1230U 3.3GHz',
        'Windows 11 Home',
        'VGA onboard - Intel Iris Xe Graphics',
        '8Gb (Onboard) DDR4 3200'
    ),
    (
        'f12ff56a-bbaf-4612-8198-137361f3329f',
        '13.3inch OLED Touch',
        ' 512Gb SSD',
        'Core i5 1230U 3.3GHz',
        'Windows 11 Home',
        'VGA onboard - Intel Iris Xe Graphics',
        '8Gb (Onboard) DDR4 3200'
    ),
    (
        '95b08cba-acb6-407d-8c3a-809e04f35425',
        '13.3inch OLED Touch',
        ' 512Gb SSD',
        'Core i5 1230U 3.3GHz',
        'Windows 11 Home',
        'VGA onboard - Intel Iris Xe Graphics',
        '16GB'
    ),
    (
        '1f9492e6-3326-4551-85a4-02c8a0aedf0b',
        '13.3inch OLED Touch',
        ' 512Gb SSD',
        'Core i5 1230U 3.3GHz',
        'Windows 11 Home',
        'VGA onboard - Intel Iris Xe Graphics',
        '8Gb (Onboard) DDR4 3200'
    ),
    (
        'cb3d58f6-0d5d-4973-a0c6-2a44e70b1e69',
        '13.3inch OLED Touch',
        ' 512Gb SSD',
        'Core i7 1250U 3.5GHz',
        'Windows 11 Home',
        'VGA onboard - Intel Iris Xe Graphics',
        '8Gb (Onboard) DDR4 3200'
    ),
    (
        'ece2725c-3a08-4adf-83fa-090c73b697da',
        '13.3inch OLED Touch',
        ' 512Gb SSD',
        'Core i5 1230U 3.3GHz',
        'Windows 11 Home',
        'VGA onboard - Intel Iris Xe Graphics',
        '8Gb (Onboard) DDR4 3200'
    ),
    (
        '6b7ba7dc-41b4-420d-b8e7-7a80ae327424',
        '14.0inch Full HD',
        ' 512Gb SSD',
        'Core i5 1235U 1.3GHz',
        'Windows 11 Home',
        'VGA onboard - Intel Iris Xe Graphics',
        '8Gb (2x4Gb) DDR4 3200'
    ),
    (
        '96463408-4b50-48ec-a249-242bd6eba3ec',
        '14.0inch Full HD',
        ' 512Gb SSD',
        'Core i7 1255U 1.7GHz',
        'Windows 11 Home',
        'VGA onboard - Intel Iris Xe Graphics',
        '8Gb (2x4Gb) DDR4 3200'
    ),
    (
        '7ea4093e-4799-44ab-8f96-889cbe982110',
        '15.6inch Full HD',
        ' 512Gb SSD',
        'Core i3 1215U 1.2GHz',
        'Windows 11 Home',
        'VGA onboard - Intel UHD Graphics',
        '8Gb (2x4Gb) DDR4 3200'
    ),
    (
        'e71bd252-4349-412e-b562-d921a555bc94',
        '15.6inch Full HD',
        ' 512Gb SSD',
        'Core i7 1260P 2.1GHz',
        'Windows 11 Home',
        'VGA onboard - Intel Iris Xe Graphics',
        '8Gb (2x4Gb) DDR4 3200'
    ),
    (
        'dd40d5e1-b512-488e-95f6-d0c91d3f1f4d',
        '15.6inch Full HD',
        ' 512Gb SSD',
        'Core i5 1240P 3.3GHz',
        'Windows 11 Home',
        'VGA onboard - Intel Iris Xe Graphics',
        '8GB'
    ),
    (
        '0ee3faff-c33f-4531-84a1-d40e469dfe5e',
        '15.6inch Full HD',
        ' 512Gb SSD',
        'Core i3 1215U 1.2GHz',
        'Windows 11 Home',
        'VGA onboard - Intel UHD Graphics',
        '8Gb (2x4Gb) DDR4 3200'
    ),
    (
        '441545fb-974e-4ca5-ae8b-0a7a16c527b9',
        '14.0inch Full HD',
        ' 512Gb SSD',
        'Core i5 1235U 1.3GHz',
        'Windows 11 Home',
        'VGA onboard - Intel Iris Xe Graphics',
        '8Gb (2x4Gb) DDR4 3200'
    ),
    (
        '55a16ad0-7a25-412a-935e-94518ce070a1',
        '14.0inch Full HD',
        ' 512Gb SSD',
        'Core i7 1255U 1.7GHz',
        'Windows 11 Home',
        'VGA onboard - Intel Iris Xe Graphics',
        '16Gb (2x8Gb) DDR4 3200'
    ),
    (
        '3087a918-7ce4-40b0-9765-616e94410a72',
        '14.0inch FHD TouchScreen',
        ' 512Gb SSD',
        'Core i7 1355U 1.7GHz',
        'Windows 11 Home',
        'VGA onboard - Intel Iris Xe Graphics',
        '16Gb (2x8Gb) DDR4 3200'
    ),
    (
        'e82cc807-90e4-4e63-96ba-e4df09657ae5',
        '15.6inch Full HD',
        ' 512Gb SSD',
        'Core i7 1260P 2.1GHz',
        'Windows 11 Home',
        'VGA onboard - Intel Iris Xe Graphics',
        '16Gb (2x8Gb) DDR4 3200'
    ),
    (
        '3afa5e8a-060a-4d87-8c36-16ac56f67679',
        '14.0inch FHD TouchScreen',
        ' 512Gb SSD',
        'Core i5 1335U 1.3GHz',
        'Windows 11 Home',
        'VGA onboard - Intel Iris Xe Graphics',
        '16Gb (2x8Gb) DDR4 3200'
    ),
    (
        'ae782359-b3e6-4a8e-88c1-5657ae2057cb',
        '15.6inch Full HD',
        ' 512Gb SSD',
        'Core i5 1335U 1.3GHz',
        'Windows 11 Home',
        'VGA Nvidia - Nvidia GeForce MX550 2GB GDDR6',
        '16Gb (2x8Gb) DDR4 3200'
    ),
    (
        'ea2b7f01-a3b2-4b00-a2f8-bdfffafc18a4',
        '15.6inch Full HD',
        ' 512Gb SSD',
        'Core i7 1355U 1.7GHz',
        'Windows 11 Home',
        'VGA Nvidia - Nvidia GeForce MX550 2GB GDDR6',
        '16Gb (2x8Gb) DDR4 3200'
    ),
    (
        'e05a33e0-07f7-4cfe-9670-5ec2065a0188',
        '15.6inch Full HD',
        ' 512Gb SSD',
        'Core i7 1355U 1.7GHz',
        'Windows 11 Home',
        'VGA onboard - Intel Iris Xe Graphics',
        '16Gb (2x8Gb) DDR4 3200'
    ),
    (
        'e6baccd9-ee71-42f6-beb1-a1158b476cff',
        '14.0inch Full HD',
        ' 512Gb SSD',
        'Core i5 1235U 1.3GHz',
        'Windows 11 Home',
        'VGA onboard - Intel Iris Xe Graphics',
        '8Gb (2x4Gb) DDR4 3200'
    ),
    (
        '0474a452-3dcb-4888-ba98-cd7dd9b843f6',
        '15.6inch Full HD',
        ' 512Gb SSD',
        'Core i7 1355U 1.7GHz',
        'Windows 11 Home',
        'VGA onboard - Intel Iris Xe Graphics',
        '16Gb (2x8Gb) DDR4 3200'
    ),
    (
        'fa402966-371d-4304-b6b7-f42b2faba02b',
        '15.6inch Full HD',
        ' 512Gb SSD',
        'Core i7 1355U 1.7GHz',
        'Windows 11 Home',
        'VGA onboard - Intel Iris Xe Graphics',
        '8Gb (2x4Gb) DDR4 3200'
    ),
    (
        'ada490f4-96a6-4e1a-bbd8-c50d64a6faf3',
        '15.6inch Full HD',
        ' 512Gb SSD',
        'Core i5 1240P 3.3GHz',
        'Windows 11 Home',
        'VGA onboard - Intel Iris Xe Graphics',
        '8Gb (2x4Gb) DDR4 3200'
    ),
    (
        '75bbc78d-1ce3-4f7b-ad00-8786df5e4b88',
        '15.6inch Full HD',
        ' 512Gb SSD',
        'Core i5 1240P 3.3GHz',
        'Windows 11 Home',
        'VGA onboard - Intel Iris Xe Graphics',
        '8GB'
    ),
    (
        '044c4074-c33b-4633-8ca0-593a17b2bbc4',
        '15.6inch Full HD',
        ' 512Gb SSD',
        'Core i5 1240P 3.3GHz',
        'Windows 11 Home',
        'VGA onboard - Intel Iris Xe Graphics',
        '8Gb (2x4Gb) DDR4 3200'
    ),
    (
        'e8eada39-fab9-4a47-b5a9-7e4255ebf8d0',
        '13.3inch OLED Touch',
        ' 512Gb SSD',
        'Core i5 1230U 3.3GHz',
        'Windows 11 Home',
        'VGA onboard - Intel Iris Xe Graphics',
        '16GB'
    ),
    (
        '33af3565-ded4-4dfe-9499-0a21244f467f',
        'Khoảng 16 inch',
        ' 512Gb SSD',
        'Ryzen 7 6800H 3.2Ghz',
        'Windows 11 Home',
        'VGA Nvidia',
        '8Gb DDR5 4800'
    ),
    (
        '7974da35-2a01-4812-ba55-77dea0d0eb94',
        'Khoảng 16 inch',
        ' 512Gb SSD',
        'Core i7 12700H 2.3GHz',
        'Windows 11 Home',
        'VGA Nvidia - Nvidia GeForce RTX 3050Ti 4Gb GDDR6',
        '8Gb DDR5 4800'
    ),
    (
        'b9f2e909-1055-4afe-b13e-1f9b7747fab8',
        'Khoảng 16 inch',
        ' 512Gb SSD',
        'Core i5 12500H 2.5GHz',
        'Windows 11 Home',
        'VGA Nvidia',
        '8Gb DDR5 4800'
    ),
    (
        'b372961a-e233-4475-8373-6d2c5176a897',
        '15.6inch Full HD',
        ' 512Gb SSD',
        'Core i7 12700H 2.3GHz',
        'Windows 11 Home',
        'VGA Nvidia - Nvidia GeForce RTX 3050 4Gb GDDR6',
        '8Gb DDR4 3200'
    ),
    (
        '75ecb01e-2388-4277-97cc-58a21b03245f',
        'Khoảng 16 inch',
        ' 512Gb SSD',
        'Ryzen 5 6600H 3.3GHz',
        'Windows 11 Home',
        'VGA Nvidia - Nvidia GeForce RTX 3050Ti 4Gb GDDR6',
        '16Gb (2x8Gb) DDR5 4800'
    ),
    (
        '0ba9dc16-3e85-4c8d-8077-b61ccfca28fa',
        '15.6inch Full HD',
        ' 512Gb SSD',
        'Core i7 12700H 2.3GHz',
        'Windows 11 Home',
        'VGA Nvidia - Nvidia GeForce RTX 3050Ti 4Gb GDDR6',
        '16Gb (2x8Gb) DDR4 3200'
    ),
    (
        'a7cda7c1-2c8b-4c05-a08f-17296f332e9b',
        '15.6inch Full HD',
        ' 512Gb SSD',
        'Core i7-13620H 2.4GHz',
        'Windows 11 Home',
        'VGA Nvidia - Nvidia GeForce RTX 3050 6Gb GDDR6',
        '16Gb (2x8Gb) DDR5 4800'
    ),
    (
        '0fab299a-c9b9-4581-b68b-39415e276ffa',
        'Khoảng 16 inch',
        ' 512Gb SSD',
        'Ryzen 5 6600H 3.3GHz',
        'Windows 11 Home',
        'VGA Nvidia - Nvidia GeForce RTX 3050Ti 4Gb GDDR6',
        '8Gb DDR5 4800'
    ),
    (
        '352a54d1-d01c-4a70-8560-0d9c40f15d54',
        '16.1inch FHD',
        ' 512Gb SSD',
        'Ryzen 5 7640HS 4.3GHz',
        'Windows 11 Home',
        'VGA Nvidia - Nvidia GeForce RTX 3050 6Gb GDDR6',
        '16Gb (2x8Gb) DDR5 4800'
    ),
    (
        '11f70eb7-b14a-48f0-b762-ad09dc5ad4c6',
        '16.1inch FHD',
        ' 512Gb SSD',
        'Core i7 12700H 2.3GHz',
        'Windows 11 Home',
        'VGA Nvidia - Nvidia GeForce RTX 3060 6GB GDDR6',
        '16Gb (2x8Gb) DDR4 3200'
    ),
    (
        '937df060-1d0a-492e-a5b9-a22e9c1b66db',
        '16.1inch QHD',
        ' 512Gb SSD',
        'Core i7 13700H 3.7GHz',
        'Windows 11 Home',
        'VGA Nvidia - Nvidia GeForce RTX 3050 6Gb GDDR6',
        '16Gb (2x8Gb) DDR5 4800'
    ),
    (
        'c409941d-f835-43ca-9b5e-c1fc15b1f8c0',
        '15.6inch Full HD',
        ' 512Gb SSD',
        'Core i7 13700H 3.7GHz',
        'Windows 11 Home',
        'VGA Nvidia - Nvidia GeForce RTX 4060 8GB GDDR6',
        '16Gb (2x8Gb) DDR5 4800'
    ),
    (
        '4463af30-7d7a-4d3d-81f3-d362916b2afc',
        '15.6inch Full HD',
        ' 512Gb SSD',
        'Core i7-13620H 2.4GHz',
        'Windows 11 Home',
        'VGA Nvidia - Nvidia GeForce RTX 3050 6Gb GDDR6',
        '8Gb DDR5 4800'
    ),
    (
        'f7bced87-fd12-48aa-848e-8e766042d747',
        '15.6inch Full HD',
        ' 512Gb SSD',
        'Core i7 13700H 3.7GHz',
        'Windows 11 Home',
        'VGA Nvidia - Nvidia GeForce RTX 4050 6GB GDDR6',
        '16Gb (2x8Gb) DDR5 4800'
    ),
    (
        'b6404d6b-f82e-4f0c-b773-9ee2225f1b12',
        '15.6inch Full HD',
        ' 512Gb SSD',
        'Core i5 12450H 3.3GHz',
        'Windows 11 Home',
        'VGA Nvidia - Nvidia GeForce RTX 2050 4GB GDDR6',
        '16Gb (2x8Gb) DDR4 3200'
    ),
    (
        '62c06647-4724-4ca1-bdce-bda364fee458',
        '16.1inch FHD',
        ' 512Gb SSD',
        'Ryzen 5 6600H 3.3GHz',
        'Windows 11 Home',
        'VGA Nvidia - Nvidia GeForce RTX 3050 4Gb GDDR6',
        '8Gb DDR5 4800'
    ),
    (
        'f5b51e73-7906-46a9-b8f0-1b6552fe1ac8',
        'Khoảng 16 inch',
        ' 512Gb SSD',
        'Core i7 12700H 2.3GHz',
        'Windows 11 Home',
        'VGA Nvidia - Nvidia GeForce RTX 3050Ti 4Gb GDDR6',
        '8Gb DDR5 4800'
    ),
    (
        '5b5bf20a-28b8-493d-ad3a-c7a3de216f59',
        'Khoảng 16 inch',
        ' 512Gb SSD',
        'Ryzen 7 6800H 3.2Ghz',
        'Windows 11 Home',
        'VGA Nvidia',
        '8Gb DDR5 4800'
    ),
    (
        'a4fa3546-58c5-4468-87fd-6a01d70308e2',
        'Khoảng 16 inch',
        ' 512Gb SSD',
        'Core i5 12500H 2.5GHz',
        'Windows 11 Home',
        'VGA Nvidia',
        '8Gb DDR5 4800'
    ),
    (
        '968823b4-9a31-4eb1-9287-a4a22a02c927',
        '15.6inch Full HD',
        ' 512Gb SSD',
        'Core i7 12700H 2.3GHz',
        'Windows 11 Home',
        'VGA Nvidia - Nvidia GeForce RTX 3050 4Gb GDDR6',
        '8Gb DDR4 3200'
    ),
    (
        '60c49929-f517-4a2b-9e78-cca687d123af',
        'Khoảng 16 inch',
        ' 512Gb SSD',
        'Ryzen 5 6600H 3.3GHz',
        'Windows 11 Home',
        'VGA Nvidia - Nvidia GeForce RTX 3050Ti 4Gb GDDR6',
        '16Gb (2x8Gb) DDR5 4800'
    ),
    (
        'bbe68c1e-2512-4de7-927c-78973eecf4cb',
        '15.6inch Full HD',
        ' 512Gb SSD',
        'Core i7 12700H 2.3GHz',
        'Windows 11 Home',
        'VGA Nvidia - Nvidia GeForce RTX 3050Ti 4Gb GDDR6',
        '16Gb (2x8Gb) DDR4 3200'
    ),
    (
        'bbd53b40-6889-49f9-b968-2602159ce73f',
        'Khoảng 16 inch',
        ' 512Gb SSD',
        'Ryzen 5 6600H 3.3GHz',
        'Windows 11 Home',
        'VGA Nvidia - Nvidia GeForce RTX 3050Ti 4Gb GDDR6',
        '8Gb DDR5 4800'
    ),
    (
        '6c786c40-f99a-40ce-a6fc-b652063e2c28',
        '16.1inch FHD',
        ' 512Gb SSD',
        'Core i7 12700H 2.3GHz',
        'Windows 11 Home',
        'VGA Nvidia - Nvidia GeForce RTX 3060 6GB GDDR6',
        '16Gb (2x8Gb) DDR4 3200'
    ),
    (
        '8b3d8c3d-29c3-49f3-bd24-3ce865462a4d',
        '15.6inch Full HD',
        ' 512Gb SSD',
        'Core i7-13620H 2.4GHz',
        'Windows 11 Home',
        'VGA Nvidia - Nvidia GeForce RTX 3050 6Gb GDDR6',
        '16Gb (2x8Gb) DDR5 4800'
    ),
    (
        '852c2253-a44c-475f-9311-66e0ea39a652',
        '16.1inch FHD',
        ' 512Gb SSD',
        'Ryzen 5 7640HS 4.3GHz',
        'Windows 11 Home',
        'VGA Nvidia - Nvidia GeForce RTX 3050 6Gb GDDR6',
        '16Gb (2x8Gb) DDR5 4800'
    ),
    (
        'd3e24ea6-6d79-4e38-93f6-c752530b7553',
        '16.1inch QHD',
        ' 512Gb SSD',
        'Core i7 13700H 3.7GHz',
        'Windows 11 Home',
        'VGA Nvidia - Nvidia GeForce RTX 3050 6Gb GDDR6',
        '16Gb (2x8Gb) DDR5 4800'
    ),
    (
        '824dc3cd-0815-4d47-824c-ae4e5ffab686',
        '15.6inch Full HD',
        ' 512Gb SSD',
        'Core i7 13700H 3.7GHz',
        'Windows 11 Home',
        'VGA Nvidia - Nvidia GeForce RTX 4060 8GB GDDR6',
        '16Gb (2x8Gb) DDR5 4800'
    ),
    (
        'd5ded554-cdaf-4b82-b2ad-4062ed4e1730',
        '15.6inch Full HD',
        ' 512Gb SSD',
        'Core i7-13620H 2.4GHz',
        'Windows 11 Home',
        'VGA Nvidia - Nvidia GeForce RTX 3050 6Gb GDDR6',
        '8Gb DDR5 4800'
    ),
    (
        'eebcb1bf-465b-41a2-9832-98d3a44b6a4f',
        '15.6inch Full HD',
        ' 512Gb SSD',
        'Core i7 13700H 3.7GHz',
        'Windows 11 Home',
        'VGA Nvidia - Nvidia GeForce RTX 4050 6GB GDDR6',
        '16Gb (2x8Gb) DDR5 4800'
    ),
    (
        'd71f00e3-ef78-4c23-92bb-580f8fa7ce52',
        '15.6inch Full HD',
        ' 512Gb SSD',
        'Core i5 12450H 3.3GHz',
        'Windows 11 Home',
        'VGA Nvidia - Nvidia GeForce RTX 2050 4GB GDDR6',
        '16Gb (2x8Gb) DDR4 3200'
    ),
    (
        '8f845ef2-5ba7-4e60-92d6-7a2172ca9db2',
        '16.1inch FHD',
        ' 512Gb SSD',
        'Ryzen 5 6600H 3.3GHz',
        'Windows 11 Home',
        'VGA Nvidia - Nvidia GeForce RTX 3050 4Gb GDDR6',
        '8Gb DDR5 4800'
    ),
    (
        'd2126575-2b97-4b35-bd85-79c12d576813',
        '14.0inch Full HD',
        ' 512Gb SSD',
        'Core i5 1235U 1.3GHz',
        'Windows 11 Home',
        'VGA onboard - Intel Iris Xe Graphics',
        '8Gb DDR4 3200'
    ),
    (
        '4a75f37e-56d6-4d13-96e7-ca271d132d22',
        '14.0inch Full HD',
        ' 512Gb SSD',
        'Core i7 1255U 1.7GHz',
        'Windows 11 Home',
        'VGA onboard - Intel Iris Xe Graphics',
        '8Gb DDR4 3200'
    ),
    (
        'd9af5580-9f2d-40a5-877d-92b6f58830ef',
        '14.0inch Full HD',
        ' 512Gb SSD',
        'Core i5 1335U 1.3GHz',
        'Windows 11 Home',
        'VGA onboard - Intel UHD Graphics',
        '8Gb DDR4 3200'
    ),
    (
        '720af988-1477-4e68-9a81-7c76ff603d5b',
        '14.0inch Full HD',
        ' 512Gb SSD',
        'Core i3 1315U 1.2GHz',
        'Windows 11 Home',
        'VGA onboard - Intel UHD Graphics',
        '8Gb DDR4 3200'
    ),
    (
        'ef932b37-d0c7-4d98-9e6e-3a8e6bb39cb8',
        '14.0inch Full HD',
        ' 512Gb SSD',
        'Core i5 1335U 1.3GHz',
        'Windows 11 Home',
        'VGA onboard - Intel UHD Graphics',
        '8Gb DDR4 3200'
    ),
    (
        '00838b69-8fdb-44be-a19a-2b2bbeb21522',
        '14.0inch Full HD',
        ' 512Gb SSD',
        'Core i5 1335U 1.3GHz',
        'Windows 11 Home',
        'VGA onboard - Intel UHD Graphics',
        '16Gb DDR4 3200'
    ),
    (
        'a8723e52-b9df-4ad5-8bdc-fa2a8036c8d6',
        '14.0inch Full HD',
        ' 512Gb SSD',
        'Core i3 1315U 1.2GHz',
        'Windows 11 Home',
        'VGA onboard - Intel UHD Graphics',
        '8Gb DDR4 3200'
    ),
    (
        '93eaea8a-1d4a-412c-8dae-dd5ab579a16a',
        '14.0inch Full HD',
        ' 512Gb SSD',
        'Core i3 1215U 1.2GHz',
        'Windows 11 Home',
        'VGA onboard - Intel UHD Graphics',
        '8Gb DDR4 3200'
    ),
    (
        '7be1a51a-37ff-4ebe-a244-14335104384c',
        '14.0inch Full HD',
        ' 512Gb SSD',
        'Core i7 1355U 1.7GHz',
        'Windows 11 Home',
        'VGA onboard - Intel UHD Graphics',
        '8Gb DDR4 3200'
    ),
    (
        '8f8681ba-fc99-4ad0-8a1d-3d7c9ed2f7bb',
        '14.0inch Full HD',
        ' 512Gb SSD',
        'Core i7 1255U 1.7GHz',
        'Windows 11 Home',
        'VGA onboard - Intel Iris Xe Graphics',
        '8Gb DDR4 3200'
    ),
    (
        '20c4273d-3a2c-4d5d-9fbc-b19102a702f1',
        '14.0inch Full HD',
        ' 512Gb SSD',
        'Core i7 1355U 1.7GHz',
        'Windows 11 Home',
        'VGA onboard - Intel UHD Graphics',
        '16Gb DDR4 3200'
    ),
    (
        'a98c1bb6-715e-45f6-b9d0-fbe378ffd8a8',
        '15.6inch FHD Touch screen',
        ' 512Gb SSD',
        'Core i7 1360P 2.2GHz',
        'Windows 11 Home',
        'VGA onboard - Intel UHD Graphics',
        '16Gb DDR4 3200'
    ),
    (
        '92faa663-98ac-490a-8956-abb83bf9a5cd',
        '14.0inch Full HD',
        ' 512Gb SSD',
        'Core i5 1335U 1.3GHz',
        'Windows 11 Home',
        'VGA onboard - Intel UHD Graphics',
        '8Gb DDR4 3200'
    ),
    (
        '82f65056-4e80-4cb6-a558-c0b2109ff420',
        '14.0inch Full HD',
        ' 512Gb SSD',
        'Core i5 1235U 1.3GHz',
        'Windows 11 Home',
        'VGA onboard - Intel UHD Graphics',
        '8Gb DDR4 3200'
    ),
    (
        '9476f33b-ae56-447a-b4ba-10f05b2edcbf',
        '14.0inch Full HD',
        ' 512Gb SSD',
        'Core i5 1235U 1.3GHz',
        'Windows 11 Home',
        'VGA onboard - Intel UHD Graphics',
        '8Gb DDR4 3200'
    ),
    (
        '7221f71f-63c6-4856-bbe8-c8810ca54898',
        '13.3inch Full HD',
        ' 512Gb SSD',
        'Core i7 1255U 1.7GHz',
        'Windows 11 Home',
        'VGA onboard - Intel UHD Graphics',
        '16Gb DDR4 3200'
    ),
    (
        '3855823f-a3a5-49ba-8eb8-70a58c1fdcf1',
        '14.0inch WUXGA Touch',
        ' 512Gb SSD',
        'Core i7 1255U 1.7GHz',
        'Windows 11 Pro',
        'VGA onboard - Intel Iris Xe Graphics',
        '16Gb (Onboard) DDR5 4800'
    ),
    (
        '0ad4f188-bcc5-4d50-b4ee-81fadcaf15f8',
        '13.5inch WUXGA+, Touch',
        ' 512Gb SSD',
        'Core i7 1255U 1.7GHz',
        'Windows 11 Pro',
        'VGA onboard - Intel Iris Xe Graphics',
        '16Gb (Onboard) DDR5 6400'
    ),
    (
        '52658251-4576-4a1d-be4a-529322d6fefd',
        '13.3inch Full HD',
        ' 512Gb SSD',
        'Core i7 1255U 1.7GHz',
        'Windows 11 Home',
        'VGA onboard - Intel UHD Graphics',
        '8Gb DDR4 3200'
    ),
    (
        '3cd36111-6553-4f83-8450-dfd5507ab2ff',
        '13.3inch Full HD',
        ' 512Gb SSD',
        'Core i5 1235U 1.3GHz',
        'Windows 11 Home',
        'VGA onboard - Intel UHD Graphics',
        '8Gb DDR4 3200'
    ),
    (
        '4dda0a73-813f-4ec9-9073-f55f6bbe90df',
        '14.0inch WUXGA',
        ' 512Gb SSD',
        'Core i7 1260P 2.1GHz',
        'Windows 11 Pro',
        'VGA onboard - Intel Iris Xe Graphics',
        '8Gb DDR5 4800'
    ),
    (
        '8b25ff4e-ef6f-4ad6-b0a3-92405085d386',
        '13.3inch Full HD',
        ' 512Gb SSD',
        'Core i7 1355U 1.7GHz',
        'Windows 11 Home',
        'VGA onboard - Intel UHD Graphics',
        '16Gb DDR4 3200'
    ),
    (
        '1257e877-7718-4f7c-8655-41ab67e76ac7',
        '14.0inch Full HD',
        ' 512Gb SSD',
        'Core i5 1235U 1.3GHz',
        'Windows 11 Home',
        'VGA onboard - Intel UHD Graphics',
        '8Gb DDR4 3200'
    ),
    (
        '7eb55ceb-c9bd-4ea0-bb55-2ccb3d82e963',
        '14.0inch Full HD',
        ' 512Gb SSD',
        'Core i7 1255U 1.7GHz',
        'Windows 11 Home',
        'VGA onboard - Intel UHD Graphics',
        '8Gb DDR4 3200'
    ),
    (
        '569c7f59-ecbc-4a87-8b80-12126518366d',
        '13.3inch Full HD',
        ' 512Gb SSD',
        'Core i7 1255U 1.7GHz',
        'Windows 11 Home',
        'VGA onboard - Intel UHD Graphics',
        '16Gb DDR4 3200'
    ),
    (
        '7664f70d-5c4a-4f98-bfd2-a1de0a29532d',
        'VGA onboard - Intel Iris Xe Graphics',
        ' 512Gb SSD',
        ' Elitebook x360\n\n\nLaptop HP EliteBook X360 1040 G9 6Z982PA "',
        '14.0inch WUXGA Touch',
        '16Gb (Onboard) DDR5 4800',
        'Core i7 1255U 1.7GHz'
    ),
    (
        '2472ea64-9267-469a-9904-e5f09511400f',
        'VGA onboard - Intel Iris Xe Graphics',
        ' 512Gb SSD',
        ' Elitebook x360\n\n\nLaptop HP EliteBook Dragonfly G3 6Z980PA "',
        '13.5inch WUXGA+, Touch',
        '16Gb (Onboard) DDR5 6400',
        'Core i7 1255U 1.7GHz'
    ),
    (
        '336f0dc5-c2e1-49be-89a3-3357cbdb3bbc',
        '13.3inch Full HD',
        ' 512Gb SSD',
        'Core i7 1255U 1.7GHz',
        'Windows 11 Home',
        'VGA onboard - Intel UHD Graphics',
        '8Gb DDR4 3200'
    ),
    (
        'dd1884c2-012b-45e6-add7-3a2735e5f9dc',
        '13.3inch Full HD',
        ' 512Gb SSD',
        'Core i5 1235U 1.3GHz',
        'Windows 11 Home',
        'VGA onboard - Intel UHD Graphics',
        '8Gb DDR4 3200'
    ),
    (
        '132e8f21-01f4-4495-b4e5-d89154637b52',
        '14.0inch WUXGA',
        ' 512Gb SSD',
        'Core i7 1260P 2.1GHz',
        'Windows 11 Pro',
        'VGA onboard - Intel Iris Xe Graphics',
        '8Gb DDR5 4800'
    ),
    (
        '4745a51a-15e6-41be-bb12-b4bd04c0302c',
        '13.3inch Full HD',
        ' 512Gb SSD',
        'Core i7 1355U 1.7GHz',
        'Windows 11 Home',
        'VGA onboard - Intel UHD Graphics',
        '16Gb DDR4 3200'
    ),
    (
        'ab7730a1-1c3d-41d7-8e20-f16bf42816ee',
        '14.0inch Full HD',
        ' 512Gb SSD',
        'Core i7 1255U 1.7GHz',
        'Windows 11 Home',
        'VGA onboard - Intel UHD Graphics',
        '8Gb DDR4 3200'
    ),
    (
        '4327cffc-1225-4a94-9997-c8a342e92a7c',
        '14.0inch Full HD',
        ' 512Gb SSD',
        'Core i7 1255U 1.7GHz',
        'Windows 11 Home',
        'VGA onboard - Intel UHD Graphics',
        '16Gb DDR4 3200'
    ),
    (
        'af725516-b5b6-43de-8afe-490740d0f58e',
        '14.0inch Full HD',
        ' 512Gb SSD',
        'Core i7 1255U 1.7GHz',
        'Windows 11 Home',
        'VGA onboard - Intel UHD Graphics',
        '16Gb DDR4 3200'
    ),
    (
        '487afe26-b214-446c-9141-1f1d4935b868',
        '15.6inch Full HD',
        ' 512Gb SSD',
        'Core i5 11500H 2.9GHz',
        'Windows 10 Pro',
        'VGA Quadro',
        '16Gb (2x8Gb) DDR4 3200'
    ),
    (
        '951a9f02-4067-494d-ae4f-160f2538e703',
        '15.6inch Full HD',
        ' 512Gb SSD',
        'Core i5 11500H 2.9GHz',
        'Windows 10 Pro',
        'VGA Quadro',
        '16Gb (2x8Gb) DDR4 3200'
    ),
    (
        '6a12a4e1-48c3-48c6-a101-fd329bdee404',
        '15.6inch Full HD',
        ' 512Gb SSD',
        'Core i5 11500H 2.9GHz',
        'Windows 10 Pro',
        'VGA Quadro',
        '16Gb (2x8Gb) DDR4 3200'
    ),
    (
        '42f3f754-f0fa-438b-bf9b-be0d5491b09b',
        '13.3inch OLED Touch',
        ' 512Gb SSD',
        'Core i5 1230U 3.3GHz',
        'Windows 11 Home',
        'VGA onboard - Intel Iris Xe Graphics',
        '16GB'
    ),
    (
        '580a004f-be04-47e7-846a-87189039becc',
        '13.3inch OLED Touch',
        ' 512Gb SSD',
        'Core i5 1230U 3.3GHz',
        'Windows 11 Home',
        'VGA onboard - Intel Iris Xe Graphics',
        '16GB'
    ),
    (
        '82ffd0be-385d-41c0-902a-7184e5c9305b',
        '13.3inch OLED Touch',
        ' 512Gb SSD',
        'Core i7 1250U 3.5GHz',
        'Windows 11 Home',
        'VGA onboard - Intel Iris Xe Graphics',
        '16GB'
    ),
    (
        '7ee7d3a8-5323-4309-b993-41da08f73780',
        '13.3inch OLED Touch',
        ' 512Gb SSD',
        'Core i5 1230U 3.3GHz',
        'Windows 11 Home',
        'VGA onboard - Intel Iris Xe Graphics',
        '8Gb (Onboard) DDR4 3200'
    ),
    (
        'c19e0dd9-919c-44da-b622-a9d19b56628f',
        'Khoảng 16 inch',
        ' 512Gb SSD',
        'Core i9 12900HK 3.8GHz',
        'Windows 11 Home',
        'VGA Nvidia',
        '16Gb (2x8Gb) DDR5 4800'
    ),
    (
        'dd3721ab-36ac-4ac8-9378-1367b2852533',
        '13.3inch OLED Touch',
        ' 512Gb SSD',
        'Core i7 1250U 3.5GHz',
        'Windows 11 Home',
        'VGA onboard - Intel Iris Xe Graphics',
        '8Gb (Onboard) DDR4 3200'
    ),
    (
        '6ea5bd17-9e54-4881-93db-b0d131af9afe',
        'Khoảng 16 inch',
        ' 512Gb SSD',
        'Core i9 12900HK 3.8GHz',
        'Windows 11 Home',
        'VGA Nvidia',
        '16Gb (2x8Gb) DDR5 4800'
    ),
    (
        '3982acdd-ffcb-4812-95a1-e034ea630917',
        '13.3inch OLED Touch',
        ' 512Gb SSD',
        'Core i5 1230U 3.3GHz',
        'Windows 11 Home',
        'VGA onboard - Intel Iris Xe Graphics',
        '16GB'
    ),
    (
        'b05d3505-c35c-43e7-abe8-35a9f6fad15e',
        'Windows 11 Home',
        ' 512Gb SSD',
        ' Envy x360 Laptop 6GB',
        '29.590.000 ₫',
        '13.3inch OLED Touch',
        'VGA onboard - Intel Iris Xe Graphics'
    ),
    (
        'af2cf994-16fd-4067-9581-beefc1e8f813',
        '13.3inch OLED Touch',
        ' 512Gb SSD',
        'Core i5 1230U 3.3GHz',
        'Windows 11 Home',
        'VGA onboard - Intel Iris Xe Graphics',
        '8Gb (Onboard) DDR4 3200'
    ),
    (
        '9e97265d-0353-48fe-b4ee-e37e843a16f0',
        '13.3inch OLED Touch',
        ' 512Gb SSD',
        'Core i5 1230U 3.3GHz',
        'Windows 11 Home',
        'VGA onboard - Intel Iris Xe Graphics',
        '8Gb (Onboard) DDR4 3200'
    ),
    (
        '5b3a624a-8a2b-405c-b9d0-88c75f2daecd',
        '13.3inch OLED Touch',
        ' 512Gb SSD',
        'Core i5 1230U 3.3GHz',
        'Windows 11 Home',
        'VGA onboard - Intel Iris Xe Graphics',
        '16GB'
    ),
    (
        '4e8673b8-507b-445d-88f0-449be85cee25',
        '14.0inch Full HD',
        ' 512Gb SSD',
        'Core i7 1355U 1.7GHz',
        'Windows 11 Home + Office Student',
        'VGA Nvidia - Nvidia GeForce MX550 2GB GDDR6',
        '16Gb (2x8Gb) DDR4 3200'
    ),
    (
        'b7b76479-e3d5-4085-b81b-53338f244009',
        '16.0inch FHD+',
        ' 512Gb SSD',
        'Core i5 1335U 1.3GHz',
        'Windows 11 Home + Office Student',
        'VGA onboard - Intel Iris Xe Graphics',
        '16Gb (Onboard) DDR5 4800'
    ),
    (
        '69e44a14-d5c2-4204-8bfd-9ac091484c6d',
        '15.6inch Full HD',
        ' 512Gb SSD',
        'Core i7 1355U 1.7GHz',
        'Windows 11 Home + Office Student',
        'VGA Nvidia - Nvidia GeForce MX550 2GB GDDR6',
        '8Gb DDR4 3200'
    ),
    (
        '62c31d47-ccdf-4222-8478-c117257708dd',
        '14.0inch Full HD',
        ' 512Gb SSD',
        'Core i3 1305U 3.3GHz',
        'NoOS',
        'VGA Intel Iris - Intel Iris Xe Graphics',
        '8Gb DDR4 3200'
    ),
    (
        '723e9919-f024-459b-8508-2e2172f82e2b',
        '14.0inch Full HD',
        ' 512Gb SSD',
        'Core i3 1305U 3.3GHz',
        'Windows 11 Home + Office Student',
        'VGA onboard - Intel UHD Graphics',
        '8Gb DDR4 3200'
    ),
    (
        'ba8357e5-0c0d-4884-801d-78c2dfe05758',
        '14.0inch Full HD',
        ' 512Gb SSD',
        'Core i5 1335U 1.3GHz',
        'Windows 11 Home + Office Student',
        'VGA Nvidia - Nvidia GeForce MX550 2GB GDDR6',
        '8Gb DDR4 3200'
    ),
    (
        '836031fe-7123-418a-a82b-43822d026714',
        'Khoảng 16 inch',
        ' 512Gb SSD',
        'Core i7 1360P 2.2GHz',
        'Windows 11 Home + Office Student',
        'VGA Nvidia - Nvidia GeForce RTX 2050 4GB GDDR6',
        '16Gb (Onboard) DDR5 4800'
    ),
    (
        'eda851ec-2496-4772-84ba-f2227fcf9801',
        'Windows 11 Home + Office Student',
        ' 512Gb SSD',
        '16Gb DDR4 3200',
        '28.039.000 ₫',
        '15.6inch Full HD',
        'VGA Nvidia - Nvidia GeForce MX550 2GB GDDR6'
    ),
    (
        'c42045bd-4ecf-48b6-83d4-a04091578857',
        '15.6inch Full HD',
        ' 512Gb SSD',
        'Core i5 1335U 1.3GHz',
        'Windows 11 Home + Office Student',
        'VGA onboard - Intel UHD Graphics',
        '8Gb DDR4 3200'
    ),
    (
        '6a9a6fde-0ab7-484e-bd33-c816a29cdd4b',
        '14.0inch Full HD',
        ' 512Gb SSD',
        'Core i7 1355U 1.7GHz',
        'Windows 11 Home + Office Student',
        'VGA Nvidia - Nvidia GeForce MX550 2GB GDDR6',
        '16Gb (2x8Gb) DDR4 3200'
    ),
    (
        '0c1f9dac-5484-4f2a-bf07-cd9a9ad71e93',
        '15.6inch Full HD',
        ' 512Gb SSD',
        'Core i5 1335U 1.3GHz',
        'Windows 11 Home + Office Student',
        'VGA onboard - Intel UHD Graphics',
        '8Gb DDR4 3200'
    ),
    (
        'ebf0d9cb-8752-4b5d-b607-b5e528ac8383',
        '14.0inch Full HD',
        ' 512Gb SSD',
        'Core i3 1305U 3.3GHz',
        'NoOS',
        'VGA Intel Iris - Intel Iris Xe Graphics',
        '8Gb DDR4 3200'
    ),
    (
        'd9b05da9-a687-4223-af09-9c96e741f1a1',
        '16.0inch FHD+',
        ' 512Gb SSD',
        'Core i5 1335U 1.3GHz',
        'Windows 11 Home + Office Student',
        'VGA onboard - Intel Iris Xe Graphics',
        '16Gb (Onboard) DDR5 4800'
    ),
    (
        'c529d92f-b209-4e47-9fbd-43ba8704570e',
        '14.0inch Full HD',
        ' 512Gb SSD',
        'Core i3 1305U 3.3GHz',
        'Windows 11 Home + Office Student',
        'VGA onboard - Intel UHD Graphics',
        '8Gb DDR4 3200'
    ),
    (
        '02fcfed1-564c-4d14-8c5c-c38993a12ee4',
        '14.0inch Full HD',
        ' 512Gb SSD',
        'Core i5 1335U 1.3GHz',
        'Windows 11 Home + Office Student',
        'VGA Nvidia - Nvidia GeForce MX550 2GB GDDR6',
        '8Gb DDR4 3200'
    ),
    (
        'fd50fcb7-a332-4c21-a959-ced0acfdeea1',
        'Khoảng 16 inch',
        ' 512Gb SSD',
        'Core i7 1360P 2.2GHz',
        'Windows 11 Home + Office Student',
        'VGA Nvidia - Nvidia GeForce RTX 2050 4GB GDDR6',
        '16Gb (Onboard) DDR5 4800'
    ),
    (
        'c641d6d1-2f1c-4bef-b608-db653de15cbe',
        '15.6inch Full HD',
        ' 512Gb SSD',
        'Core i7 1355U 1.7GHz',
        'Windows 11 Home + Office Student',
        'VGA Nvidia - Nvidia GeForce MX550 2GB GDDR6',
        '8Gb DDR4 3200'
    ),
    (
        'd7f24513-35a6-457f-bf17-38ba685cc30a',
        '15.6inch Full HD',
        ' 512Gb SSD',
        'Core i3 1305U 3.3GHz',
        'Windows 11 Home + Office Student',
        'VGA onboard - Intel UHD Graphics',
        '8Gb DDR4 3200'
    ),
    (
        '72e10de5-ee41-4bda-b44c-0b42e86ffd77',
        '15.6inch Full HD',
        ' 512Gb SSD',
        'Core i7 1355U 1.7GHz',
        'Windows 11 Home + Office Student',
        'VGA Nvidia - Nvidia GeForce MX550 2GB GDDR6',
        '16Gb DDR4 3200'
    ),
    (
        '2c578c1e-5bac-4e31-b704-e2eceb6e3a89',
        '15.6inch Full HD',
        ' 512Gb SSD',
        'Core i5 1335U 1.3GHz',
        'Windows 11 Home + Office Student',
        'VGA onboard - Intel UHD Graphics',
        '8Gb DDR4 3200'
    ),
    (
        'e78e4b45-6633-4551-bcbf-52e410024962',
        '15.6inch Full HD',
        ' 512Gb SSD',
        'Core i3 1305U 3.3GHz',
        'Windows 11 Home + Office Student',
        'VGA onboard - Intel UHD Graphics',
        '8Gb DDR4 3200'
    ),
    (
        '66f3abf6-041c-4e86-a910-5722754a00fe',
        '15.6inch Full HD',
        ' 512Gb SSD',
        'Core i5 1335U 1.3GHz',
        'Windows 11 Home + Office Student',
        'VGA onboard - Intel UHD Graphics',
        '8Gb DDR4 3200'
    ),
    (
        '51b7146b-0bd9-4554-99d1-ce583549954e',
        '15.6inch Full HD',
        ' 512Gb SSD',
        'Core i3 1305U 3.3GHz',
        'Windows 11 Home + Office Student',
        'VGA onboard - Intel UHD Graphics',
        '8Gb DDR4 3200'
    ),
    (
        '32caf512-ee14-4fd1-acf2-d43134215b3b',
        '15.6inch Full HD',
        ' 512Gb SSD',
        'Core i7 1355U 1.7GHz',
        'Windows 11 Home + Office Student',
        'VGA Nvidia - Nvidia GeForce MX550 2GB GDDR6',
        '16Gb DDR4 3200'
    ),
    (
        '7743636a-0dcc-4f9b-ade8-078f35cb7fcb',
        '15.6inch Full HD',
        ' 512Gb SSD',
        'Core i3 1305U 3.3GHz',
        'Windows 11 Home + Office Student',
        'VGA onboard - Intel UHD Graphics',
        '8Gb DDR4 3200'
    ),
    (
        '10865393-38f5-43bb-a482-ba5a462b2b50',
        '13.3inch OLED Touch',
        ' 512Gb SSD',
        'Core i5 1230U 3.3GHz',
        'Windows 11 Home',
        'VGA onboard - Intel Iris Xe Graphics',
        '8Gb (Onboard) DDR4 3200'
    ),
    (
        '292e6bea-daac-4221-808e-7ce68feb6830',
        '14.0inch Full HD+',
        ' 512Gb SSD',
        'Core i7 1360P 2.2GHz',
        'Windows 11 Home + Office Student',
        'VGA Intel Iris - Intel Iris Xe Graphics',
        '16Gb (Onboard) DDR5 4800'
    ),
    (
        '5b7ed3c0-6ae4-44b0-ba3b-b6d91d128583',
        '14.0inch Full HD+',
        ' 512Gb SSD',
        'Core i5 1340P 1.9GHz',
        'Windows 11 Home + Office Student',
        'VGA onboard - Intel Iris Xe Graphics',
        '16Gb (Onboard) DDR5 4800'
    ),
    (
        '9ce75a6e-d85f-48ef-895e-9dc4a1974225',
        '15.6inch Full HD',
        ' 512Gb SSD',
        'Core i5 1335U 1.3GHz',
        'Windows 11 Home + Office Student',
        'VGA Nvidia - Nvidia GeForce MX550 2GB GDDR6',
        '8Gb DDR4 3200'
    ),
    (
        '4ac1e5bd-db7e-4bd2-ad0c-04f1c07f0c54',
        '15.6inch Full HD',
        ' 512Gb SSD',
        'Core i5 1335U 1.3GHz',
        'Windows 11 Home + Office Student',
        'VGA onboard - Intel UHD Graphics',
        '8Gb DDR4 2666'
    ),
    (
        'e00edd6a-c994-455f-a02d-069be2787aec',
        '15.6inch Full HD',
        ' 512Gb SSD',
        'Core i7 1355U 1.7GHz',
        'Windows 11 Home + Office Student',
        'VGA Intel Iris - Intel Iris Xe Graphics',
        '8Gb DDR4 3200'
    ),
    (
        'b2adb13a-503c-4c18-8f9c-30c3dae45e97',
        '14.0inch Full HD+ Touch',
        ' 512Gb SSD',
        'Core i7 1355U 1.7GHz',
        'Windows 11 Home + Office Student',
        'VGA Intel Iris - Intel Iris Xe Graphics',
        '16Gb (Onboard) DDR4 3200'
    ),
    (
        'be2c5085-48af-4b68-9bf3-9065867f120c',
        '15.6inch Full HD',
        ' 512Gb SSD',
        'Core i5 1335U 1.3GHz',
        'Windows 11 Home + Office Student',
        'VGA Nvidia - Nvidia GeForce MX550 2GB GDDR6',
        '16Gb (2x8Gb) DDR4 3200'
    ),
    (
        '0e33ef30-1ccd-46e9-85f2-e3a7a9cd7b45',
        '15.6inch Full HD',
        ' 512Gb SSD',
        'Core i7 1355U 1.7GHz',
        'Windows 11 Home + Office Student',
        'VGA Nvidia - Nvidia GeForce MX550 2GB GDDR6',
        '16Gb (2x8Gb) DDR4 3200'
    ),
    (
        '0d1656fb-c9b3-4c26-b26d-f040c53098fb',
        '14.0inch Full HD+',
        ' 512Gb SSD',
        'Core i7 1360P 2.2GHz',
        'Windows 11 Home + Office Student',
        'VGA Intel Iris - Intel Iris Xe Graphics',
        '16Gb (Onboard) DDR5 4800'
    ),
    (
        'e51f5e4b-a1ad-4d21-a9ff-f6c55ce97b1d',
        '14.0inch Full HD+',
        ' 512Gb SSD',
        'Core i5 1340P 1.9GHz',
        'Windows 11 Home + Office Student',
        'VGA onboard - Intel Iris Xe Graphics',
        '16Gb (Onboard) DDR5 4800'
    ),
    (
        'f7aea815-ba65-4139-9111-18a1d9ae4885',
        '15.6inch Full HD',
        ' 512Gb SSD',
        'Core i5 1335U 1.3GHz',
        'Windows 11 Home + Office Student',
        'VGA Nvidia - Nvidia GeForce MX550 2GB GDDR6',
        '8Gb DDR4 3200'
    ),
    (
        'ac3c66e2-47d5-4378-93c5-71e822ec7665',
        '15.6inch Full HD',
        ' 512Gb SSD',
        'Core i5 1335U 1.3GHz',
        'Windows 11 Home + Office Student',
        'VGA onboard - Intel UHD Graphics',
        '8Gb DDR4 2666'
    ),
    (
        'e4659458-a957-4840-a120-c533cab7681b',
        '15.6inch Full HD',
        ' 512Gb SSD',
        'Core i7 1355U 1.7GHz',
        'Windows 11 Home + Office Student',
        'VGA Intel Iris - Intel Iris Xe Graphics',
        '8Gb DDR4 3200'
    ),
    (
        'f3ae86f5-f7a9-425d-a2ae-21f9eab1c80c',
        '14.0inch Full HD+ Touch',
        ' 512Gb SSD',
        'Core i7 1355U 1.7GHz',
        'Windows 11 Home + Office Student',
        'VGA Intel Iris - Intel Iris Xe Graphics',
        '16Gb (Onboard) DDR4 3200'
    ),
    (
        'a2aff99f-ae19-4718-be67-6f54a4c6a518',
        '15.6inch Full HD',
        ' 512Gb SSD',
        'Core i5 1335U 1.3GHz',
        'Windows 11 Home + Office Student',
        'VGA Nvidia - Nvidia GeForce MX550 2GB GDDR6',
        '16Gb (2x8Gb) DDR4 3200'
    ),
    (
        'e54346ce-964c-4b5e-b4b4-ec0eeae1639f',
        '15.6inch Full HD',
        ' 512Gb SSD',
        'Core i7 1355U 1.7GHz',
        'Windows 11 Home + Office Student',
        'VGA Nvidia - Nvidia GeForce MX550 2GB GDDR6',
        '16Gb (2x8Gb) DDR4 3200'
    ),
    (
        'b6943496-fc98-4712-baff-6dbc8d68d670',
        '15.6inch Full HD',
        ' 512Gb SSD',
        'Core i5 1145G7 2.6 GHz',
        'NoOS',
        'VGA onboard - Intel Iris Xe Graphics',
        '8Gb DDR4 3200'
    ),
    (
        'a069298f-e5a0-45b7-8fb7-9f7f16d2fe7a',
        '13.3inch Full HD+',
        ' 512Gb SSD',
        'Core i5 1335U 1.3GHz',
        'NoOS',
        'VGA onboard - Intel Iris Xe Graphics',
        '16Gb (Onboard) DDR5 4800'
    ),
    (
        'ef11bad0-759c-4fca-9b0c-a6cb34feb5b7',
        '14.0inch Full HD',
        ' 512Gb SSD',
        'Core i5 1335U 1.3GHz',
        'NoOS',
        'VGA onboard - Intel Iris Xe Graphics',
        '16Gb DDR4 3200'
    ),
    (
        'a72fbefc-58ca-477a-9463-e5bc77f634d4',
        '14.0inch Full HD',
        ' 512Gb SSD',
        'Core i7 1355U 1.7GHz',
        'NoOS',
        'VGA onboard - Intel Iris Xe Graphics',
        '16Gb DDR4 3200'
    ),
    (
        '9cfa5463-8195-4e3f-a803-692eadb49aa4',
        '13.3inch Full HD+',
        ' 512Gb SSD',
        'Core i5 1335U 1.3GHz',
        'NoOS',
        'VGA onboard - Intel Iris Xe Graphics',
        '8Gb (Onboard) DDR5 4800'
    ),
    (
        'b0aa7458-a485-4903-a0b9-5b2d6080d9b3',
        '13.3inch Full HD+',
        ' 512Gb SSD',
        'Core i7 1355U 1.7GHz',
        'NoOS',
        'VGA onboard - Intel Iris Xe Graphics',
        '16Gb (Onboard) DDR5 4800'
    ),
    (
        '66e7b3b9-07f6-424a-bb30-1a68532daad3',
        '14.0inch Full HD',
        ' 512Gb SSD',
        'Core i5 1135G7 2.4GHz',
        'NoOS',
        'VGA onboard - Intel Iris Xe Graphics',
        '8Gb DDR4 3200'
    ),
    (
        '19a3ea78-b95e-4937-aa0c-460e225ad994',
        '15.6inch Full HD',
        ' 512Gb SSD',
        'Core i5 1145G7 2.6 GHz',
        'NoOS',
        'VGA onboard - Intel Iris Xe Graphics',
        '8Gb DDR4 3200'
    ),
    (
        '5b50f2ec-18b7-4b6d-b242-f2c99d4d45b7',
        '13.3inch Full HD+',
        ' 512Gb SSD',
        'Core i5 1335U 1.3GHz',
        'NoOS',
        'VGA onboard - Intel Iris Xe Graphics',
        '16Gb (Onboard) DDR5 4800'
    ),
    (
        'a2030c69-aee1-4269-9f59-ec86724748a2',
        '14.0inch Full HD',
        ' 512Gb SSD',
        'Core i5 1335U 1.3GHz',
        'NoOS',
        'VGA onboard - Intel Iris Xe Graphics',
        '16Gb DDR4 3200'
    ),
    (
        '97e0e8ec-c90d-4d9d-9556-bf719b2cfc53',
        '14.0inch Full HD',
        ' 512Gb SSD',
        'Core i7 1355U 1.7GHz',
        'NoOS',
        'VGA onboard - Intel Iris Xe Graphics',
        '16Gb DDR4 3200'
    ),
    (
        '35026950-8b4c-403d-a660-e5bfea806918',
        '13.3inch Full HD+',
        ' 512Gb SSD',
        'Core i5 1335U 1.3GHz',
        'NoOS',
        'VGA onboard - Intel Iris Xe Graphics',
        '8Gb (Onboard) DDR5 4800'
    ),
    (
        'dae8bcb8-880d-4342-a1ab-22b3a193549e',
        '14.0inch Full HD',
        ' 512Gb SSD',
        'Core i5 1135G7 2.4GHz',
        'NoOS',
        'VGA onboard - Intel Iris Xe Graphics',
        '8Gb DDR4 3200'
    ),
    (
        '0da90c6c-5d1d-45cc-84d2-4c781419935a',
        '13.3inch Full HD+',
        ' 512Gb SSD',
        'Core i7 1355U 1.7GHz',
        'NoOS',
        'VGA onboard - Intel Iris Xe Graphics',
        '16Gb (Onboard) DDR5 4800'
    );