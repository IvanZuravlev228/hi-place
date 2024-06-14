use `hi-place`;

-- CREATE TABLE IF NOT EXISTS user_service_images (
--     id INT AUTO_INCREMENT PRIMARY KEY,
--     type_of_service_id bigint NOT NULL,
--     user_id bigint NOT NULL,
--     path VARCHAR(255) NOT NULL,
--     FOREIGN KEY (type_of_service_id) REFERENCES type_of_service(id),
--     FOREIGN KEY (user_id) REFERENCES user(id)
-- );

INSERT INTO main_type_of_service (name)
VALUES
    ('Догляд за обличчям'),
    ('Візаж та макіяж'),
    ('Перукарські послуги'),
    ('Нігтьовий сервіс'),
    ('Уколи для краси'),
    ('Догляд за тілом'),
    ('Епіляція / Депіляція'),
    ('Тату / пірсинг'),
    ('Татуаж'),
    ('Брови / вії'),
    ('Фотосесії'),
    ('Фитнес');
    
    
INSERT INTO `hi-place`.`type_of_service` (`name`, `main_type_id`) VALUES ('Чистка обличчя', '1');
INSERT INTO `hi-place`.`type_of_service` (`name`, `main_type_id`) VALUES ('Пілінг обличчя', '1');
INSERT INTO `hi-place`.`type_of_service` (`name`, `main_type_id`) VALUES ('Масаж обличчя', '1');
INSERT INTO `hi-place`.`type_of_service` (`name`, `main_type_id`) VALUES ('Тейпування обличчя', '1');
INSERT INTO `hi-place`.`type_of_service` (`name`, `main_type_id`) VALUES ('Антивікові апаратні процедури', '1');
INSERT INTO `hi-place`.`type_of_service` (`name`, `main_type_id`) VALUES ('Уколи для краси', '1');
INSERT INTO `hi-place`.`type_of_service` (`name`, `main_type_id`) VALUES ('Класичні апаратні процедури', '1');
INSERT INTO `hi-place`.`type_of_service` (`name`, `main_type_id`) VALUES ('Вирівнювання рельєфу та кольору обличчя', '1');
INSERT INTO `hi-place`.`type_of_service` (`name`, `main_type_id`) VALUES ('Доглядові процедури', '1');
INSERT INTO `hi-place`.`type_of_service` (`main_type_id`, `name`) VALUES ('2', 'Весільний макіяж');
INSERT INTO `hi-place`.`type_of_service` (`main_type_id`, `name`) VALUES ('2', 'Вечірній макіяж');
INSERT INTO `hi-place`.`type_of_service` (`main_type_id`, `name`) VALUES ('2', 'Макіяж для фотосесії');
INSERT INTO `hi-place`.`type_of_service` (`main_type_id`, `name`) VALUES ('2', 'Фантазійний макіяж');
INSERT INTO `hi-place`.`type_of_service` (`main_type_id`, `name`) VALUES ('2', 'Денний макіяж');
INSERT INTO `hi-place`.`type_of_service` (`main_type_id`, `name`) VALUES ('2', 'Випускний макіяж');
INSERT INTO `hi-place`.`type_of_service` (`main_type_id`, `name`) VALUES ('2', 'Боді арт');
INSERT INTO `hi-place`.`type_of_service` (`main_type_id`, `name`) VALUES ('2', 'Смокі айс');
INSERT INTO `hi-place`.`type_of_service` (`main_type_id`, `name`) VALUES ('3', 'Тонування волосся');
INSERT INTO `hi-place`.`type_of_service` (`main_type_id`, `name`) VALUES ('3', 'Освітлення волосся');
INSERT INTO `hi-place`.`type_of_service` (`main_type_id`, `name`) VALUES ('3', 'Однотонне фарбування');
INSERT INTO `hi-place`.`type_of_service` (`main_type_id`, `name`) VALUES ('3', 'Мелірування');
INSERT INTO `hi-place`.`type_of_service` (`main_type_id`, `name`) VALUES ('3', 'Колорування');
INSERT INTO `hi-place`.`type_of_service` (`main_type_id`, `name`) VALUES ('3', 'Камуфлювання сивини');
INSERT INTO `hi-place`.`type_of_service` (`main_type_id`, `name`) VALUES ('3', 'Декапірування');
INSERT INTO `hi-place`.`type_of_service` (`main_type_id`, `name`) VALUES ('3', 'Фарбування волосся фарбою клієнта');
INSERT INTO `hi-place`.`type_of_service` (`main_type_id`, `name`) VALUES ('3', 'Складне фарбування');
INSERT INTO `hi-place`.`type_of_service` (`main_type_id`, `name`) VALUES ('3', 'Чоловіча стрижка');
INSERT INTO `hi-place`.`type_of_service` (`main_type_id`, `name`) VALUES ('3', 'Жіноча стрижка');
INSERT INTO `hi-place`.`type_of_service` (`main_type_id`, `name`) VALUES ('3', 'Дитяча стрижка');
INSERT INTO `hi-place`.`type_of_service` (`main_type_id`, `name`) VALUES ('3', 'Укладка волосся');
INSERT INTO `hi-place`.`type_of_service` (`main_type_id`, `name`) VALUES ('3', 'Вирівнювання волосся');
INSERT INTO `hi-place`.`type_of_service` (`main_type_id`, `name`) VALUES ('3', 'Завивка волосся');
INSERT INTO `hi-place`.`type_of_service` (`main_type_id`, `name`) VALUES ('3', 'Нарощування волосся');
INSERT INTO `hi-place`.`type_of_service` (`main_type_id`, `name`) VALUES ('3', 'Полірування волосся');
INSERT INTO `hi-place`.`type_of_service` (`main_type_id`, `name`) VALUES ('3', 'Зміцнення волосся');
INSERT INTO `hi-place`.`type_of_service` (`main_type_id`, `name`) VALUES ('3', 'Трихологія');
INSERT INTO `hi-place`.`type_of_service` (`main_type_id`, `name`) VALUES ('4', 'Манікюр');
INSERT INTO `hi-place`.`type_of_service` (`main_type_id`, `name`) VALUES ('4', 'Педикюр');
INSERT INTO `hi-place`.`type_of_service` (`main_type_id`, `name`) VALUES ('4', 'Покриття нігтів');
INSERT INTO `hi-place`.`type_of_service` (`main_type_id`, `name`) VALUES ('4', 'Нарощування нігтів');
INSERT INTO `hi-place`.`type_of_service` (`main_type_id`, `name`) VALUES ('4', 'Парафінотерапія');
INSERT INTO `hi-place`.`type_of_service` (`main_type_id`, `name`) VALUES ('4', 'Зміцнення нігтів');
INSERT INTO `hi-place`.`type_of_service` (`main_type_id`, `name`) VALUES ('4', 'Подологія');
INSERT INTO `hi-place`.`type_of_service` (`main_type_id`, `name`) VALUES ('5', 'Мезотерапія обличчя');
INSERT INTO `hi-place`.`type_of_service` (`main_type_id`, `name`) VALUES ('5', 'Біоревіталізація');
INSERT INTO `hi-place`.`type_of_service` (`main_type_id`, `name`) VALUES ('5', 'Контурна пластика');
INSERT INTO `hi-place`.`type_of_service` (`main_type_id`, `name`) VALUES ('5', 'Збільшення губ');
INSERT INTO `hi-place`.`type_of_service` (`main_type_id`, `name`) VALUES ('5', 'Ботулінотерапія');
INSERT INTO `hi-place`.`type_of_service` (`main_type_id`, `name`) VALUES ('5', 'Векторний ліфтинг');
INSERT INTO `hi-place`.`type_of_service` (`main_type_id`, `name`) VALUES ('5', 'Підтяжка обличчя мезонитками');
INSERT INTO `hi-place`.`type_of_service` (`main_type_id`, `name`) VALUES ('5', 'Плазмоліфтінг');
INSERT INTO `hi-place`.`type_of_service` (`main_type_id`, `name`) VALUES ('5', 'Біорепарація');
INSERT INTO `hi-place`.`type_of_service` (`main_type_id`, `name`) VALUES ('5', 'Полінуклеотиди');
INSERT INTO `hi-place`.`type_of_service` (`main_type_id`, `name`) VALUES ('5', 'Полімолочна кислота');
INSERT INTO `hi-place`.`type_of_service` (`main_type_id`, `name`) VALUES ('5', 'Фібробласти');
INSERT INTO `hi-place`.`type_of_service` (`main_type_id`, `name`) VALUES ('6', 'Масаж тіла');
INSERT INTO `hi-place`.`type_of_service` (`main_type_id`, `name`) VALUES ('6', 'SPA-ритуали');
INSERT INTO `hi-place`.`type_of_service` (`main_type_id`, `name`) VALUES ('6', 'Лазня та сауна');
INSERT INTO `hi-place`.`type_of_service` (`main_type_id`, `name`) VALUES ('6', 'Обгортання');
INSERT INTO `hi-place`.`type_of_service` (`main_type_id`, `name`) VALUES ('6', 'Вакуумно роликовий масаж');
INSERT INTO `hi-place`.`type_of_service` (`main_type_id`, `name`) VALUES ('6', 'LPG-масаж');
INSERT INTO `hi-place`.`type_of_service` (`main_type_id`, `name`) VALUES ('6', 'Кавітація');
INSERT INTO `hi-place`.`type_of_service` (`main_type_id`, `name`) VALUES ('6', 'Пресотерапія');
INSERT INTO `hi-place`.`type_of_service` (`main_type_id`, `name`) VALUES ('6', 'Міостимуляція');
INSERT INTO `hi-place`.`type_of_service` (`main_type_id`, `name`) VALUES ('6', 'Ендосфера');
INSERT INTO `hi-place`.`type_of_service` (`main_type_id`, `name`) VALUES ('6', 'VelaShape');
INSERT INTO `hi-place`.`type_of_service` (`main_type_id`, `name`) VALUES ('6', 'Послуги дієтолога');
INSERT INTO `hi-place`.`type_of_service` (`main_type_id`, `name`) VALUES ('6', 'Чистки та пілінги тіла');
INSERT INTO `hi-place`.`type_of_service` (`main_type_id`, `name`) VALUES ('6', 'Уколи краси для тіла');
INSERT INTO `hi-place`.`type_of_service` (`main_type_id`, `name`) VALUES ('6', 'Апаратне омолодження тіла');
INSERT INTO `hi-place`.`type_of_service` (`main_type_id`, `name`) VALUES ('6', 'Усунення недоліків');
INSERT INTO `hi-place`.`type_of_service` (`main_type_id`, `name`) VALUES ('6', 'Засмага');
INSERT INTO `hi-place`.`type_of_service` (`main_type_id`, `name`) VALUES ('7', 'Епіляція');
INSERT INTO `hi-place`.`type_of_service` (`main_type_id`, `name`) VALUES ('7', 'Депіляція');
INSERT INTO `hi-place`.`type_of_service` (`main_type_id`, `name`) VALUES ('8', 'Татуювання тіла');
INSERT INTO `hi-place`.`type_of_service` (`main_type_id`, `name`) VALUES ('8', 'Видалення тату');
INSERT INTO `hi-place`.`type_of_service` (`main_type_id`, `name`) VALUES ('8', 'Пірсинг тіла');
INSERT INTO `hi-place`.`type_of_service` (`main_type_id`, `name`) VALUES ('9', 'Татуаж брів');
INSERT INTO `hi-place`.`type_of_service` (`main_type_id`, `name`) VALUES ('9', 'Татуаж губ');
INSERT INTO `hi-place`.`type_of_service` (`main_type_id`, `name`) VALUES ('9', 'Татуаж очей');
INSERT INTO `hi-place`.`type_of_service` (`main_type_id`, `name`) VALUES ('9', 'Видалення татуажу');
INSERT INTO `hi-place`.`type_of_service` (`main_type_id`, `name`) VALUES ('10', 'Корекція брів');
INSERT INTO `hi-place`.`type_of_service` (`main_type_id`, `name`) VALUES ('10', 'Фарбування брів');
INSERT INTO `hi-place`.`type_of_service` (`main_type_id`, `name`) VALUES ('10', 'Фарбування вій');
INSERT INTO `hi-place`.`type_of_service` (`main_type_id`, `name`) VALUES ('10', 'Нарощення вій');
INSERT INTO `hi-place`.`type_of_service` (`main_type_id`, `name`) VALUES ('10', 'Завивка вій');
INSERT INTO `hi-place`.`type_of_service` (`main_type_id`, `name`) VALUES ('10', 'Ламінування вій');
INSERT INTO `hi-place`.`type_of_service` (`main_type_id`, `name`) VALUES ('10', 'Ботокс вій');
INSERT INTO `hi-place`.`type_of_service` (`main_type_id`, `name`) VALUES ('10', 'Ламінування брів');
INSERT INTO `hi-place`.`type_of_service` (`main_type_id`, `name`) VALUES ('10', 'Нарощення брів');
INSERT INTO `hi-place`.`type_of_service` (`main_type_id`, `name`) VALUES ('11', 'Весільна фотосесія');
INSERT INTO `hi-place`.`type_of_service` (`main_type_id`, `name`) VALUES ('11', 'Сімейна фотосесія');
INSERT INTO `hi-place`.`type_of_service` (`main_type_id`, `name`) VALUES ('11', 'Дитяча фотосесія');
INSERT INTO `hi-place`.`type_of_service` (`main_type_id`, `name`) VALUES ('11', 'Фотосесія для вагітних');
INSERT INTO `hi-place`.`type_of_service` (`main_type_id`, `name`) VALUES ('11', 'Фотосесія вечірок');
INSERT INTO `hi-place`.`type_of_service` (`main_type_id`, `name`) VALUES ('11', 'Тематична фотосесія');
INSERT INTO `hi-place`.`type_of_service` (`main_type_id`, `name`) VALUES ('11', 'Фотосесія в студії');
INSERT INTO `hi-place`.`type_of_service` (`main_type_id`, `name`) VALUES ('11', 'Предметна зйомка');
INSERT INTO `hi-place`.`type_of_service` (`main_type_id`, `name`) VALUES ('11', 'Професійна обробка фото');
INSERT INTO `hi-place`.`type_of_service` (`main_type_id`, `name`) VALUES ('11', 'Фотосесія Love Story');
INSERT INTO `hi-place`.`type_of_service` (`main_type_id`, `name`) VALUES ('11', 'Новорічна фотосесія');
INSERT INTO `hi-place`.`type_of_service` (`main_type_id`, `name`) VALUES ('11', 'Фотосесія Ню');
INSERT INTO `hi-place`.`type_of_service` (`main_type_id`, `name`) VALUES ('11', 'Фотопрогулянка');
INSERT INTO `hi-place`.`type_of_service` (`main_type_id`, `name`) VALUES ('11', 'Зйомка для портфоліо');
INSERT INTO `hi-place`.`type_of_service` (`main_type_id`, `name`) VALUES ('11', 'Чоловіча фотосесія');
INSERT INTO `hi-place`.`type_of_service` (`main_type_id`, `name`) VALUES ('11', 'Фотокнига');
INSERT INTO `hi-place`.`type_of_service` (`main_type_id`, `name`) VALUES ('12', 'Персональне тренування');
INSERT INTO `hi-place`.`type_of_service` (`main_type_id`, `name`) VALUES ('12', 'Групове тренування');
INSERT INTO `hi-place`.`type_of_service` (`main_type_id`, `name`) VALUES ('12', 'Тренування в залі');
INSERT INTO `hi-place`.`type_of_service` (`main_type_id`, `name`) VALUES ('12', 'Бойові мистецтва');
INSERT INTO `hi-place`.`type_of_service` (`main_type_id`, `name`) VALUES ('12', 'Духовні практики');
INSERT INTO `hi-place`.`type_of_service` (`main_type_id`, `name`) VALUES ('12', 'Танці');
INSERT INTO `hi-place`.`type_of_service` (`main_type_id`, `name`) VALUES ('12', 'Басейн');
INSERT INTO `hi-place`.`type_of_service` (`main_type_id`, `name`) VALUES ('12', 'Дитячі тренування');
INSERT INTO `hi-place`.`type_of_service` (`main_type_id`, `name`) VALUES ('12', 'Спортивний зал');
INSERT INTO `hi-place`.`type_of_service` (`main_type_id`, `name`) VALUES ('12', 'Тренування на вулиці');



INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('1', 'Комбінована чистка обличчя');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('1', 'Атравматична чистка обличчя');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('1', 'Механічна чистка обличчя');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('1', 'Вакуумна чистка обличчя');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('1', 'Ультразвукова чистка обличчя');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('1', 'Гальванічна чистка обличчя');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('1', 'Чистка обличчя для чоловіків');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('1', 'Лазерна чистка обличчя');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('1', 'Глибока чистка обличчя');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('1', 'HydraFacial');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('1', 'Видалення вугрів');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('2', 'Хімічний пілінг');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('2', 'Газорідинний пілінг обличчя');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('2', 'Лазерний пілінг');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('2', 'Лазерний карбоновий пілінг');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('2', 'Мікродермабразія');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('2', 'Eксфоліація обличчя');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('2', 'Фитопiлiнг');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('2', 'Кораловий пілінг');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('2', 'Мезопілінг');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('3', 'Масаж обличчя від зморшок');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('3', 'Скульптурний масаж обличчя');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('3', 'Лімфодренажний масаж обличчя');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('3', 'Косметичний масаж обличчя');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('3', 'Точковий масаж обличчя');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('3', 'Класичний масаж обличчя');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('3', 'Японський масаж обличчя');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('3', 'Іспанський масаж обличчя');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('3', 'Масаж обличчя по Жаке');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('3', 'Масаж обличчя Гуаша');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('3', 'Буккальний масаж');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('3', 'Масаж равликами Ахатинами');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('3', 'Масаж Тоффа');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('3', 'Міофасциальний масаж обличчя');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('3', 'Вакуумний масаж');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('3', 'Кобідо');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('3', 'Пластичний масаж обличчя');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('4', 'Тейпування підборіддя');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('4', 'Тейпування навколо очей');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('4', 'Тейпування носогубки');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('4', 'Тейпування чола');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('5', 'Мікротоки');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('5', 'Міостимуляція обличчя');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('5', 'Термоліфтинг');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('5', 'RF ліфтинг');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('5', 'Мікроголчастий RF ліфтинг');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('5', 'Елос-змолодження');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('5', 'Лазерне шліфування обличчя');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('5', 'Фотоомолодження (IPL)');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('5', 'Безін\'єкційна мезотерапія');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('5', 'СМАС ліфтинг');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('5', 'Апаратне омолодження');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('5', 'Холодна плазма');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('6', 'Дарсонваль обличчя');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('6', 'Ультразвуковий фонофорез');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('6', 'Іонофорез');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('6', 'Кріомасаж обличчя');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('6', 'Озонотерапія обличчя');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('7', 'Лікування акне');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('7', 'Лазерне лікування акне');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('7', 'Видалення рубців і шрамів');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('7', 'Видалення новоутворень');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('7', 'Лікування куперозу');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('7', 'Видалення зайвого волосся');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('7', 'Видалення міліума');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('7', 'Видалення пігментних плям');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('7', 'Видалення родимок');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('7', 'Видалення папілом');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('7', 'Видалення бородавок');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('7', 'Видалення жировикiв');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('7', 'Видалення розтяжок');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('7', 'Відбілювання зубів');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('7', 'Видалення ксантелазми');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('8', 'Ферментотерапія');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('8', 'Альгінатна маска');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('8', 'Вогонь та лід');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('8', 'Експрес-догляд');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('8', 'Інші доглядові процедури');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('10', 'Весільний макіяж');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('11', 'Вечірній макіяж');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('12', 'Макіяж для фотосесії');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('13', 'Фантазійний макіяж');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('14', 'Денний макіяж');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('15', 'Випускний макіяж');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('16', 'Боді арт');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('17', 'Смокі айс');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('18', 'Тонування волосся');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('19', 'Блонд');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('19', 'Тотал блонд');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('20', 'По всій довжині');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('20', 'Прикореневе');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('22', 'Колорування');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('23', 'Камуфлювання сивини');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('24', 'Декапірування');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('25', 'Фарбування волосся фарбою клієнта');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('26', 'Омбре');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('26', 'Деграде');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('26', 'Балаяж');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('26', 'Брондування');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('26', 'Сомбре');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('26', 'Шатушь');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('26', 'Air touch');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('26', 'Контуринг волосся');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('26', 'Рельєфне фарбування');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('27', 'Стрижки для чоловіків');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('27', 'Гоління');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('27', 'Оформлення бороди');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('28', 'Стрижки для жінок');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('28', 'Чубчик (чолка)');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('28', 'Термострижка');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('29', 'Дитяча стрижка');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('30', 'Весільна укладка');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('30', 'Вечірні зачіски');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('30', 'Зачіска на випускний');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('30', 'Коси');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('30', 'Чоловіча укладка');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('30', 'Дитяча укладка');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('30', 'Укладка феном');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('30', 'Укладка праскою');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('30', 'Укладка плойкою');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('30', 'Укладка на довге волосся');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('30', 'Укладка на коротке волосся');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('30', 'Укладка на середнє волосся');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('30', 'Афрокучері');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('31', 'Кератинове випрямлення');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('31', 'Біо-випрямлення волосся');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('31', 'Біксіпластія');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('31', 'Нанопластика');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('32', 'Хімічна');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('32', 'Біозавивка');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('32', 'Прикореневий об\'єм');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('32', 'Карвінг');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('33', 'Стрічкове');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('33', 'Капсульне');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('33', 'Трессове');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('33', 'Афронарощення');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('33', 'Корекція нарощенного волосся');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('33', 'Зняття нарощенного волосся');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('34', 'Полірування волосся');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('35', 'Ламінування волосся');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('35', 'Ритуали');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('35', 'Коріння волосся');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('35', 'Ботокс для волосся');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('35', 'Глазурування волосся');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('35', 'Екранування волосся');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('36', 'Плазмоліфтінг');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('36', 'Мезотерапія голови');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('36', 'Тріхопігментація');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('36', 'Пересадка волосся');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('37', 'Класичний (обрізний)');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('37', 'Апаратний');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('37', 'Європейський манікюр');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('37', 'SPA');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('37', 'Чоловічий манікюр');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('37', 'Кислотний');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('37', 'Комбінований');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('37', 'Дитячий манікюр');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('38', 'Класичний');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('38', 'Апаратний');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('38', 'Європейський');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('38', 'SPA');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('38', 'Чоловічий педикюр');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('38', 'Медичний педикюр');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('38', 'Кислотний педикюр');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('39', 'Гель-лак');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('39', 'Звичайний лак');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('39', 'Зняття гель лаку');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('39', 'З дизайном');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('40', 'Гелеве');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('40', 'Акрилове');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('40', 'Зняття/Корекція');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('41', 'Парафінотерапія рук');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('41', 'Парафінотерапія ніг');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('42', 'Зміцнення нігтів гелем');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('42', 'Зміцнення нігтів акрилом');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('42', 'Зміцнення нігтів акриловою пудрою');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('42', 'Зміцнення нігтів біогелем');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('42', 'Зміцнення нігтів ibx');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('42', 'Ламінування нігтів');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('43', 'Видалення мозолів');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('43', 'Видалення врослого нігтя');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('43', 'Грибок нігтів');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('43', 'Чистка п\'ятки');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('43', 'Протезування');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('43', 'Видалення натоптишів');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('43', 'Лікування тріщин на п\'ятах');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('43', 'Лікування бородавок на стопі');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('43', 'Лікування оніхолізиса');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('44', 'Мезотерапія обличчя');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('45', 'Біоревіталізація');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('46', 'Контурна пластика');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('47', 'Збільшення губ');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('48', 'Ботулінотерапія');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('49', 'Векторний ліфтинг');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('50', 'Підтяжка обличчя мезонитками');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('51', 'Плазмоліфтінг');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('52', 'Біорепарація');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('53', 'Полінуклеотиди');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('54', 'Полімолочна кислота');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('55', 'Фібробласти');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('56', 'Реабілітація');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('56', 'Міофасциальний');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('56', 'Класичний');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('56', 'Лімфодренажний');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('56', 'Антицелюлітний');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('56', 'Розслабляючий');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('56', 'Лікувальний масаж');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('56', 'Екзотичний');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('56', 'Дитячий масаж');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('56', 'Масаж для вагітних');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('56', 'Спортивний масаж');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('56', 'Медовий масаж');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('56', 'Тейпування тіла');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('56', 'Кінезітерапія');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('56', 'Аромамасаж');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('56', 'Остеопатичне лікування');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('57', 'SPA-ритуали');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('58', 'Традиційна лазня');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('58', 'Фітобочка');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('58', 'Хаммам');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('58', 'Кріосауна');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('58', 'Сауна');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('59', 'Холодні');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('59', 'Гарячі');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('59', 'Шоколадні');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('59', 'Водоростеві');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('59', 'Віскі обгортання');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('59', 'Медове');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('59', 'Антицелюлітне');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('59', 'Лімфодренажне обгортання');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('59', 'Styx');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('60', 'Масаж Starvac');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('61', 'LPG-масаж');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('62', 'Кавітація');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('63', 'Пресотерапія');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('64', 'Міостимуляція');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('65', 'Ендосфера');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('66', 'VelaShape');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('67', 'Консультація дієтолога');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('67', 'Програма харчування');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('68', 'Cкрабування');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('68', 'Чистка спини');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('69', 'Контурна інтимна пластика');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('69', 'Мезотерапія тіла');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('69', 'Біоревіталізація тіла');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('69', 'Лікування гіпергідрозу ботоксом');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('69', 'Плазмоліфтінг (розтяжки)');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('69', 'Рефлексотерапія');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('69', 'Ліполіз (ліполітики)');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('70', 'Кріоліполіз');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('71', 'Інтимне відбілювання');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('72', 'Солярій');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('72', 'Миттева засмага');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('73', 'Лазерна епіляція');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('73', 'Елос-епиляція');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('73', 'Фотоепіляція');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('73', 'Електроепиляція');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('73', 'Лазерна епіляція');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('74', 'Воскова депіляція');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('74', 'Шугаринг');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('74', 'Ваксинг чоловічий');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('74', 'Чоловіча цукрова депіляція');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('75', 'Чорно-біле тату');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('75', 'Кольорове тату');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('75', 'Ескізи тату');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('75', 'Тимчасове тату');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('75', 'Перекриття шрамів');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('75', 'Оновлення татуювання');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('75', 'Перекриття тату');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('76', 'Видалення тату');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('77', 'Проколювання мочок вух');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('77', 'Пірсинг носа');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('77', 'Пірсинг пупка');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('77', 'Мікродермали');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('77', 'Септум');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('77', 'Тоннелi');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('77', 'Iнтимний пірсинг');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('77', 'Губи');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('77', 'Язик');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('77', 'Пiрсинг вуха');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('77', 'Пірсинг брiв');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('77', 'Пірсинг сосків');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('77', 'Пірсинг індастріал');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('77', 'Пірсинг \"Смайл\"');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('77', 'Пірсинг Хелікс');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('77', 'Пірсинг Трагус');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('78', 'Мікроблейдинг');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('78', 'Пудровий татуаж брів');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('78', 'Корекція татуажу брів');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('78', 'Біотатуаж брів хною');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('78', 'Волосковий татуаж брів');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('78', 'Татуаж брів з розтушовкою');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('78', 'Татуаж брів 3D/6D');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('79', 'Акварельний татуаж губ');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('79', 'Татуаж контура губ');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('79', 'Корекція татуажу губ');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('79', 'Мікроблейдінг губ');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('79', 'Пудровий татуаж губ');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('79', '3D татуаж губ');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('80', 'Татуаж стрілок на повіках');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('80', 'Татуаж стрілки з розтушовуванням');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('80', 'Міжвійний татуаж очей');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('80', 'Міжвійний татуаж з розтушовкою');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('80', 'Корекція татуажу очей');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('81', 'Видалення ремувером');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('81', 'Видалення лазером');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('82', 'Трідінг брів');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('82', 'Корекція брів воском');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('82', 'Корекція брів пінцетом');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('82', 'Чоловіча корекція брів');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('82', 'Відновлення брів');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('83', 'Фарбування брів хною');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('83', 'Фарбування брів фарбою');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('84', 'Фарбування вій');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('85', 'Класичне нарощення вій');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('85', '2D Нарощення вій');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('85', 'Нарощення вій 3D');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('85', 'Мегаоб\'єм (4D, 5D)');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('85', 'Голлівуд (6D, 8D)');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('85', 'Корекція');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('85', 'Зняття');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('85', 'Мокрий ефект');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('85', 'Лисичка');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('85', 'Ляльковий ефект');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('85', 'Натуральний ефект');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('85', 'Ефект стрілки');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('85', 'Аніме');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('85', 'Нарощення кутиків');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('86', 'Біозавивка вій');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('86', 'Хімічна завивка вій');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('87', 'Ламінування вій');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('88', 'Ботокс вій');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('89', 'Ламінування брів');
INSERT INTO `hi-place`.`service_item` (`type_of_service_id`, `name`) VALUES ('90', 'Нарощення брів');



