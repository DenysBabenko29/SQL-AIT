Задание 1:

Приведите десять типовых бизнес-процессов для предметной области ВИДЕО-ХОСТИНГ (Youtube), а также их соответствие по CRUD.

    1. Регистрация пользователя  ->  Create
    2. Авторизация пользователя  ->  Read
    3. Добавление контента  -> Create
    4. Изменение контента  -> Update
    5. Просмотр контента  -> Read
    6. Добавление комментария -> Create 
    7. Удаление комментария  -> Delete
    8. Редактирование данных в профиле  -> Update
    9. Лайк  -> Update
    10. Просмотр профиля пользователя ->  Read

Задание 2:
В рамках БД "песочница" напишите след/запросы:

    Вывести название и стоимость товаров от 20 EUR.

            SELECT ProductName, Price FROM [Products] WHERE Price > 20

    Вывести страны поставщиков.

            SELECT Country FROM [Suppliers]

    В упорядоченном по стоимости виде вывести название и стоимость товаров от всех поставщиков, кроме поставщика 1.

            SELECT ProductName, Price FROM [Products] WHERE SupplierID != 1 ORDER BY Price ASC

    Вывести контактные имена клиентов, кроме тех, что из France и USA.

            SELECT CustomerName  FROM [Customers] WHERE Country NOT IN ('France', 'USA')