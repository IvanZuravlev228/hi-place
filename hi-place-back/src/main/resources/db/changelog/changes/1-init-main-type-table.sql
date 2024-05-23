--liquibase formatted sql
--changeset IvanZhuravlev:1-init-main-type-table
INSERT INTO main_type_of_service (name)
VALUES
    ('Догляд за обличчям'),
    ('Візаж та макіяж'),
    ('Перукарські послуги'),
    ('Нігтьовий сервіс'),
    ('Уколи краси'),
    ('Догляд за тілом'),
    ('Видалення волосся'),
    ('Тату і пірсинг'),
    ('Татуаж'),
    ('Брови / вії'),
    ('Фотосесії'),
    ('Фитнес');