-- subway initialization
INSERT INTO `hi-place`.`subway` (`color`, `name`) VALUES ('red', 'Академмістечко');
INSERT INTO `hi-place`.`subway` (`color`, `name`) VALUES ('red', 'Житомирська');
INSERT INTO `hi-place`.`subway` (`color`, `name`) VALUES ('red', 'Святошин');
INSERT INTO `hi-place`.`subway` (`color`, `name`) VALUES ('red', 'Нивки');
INSERT INTO `hi-place`.`subway` (`color`, `name`) VALUES ('red', 'Берестейська');
INSERT INTO `hi-place`.`subway` (`color`, `name`) VALUES ('red', 'Шулявська');
INSERT INTO `hi-place`.`subway` (`color`, `name`) VALUES ('red', 'Політехнічний інститут,Вокзальна');
INSERT INTO `hi-place`.`subway` (`color`, `name`) VALUES ('red', 'Університет');
INSERT INTO `hi-place`.`subway` (`color`, `name`) VALUES ('red', 'Театральна');
INSERT INTO `hi-place`.`subway` (`color`, `name`) VALUES ('red', 'Хрещатик');
INSERT INTO `hi-place`.`subway` (`color`, `name`) VALUES ('red', 'Арсенальна');
INSERT INTO `hi-place`.`subway` (`color`, `name`) VALUES ('red', 'Дніпро');
INSERT INTO `hi-place`.`subway` (`color`, `name`) VALUES ('red', 'Гідропарк');
INSERT INTO `hi-place`.`subway` (`color`, `name`) VALUES ('red', 'Лівобережна');
INSERT INTO `hi-place`.`subway` (`color`, `name`) VALUES ('red', 'Дарниця');
INSERT INTO `hi-place`.`subway` (`color`, `name`) VALUES ('red', 'Чернігівська');
INSERT INTO `hi-place`.`subway` (`color`, `name`) VALUES ('red', 'Лісова');
INSERT INTO `hi-place`.`subway` (`color`, `name`) VALUES ('blue', 'Героїв Дніпра');
INSERT INTO `hi-place`.`subway` (`color`, `name`) VALUES ('blue', 'Мінська');
INSERT INTO `hi-place`.`subway` (`color`, `name`) VALUES ('blue', 'Оболонь');
INSERT INTO `hi-place`.`subway` (`color`, `name`) VALUES ('blue', 'Почайна');
INSERT INTO `hi-place`.`subway` (`color`, `name`) VALUES ('blue', 'Тараса Шевченка');
INSERT INTO `hi-place`.`subway` (`color`, `name`) VALUES ('blue', 'Контрактова площа');
INSERT INTO `hi-place`.`subway` (`color`, `name`) VALUES ('blue', 'Поштова площа');
INSERT INTO `hi-place`.`subway` (`color`, `name`) VALUES ('blue', 'Майдан Незалежності');
INSERT INTO `hi-place`.`subway` (`color`, `name`) VALUES ('blue', 'Площа Українських Героїв');
INSERT INTO `hi-place`.`subway` (`color`, `name`) VALUES ('blue', 'Олімпійська');
INSERT INTO `hi-place`.`subway` (`color`, `name`) VALUES ('blue', 'Палац «Україна»');
INSERT INTO `hi-place`.`subway` (`color`, `name`) VALUES ('blue', 'Либідська');
INSERT INTO `hi-place`.`subway` (`color`, `name`) VALUES ('blue', 'Деміївська');
INSERT INTO `hi-place`.`subway` (`color`, `name`) VALUES ('blue', 'Голосіївська');
INSERT INTO `hi-place`.`subway` (`color`, `name`) VALUES ('blue', 'Васильківська');
INSERT INTO `hi-place`.`subway` (`color`, `name`) VALUES ('blue', 'Виставковий центр');
INSERT INTO `hi-place`.`subway` (`color`, `name`) VALUES ('blue', 'Іподром');
INSERT INTO `hi-place`.`subway` (`color`, `name`) VALUES ('blue', 'Теремки');
INSERT INTO `hi-place`.`subway` (`color`, `name`) VALUES ('green', 'Сирець');
INSERT INTO `hi-place`.`subway` (`color`, `name`) VALUES ('green', 'Дорогожичі');
INSERT INTO `hi-place`.`subway` (`color`, `name`) VALUES ('green', 'Лук\'янівська');
INSERT INTO `hi-place`.`subway` (`color`, `name`) VALUES ('green', 'Золоті ворота');
INSERT INTO `hi-place`.`subway` (`color`, `name`) VALUES ('green', 'Палац спорту');
INSERT INTO `hi-place`.`subway` (`color`, `name`) VALUES ('green', 'Кловська');
INSERT INTO `hi-place`.`subway` (`color`, `name`) VALUES ('green', 'Печерська');
INSERT INTO `hi-place`.`subway` (`color`, `name`) VALUES ('green', 'Звіринецька');
INSERT INTO `hi-place`.`subway` (`color`, `name`) VALUES ('green', 'Видубичі');
INSERT INTO `hi-place`.`subway` (`color`, `name`) VALUES ('green', 'Славутич');
INSERT INTO `hi-place`.`subway` (`color`, `name`) VALUES ('green', 'Осокорки');
INSERT INTO `hi-place`.`subway` (`color`, `name`) VALUES ('green', 'Позняки');
INSERT INTO `hi-place`.`subway` (`color`, `name`) VALUES ('green', 'Харківська');
INSERT INTO `hi-place`.`subway` (`color`, `name`) VALUES ('green', 'Вирлиця');
INSERT INTO `hi-place`.`subway` (`color`, `name`) VALUES ('green', 'Бориспільська');
INSERT INTO `hi-place`.`subway` (`color`, `name`) VALUES ('green', 'Червоний хутір');
UPDATE `hi-place`.`subway` SET `city` = 'Kyiv' WHERE (`id` = '1');
UPDATE `hi-place`.`subway` SET `city` = 'Kyiv' WHERE (`id` = '2');
UPDATE `hi-place`.`subway` SET `city` = 'Kyiv' WHERE (`id` = '3');
UPDATE `hi-place`.`subway` SET `city` = 'Kyiv' WHERE (`id` = '4');
UPDATE `hi-place`.`subway` SET `city` = 'Kyiv' WHERE (`id` = '5');
UPDATE `hi-place`.`subway` SET `city` = 'Kyiv' WHERE (`id` = '6');
UPDATE `hi-place`.`subway` SET `city` = 'Kyiv' WHERE (`id` = '7');
UPDATE `hi-place`.`subway` SET `city` = 'Kyiv' WHERE (`id` = '8');
UPDATE `hi-place`.`subway` SET `city` = 'Kyiv' WHERE (`id` = '9');
UPDATE `hi-place`.`subway` SET `city` = 'Kyiv' WHERE (`id` = '10');
UPDATE `hi-place`.`subway` SET `city` = 'Kyiv' WHERE (`id` = '11');
UPDATE `hi-place`.`subway` SET `city` = 'Kyiv' WHERE (`id` = '12');
UPDATE `hi-place`.`subway` SET `city` = 'Kyiv' WHERE (`id` = '13');
UPDATE `hi-place`.`subway` SET `city` = 'Kyiv' WHERE (`id` = '14');
UPDATE `hi-place`.`subway` SET `city` = 'Kyiv' WHERE (`id` = '15');
UPDATE `hi-place`.`subway` SET `city` = 'Kyiv' WHERE (`id` = '16');
UPDATE `hi-place`.`subway` SET `city` = 'Kyiv' WHERE (`id` = '17');
UPDATE `hi-place`.`subway` SET `city` = 'Kyiv' WHERE (`id` = '18');
UPDATE `hi-place`.`subway` SET `city` = 'Kyiv' WHERE (`id` = '19');
UPDATE `hi-place`.`subway` SET `city` = 'Kyiv' WHERE (`id` = '20');
UPDATE `hi-place`.`subway` SET `city` = 'Kyiv' WHERE (`id` = '21');
UPDATE `hi-place`.`subway` SET `city` = 'Kyiv' WHERE (`id` = '22');
UPDATE `hi-place`.`subway` SET `city` = 'Kyiv' WHERE (`id` = '23');
UPDATE `hi-place`.`subway` SET `city` = 'Kyiv' WHERE (`id` = '24');
UPDATE `hi-place`.`subway` SET `city` = 'Kyiv' WHERE (`id` = '25');
UPDATE `hi-place`.`subway` SET `city` = 'Kyiv' WHERE (`id` = '26');
UPDATE `hi-place`.`subway` SET `city` = 'Kyiv' WHERE (`id` = '27');
UPDATE `hi-place`.`subway` SET `city` = 'Kyiv' WHERE (`id` = '28');
UPDATE `hi-place`.`subway` SET `city` = 'Kyiv' WHERE (`id` = '29');
UPDATE `hi-place`.`subway` SET `city` = 'Kyiv' WHERE (`id` = '30');
UPDATE `hi-place`.`subway` SET `city` = 'Kyiv' WHERE (`id` = '31');
UPDATE `hi-place`.`subway` SET `city` = 'Kyiv' WHERE (`id` = '32');
UPDATE `hi-place`.`subway` SET `city` = 'Kyiv' WHERE (`id` = '33');
UPDATE `hi-place`.`subway` SET `city` = 'Kyiv' WHERE (`id` = '34');
UPDATE `hi-place`.`subway` SET `city` = 'Kyiv' WHERE (`id` = '35');
UPDATE `hi-place`.`subway` SET `city` = 'Kyiv' WHERE (`id` = '36');
UPDATE `hi-place`.`subway` SET `city` = 'Kyiv' WHERE (`id` = '37');
UPDATE `hi-place`.`subway` SET `city` = 'Kyiv' WHERE (`id` = '38');
UPDATE `hi-place`.`subway` SET `city` = 'Kyiv' WHERE (`id` = '39');
UPDATE `hi-place`.`subway` SET `city` = 'Kyiv' WHERE (`id` = '40');
UPDATE `hi-place`.`subway` SET `city` = 'Kyiv' WHERE (`id` = '41');
UPDATE `hi-place`.`subway` SET `city` = 'Kyiv' WHERE (`id` = '42');
UPDATE `hi-place`.`subway` SET `city` = 'Kyiv' WHERE (`id` = '43');
UPDATE `hi-place`.`subway` SET `city` = 'Kyiv' WHERE (`id` = '44');
UPDATE `hi-place`.`subway` SET `city` = 'Kyiv' WHERE (`id` = '45');
UPDATE `hi-place`.`subway` SET `city` = 'Kyiv' WHERE (`id` = '46');
UPDATE `hi-place`.`subway` SET `city` = 'Kyiv' WHERE (`id` = '47');
UPDATE `hi-place`.`subway` SET `city` = 'Kyiv' WHERE (`id` = '48');
UPDATE `hi-place`.`subway` SET `city` = 'Kyiv' WHERE (`id` = '49');
UPDATE `hi-place`.`subway` SET `city` = 'Kyiv' WHERE (`id` = '50');
UPDATE `hi-place`.`subway` SET `city` = 'Kyiv' WHERE (`id` = '51');

