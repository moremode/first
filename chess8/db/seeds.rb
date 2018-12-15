# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user = User.new

user.username = 'user1'

user.name = 'Вильгельм'

user.last_name = 'Стейниц'

user.born_year = 1836

user.death_year = 1900

user.champs_years = '1886-1894'

user.picture_num = '1'

user.wiki_page = 'https://ru.wikipedia.org/wiki/Стейниц,_Вильгельм'

user.is_champion = true

user.save

user = User.new

user.username = 'user2'

user.name = 'Эмануил'

user.last_name = 'Ласкер'

user.born_year = 1868

user.death_year = 1941

user.champs_years = '1894-1921'

user.picture_num = '2'

user.wiki_page = 'https://ru.wikipedia.org/wiki/Ласкер,_Эмануэль'

user.is_champion = true

user.save

user = User.new

user.username = 'user3'

user.name = 'Хосе-Рауль'

user.last_name = 'Капабланка'

user.born_year = 1888

user.death_year = 1942

user.champs_years = '1921-1927'

user.picture_num = '3'

user.wiki_page = 'https://ru.wikipedia.org/wiki/Капабланка,_Хосе_Рауль'

user.is_champion = true

user.save

user = User.new

user.username = 'user4'

user.name = 'Александр'

user.last_name = 'Алехин'

user.born_year = 1892

user.death_year = 1946

user.champs_years = '1927-1935, 1937-1946'

user.picture_num = '4'

user.wiki_page = 'https://ru.wikipedia.org/wiki/Алехин,_Александр_Александрович'

user.is_champion = true

user.save

user = User.new

user.username = 'user5'

user.name = 'Макс'

user.last_name = 'Эйве'

user.born_year = 1901

user.death_year = 1981

user.champs_years = '1935-1937'

user.picture_num = '5'

user.wiki_page = 'https://ru.wikipedia.org/wiki/Эйве,_Макс'

user.is_champion = true

user.save

user = User.new

user.username = 'user6'

user.name = 'Михаил'

user.last_name = 'Ботвинник'

user.born_year = 1911

user.death_year = 1995

user.champs_years = '1948-1957, 1958-1960, 1961-1963'

user.picture_num = '6'

user.wiki_page = 'https://ru.wikipedia.org/wiki/Ботвинник,_Михаил_Моисеевич'

user.is_champion = true

user.save

user = User.new

user.username = 'user7'

user.name = 'Василий'

user.last_name = 'Смыслов'

user.born_year = 1921

user.death_year = 2010

user.champs_years = '1957-1958'

user.picture_num = '7'

user.wiki_page = 'https://ru.wikipedia.org/wiki/Смыслов,_Василий_Васильевич'

user.is_champion = true

user.save

user = User.new

user.username = 'user8'

user.name = 'Михаил'

user.last_name = 'Таль'

user.born_year = 1936

user.death_year = 1992

user.champs_years = '1960-1961'

user.picture_num = '8'

user.wiki_page = 'https://ru.wikipedia.org/wiki/Таль,_Михаил_Нехемьевич'

user.is_champion = true

user.save

user = User.new

user.username = 'user9'

user.name = 'Тигран'

user.last_name = 'Петросян'

user.born_year = 1929

user.death_year = 1984

user.champs_years = '1963-1969'

user.picture_num = '9'

user.wiki_page = 'https://ru.wikipedia.org/wiki/Петросян,_Тигран_Вартанович'

user.is_champion = true

user.save

user = User.new

user.username = 'user10'

user.name = 'Борис'

user.last_name = 'Спасский'

user.born_year = 1937

user.champs_years = '1969-1972'

user.picture_num = '10'

user.wiki_page = 'https://ru.wikipedia.org/wiki/Спасский,_Борис_Васильевич'

user.is_champion = true

user.save

user = User.new

user.username = 'andreiw2001'

user.name = 'Андрей'

user.last_name = 'Чижов'

user.is_champion = false

user.save