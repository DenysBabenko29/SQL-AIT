--  Вывести имена юзеров не из France
            db.users.find(
                { country: { $ ne :'France' } },
                { fullname: 1,
                _id: 0 }
            ) 
        
--  Добавить несколько реакций на треки

            db.reactions.insertMany([
                {_id: 1, trackID: 1, reaction: 2},
                {_id: 2, trackID: 2, reaction: 5},
                {_id: 3, trackID: 4, reaction: 3}
            ]
            )

--  Вывести названия треков продолжительностью от 1 до 10 мин

            db.tracks.find(
                {duration_secs: {$gte: 1*60, $lte: 10*60 }},
                {title: 1, _id: 0}
            )

--  Вывести треки юзера 4

            db.tracks.find(
                {author_id: 4},
                {}
            )


--  С помощью инструмента онлайн-проектирования описать БД music (юзеры, треки, реакции, плейлисты)

        https://dbdiagram.io/d/652eec1dffbf5169f0e3faf1