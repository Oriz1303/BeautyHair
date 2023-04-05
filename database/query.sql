use haircare;

-- bảng về thương hiệu
CREATE TABLE IF NOT EXISTS `haircare`.`brand_haircare` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `logo` varchar(255) NULL,
  `slogan` varchar(255) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

-- contact của khách hàng
CREATE TABLE IF NOT EXISTS `haircare`.`contact` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) NULL,
  `email` VARCHAR(255) NULL,
  `phone_number` VARCHAR(45) NULL,
  `message` TEXT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

-- thanh navbar
CREATE TABLE IF NOT EXISTS `haircare`.`posts_categories` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `categories` VARCHAR(200) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `categories_name_UNIQUE` (`categories` ASC) VISIBLE)
ENGINE = InnoDB;

-- tocpic in navbar
CREATE TABLE IF NOT EXISTS `haircare`.`posts_topics` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `topics` VARCHAR(255) NULL,
  `categories_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `FK_categories_id_posts_topics_idx` (`categories_id` ASC) VISIBLE,
  CONSTRAINT `FK_categories_id_posts_topics`
    FOREIGN KEY (`categories_id`)
    REFERENCES `haircare`.`posts_categories` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- title con
CREATE TABLE IF NOT EXISTS `haircare`.`posts_title` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `titles` VARCHAR(200) NOT NULL,
  `posts_topics_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `FK_posts_topics_id_posts_title_idx` (`posts_topics_id` ASC) VISIBLE,
  CONSTRAINT `FK_posts_topics_id_posts_title`
    FOREIGN KEY (`posts_topics_id`)
    REFERENCES `haircare`.`posts_topics` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- ảnh của các posts
CREATE TABLE IF NOT EXISTS `haircare`.`posts_images` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `posts_title_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `FK_posts_title_id_posts_images_idx` (`posts_title_id` ASC) VISIBLE,
  CONSTRAINT `FK_posts_title_id_posts_images`
    FOREIGN KEY (`posts_title_id`)
    REFERENCES `haircare`.`posts_title` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;
drop table `haircare`.`posts_images`;

-- nội dung của bài post
CREATE TABLE IF NOT EXISTS `haircare`.`posts_content` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `description` TEXT NOT NULL,
  `posts_title_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `FK_posts_title_id_posts_images_idx` (`posts_title_id` ASC) VISIBLE,
  CONSTRAINT `FK_posts_title_id_posts_description`
    FOREIGN KEY (`posts_title_id`)
    REFERENCES `haircare`.`posts_title` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- các loại thiết bị
CREATE TABLE IF NOT EXISTS `haircare`.`equipments` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `equipments` varchar(255) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

-- thông tin về thiết bị
CREATE TABLE IF NOT EXISTS `haircare`.`euquipments_detail` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `price` VARCHAR(45) NULL,
  `description` text not NULL,
  `equipments_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `FK_equipments_id_equipments_detail_idx` (`equipments_id` ASC) VISIBLE,
  CONSTRAINT `FK_equipments_id_equipments_detail`
    FOREIGN KEY (`equipments_id`)
    REFERENCES `haircare`.`equipments` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- ảnh của thiết bị
CREATE TABLE IF NOT EXISTS `haircare`.`euquipments_images` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `url` VARCHAR(255) NOT NULL,
  `equipments_detail_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `FK_equipments_detail_id_equipments_images_idx` (`equipments_detail_id` ASC) VISIBLE,
  CONSTRAINT `FK_equipments_detail_id_equipments_images`
    FOREIGN KEY (`equipments_detail_id`)
    REFERENCES `haircare`.`euquipments_detail` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;
drop table `haircare`.`euquipments_images`;

-- các sản phẩm tốt cho tóc
CREATE TABLE IF NOT EXISTS `haircare`.`products` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `products` varchar(255) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

-- chi tiết về các sản phẩm
CREATE TABLE IF NOT EXISTS `haircare`.`products_detail` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `price` varchar(255) NULL,
  `description` text NULL,
  `products_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `FK_products_id_products_detail_idx` (`products_id` ASC) VISIBLE,
  CONSTRAINT `FK_products_id-products_detail`
    FOREIGN KEY (`products_id`)
    REFERENCES `haircare`.`products` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- ảnh các sản phẩm
CREATE TABLE IF NOT EXISTS `haircare`.`products_images` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `url` VARCHAR(255) NOT NULL,
  `products_detail_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `FK_products_detail_id_products_images_idx` (`products_detail_id` ASC) VISIBLE,
  CONSTRAINT `FK_products_detail_id_products_images`
    FOREIGN KEY (`products_detail_id`)
    REFERENCES `haircare`.`products_detail` (`id`)
    ON DELETE NO ACTION	
    ON UPDATE NO ACTION)
ENGINE = InnoDB;
drop table `haircare`.`products_images`;

show tables;
use hairecare;
CREATE TABLE IF NOT EXISTS `haircare`.`accountAdmin` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(255) NULL,
  `password` VARCHAR(255) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;
drop table `haircare`.`accountAdmin`;

    
CREATE TABLE IF NOT EXISTS `haircare`.`account` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(255) NOT NULL,
  `password` VARCHAR(255) NOT NULL,
  `email` VARCHAR(255) NOT NULL,
  `status` CHAR(1) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

insert into `haircare`.`account` (username, password, email, status) 
values 
	('oriz1303', 'Nguyen123', 'oriz@gmail.com', 0),
	('quangdu', 'Quangdu123','quangdu@gmail.com', 1);
    
    
select * from `haircare`.`account`;

