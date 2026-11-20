insert into public.products (name,category,price,weight,stock,featured) values
('Broccoli Chips','Healthy Chips',220,'200 g',30,true),
('Beetroot Chips','Healthy Chips',170,'200 g',30,true),
('Multigrain Chips','Healthy Chips',170,'200 g',30,true),
('Ragi Chips','Healthy Chips',170,'200 g',30,true),
('Jowar Chips','Healthy Chips',170,'200 g',30,true),
('Jowar Methi Chips','Healthy Chips',170,'200 g',30,true),
('Salted Banana Wafers','Banana Wafers',100,'Pack',30,false),
('Masala Banana Wafers','Banana Wafers',100,'Pack',30,false),
('Black Pepper Banana Wafers','Banana Wafers',100,'Pack',30,false),
('Tomato Chilli Banana Wafers','Banana Wafers',100,'Pack',30,false),
('Pudina Banana Wafers','Banana Wafers',100,'Pack',30,false),
('Peri Peri Khakhra','Khakhra',35,'Pack',30,false),
('Pizza Khakhra','Khakhra',35,'Pack',30,false),
('Cheese Khakhra','Khakhra',35,'Pack',30,false),
('Schezwan Khakhra','Khakhra',35,'Pack',30,false),
('Limbu Mari Khakhra','Khakhra',35,'Pack',30,false),
('Maggi Masala Khakhra','Khakhra',35,'Pack',30,false),
('Peri Peri Roasted Chana','Roasted Chana',45,'Pack',30,false),
('Cheese Masala Roasted Chana','Roasted Chana',45,'Pack',30,false),
('Pudina Masala Roasted Chana','Roasted Chana',45,'Pack',30,false),
('Chatpata Masala Roasted Chana','Roasted Chana',45,'Pack',30,false),
('Plain Roasted Chana','Roasted Chana',45,'Pack',30,false),
('Jaggery Lemon Tea','Specials',0,'Pack',0,false);

-- Match the uploaded real product photographs to catalogue records.
update public.products set image_url='/products/chips-broccoli.webp' where name='Broccoli Chips';
update public.products set image_url='/products/chips-beetroot.webp' where name='Beetroot Chips';
update public.products set image_url='/products/chips-multigrain.webp' where name='Multigrain Chips';
update public.products set image_url='/products/chips-ragi.webp' where name='Ragi Chips';
update public.products set image_url='/products/chips-jowar.webp' where name='Jowar Chips';
update public.products set image_url='/products/banana-salted.webp' where name='Salted Banana Wafers';
update public.products set image_url='/products/banana-masala.webp' where name='Masala Banana Wafers';
update public.products set image_url='/products/banana-black-pepper.webp' where name='Black Pepper Banana Wafers';
update public.products set image_url='/products/banana-pudina.webp' where name='Pudina Banana Wafers';