DELIMITER $$

CREATE TRIGGER update_avg_after_rating_insert
AFTER INSERT ON Rating
FOR EACH ROW
BEGIN
    DECLARE avg_rating DECIMAL(10, 2);
    DECLARE user_id BIGINT;

    -- Получаем id пользователя, которому добавлен отзыв
    SET user_id = NEW.user_id;

    -- Вычисляем новое среднее значение
    SELECT AVG(point) INTO avg_rating FROM Rating WHERE user_id = user_id;

    -- Обновляем поле avg в таблице User
    UPDATE User SET avg = avg_rating WHERE id = user_id;
END$$

DELIMITER ;

INSERT INTO User (name, email, logourl, experience, phone, tiktok_link, instagram_link, telegram_link, viber_link, home_visit, online_counseling, at_salon, discount_with_promo, type, avg) VALUES
('User1', 'user1@example.com', 'http://localhost:8080/images/user-logo/user1.jpg', 5.0, '+38 (095) 332 42 55', '', 'http://instagram.com/user1', 'http://telegram.com/user1', 'http://viber.com/user1', TRUE, FALSE, TRUE, 10, 'SALON', 5),
('User2', 'user2@example.com', 'http://localhost:8080/images/user-logo/user1.jpg', 4.5, '+38 (095) 332 42 55', 'http://tiktok.com/user2', '', 'http://telegram.com/user2', 'http://viber.com/user2', FALSE, TRUE, FALSE, 15, 'MASTER', 4.7),
('User3', 'user3@example.com', 'http://localhost:8080/images/user-logo/user1.jpg', 3.2, '+38 (095) 332 42 55', 'http://tiktok.com/user3', 'http://instagram.com/user3', '', 'http://viber.com/user3', TRUE, TRUE, TRUE, 5, 'SALON', 4.0),
('User4', 'user4@example.com', 'http://localhost:8080/images/user-logo/user1.jpg', 6.1, '+38 (095) 332 42 55', 'http://tiktok.com/user4', 'http://instagram.com/user4', 'http://telegram.com/user4', '', FALSE, FALSE, TRUE, 0, 'MASTER', 4.8),
('User5', 'user5@example.com', 'http://localhost:8080/images/user-logo/user1.jpg', 7.0, '+38 (095) 332 42 55', 'http://tiktok.com/user5', 'http://instagram.com/user5', 'http://telegram.com/user5', 'http://viber.com/user5', TRUE, TRUE, FALSE, 20, 'SALON', 4.9),
('User6', 'user6@example.com', 'http://localhost:8080/images/user-logo/user1.jpg', 2.3, '+38 (095) 332 42 55', 'http://tiktok.com/user6', 'http://instagram.com/user6', 'http://telegram.com/user6', 'http://viber.com/user6', FALSE, FALSE, FALSE, 10, 'MASTER', 3.8),
('User7', 'user7@example.com', 'http://localhost:8080/images/user-logo/user1.jpg', 8.2, '+38 (095) 332 42 55', 'http://tiktok.com/user7', 'http://instagram.com/user7', 'http://telegram.com/user7', 'http://viber.com/user7', TRUE, TRUE, TRUE, 25, 'SALON', 4.6),
('User8', 'user8@example.com', 'http://localhost:8080/images/user-logo/user1.jpg', 4.0, '+38 (095) 332 42 55', 'http://tiktok.com/user8', 'http://instagram.com/user8', 'http://telegram.com/user8', 'http://viber.com/user8', FALSE, TRUE, FALSE, 30, 'MASTER', 4.3),
('User9', 'user9@example.com', 'http://localhost:8080/images/user-logo/user1.jpg', 1.5, '+38 (095) 332 42 55', 'http://tiktok.com/user9', 'http://instagram.com/user9', 'http://telegram.com/user9', 'http://viber.com/user9', TRUE, FALSE, TRUE, 10, 'SALON', 3.5),
('User10', 'user10@example.com', 'http://localhost:8080/images/user-logo/user1.jpg', 5.5, '+38 (095) 332 42 55', 'http://tiktok.com/user10', 'http://instagram.com/user10', 'http://telegram.com/user10', 'http://viber.com/user10', FALSE, TRUE, FALSE, 0, 'MASTER', 4.1);


