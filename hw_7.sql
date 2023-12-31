-- Вывести названия двух произвольных треков с тегом new

        db.tracks.aggregate([
            {
                $match: { tags: 'new' }
            },
            {
                $project: { title: 1, _id: 0 }
            },
            {
                $sample: { size: 2 }
            }
        ])

-- Вывести имя юзера с самым минимальным балансом

        db.users.aggregate([
             {
                $sort: { balance: 1 }
            },
            {
                $limit: 1
            },
            {
                $project: { fullname: 1, _id: 0 }
            }
        ])

-- Вывести имена юзеров, у которых есть треки

        db.users.aggregate([
            {
                $lookup: {
                    from: 'tracks',
                    localField: '_id',
                    foreignField: 'author_id',
                    as: 'tracks'
                }
            },
            {
                $match: { tracks: { $ne: [] } }
            },
            {
                $project: { fullname: 1, _id: 0 }
            }
        ])

-- Используя метод aggregate(), вывести ко-во юзеров с балансом до 1000 EUR

        db.users.aggregate([
            {
                $match: {balance: {$lte: 1000}}
            },
            {
                $count: 'count'
            }
        ])

-- Также очень коротко опишите, как работает агрегация в MongoDB

    это как конвеер, на него подается коллекция с данными. 
    Каждый этап имеет данные на входе и на выходе.
    На каждом этапе указаном в агрегации что-то делается с этой коллекцией(например фильтрация, сортировка, группировка и тд).
    Последуюющий этап получает обработанные данные с предыдущего этапа
    В конце мы получаем обработанные данные.