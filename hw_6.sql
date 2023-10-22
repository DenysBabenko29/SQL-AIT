-- Вывести названия треков без тега test

    db.tracks.find(
    { tags: { $ne: 'test' } },
    { title: 1, _id: 0 }
)

-- Вывести ко-во треков с продолжительностью до одного часа с тегом new

    db.tracks.countDocuments(
        {
            tags: 'new',
            duration_secs: { $lte: 60 * 60 }
        }
    )

-- Увеличить баланс заблокированных юзеров не из Germany на 5%

    db.users.updateMany(
        {
            country: {$ne: 'Germany'},
            is_blocked: true
        },
        {
            $mul: {balance: 1.05}
        }
    )

-- Добавить всем трекам теги fresh и popular

    db.tracks.updateMany(
        {},
        {
            $addToSet: {tags: { $each: ['popular', 'fresh']}}
        }
    )

С помощью инструмента онлайн-проектирования описать схему БД чат онлайн-поддержки

https://dbdiagram.io/d/652eec1dffbf5169f0e3faf1