INSERT INTO `hi-place`.`price` (`service_item_id`, `user_id`, `price`, `time_unit`) VALUES 
(1, 1, 500.0, '60 мин'),
(2, 1, 550.0, '60 мин'),
(3, 1, 600.0, '60 мин'),
(4, 2, 650.0, '60 мин'),
(5, 2, 700.0, '60 мин'),
(6, 2, 750.0, '60 мин'),
(7, 3, 800.0, '60 мин'),
(8, 3, 850.0, '60 мин'),
(9, 3, 900.0, '60 мин'),
(10, 4, 950.0, '60 мин'),
(11, 4, 1000.0, '60 мин'),
(12, 4, 1050.0, '60 мин'),
(13, 5, 1100.0, '60 мин'),
(14, 5, 1150.0, '60 мин'),
(15, 5, 1200.0, '60 мин'),
(16, 6, 1250.0, '60 мин'),
(17, 6, 1300.0, '60 мин'),
(18, 6, 1350.0, '60 мин'),
(19, 7, 1400.0, '60 мин'),
(20, 7, 1450.0, '60 мин'),
(21, 7, 1500.0, '60 мин'),
(22, 8, 1550.0, '60 мин'),
(23, 8, 1600.0, '60 мин'),
(24, 8, 1650.0, '60 мин'),
(25, 9, 1700.0, '60 мин'),
(26, 9, 1750.0, '60 мин'),
(27, 9, 1800.0, '60 мин'),
(28, 10, 1850.0, '60 мин'),
(29, 10, 1900.0, '60 мин'),
(30, 10, 1950.0, '60 мин');