delete from account where id = 3 and id =4 and id =5;
    
insert into `haircare`.`brand_haircare` (logo, slogan) 
values 
	('haircare_logo.png', 'Health Hair, Beauty Your');

ALTER TABLE products_detail ADD name varchar(255);

insert into `haircare`.`products` (products)
values 
	('Cream Dove'),
    ('Cream LOreal'),
    ('Cream Ellips'),
    ('Cream Organist'),
    ('Shampoo Cocoon'),
    ('Shampoo Selsun'),
    ('Shampoo TRESemme'),
    ('Shampoo Tsubaki'),
    ('Mask BNBG'),
    ('Mask Caryophy'),
    ('Mask Klaris'),
    ('Mask Naruko'),
    ('Serum Beauty Labo'),
    ('Serum Cocoon'),
    ('Serum TRESemme'),
    ('Serum Ellips'),
    ('Hairspays Double Rich'),
    ('Hairspays Haire Busrt'),
    ('Hairspays TRESemme'),
    ('Hairspays Tsubaki'),
    ('Oils Double Rich'),
    ('Oils LOreal'),
    ('Oils Some By Mi'),
    ('Oils Tsubaki');
    
select * from `haircare`.`products`;

alter table `haircare`.`products_detail` add guide TEXT;

insert into `haircare`.`products_detail` (price, description, products_id, name, guide)
values
('12.99','Lorem ipsum dolor sit amet consectetur adipisicing elit. Quae asperiores soluta veritatis? Inventore veritatis maiores, voluptatibus optio nam at aliquam commodi quisquam accusantium esse ad natus dignissimos aliquid quae. Ex praesentium corporis temporibus eaque in qui hic facilis consequatur quae iure voluptatum obcaecati enim tenetur nesciunt similique nisi atque repellendus minus sit, fugiat ea, corrupti modi. Quod illo possimus iusto distinctio voluptatem perferendis excepturi eos illum. Quas blanditiis reiciendis veniam, excepturi explicabo eum quaerat. Nemo doloremque nam voluptas, enim dolore facere ipsum fugiat. Cumque, nisi. Quos ut quidem repudiandae impedit minima soluta aliquid quod, eius autem quas ex alias harum.', 1, 'Hair cream','<h5>User manual<h5><br>
<p><b>Step 1:</b>Apply a sufficient amount of shampoo to the hair, gently rub and focus on the oily skin.</p><br>
<p><b>Step 2:</b>After rinsing the shampoo, take an appropriate amount of conditioner in the palm of your hand. Gently stroke the conditioner from the body to the ends of the hair, keeping in mind that it is 10-15 cm away from the hairline and do not apply to the scalp.</p><br>
<p><b>Step 3:</b>Wait for the conditioner to absorb for 1-3 minutes, then rinse with warm or cool water (do not use hot water).</p>'),
('9.89','Lorem ipsum dolor sit amet consectetur adipisicing elit. Quae asperiores soluta veritatis? Inventore veritatis maiores, voluptatibus optio nam at aliquam commodi quisquam accusantium esse ad natus dignissimos aliquid quae. Ex praesentium corporis temporibus eaque in qui hic facilis consequatur quae iure voluptatum obcaecati enim tenetur nesciunt similique nisi atque repellendus minus sit, fugiat ea, corrupti modi. Quod illo possimus iusto distinctio voluptatem perferendis excepturi eos illum. Quas blanditiis reiciendis veniam, excepturi explicabo eum quaerat. Nemo doloremque nam voluptas, enim dolore facere ipsum fugiat. Cumque, nisi. Quos ut quidem repudiandae impedit minima soluta aliquid quod, eius autem quas ex alias harum.', 2, 'Hair cream', '<h5>User manual<h5><br>
<p><b>Step 1:</b>Apply a sufficient amount of shampoo to the hair, gently rub and focus on the oily skin.</p><br>
<p><b>Step 2:</b>After rinsing the shampoo, take an appropriate amount of conditioner in the palm of your hand. Gently stroke the conditioner from the body to the ends of the hair, keeping in mind that it is 10-15 cm away from the hairline and do not apply to the scalp.</p><br>
<p><b>Step 3:</b>Wait for the conditioner to absorb for 1-3 minutes, then rinse with warm or cool water (do not use hot water).</p>'),
('45.99','Lorem ipsum dolor sit amet consectetur adipisicing elit. Quae asperiores soluta veritatis? Inventore veritatis maiores, voluptatibus optio nam at aliquam commodi quisquam accusantium esse ad natus dignissimos aliquid quae. Ex praesentium corporis temporibus eaque in qui hic facilis consequatur quae iure voluptatum obcaecati enim tenetur nesciunt similique nisi atque repellendus minus sit, fugiat ea, corrupti modi. Quod illo possimus iusto distinctio voluptatem perferendis excepturi eos illum. Quas blanditiis reiciendis veniam, excepturi explicabo eum quaerat. Nemo doloremque nam voluptas, enim dolore facere ipsum fugiat. Cumque, nisi. Quos ut quidem repudiandae impedit minima soluta aliquid quod, eius autem quas ex alias harum.', 3, 'Hair cream', '<h5>User manual<h5><br>
<p><b>Step 1:</b>Apply a sufficient amount of shampoo to the hair, gently rub and focus on the oily skin.</p><br>
<p><b>Step 2:</b>After rinsing the shampoo, take an appropriate amount of conditioner in the palm of your hand. Gently stroke the conditioner from the body to the ends of the hair, keeping in mind that it is 10-15 cm away from the hairline and do not apply to the scalp.</p><br>
<p><b>Step 3:</b>Wait for the conditioner to absorb for 1-3 minutes, then rinse with warm or cool water (do not use hot water).</p>'),
('18.99','Lorem ipsum dolor sit amet consectetur adipisicing elit. Quae asperiores soluta veritatis? Inventore veritatis maiores, voluptatibus optio nam at aliquam commodi quisquam accusantium esse ad natus dignissimos aliquid quae. Ex praesentium corporis temporibus eaque in qui hic facilis consequatur quae iure voluptatum obcaecati enim tenetur nesciunt similique nisi atque repellendus minus sit, fugiat ea, corrupti modi. Quod illo possimus iusto distinctio voluptatem perferendis excepturi eos illum. Quas blanditiis reiciendis veniam, excepturi explicabo eum quaerat. Nemo doloremque nam voluptas, enim dolore facere ipsum fugiat. Cumque, nisi. Quos ut quidem repudiandae impedit minima soluta aliquid quod, eius autem quas ex alias harum.', 4, 'Hair cream', '<h5>User manual<h5><br>
<p><b>Step 1:</b>Apply a sufficient amount of shampoo to the hair, gently rub and focus on the oily skin.</p><br>
<p><b>Step 2:</b>After rinsing the shampoo, take an appropriate amount of conditioner in the palm of your hand. Gently stroke the conditioner from the body to the ends of the hair, keeping in mind that it is 10-15 cm away from the hairline and do not apply to the scalp.</p><br>
<p><b>Step 3:</b>Wait for the conditioner to absorb for 1-3 minutes, then rinse with warm or cool water (do not use hot water).</p>'),
('5.99','Lorem ipsum dolor sit amet consectetur adipisicing elit. Quae asperiores soluta veritatis? Inventore veritatis maiores, voluptatibus optio nam at aliquam commodi quisquam accusantium esse ad natus dignissimos aliquid quae. Ex praesentium corporis temporibus eaque in qui hic facilis consequatur quae iure voluptatum obcaecati enim tenetur nesciunt similique nisi atque repellendus minus sit, fugiat ea, corrupti modi. Quod illo possimus iusto distinctio voluptatem perferendis excepturi eos illum. Quas blanditiis reiciendis veniam, excepturi explicabo eum quaerat. Nemo doloremque nam voluptas, enim dolore facere ipsum fugiat. Cumque, nisi. Quos ut quidem repudiandae impedit minima soluta aliquid quod, eius autem quas ex alias harum.', 5, 'Professional Sampoo', '<h5>User manual<h5><br>
<p><b>Step 1:</b>Apply a sufficient amount of shampoo to the hair, gently rub and focus on the oily skin.</p><br>
<p><b>Step 2:</b>After rinsing the shampoo, take an appropriate amount of conditioner in the palm of your hand. Gently stroke the conditioner from the body to the ends of the hair, keeping in mind that it is 10-15 cm away from the hairline and do not apply to the scalp.</p><br>
<p><b>Step 3:</b>Wait for the conditioner to absorb for 1-3 minutes, then rinse with warm or cool water (do not use hot water).</p>'),
('22.99','Lorem ipsum dolor sit amet consectetur adipisicing elit. Quae asperiores soluta veritatis? Inventore veritatis maiores, voluptatibus optio nam at aliquam commodi quisquam accusantium esse ad natus dignissimos aliquid quae. Ex praesentium corporis temporibus eaque in qui hic facilis consequatur quae iure voluptatum obcaecati enim tenetur nesciunt similique nisi atque repellendus minus sit, fugiat ea, corrupti modi. Quod illo possimus iusto distinctio voluptatem perferendis excepturi eos illum. Quas blanditiis reiciendis veniam, excepturi explicabo eum quaerat. Nemo doloremque nam voluptas, enim dolore facere ipsum fugiat. Cumque, nisi. Quos ut quidem repudiandae impedit minima soluta aliquid quod, eius autem quas ex alias harum.', 6, 'Professional Sampoo', '<h5>User manual<h5><br>
<p><b>Step 1:</b>Apply a sufficient amount of shampoo to the hair, gently rub and focus on the oily skin.</p><br>
<p><b>Step 2:</b>After rinsing the shampoo, take an appropriate amount of conditioner in the palm of your hand. Gently stroke the conditioner from the body to the ends of the hair, keeping in mind that it is 10-15 cm away from the hairline and do not apply to the scalp.</p><br>
<p><b>Step 3:</b>Wait for the conditioner to absorb for 1-3 minutes, then rinse with warm or cool water (do not use hot water).</p>'),
('23.99','Lorem ipsum dolor sit amet consectetur adipisicing elit. Quae asperiores soluta veritatis? Inventore veritatis maiores, voluptatibus optio nam at aliquam commodi quisquam accusantium esse ad natus dignissimos aliquid quae. Ex praesentium corporis temporibus eaque in qui hic facilis consequatur quae iure voluptatum obcaecati enim tenetur nesciunt similique nisi atque repellendus minus sit, fugiat ea, corrupti modi. Quod illo possimus iusto distinctio voluptatem perferendis excepturi eos illum. Quas blanditiis reiciendis veniam, excepturi explicabo eum quaerat. Nemo doloremque nam voluptas, enim dolore facere ipsum fugiat. Cumque, nisi. Quos ut quidem repudiandae impedit minima soluta aliquid quod, eius autem quas ex alias harum.', 7, 'Professional Sampoo', '<h5>User manual<h5><br>
<p><b>Step 1:</b>Apply a sufficient amount of shampoo to the hair, gently rub and focus on the oily skin.</p><br>
<p><b>Step 2:</b>After rinsing the shampoo, take an appropriate amount of conditioner in the palm of your hand. Gently stroke the conditioner from the body to the ends of the hair, keeping in mind that it is 10-15 cm away from the hairline and do not apply to the scalp.</p><br>
<p><b>Step 3:</b>Wait for the conditioner to absorb for 1-3 minutes, then rinse with warm or cool water (do not use hot water).</p>'),
('21.49','Lorem ipsum dolor sit amet consectetur adipisicing elit. Quae asperiores soluta veritatis? Inventore veritatis maiores, voluptatibus optio nam at aliquam commodi quisquam accusantium esse ad natus dignissimos aliquid quae. Ex praesentium corporis temporibus eaque in qui hic facilis consequatur quae iure voluptatum obcaecati enim tenetur nesciunt similique nisi atque repellendus minus sit, fugiat ea, corrupti modi. Quod illo possimus iusto distinctio voluptatem perferendis excepturi eos illum. Quas blanditiis reiciendis veniam, excepturi explicabo eum quaerat. Nemo doloremque nam voluptas, enim dolore facere ipsum fugiat. Cumque, nisi. Quos ut quidem repudiandae impedit minima soluta aliquid quod, eius autem quas ex alias harum.', 8, 'Professional Sampoo', '<h5>User manual<h5><br>
<p><b>Step 1:</b>Apply a sufficient amount of shampoo to the hair, gently rub and focus on the oily skin.</p><br>
<p><b>Step 2:</b>After rinsing the shampoo, take an appropriate amount of conditioner in the palm of your hand. Gently stroke the conditioner from the body to the ends of the hair, keeping in mind that it is 10-15 cm away from the hairline and do not apply to the scalp.</p><br>
<p><b>Step 3:</b>Wait for the conditioner to absorb for 1-3 minutes, then rinse with warm or cool water (do not use hot water).</p>'),
('40.29','Lorem ipsum dolor sit amet consectetur adipisicing elit. Quae asperiores soluta veritatis? Inventore veritatis maiores, voluptatibus optio nam at aliquam commodi quisquam accusantium esse ad natus dignissimos aliquid quae. Ex praesentium corporis temporibus eaque in qui hic facilis consequatur quae iure voluptatum obcaecati enim tenetur nesciunt similique nisi atque repellendus minus sit, fugiat ea, corrupti modi. Quod illo possimus iusto distinctio voluptatem perferendis excepturi eos illum. Quas blanditiis reiciendis veniam, excepturi explicabo eum quaerat. Nemo doloremque nam voluptas, enim dolore facere ipsum fugiat. Cumque, nisi. Quos ut quidem repudiandae impedit minima soluta aliquid quod, eius autem quas ex alias harum.', 9, 'Masks High-class', '<h5>User manual<h5><br>
<p><b>Step 1:</b>Apply a sufficient amount of shampoo to the hair, gently rub and focus on the oily skin.</p><br>
<p><b>Step 2:</b>After rinsing the shampoo, take an appropriate amount of conditioner in the palm of your hand. Gently stroke the conditioner from the body to the ends of the hair, keeping in mind that it is 10-15 cm away from the hairline and do not apply to the scalp.</p><br>
<p><b>Step 3:</b>Wait for the conditioner to absorb for 1-3 minutes, then rinse with warm or cool water (do not use hot water).</p>'),
('12.69','Lorem ipsum dolor sit amet consectetur adipisicing elit. Quae asperiores soluta veritatis? Inventore veritatis maiores, voluptatibus optio nam at aliquam commodi quisquam accusantium esse ad natus dignissimos aliquid quae. Ex praesentium corporis temporibus eaque in qui hic facilis consequatur quae iure voluptatum obcaecati enim tenetur nesciunt similique nisi atque repellendus minus sit, fugiat ea, corrupti modi. Quod illo possimus iusto distinctio voluptatem perferendis excepturi eos illum. Quas blanditiis reiciendis veniam, excepturi explicabo eum quaerat. Nemo doloremque nam voluptas, enim dolore facere ipsum fugiat. Cumque, nisi. Quos ut quidem repudiandae impedit minima soluta aliquid quod, eius autem quas ex alias harum.', 10, 'Masks High-class', '<h5>User manual<h5><br>
<p><b>Step 1:</b>Apply a sufficient amount of shampoo to the hair, gently rub and focus on the oily skin.</p><br>
<p><b>Step 2:</b>After rinsing the shampoo, take an appropriate amount of conditioner in the palm of your hand. Gently stroke the conditioner from the body to the ends of the hair, keeping in mind that it is 10-15 cm away from the hairline and do not apply to the scalp.</p><br>
<p><b>Step 3:</b>Wait for the conditioner to absorb for 1-3 minutes, then rinse with warm or cool water (do not use hot water).</p>'),
('14.99','Lorem ipsum dolor sit amet consectetur adipisicing elit. Quae asperiores soluta veritatis? Inventore veritatis maiores, voluptatibus optio nam at aliquam commodi quisquam accusantium esse ad natus dignissimos aliquid quae. Ex praesentium corporis temporibus eaque in qui hic facilis consequatur quae iure voluptatum obcaecati enim tenetur nesciunt similique nisi atque repellendus minus sit, fugiat ea, corrupti modi. Quod illo possimus iusto distinctio voluptatem perferendis excepturi eos illum. Quas blanditiis reiciendis veniam, excepturi explicabo eum quaerat. Nemo doloremque nam voluptas, enim dolore facere ipsum fugiat. Cumque, nisi. Quos ut quidem repudiandae impedit minima soluta aliquid quod, eius autem quas ex alias harum.', 11, 'Masks High-class', '<h5>User manual<h5><br>
<p><b>Step 1:</b>Apply a sufficient amount of shampoo to the hair, gently rub and focus on the oily skin.</p><br>
<p><b>Step 2:</b>After rinsing the shampoo, take an appropriate amount of conditioner in the palm of your hand. Gently stroke the conditioner from the body to the ends of the hair, keeping in mind that it is 10-15 cm away from the hairline and do not apply to the scalp.</p><br>
<p><b>Step 3:</b>Wait for the conditioner to absorb for 1-3 minutes, then rinse with warm or cool water (do not use hot water).</p>'),
('11.89','Lorem ipsum dolor sit amet consectetur adipisicing elit. Quae asperiores soluta veritatis? Inventore veritatis maiores, voluptatibus optio nam at aliquam commodi quisquam accusantium esse ad natus dignissimos aliquid quae. Ex praesentium corporis temporibus eaque in qui hic facilis consequatur quae iure voluptatum obcaecati enim tenetur nesciunt similique nisi atque repellendus minus sit, fugiat ea, corrupti modi. Quod illo possimus iusto distinctio voluptatem perferendis excepturi eos illum. Quas blanditiis reiciendis veniam, excepturi explicabo eum quaerat. Nemo doloremque nam voluptas, enim dolore facere ipsum fugiat. Cumque, nisi. Quos ut quidem repudiandae impedit minima soluta aliquid quod, eius autem quas ex alias harum.', 12, 'Masks High-class', '<h5>User manual<h5><br>
<p><b>Step 1:</b>Apply a sufficient amount of shampoo to the hair, gently rub and focus on the oily skin.</p><br>
<p><b>Step 2:</b>After rinsing the shampoo, take an appropriate amount of conditioner in the palm of your hand. Gently stroke the conditioner from the body to the ends of the hair, keeping in mind that it is 10-15 cm away from the hairline and do not apply to the scalp.</p><br>
<p><b>Step 3:</b>Wait for the conditioner to absorb for 1-3 minutes, then rinse with warm or cool water (do not use hot water).</p>'),
('90.19','Lorem ipsum dolor sit amet consectetur adipisicing elit. Quae asperiores soluta veritatis? Inventore veritatis maiores, voluptatibus optio nam at aliquam commodi quisquam accusantium esse ad natus dignissimos aliquid quae. Ex praesentium corporis temporibus eaque in qui hic facilis consequatur quae iure voluptatum obcaecati enim tenetur nesciunt similique nisi atque repellendus minus sit, fugiat ea, corrupti modi. Quod illo possimus iusto distinctio voluptatem perferendis excepturi eos illum. Quas blanditiis reiciendis veniam, excepturi explicabo eum quaerat. Nemo doloremque nam voluptas, enim dolore facere ipsum fugiat. Cumque, nisi. Quos ut quidem repudiandae impedit minima soluta aliquid quod, eius autem quas ex alias harum.', 13, 'Serums from Angula', '<h5>User manual<h5><br>
<p><b>Step 1:</b>Apply a sufficient amount of shampoo to the hair, gently rub and focus on the oily skin.</p><br>
<p><b>Step 2:</b>After rinsing the shampoo, take an appropriate amount of conditioner in the palm of your hand. Gently stroke the conditioner from the body to the ends of the hair, keeping in mind that it is 10-15 cm away from the hairline and do not apply to the scalp.</p><br>
<p><b>Step 3:</b>Wait for the conditioner to absorb for 1-3 minutes, then rinse with warm or cool water (do not use hot water).</p>'),
('12.99','Lorem ipsum dolor sit amet consectetur adipisicing elit. Quae asperiores soluta veritatis? Inventore veritatis maiores, voluptatibus optio nam at aliquam commodi quisquam accusantium esse ad natus dignissimos aliquid quae. Ex praesentium corporis temporibus eaque in qui hic facilis consequatur quae iure voluptatum obcaecati enim tenetur nesciunt similique nisi atque repellendus minus sit, fugiat ea, corrupti modi. Quod illo possimus iusto distinctio voluptatem perferendis excepturi eos illum. Quas blanditiis reiciendis veniam, excepturi explicabo eum quaerat. Nemo doloremque nam voluptas, enim dolore facere ipsum fugiat. Cumque, nisi. Quos ut quidem repudiandae impedit minima soluta aliquid quod, eius autem quas ex alias harum.', 14, 'Serums from North Korea', '<h5>User manual<h5><br>
<p><b>Step 1:</b>Apply a sufficient amount of shampoo to the hair, gently rub and focus on the oily skin.</p><br>
<p><b>Step 2:</b>After rinsing the shampoo, take an appropriate amount of conditioner in the palm of your hand. Gently stroke the conditioner from the body to the ends of the hair, keeping in mind that it is 10-15 cm away from the hairline and do not apply to the scalp.</p><br>
<p><b>Step 3:</b>Wait for the conditioner to absorb for 1-3 minutes, then rinse with warm or cool water (do not use hot water).</p>'),
('14.99','Lorem ipsum dolor sit amet consectetur adipisicing elit. Quae asperiores soluta veritatis? Inventore veritatis maiores, voluptatibus optio nam at aliquam commodi quisquam accusantium esse ad natus dignissimos aliquid quae. Ex praesentium corporis temporibus eaque in qui hic facilis consequatur quae iure voluptatum obcaecati enim tenetur nesciunt similique nisi atque repellendus minus sit, fugiat ea, corrupti modi. Quod illo possimus iusto distinctio voluptatem perferendis excepturi eos illum. Quas blanditiis reiciendis veniam, excepturi explicabo eum quaerat. Nemo doloremque nam voluptas, enim dolore facere ipsum fugiat. Cumque, nisi. Quos ut quidem repudiandae impedit minima soluta aliquid quod, eius autem quas ex alias harum.', 15, 'Serums from Vietnamese', '<h5>User manual<h5><br>
<p><b>Step 1:</b>Apply a sufficient amount of shampoo to the hair, gently rub and focus on the oily skin.</p><br>
<p><b>Step 2:</b>After rinsing the shampoo, take an appropriate amount of conditioner in the palm of your hand. Gently stroke the conditioner from the body to the ends of the hair, keeping in mind that it is 10-15 cm away from the hairline and do not apply to the scalp.</p><br>
<p><b>Step 3:</b>Wait for the conditioner to absorb for 1-3 minutes, then rinse with warm or cool water (do not use hot water).</p>'),
('15.99','Lorem ipsum dolor sit amet consectetur adipisicing elit. Quae asperiores soluta veritatis? Inventore veritatis maiores, voluptatibus optio nam at aliquam commodi quisquam accusantium esse ad natus dignissimos aliquid quae. Ex praesentium corporis temporibus eaque in qui hic facilis consequatur quae iure voluptatum obcaecati enim tenetur nesciunt similique nisi atque repellendus minus sit, fugiat ea, corrupti modi. Quod illo possimus iusto distinctio voluptatem perferendis excepturi eos illum. Quas blanditiis reiciendis veniam, excepturi explicabo eum quaerat. Nemo doloremque nam voluptas, enim dolore facere ipsum fugiat. Cumque, nisi. Quos ut quidem repudiandae impedit minima soluta aliquid quod, eius autem quas ex alias harum.', 16, 'Serums from United of Empires', '<h5>User manual<h5><br>
<p><b>Step 1:</b>Apply a sufficient amount of shampoo to the hair, gently rub and focus on the oily skin.</p><br>
<p><b>Step 2:</b>After rinsing the shampoo, take an appropriate amount of conditioner in the palm of your hand. Gently stroke the conditioner from the body to the ends of the hair, keeping in mind that it is 10-15 cm away from the hairline and do not apply to the scalp.</p><br>
<p><b>Step 3:</b>Wait for the conditioner to absorb for 1-3 minutes, then rinse with warm or cool water (do not use hot water).</p>'),
('16.99','Lorem ipsum dolor sit amet consectetur adipisicing elit. Quae asperiores soluta veritatis? Inventore veritatis maiores, voluptatibus optio nam at aliquam commodi quisquam accusantium esse ad natus dignissimos aliquid quae. Ex praesentium corporis temporibus eaque in qui hic facilis consequatur quae iure voluptatum obcaecati enim tenetur nesciunt similique nisi atque repellendus minus sit, fugiat ea, corrupti modi. Quod illo possimus iusto distinctio voluptatem perferendis excepturi eos illum. Quas blanditiis reiciendis veniam, excepturi explicabo eum quaerat. Nemo doloremque nam voluptas, enim dolore facere ipsum fugiat. Cumque, nisi. Quos ut quidem repudiandae impedit minima soluta aliquid quod, eius autem quas ex alias harum.', 17, 'Hair Sprays Good', '<h5>User manual<h5><br>
<p><b>Step 1:</b>Apply a sufficient amount of shampoo to the hair, gently rub and focus on the oily skin.</p><br>
<p><b>Step 2:</b>After rinsing the shampoo, take an appropriate amount of conditioner in the palm of your hand. Gently stroke the conditioner from the body to the ends of the hair, keeping in mind that it is 10-15 cm away from the hairline and do not apply to the scalp.</p><br>
<p><b>Step 3:</b>Wait for the conditioner to absorb for 1-3 minutes, then rinse with warm or cool water (do not use hot water).</p>'),
('15.99','Lorem ipsum dolor sit amet consectetur adipisicing elit. Quae asperiores soluta veritatis? Inventore veritatis maiores, voluptatibus optio nam at aliquam commodi quisquam accusantium esse ad natus dignissimos aliquid quae. Ex praesentium corporis temporibus eaque in qui hic facilis consequatur quae iure voluptatum obcaecati enim tenetur nesciunt similique nisi atque repellendus minus sit, fugiat ea, corrupti modi. Quod illo possimus iusto distinctio voluptatem perferendis excepturi eos illum. Quas blanditiis reiciendis veniam, excepturi explicabo eum quaerat. Nemo doloremque nam voluptas, enim dolore facere ipsum fugiat. Cumque, nisi. Quos ut quidem repudiandae impedit minima soluta aliquid quod, eius autem quas ex alias harum.', 18, 'Hair Sprays Good', '<h5>User manual<h5><br>
<p><b>Step 1:</b>Apply a sufficient amount of shampoo to the hair, gently rub and focus on the oily skin.</p><br>
<p><b>Step 2:</b>After rinsing the shampoo, take an appropriate amount of conditioner in the palm of your hand. Gently stroke the conditioner from the body to the ends of the hair, keeping in mind that it is 10-15 cm away from the hairline and do not apply to the scalp.</p><br>
<p><b>Step 3:</b>Wait for the conditioner to absorb for 1-3 minutes, then rinse with warm or cool water (do not use hot water).</p>'),
('23.89','Lorem ipsum dolor sit amet consectetur adipisicing elit. Quae asperiores soluta veritatis? Inventore veritatis maiores, voluptatibus optio nam at aliquam commodi quisquam accusantium esse ad natus dignissimos aliquid quae. Ex praesentium corporis temporibus eaque in qui hic facilis consequatur quae iure voluptatum obcaecati enim tenetur nesciunt similique nisi atque repellendus minus sit, fugiat ea, corrupti modi. Quod illo possimus iusto distinctio voluptatem perferendis excepturi eos illum. Quas blanditiis reiciendis veniam, excepturi explicabo eum quaerat. Nemo doloremque nam voluptas, enim dolore facere ipsum fugiat. Cumque, nisi. Quos ut quidem repudiandae impedit minima soluta aliquid quod, eius autem quas ex alias harum.', 19, 'Hair Sprays Good', '<h5>User manual<h5><br>
<p><b>Step 1:</b>Apply a sufficient amount of shampoo to the hair, gently rub and focus on the oily skin.</p><br>
<p><b>Step 2:</b>After rinsing the shampoo, take an appropriate amount of conditioner in the palm of your hand. Gently stroke the conditioner from the body to the ends of the hair, keeping in mind that it is 10-15 cm away from the hairline and do not apply to the scalp.</p><br>
<p><b>Step 3:</b>Wait for the conditioner to absorb for 1-3 minutes, then rinse with warm or cool water (do not use hot water).</p>'),
('26.39','Lorem ipsum dolor sit amet consectetur adipisicing elit. Quae asperiores soluta veritatis? Inventore veritatis maiores, voluptatibus optio nam at aliquam commodi quisquam accusantium esse ad natus dignissimos aliquid quae. Ex praesentium corporis temporibus eaque in qui hic facilis consequatur quae iure voluptatum obcaecati enim tenetur nesciunt similique nisi atque repellendus minus sit, fugiat ea, corrupti modi. Quod illo possimus iusto distinctio voluptatem perferendis excepturi eos illum. Quas blanditiis reiciendis veniam, excepturi explicabo eum quaerat. Nemo doloremque nam voluptas, enim dolore facere ipsum fugiat. Cumque, nisi. Quos ut quidem repudiandae impedit minima soluta aliquid quod, eius autem quas ex alias harum.', 20, 'Hair Sprays Good', '<h5>User manual<h5><br>
<p><b>Step 1:</b>Apply a sufficient amount of shampoo to the hair, gently rub and focus on the oily skin.</p><br>
<p><b>Step 2:</b>After rinsing the shampoo, take an appropriate amount of conditioner in the palm of your hand. Gently stroke the conditioner from the body to the ends of the hair, keeping in mind that it is 10-15 cm away from the hairline and do not apply to the scalp.</p><br>
<p><b>Step 3:</b>Wait for the conditioner to absorb for 1-3 minutes, then rinse with warm or cool water (do not use hot water).</p>'),
('27.19','Lorem ipsum dolor sit amet consectetur adipisicing elit. Quae asperiores soluta veritatis? Inventore veritatis maiores, voluptatibus optio nam at aliquam commodi quisquam accusantium esse ad natus dignissimos aliquid quae. Ex praesentium corporis temporibus eaque in qui hic facilis consequatur quae iure voluptatum obcaecati enim tenetur nesciunt similique nisi atque repellendus minus sit, fugiat ea, corrupti modi. Quod illo possimus iusto distinctio voluptatem perferendis excepturi eos illum. Quas blanditiis reiciendis veniam, excepturi explicabo eum quaerat. Nemo doloremque nam voluptas, enim dolore facere ipsum fugiat. Cumque, nisi. Quos ut quidem repudiandae impedit minima soluta aliquid quod, eius autem quas ex alias harum.', 21, 'Varios hair oils', '<h5>User manual<h5><br>
<p><b>Step 1:</b>Apply a sufficient amount of shampoo to the hair, gently rub and focus on the oily skin.</p><br>
<p><b>Step 2:</b>After rinsing the shampoo, take an appropriate amount of conditioner in the palm of your hand. Gently stroke the conditioner from the body to the ends of the hair, keeping in mind that it is 10-15 cm away from the hairline and do not apply to the scalp.</p><br>
<p><b>Step 3:</b>Wait for the conditioner to absorb for 1-3 minutes, then rinse with warm or cool water (do not use hot water).</p>'),
('51.99','Lorem ipsum dolor sit amet consectetur adipisicing elit. Quae asperiores soluta veritatis? Inventore veritatis maiores, voluptatibus optio nam at aliquam commodi quisquam accusantium esse ad natus dignissimos aliquid quae. Ex praesentium corporis temporibus eaque in qui hic facilis consequatur quae iure voluptatum obcaecati enim tenetur nesciunt similique nisi atque repellendus minus sit, fugiat ea, corrupti modi. Quod illo possimus iusto distinctio voluptatem perferendis excepturi eos illum. Quas blanditiis reiciendis veniam, excepturi explicabo eum quaerat. Nemo doloremque nam voluptas, enim dolore facere ipsum fugiat. Cumque, nisi. Quos ut quidem repudiandae impedit minima soluta aliquid quod, eius autem quas ex alias harum.', 22, 'Varios hair oils', '<h5>User manual<h5><br>
<p><b>Step 1:</b>Apply a sufficient amount of shampoo to the hair, gently rub and focus on the oily skin.</p><br>
<p><b>Step 2:</b>After rinsing the shampoo, take an appropriate amount of conditioner in the palm of your hand. Gently stroke the conditioner from the body to the ends of the hair, keeping in mind that it is 10-15 cm away from the hairline and do not apply to the scalp.</p><br>
<p><b>Step 3:</b>Wait for the conditioner to absorb for 1-3 minutes, then rinse with warm or cool water (do not use hot water).</p>'),
('54.89','Lorem ipsum dolor sit amet consectetur adipisicing elit. Quae asperiores soluta veritatis? Inventore veritatis maiores, voluptatibus optio nam at aliquam commodi quisquam accusantium esse ad natus dignissimos aliquid quae. Ex praesentium corporis temporibus eaque in qui hic facilis consequatur quae iure voluptatum obcaecati enim tenetur nesciunt similique nisi atque repellendus minus sit, fugiat ea, corrupti modi. Quod illo possimus iusto distinctio voluptatem perferendis excepturi eos illum. Quas blanditiis reiciendis veniam, excepturi explicabo eum quaerat. Nemo doloremque nam voluptas, enim dolore facere ipsum fugiat. Cumque, nisi. Quos ut quidem repudiandae impedit minima soluta aliquid quod, eius autem quas ex alias harum.', 23, 'Varios hair oils', '<h5>User manual<h5><br>
<p><b>Step 1:</b>Apply a sufficient amount of shampoo to the hair, gently rub and focus on the oily skin.</p><br>
<p><b>Step 2:</b>After rinsing the shampoo, take an appropriate amount of conditioner in the palm of your hand. Gently stroke the conditioner from the body to the ends of the hair, keeping in mind that it is 10-15 cm away from the hairline and do not apply to the scalp.</p><br>
<p><b>Step 3:</b>Wait for the conditioner to absorb for 1-3 minutes, then rinse with warm or cool water (do not use hot water).</p>'),
('53.59','Lorem ipsum dolor sit amet consectetur adipisicing elit. Quae asperiores soluta veritatis? Inventore veritatis maiores, voluptatibus optio nam at aliquam commodi quisquam accusantium esse ad natus dignissimos aliquid quae. Ex praesentium corporis temporibus eaque in qui hic facilis consequatur quae iure voluptatum obcaecati enim tenetur nesciunt similique nisi atque repellendus minus sit, fugiat ea, corrupti modi. Quod illo possimus iusto distinctio voluptatem perferendis excepturi eos illum. Quas blanditiis reiciendis veniam, excepturi explicabo eum quaerat. Nemo doloremque nam voluptas, enim dolore facere ipsum fugiat. Cumque, nisi. Quos ut quidem repudiandae impedit minima soluta aliquid quod, eius autem quas ex alias harum.', 24, 'Varios hair oils', '<h5>User manual<h5><br>
<p><b>Step 1:</b>Apply a sufficient amount of shampoo to the hair, gently rub and focus on the oily skin.</p><br>
<p><b>Step 2:</b>After rinsing the shampoo, take an appropriate amount of conditioner in the palm of your hand. Gently stroke the conditioner from the body to the ends of the hair, keeping in mind that it is 10-15 cm away from the hairline and do not apply to the scalp.</p><br>
<p><b>Step 3:</b>Wait for the conditioner to absorb for 1-3 minutes, then rinse with warm or cool water (do not use hot water).</p>');

    
select * from  `haircare`.`products_detail`;

INSERT INTO products_images (url, products_detail_id)
Values 
('imgProducts/duongtoc-dove.jpg' , 1),
('imgProducts/duongtoc-loreal.jpg' , 2),
('imgProducts/duongtoc-ellips.jpg' , 3),
('imgProducts/duongtoc-organist.jpg' , 4),
('imgProducts/daugoi-cocoon.jpg' , 5),
('imgProducts/daugoi-selsun.jpg' , 6),
('imgProducts/daugoi-tresemme.jpg' , 7),
('imgProducts/daugoi-tsubaki-cool.jpg' , 8),
('imgProducts/matna-bnbg-combo10.jpg' , 9),
('imgProducts/matna-caryophy.jpg' , 10),
('imgProducts/matna-klaris.jpg' , 11),
('imgProducts/matna-naruko.jpg' , 12),
('imgProducts/serum-beauty-labo.jpg' , 13),
('imgProducts/serum-cocoon.jpg' , 14),
('imgProducts/serum-tresemme.jpg' , 15),
('imgProducts/serum-ellips.jpg' , 16),
('imgProducts/xittoc-double-rich.jpg' , 17),
('imgProducts/xittoc-hairburst.jpg' , 18),
('imgProducts/xittoc-tresmme.jpg' , 19),
('imgProducts/xittoc-tsubaki.jpg' , 20),
('imgProducts/dauduong-doublerich.png' , 21),
('imgProducts/dauduong-l-oreal.jpg' , 22),
('imgProducts/dauduong-some-by-mi.jpg' , 23),
('imgProducts/dauduong-tsubaki.jpg' , 24);

UPDATE products_images 
SET url = 'imgProducts/xittoc-tresemme.jpg'
Where products_detail_id = 19

use haircare;
select * from products;
select * from products_detail;
select * from products_images;

ALTER TABLE products_detail CHANGE name categories_id int;

update products_detail 
set name = 6
where id > 20 AND id <25;
 

CREATE VIEW information_products AS
SELECT products.id as id, products.products as name, products_detail.price as price, products_detail.description as description, products_detail.categories_id as title, products_detail.guide as guide, products_images.url as url
FROM products
	INNER JOIN products_detail ON products.id = products_detail.products_id
	INNER JOIN products_images ON products_detail.products_id = products_images.products_detail_id;

drop view information_products;

select * from information_products ;

use haircare;

update brand_haircare
SET slogan = "healthy hair <br>your beauty"
WHERE id = 1;