INSERT INTO `hi-place`.`user_service_images` (`type_of_service_id`, `user_id`, `path`) VALUES ('1', '1', 'http://localhost:8080/images/examples/user1/user1-3.jpg');
INSERT INTO `hi-place`.`user_service_images` (`type_of_service_id`, `user_id`, `path`) VALUES ('1', '1', 'http://localhost:8080/images/examples/user1/user1-2.jpg');
INSERT INTO `hi-place`.`user_service_images` (`type_of_service_id`, `user_id`, `path`) VALUES ('1', '1', 'http://localhost:8080/images/examples/user1/user1-1.jpg');
INSERT INTO `hi-place`.`user_service_images` (`type_of_service_id`, `user_id`, `path`) VALUES ('1', '1', 'http://localhost:8080/images/examples/user1/user1-4.jpg');
INSERT INTO `hi-place`.`user_service_images` (`type_of_service_id`, `user_id`, `path`) VALUES ('10', '1', 'http://localhost:8080/images/examples/user1/user1-5.jpg');
INSERT INTO `hi-place`.`user_service_images` (`type_of_service_id`, `user_id`, `path`) VALUES ('10', '1', 'http://localhost:8080/images/examples/user1/user1-6.jpg');
INSERT INTO `hi-place`.`user_service_images` (`type_of_service_id`, `user_id`, `path`) VALUES ('1', '2', 'http://localhost:8080/images/examples/user1/user1-3.jpg');
INSERT INTO `hi-place`.`user_service_images` (`type_of_service_id`, `user_id`, `path`) VALUES ('1', '2', 'http://localhost:8080/images/examples/user1/user1-2.jpg');
INSERT INTO `hi-place`.`user_service_images` (`type_of_service_id`, `user_id`, `path`) VALUES ('1', '3', 'http://localhost:8080/images/examples/user1/user1-1.jpg');
INSERT INTO `hi-place`.`user_service_images` (`type_of_service_id`, `user_id`, `path`) VALUES ('1', '3', 'http://localhost:8080/images/examples/user1/user1-4.jpg');
INSERT INTO `hi-place`.`user_service_images` (`type_of_service_id`, `user_id`, `path`) VALUES ('1', '3', 'http://localhost:8080/images/examples/user1/user1-5.jpg');
INSERT INTO `hi-place`.`user_service_images` (`type_of_service_id`, `user_id`, `path`) VALUES ('1', '3', 'http://localhost:8080/images/examples/user1/user1-6.jpg');

INSERT INTO `hi-place`.`address` (`lat`, `lon`, `user_id`, `borough`, `city`, `country`, `house_number`, `road`, `suburb`) VALUES ('50.40291', '30.51543', '1', 'мммм', 'Kyiv', 'Ukraine', '46/1', 'Голосеевский проспект', 'Димеевка');
INSERT INTO `hi-place`.`address` (`lat`, `lon`, `user_id`, `borough`, `city`, `country`, `house_number`, `road`, `suburb`) VALUES ('50.4140', '30.5270', '1', 'мммм', 'Kyiv', 'Ukraine', '46/1', 'Голосеевский проспект', 'Димеевка');
