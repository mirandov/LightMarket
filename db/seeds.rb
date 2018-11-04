# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

r1 = Role.create!(name: 'admin')
r12 = Role.create!(name: 'user')
Product.delete_all
Subcategory.delete_all
Category.delete_all
c1   = Category.create!(name: 'Дюралайт',description: 'прозрачный шнур с расположенными внутри лампами светодиодами.',
                        specifications: 'Эксплуатационные характеристики светодиодного дюралайта делают это изделие лидером в сфере декоративной светотехники:|
                                          Водонепроницаемость|
                                          Ударопрочность|
                                          Гибкость|
                                          Защищенность от ультрафиолета|
                                          Энергосбережение|
                                          Температурный диапазон от - 30 до +60 градусов|
                                          Надежность и долговечность |
                                          Высокая яркость и насыщенность цвета|
                                          Безопасная работа|
                                          Экологичность ',area: 'Наружная реклама|
Контурная подсветка архитектурных сооружений|
Световое оформление мостов|
Дизайн интерьеров|
Оформления зданий, витрин, помещений|
Подсветки ниш в стенах и потолках|
Украшение столбов|
Украшение деревьев|
Оформление новогодних ёлок.')
c2   = Category.create!(name: 'Светодиодная бахрома', description: ' это длинный шлейф (от 3 до 10 метров) с расположенными на нем нитями разной длины с разным количеством светодиодов.',
 specifications: 'Эксплуатационные характеристики светодиодной бахромы| Водонепроницаемость|
Ударопрочность|
Низкое энергопотребление|
Надежность и долговечность |
Высокая яркость и насыщенность цвета|
Безопасная работа|
Экологичность|
Независимость от погодных условий', area: 'Украшение фасадов зданий|
Украшение интерьера|
Рекламное освещение витрин магазинов|
Оформление торговых центров ')
c3   = Category.create!(name: 'Светодиодный занавес', description: 'это уникальная декоративная система гирлянд светодиодного освещения с большими возможностями и более высокого уровня. Внешне выглядит как вертикально горящие или бегущие мигающие огни',
specifications: 'Эксплуатационные характеристики светодиодного дюралайта делают это изделие лидером в сфере декоративной светотехники| Водонепроницаемость|
Легкость при монтаже и обслуживании|
Энергосбережение|
Универсальность|
Температурный диапазон от - 30 до +60 градусов|
Надежность и долговечность |
Высокая яркость и насыщенность цвета|
Безопасная работа|
Экологичность ', area: 'Украшение фасадов зданий, окон|
Украшение дверных проёмов |
Зонирование пространства |
Оформление ночных клубов, концертных площадок |
Украшение столбов|
Оформление кафе, ресторанов |
Украшение деревьев|
Оформление новогодних ёлок|
Украшение интерьеров|
Оформление рекламного освещения витрин ')
c4   = Category.create!(name: 'Светодиодные дреды', description: 'представляет собой 1 пучок свисающих гирлянд, напоминающие березовые ветки.',
specifications: 'Эксплуатационные характеристики| Водонепроницаемость|
Ударопрочность|
Низкое энергопотребление|
Надежность и долговечность|
Высокая яркость и насыщенность цвета|
Безопасная работа|
Экологичность|
Независимость от погодных условий|
 Легкость монтажа ', area: 'Украшение фасадов зданий|
Украшение интерьера|
Рекламное освещение витрин магазинов|
Оформление торговых центров|
Оформление столбов')

c5   = Category.create!(name: 'Светодиодные сетки', description: 'это светодиодная гирлянда, представляющая собой сеть, в узлах которой расположены миниатюрные светодиоды или световые шарики.',
  specifications: 'Эксплуатационные характеристики| Водонепроницаемость|
Гибкость и возможность тянуться |
Низкое энергопотребление|
Надежность и долговечность |
Высокая яркость и насыщенность цвета|
Безопасная работа|
Экологичность|
Независимость от погодных условий|
Легкость монтажа ', area: 'Оформление помещений|
Украшение интерьера кафе, ресторанов, отелей |
Украшение парадных входов|
Оформление торговых центров|
Оформление витрин магазинов, окон|
Украшение деревьев, кустарников |
Оформление уличных фасадов зданий  |
Декорирование столбов, колонн ')

c6   = Category.create!(name: 'Светодиодные фигуры')

c7   = Category.create!(name: 'Белт-лайт', description: 'это разновидность гирлянд, которая представляет собой водостойкий ПВХ кабель, на котором располагаются с фиксированным шагом 15см или 40см цоколи стандарта Е27 для установки светодиодных ламп.',
  specifications: 'Эксплуатационные характеристики| Водонепроницаемость|
Низкое энергопотребление|
Надежность и долговечность |
Высокая яркость и насыщенность цвета|
Мягкий ровный свет|
Безопасная работа|
Экологичность|
Независимость от погодных условий|
Легкость монтажа ', area: 'Оформление помещений|
Украшение интерьера кафе, баров, ресторанов, отелей |
Украшение парадных входов|
Оформление торговых центров |
Оформление витрин магазинов, окон|
Украшение деревьев, кустарников |
Оформление уличных фасадов зданий  |
Декорирование столбов, колонн |
Оформление рекламных вывесок |
Украшение мостов|
Оформление арок, беседок, объемные буквы')





sc1   = Subcategory.create!(name: 'Светодиодный дюралайт, 2-х проводной, молочный', specifications: 'Кратность резки 1 м |
Постоянное свечение 360° |
36 LED/м, 220 В  |
+5 полных комплектов подключения к бухте бесплатно', category: c1)
p1   = Product.create!(name:'Светодиодный дюралайт, молочный матовый, 13 мм, красный', size: 'бухта 100 м', led_count: '36/м', color_light: 'red', price: 17930, subcategory: sc1)
p2   = Product.create!(name:'Светодиодный дюралайт, молочный матовый, 13 мм, желтый', size: 'бухта 100 м', led_count: '36/м', color_light: 'yellow', price: 17930, subcategory: sc1)
p3   = Product.create!(name:'Светодиодный дюралайт, молочный матовый, 13 мм, синий', size: 'бухта 100 м', led_count: '36/м', color_light: 'blue', price: 19520, subcategory: sc1)
p4   = Product.create!(name:'Светодиодный дюралайт, молочный матовый, 13 мм, зеленый', size: 'бухта 100 м', led_count: '36/м', color_light: 'green', price: 19990, subcategory: sc1)
p5   = Product.create!(name:'Светодиодный дюралайт, молочный матовый, 13 мм, белый', size: 'бухта 100 м', led_count: '36/м', color_light: 'white', price: 19990, subcategory: sc1)
p6   = Product.create!(name:'Светодиодный дюралайт, молочный матовый, 13 мм, теплый белый', size: 'бухта 100 м', led_count: '36/м', color_light: 'white' , price: 21240, subcategory: sc1)
p7   = Product.create!(name:'Светодиодный дюралайт, молочный матовый, 13 мм, розовый', size: 'бухта 100 м', led_count: '36/м', color_light: 'pink', price: 21240, subcategory: sc1)


sc2   = Subcategory.create!(name: 'Светодиодный дюралайт 13 мм, круглый, 2-х проводной', specifications: 'Кратность резки 1м|
Свечение 360 градусов|
Напряжение- 220В|
+5 полных комплектов подключения к бухте бесплатно', category: c1)
p1   = Product.create!(name:'Светодиодный дюралайт 13 мм, круглый, постоянное свечение, красный', size: 'бухта 100 м', led_count: '36/м', color_light: 'red', price: 17930, subcategory: sc2)
p2   = Product.create!(name:'Светодиодный дюралайт 13 мм, круглый, постоянное свечение, желтый', size: 'бухта 100 м', led_count: '36/м', color_light: 'yellow', price: 17930, subcategory: sc2)
p3   = Product.create!(name:'Светодиодный дюралайт 13 мм, круглый, постоянное свечение, синий', size: 'бухта 100 м', led_count: '36/м', color_light: 'blue', price: 19520, subcategory: sc2)
p4   = Product.create!(name:'Светодиодный дюралайт 13 мм, круглый, постоянное свечение, зеленый', size: 'бухта 100 м', led_count: '36/м', color_light: 'green', price: 19990, subcategory: sc2)
p5   = Product.create!(name:'Светодиодный дюралайт 13 мм, круглый, постоянное свечение, белый', size: 'бухта 100 м', led_count: '36/м', color_light: 'white', price: 19990, subcategory: sc2)
p6   = Product.create!(name:'Светодиодный дюралайт 13 мм, круглый, постоянное свечение, теплый белый', size: 'бухта 100 м', led_count: '36/м', color_light: 'white' , price: 21240, subcategory: sc2)
p7   = Product.create!(name:'Светодиодный дюралайт 13 мм, круглый, постоянное свечение, розовый', size: 'бухта 100 м', led_count: '36/м', color_light: 'pink', price: 21240, subcategory: sc2)
p8   = Product.create!(name:'Светодиодный дюралайт 13 мм, мерцающий, круглый, теплый белый', size: 'бухта 100 м', led_count: '36/м', color_light: 'white' , price: 21250, subcategory: sc2)
p9   = Product.create!(name:'Светодиодный дюралайт 13 мм, мерцающий, круглый, белый', size: 'бухта 100 м', led_count: '36/м', color_light: 'white', price: 21250, subcategory: sc2)
sh1  = Shipment.create!(name:'Комплект для подключения 2-х проводного дюралайта, до 100 метров', size: 'Для 100 м', led_count: '-', color_light: 'black', price: 430, subcategory: sc2)
sh1  = Shipment.create!(name:'Комплект подключения для дюралайта 2-х проводного дюралайта, без вилки, на 50 м 1 А', size: 'Для 50 м', led_count: '-', color_light: 'black', price: 240, subcategory: sc2)

sc3   = Subcategory.create!(name: 'Светодиодный дюралайт 13 мм, круглый, 3-х проводной',
   specifications:'Кратность резки 2м|
Постоянное свечение или динамика свечения (работа от контроллера) |
Свечение 360 градусов|
Напряжение- 220В|
+5 полных комплектов подключения к бухте бесплатно', category: c1)
p1   = Product.create!(name:'Светодиодный дюралайт 13 мм, круглый, динамика свечения, мульти ', size: 'бухта 100 м', led_count: '36/м', color_light: ' ', price: 24050, subcategory: sc3)
p2   = Product.create!(name:'Светодиодный дюралайт 13 мм, круглый, динамика свечения, красный ', size: 'бухта 100 м', led_count: '36/м', color_light: 'red', price: 21040, subcategory: sc3)
p3   = Product.create!(name:'Светодиодный дюралайт 13 мм, круглый, динамика свечения, желтый', size: 'бухта 100 м', led_count: '36/м', color_light: 'yellow', price: 21040, subcategory: sc3)
p4   = Product.create!(name:'Светодиодный дюралайт 13 мм, круглый, динамика свечения, синий ', size: 'бухта 100 м', led_count: '36/м', color_light: 'blue', price: 25250, subcategory: sc3)
p5   = Product.create!(name:'Светодиодный дюралайт 13 мм, круглый, динамика свечения, зеленый', size: 'бухта 100 м', led_count: '36/м', color_light: 'green', price: 25250, subcategory: sc3)
p6   = Product.create!(name:'Светодиодный дюралайт 13 мм, круглый, динамика свечения, белый', size: 'бухта 100 м', led_count: '36/м', color_light: 'white' , price: 25250, subcategory: sc3)
p7   = Product.create!(name:'Светодиодный дюралайт 13 мм, круглый, динамика свечения, теплый белый', size: 'бухта 100 м', led_count: '36/м', color_light: 'white', price: 25250, subcategory: sc3)
sh1  = Shipment.create!(name:'Комплект подключения с контроллером (8 режимов, память), для 3-х проводного дюралайта, до 100 метров', size: 'Для 100 м', led_count: '-', color_light: '-', price: 800, subcategory: sc3)

sc4   = Subcategory.create!(name: 'Светодиодная бахрома RGB Хамелеон',
  specifications: 'Ширина 5м, высота 0,7м|
Соединяется до 6шт. при помощи отдельного блока питания|
Напряжение- 220В|
Потребляемая мощность- 23Вт|
В комплекте: шнур подключения до 2-х шт.|
Влагозащищенность- IP54, применение: помещения и улицы',category: c2)
p1   = Product.create!(name:'Светодиодная бахрома RGB Хамелеон, прозрачный провод ', size: '5*0.7 м', led_count: '198', color_light: ' ', price: 6350, subcategory: sc4)
p2   = Shipment.create!(name:'Блок питания для занавесов и бахромы ARGB Хамелеон. Для соединения до 6 шт. ', size: '1.5', led_count: 'до 1200', color_light: 'white', price: 1000, subcategory: sc4)

sc5   = Subcategory.create!(name: 'Светодиодная бахрома, 3*0.5 м',
  specifications: ' Нити различной длины: 20-50 см|
Расстояние между LED - 10 см|
Напряжение- 220В|
Потребляемая мощность- 6Вт|
Количество соединений: до 10 одинаковых гирлянд|
Влагозащищенность- IP54, применение: помещения и улицы|
Прозрачный силиконовый провод или черный провод|
Температурный режим: -40...+60°C|
Для работы требуется шнур подключения, до 10 шт. на одно подключение', category: c2)
p1   = Product.create!(name:'Светодиодная бахрома, прозрачный провод, мульти ', size: '3*0.5 м', led_count: '112', color_light: ' ', price: 1300, subcategory: sc5)
p1   = Product.create!(name:'Светодиодная бахрома, прозрачный провод, красный ', size: '3*0.5 м', led_count: '112', color_light: 'red', price: 1140, subcategory: sc5)
p1   = Product.create!(name:'Светодиодная бахрома, прозрачный провод, желтый ', size: '3*0.5 м', led_count: '112', color_light: 'yellow', price: 1140, subcategory: sc5)
p1   = Product.create!(name:'Светодиодная бахрома, прозрачный провод, супер яркий синий ', size: '3*0.5 м', led_count: '112', color_light: 'blue', price: 1300, subcategory: sc5)
p1   = Product.create!(name:'Светодиодная бахрома, прозрачный провод, супер яркий зеленый ', size: '3*0.5 м', led_count: '112', color_light: 'green', price: 1140, subcategory: sc5)
p1   = Product.create!(name:'Светодиодная бахрома, прозрачный провод, супер яркий белый ', size: '3*0.5 м', led_count: '112', color_light: 'white ', price: 1140, subcategory: sc5)
p1   = Product.create!(name:'Светодиодная бахрома, прозрачный провод, теплый белый ', size: '3*0.5 м', led_count: '112', color_light: 'white ', price: 1450, subcategory: sc5)
p1   = Product.create!(name:'Светодиодная бахрома, прозрачный провод, розовый ', size: '3*0.5 м', led_count: '112', color_light: 'pink', price: 1450, subcategory: sc5)
p1   = Product.create!(name:'Светодиодная бахрома, прозрачный провод, фиолетовый ', size: '3*0.5 м', led_count: '112', color_light: 'violet', price: 1450, subcategory: sc5)
p1   = Product.create!(name:'Светодиодная бахрома, прозрачный провод, сине-белый ', size: '3*0.5 м', led_count: '112', color_light: 'blue', price: 1450, subcategory: sc5)
p1   = Product.create!(name:'Светодиодная бахрома, черный провод, мульти ', size: '3*0.5 м', led_count: '112', color_light: ' ', price: 1300, subcategory: sc5)
p1   = Product.create!(name:'Светодиодная бахрома, черный провод, красный ', size: '3*0.5 м', led_count: '112', color_light: ' red', price: 1140, subcategory: sc5)
p1   = Product.create!(name:'Светодиодная бахрома, черный провод, желтый ', size: '3*0.5 м', led_count: '112', color_light: ' yellow', price: 1140, subcategory: sc5)
p1   = Product.create!(name:'Светодиодная бахрома, черный провод, синий ', size: '3*0.5 м', led_count: '112', color_light: ' blue', price: 1300, subcategory: sc5)
p1   = Product.create!(name:'Светодиодная бахрома, черный провод, зеленый ', size: '3*0.5 м', led_count: '112', color_light: ' green', price: 1440, subcategory: sc5)
p1   = Product.create!(name:'Светодиодная бахрома, черный провод, яркий белый ', size: '3*0.5 м', led_count: '112', color_light: 'white ', price: 1440, subcategory: sc5)
p1   = Product.create!(name:'Светодиодная бахрома, черный провод, белый ', size: '3*0.5 м', led_count: '112', color_light: ' white', price: 1450, subcategory: sc5)
p2   = Shipment.create!(name:'Блок питания для изделий с постоянным свечением. 2А. Для соединения до 10 шт., черный ', size: '1.5', led_count: '-', color_light: 'black', price: 350, subcategory: sc5)
p2   = Shipment.create!(name:'Блок питания для изделий с постоянным свечением. 2А. Для соединения до 10 шт., белый ', size: '1.5', led_count: '-', color_light: 'white', price: 350, subcategory: sc5)

sc6   = Subcategory.create!(name: 'Светодиодная бахрома, 3*0.5 м, мерцающая',
specifications: 'Нити различной длины: 20-50 см|
Расстояние между LED - 10 см|
Напряжение- 220В|
Мощность- 6Вт|
Количество соединений: до 10 одинаковых гирлянд|
Влагозащищенность- IP54, применение: помещения и улицы|
Прозрачный силиконовый провод или черный провод|
Температурный режим: -40...+60°C|
Для работы требуется шнур подключения, до 10 шт. на одно подключение',category: c2)
p1   = Product.create!(name:'Светодиодная бахрома, мерцающая, прозрачный провод, мульти ', size: '3*0.5 м', led_count: '112', color_light: ' ', price: 1440, subcategory: sc6)
p1   = Product.create!(name:'Светодиодная бахрома, мерцающая, прозрачный провод, красный ', size: '3*0.5 м', led_count: '112', color_light: 'red', price: 1290, subcategory: sc6)
p1   = Product.create!(name:'Светодиодная бахрома, мерцающая, прозрачный провод, желтый ', size: '3*0.5 м', led_count: '112', color_light: 'yellow', price: 1290, subcategory: sc6)
p1   = Product.create!(name:'Светодиодная бахрома, мерцающая, прозрачный провод, синий ', size: '3*0.5 м', led_count: '112', color_light: 'blue', price: 1450, subcategory: sc6)
p1   = Product.create!(name:'Светодиодная бахрома, мерцающая, прозрачный провод, зеленый ', size: '3*0.5 м', led_count: '112', color_light: 'green', price: 1570, subcategory: sc6)
p1   = Product.create!(name:'Светодиодная бахрома, мерцающая, прозрачный провод, белый ', size: '3*0.5 м', led_count: '112', color_light: 'white ', price: 1570, subcategory: sc6)
p1   = Product.create!(name:'Светодиодная бахрома, мерцающая, прозрачный провод, теплый белый ', size: '3*0.5 м', led_count: '112', color_light: 'white ', price: 1570, subcategory: sc6)
p1   = Product.create!(name:'Светодиодная бахрома, мерцающая, прозрачный провод, розовый ', size: '3*0.5 м', led_count: '112', color_light: 'pink', price: 1600, subcategory: sc6)
p1   = Product.create!(name:'Светодиодная бахрома, мерцающая, прозрачный провод, фиолетовый ', size: '3*0.5 м', led_count: '112', color_light: 'violet', price: 1600, subcategory: sc6)
p1   = Product.create!(name:'Светодиодная бахрома, мерцающая, прозрачный провод, сине-белый ', size: '3*0.5 м', led_count: '112', color_light: 'blue', price: 1600, subcategory: sc6)
p2   = Shipment.create!(name:'Блок питания для мерцающих изделий. 2А. Для соединения до 10 шт., белый ', size: '1.5', led_count: '-', color_light: 'white', price: 350, subcategory: sc6)
sc7   = Subcategory.create!(name: 'Светодиодная бахрома 3*0.5 м постоянного свечения, IP65, герметичный колпачок',
specifications: 'Нити различной длины: 20-50 см|
Расстояние между LED - 10 см|
Напряжение- 220В|
Потребляемая мощность- 8Вт|
Количество соединений: до 10 одинаковых гирлянд|
Влагозащищенность- IP65 с герметичным колпачком, применение: помещения и улицы|
Белый провод|
Температурный режим: -40...+60°C|
Для работы требуется шнур подключения, до 10 шт. на одно подключение', category: c2)
p1   = Product.create!(name:'Светодиодная бахрома, постоянного свечения, IP65, герметичный колпачок, прозрачный провод, желтый ', size: '3*0.5 м', led_count: '112', color_light: 'yellow', price: 1490, subcategory: sc7)
p1   = Product.create!(name:'Светодиодная бахрома, постоянного свечения, IP65, герметичный колпачок, прозрачный провод, белый ', size: '3*0.5 м', led_count: '112', color_light: 'white', price: 1770, subcategory: sc7)
p1   = Product.create!(name:'Светодиодная бахрома, постоянного свечения, IP65, герметичный колпачок, прозрачный провод, теплый белый ', size: '3*0.5 м', led_count: '112', color_light: 'white', price: 1770, subcategory: sc7)
p2   = Shipment.create!(name:'Блок питания для изделий с постоянным свечением. 2А. Для соединения до 10 шт., белый ', size: '1.5', led_count: '-', color_light: 'white', price: 350, subcategory: sc7)

sc8   = Subcategory.create!(name: 'Светодиодная бахрома 3х0.5 м мерцающая, IP65, герметичный колпачок',
specifications: 'Нити различной длины: 20-50 см|
Расстояние между LED - 10 см|
Напряжение- 220В|
Потребляемая мощность- 8Вт|
Количество соединений: до 10 одинаковых гирлянд|
Влагозащищенность- IP65 с герметичным колпачком, применение: помещения и улицы|
Белый провод|
Температурный режим: -40...+60°C|
Для работы требуется шнур подключения, до 10 шт. на одно подключение', category: c2)
p1   = Product.create!(name:'Светодиодная бахрома, мерцающая, IP65, герметичный колпачок, белый провод, мульти ', size: '3*0.5 м', led_count: '112', color_light: ' ', price: 1790, subcategory: sc8)
p1   = Product.create!(name:'Светодиодная бахрома, мерцающая, IP65, герметичный колпачок, белый провод, красный ', size: '3*0.5 м', led_count: '112', color_light: 'red', price: 1640, subcategory: sc8)
p1   = Product.create!(name:'Светодиодная бахрома, мерцающая, IP65, герметичный колпачок, белый провод, желтый ', size: '3*0.5 м', led_count: '112', color_light: 'yellow', price: 1640, subcategory: sc8)
p1   = Product.create!(name:'Светодиодная бахрома, мерцающая, IP65, герметичный колпачок, белый провод, синий ', size: '3*0.5 м', led_count: '112', color_light: 'blue', price: 1790, subcategory: sc8)
p1   = Product.create!(name:'Светодиодная бахрома, мерцающая, IP65, герметичный колпачок, белый провод, зеленый ', size: '3*0.5 м', led_count: '112', color_light: 'green', price: 1920, subcategory: sc8)
p1   = Product.create!(name:'Светодиодная бахрома, мерцающая, IP65, герметичный колпачок, белый провод, белый ', size: '3*0.5 м', led_count: '112', color_light: 'white ', price: 1920, subcategory: sc8)
p1   = Product.create!(name:'Светодиодная бахрома, мерцающая, IP65, герметичный колпачок, белый провод, теплый белый ', size: '3*0.5 м', led_count: '112', color_light: 'white ', price: 1920, subcategory: sc8)
p1   = Product.create!(name:'Светодиодная бахрома, мерцающая, IP65, герметичный колпачок, белый провод, розовый ', size: '3*0.5 м', led_count: '112', color_light: 'pink', price: 1950, subcategory: sc8)
p1   = Product.create!(name:'Светодиодная бахрома, мерцающая, IP65, герметичный колпачок, белый провод, фиолетовый ', size: '3*0.5 м', led_count: '112', color_light: 'violet', price: 1950, subcategory: sc8)
p1   = Product.create!(name:'Светодиодная бахрома, мерцающая, IP65, герметичный колпачок, белый провод, сине-белый ', size: '3*0.5 м', led_count: '112', color_light: 'blue', price: 1950, subcategory: sc8)
p2   = Shipment.create!(name:'Блок питания для мерцающих изделий. 2А. Для соединения до 10 шт., белый ', size: '1.5', led_count: '-', color_light: 'white', price: 350, subcategory: sc8)
sc9   = Subcategory.create!(name: 'Светодиодная бахрома 3*0.5 м, мерцающая, белый резиновый провод, IP65, герметичный колпачок',
specifications: 'Нити различной длины: 20-50 см|
Расстояние между LED - 10 см|
Напряжение- 220В|
Потребляемая мощность- 8Вт|
Количество соединений: до 10 одинаковых гирлянд|
Влагозащищенность- IP65 с герметичным колпачком, применение: помещения и улицы|
Белый резиновый провод| Температурный режим: -40...+60°C|
Для работы требуется шнур подключения, до 10 шт. на одно подключение', category: c2)
p1   = Product.create!(name:'Светодиодная бахрома, мерцающая, белый резиновый провод, IP65, герметичный колпачок, мульти ', size: '3*0.5 м', led_count: '112', color_light: ' ', price: 2570, subcategory: sc9)
p1   = Product.create!(name:'Светодиодная бахрома, мерцающая, белый резиновый провод, IP65, герметичный колпачок, красный ', size: '3*0.5 м', led_count: '112', color_light: 'red', price: 2440, subcategory: sc9)
p1   = Product.create!(name:'Светодиодная бахрома, мерцающая, белый резиновый провод, IP65, герметичный колпачок, желтый ', size: '3*0.5 м', led_count: '112', color_light: 'yellow', price: 2440, subcategory: sc9)
p1   = Product.create!(name:'Светодиодная бахрома, мерцающая, белый резиновый провод, IP65, герметичный колпачок, синий ', size: '3*0.5 м', led_count: '112', color_light: 'blue', price: 2570, subcategory: sc9)
p1   = Product.create!(name:'Светодиодная бахрома, мерцающая, белый резиновый провод, IP65, герметичный колпачок, зеленый ', size: '3*0.5 м', led_count: '112', color_light: 'green', price: 2630, subcategory: sc9)
p1   = Product.create!(name:'Светодиодная бахрома, мерцающая, белый резиновый провод, IP65, герметичный колпачок, белый ', size: '3*0.5 м', led_count: '112', color_light: 'white ', price: 2630, subcategory: sc9)
p1   = Product.create!(name:'Светодиодная бахрома, мерцающая, белый резиновый провод, IP65, герметичный колпачок, теплый белый ', size: '3*0.5 м', led_count: '112', color_light: 'white ', price: 2650, subcategory: sc9)


p1   = Product.create!(name:'Светодиодная бахрома, белый резиновый провод, мульти ', size: '3*0.5 м', led_count: '112', color_light: ' ', price: 2420, subcategory: sc9)
p1   = Product.create!(name:'Светодиодная бахрома, белый резиновый провод, IP65, герметичный колпачок, красный ', size: '3*0.5 м', led_count: '112', color_light: 'red', price: 2290, subcategory: sc9)
p1   = Product.create!(name:'Светодиодная бахрома, белый резиновый провод, IP65, герметичный колпачок, жёлтый', size: '3*0.5 м', led_count: '112', color_light: 'yellow', price: 2290, subcategory: sc9)
p1   = Product.create!(name:'Светодиодная бахрома, белый резиновый провод, синий ', size: '3*0.5 м', led_count: '112', color_light: 'blue', price: 2420, subcategory: sc9)
p1   = Product.create!(name:'Светодиодная бахрома, белый резиновый провод, зеленый ', size: '3*0.5 м', led_count: '112', color_light: 'green', price: 2480, subcategory: sc9)
p1   = Product.create!(name:'Светодиодная бахрома, белый резиновый провод, белый ', size: '3*0.5 м', led_count: '112', color_light: 'white ', price: 2480, subcategory: sc9)
p1   = Product.create!(name:'Светодиодная бахрома, белый резиновый провод, теплый белый ', size: '3*0.5 м', led_count: '112', color_light: 'white ', price: 2500, subcategory: sc9)
p1   = Product.create!(name:'Светодиодная бахрома, белый резиновый провод, сине-белый', size: '3*0.5 м', led_count: '112', color_light: 'blue ', price: 2500, subcategory: sc9)

p1   = Product.create!(name:'Светодиодная бахрома, чёрный резиновый провод, белый ', size: '3*0.5 м', led_count: '112', color_light: 'white ', price: 2480, subcategory: sc9)
p1   = Product.create!(name:'Светодиодная бахрома, чёрный резиновый провод, теплый белый ', size: '3*0.5 м', led_count: '112', color_light: 'white ', price: 2500, subcategory: sc9)
p1   = Product.create!(name:'Светодиодная бахрома, чёрный резиновый провод, жёлтый', size: '3*0.5 м', led_count: '112', color_light: 'yellow', price: 2290, subcategory: sc9)

p2   = Shipment.create!(name:'Блок питания для изделий с постоянным свечением. 2А. Для соединения до 10 шт., белый ', size: '1.5', led_count: '-', color_light: 'white', price: 350, subcategory: sc9)
p2   = Shipment.create!(name:'Блок питания для мерцающих изделий. 2А. Для соединения до 10 шт., белый ', size: '1.5', led_count: '-', color_light: 'white', price: 350, subcategory: sc9)
sc10   = Subcategory.create!(name: 'Светодиодная бахрома 3*0.9 м, мерцающая',
specifications: 'Нити различной длины: 20-90 см|
Расстояние между LED - 10 см|
Напряжение- 220В|
Потребляемая мощность- 6Вт|
Количество соединений: до 10 одинаковых гирлянд|
Влагозащищенность- IP54, применение: помещения и улицы|
Температурный режим: -40...+60°C|
Для работы требуется шнур подключения, до 10 шт. на одно подключение', category: c2)
p1   = Product.create!(name:'Светодиодная бахрома, мерцающая, прозрачный провод, желтый ', size: '3*0.9 м', led_count: '144', color_light: 'yellow ', price: 1720, subcategory: sc10)
p1   = Product.create!(name:'Светодиодная бахрома, мерцающая, прозрачный провод, красный', size: '3*0.9 м', led_count: '144', color_light: 'red ', price: 1720, subcategory: sc10)
p1   = Product.create!(name:'Светодиодная бахрома, мерцающая, прозрачный провод, синий ', size: '3*0.9 м', led_count: '144', color_light: 'blue ', price: 1860, subcategory: sc10)
p1   = Product.create!(name:'Светодиодная бахрома, мерцающая, прозрачный провод, мульти ', size: '3*0.9 м', led_count: '144', color_light: ' ', price: 1860, subcategory: sc10)
p1   = Product.create!(name:'Светодиодная бахрома, мерцающая, прозрачный провод, зеленый ', size: '3*0.9 м', led_count: '144', color_light: 'green', price: 1920, subcategory: sc10)
p1   = Product.create!(name:'Светодиодная бахрома, мерцающая, прозрачный провод, белый ', size: '3*0.9 м', led_count: '144', color_light: 'white ', price: 1920, subcategory: sc10)
p1   = Product.create!(name:'Светодиодная бахрома, мерцающая, прозрачный провод, теплый белый', size: '3*0.9 м', led_count: '144', color_light: 'white ', price: 2070, subcategory: sc10)
p1   = Product.create!(name:'Светодиодная бахрома, мерцающая, прозрачный провод, розовый ', size: '3*0.9 м', led_count: '144', color_light: 'pink', price: 2070, subcategory: sc10)
p1   = Product.create!(name:'Светодиодная бахрома, мерцающая, прозрачный провод, фиолетовый ', size: '3*0.9 м', led_count: '144', color_light: 'violet', price: 2070, subcategory: sc10)
p1   = Product.create!(name:'Светодиодная бахрома, мерцающая, прозрачный провод, сине-белый ', size: '3*0.9 м', led_count: '144', color_light: 'blue', price: 2050, subcategory: sc10)

p1   = Product.create!(name:'Светодиодная бахрома, мерцающая, черный провод, желтый ', size: '3*0.9 м', led_count: '144', color_light: 'yellow ', price: 1720, subcategory: sc10)
p1   = Product.create!(name:'Светодиодная бахрома, мерцающая, черный провод, красный', size: '3*0.9 м', led_count: '144', color_light: 'red ', price: 1720, subcategory: sc10)
p1   = Product.create!(name:'Светодиодная бахрома, мерцающая, черный провод, синий ', size: '3*0.9 м', led_count: '144', color_light: 'blue ', price: 1860, subcategory: sc10)
p1   = Product.create!(name:'Светодиодная бахрома, мерцающая, черный провод, мульти ', size: '3*0.9 м', led_count: '144', color_light: ' ', price: 1860, subcategory: sc10)
p1   = Product.create!(name:'Светодиодная бахрома, мерцающая, черный провод, зеленый ', size: '3*0.9 м', led_count: '144', color_light: 'green', price: 1920, subcategory: sc10)
p1   = Product.create!(name:'Светодиодная бахрома, мерцающая, черный провод, белый ', size: '3*0.9 м', led_count: '144', color_light: 'white ', price: 1920, subcategory: sc10)
p1   = Product.create!(name:'Светодиодная бахрома, мерцающая, черный провод, теплый белый', size: '3*0.9 м', led_count: '144', color_light: 'white ', price: 2070, subcategory: sc10)
p1   = Product.create!(name:'Светодиодная бахрома, мерцающая, черный провод, сине-белый ', size: '3*0.9 м', led_count: '144', color_light: 'blue', price: 2050, subcategory: sc10)

p2   = Shipment.create!(name:'Блок питания для мерцающих изделий. 2А. Для соединения до 10 шт., черный', size: '1.5', led_count: '-', color_light: 'black', price: 350, subcategory: sc10)

sc11   = Subcategory.create!(name: 'Светодиодная бахрома 3*0.9 м, мерцающая, IP65, герметичный колпачок',
specifications: 'Нити различной длины: 20-90 см|
Расстояние между LED - 10 см|
Напряжение- 220В|
Потребляемая мощность- 8.8Вт|
Количество соединений: до 10 одинаковых гирлянд|
Влагозащищенность- IP65 с герметичным колпачком, применение: для улицы|
Температурный режим: -40...+60°C|
Мерцает каждый 8-ой диод|
Для работы требуется шнур подключения, до 10 шт. на одно подключение', category: c2)
p1   = Product.create!(name:'Светодиодная бахрома, мерцающая, IP65, герметичный колпачок белый провод, желтый ', size: '3*0.9 м', led_count: '144', color_light: 'yellow ', price: 2070, subcategory: sc11)
p1   = Product.create!(name:'Светодиодная бахрома, мерцающая, IP65, герметичный колпачок белый провод, красный', size: '3*0.9 м', led_count: '144', color_light: 'red ', price: 2070, subcategory: sc11)
p1   = Product.create!(name:'Светодиодная бахрома, мерцающая, IP65, герметичный колпачок белый провод, синий ', size: '3*0.9 м', led_count: '144', color_light: 'blue ', price: 2210, subcategory: sc11)
p1   = Product.create!(name:'Светодиодная бахрома, мерцающая, IP65, герметичный колпачок белый провод, мульти ', size: '3*0.9 м', led_count: '144', color_light: ' ', price: 2210, subcategory: sc11)
p1   = Product.create!(name:'Светодиодная бахрома, мерцающая, IP65, герметичный колпачок белый провод, зеленый ', size: '3*0.9 м', led_count: '144', color_light: 'green', price: 2270, subcategory: sc11)
p1   = Product.create!(name:'Светодиодная бахрома, мерцающая, IP65, герметичный колпачок белый провод, белый ', size: '3*0.9 м', led_count: '144', color_light: 'white ', price: 2270, subcategory: sc11)
p1   = Product.create!(name:'Светодиодная бахрома, мерцающая, IP65, герметичный колпачок белый провод, теплый белый', size: '3*0.9 м', led_count: '144', color_light: 'white ', price: 2420, subcategory: sc11)
p1   = Product.create!(name:'Светодиодная бахрома, мерцающая, IP65, герметичный колпачок белый провод, сине-белый ', size: '3*0.9 м', led_count: '144', color_light: 'blue', price: 2400, subcategory: sc11)
p2   = Shipment.create!(name:'Блок питания для мерцающих изделий. 2А. Для соединения до 10 шт., белый', size: '1.5', led_count: '-', color_light: 'white', price: 350, subcategory: sc11)

sc12   = Subcategory.create!(name: 'Светодиодная бахрома 3*0.9 м IP65, герметичный колпачок',
specifications: 'Нити различной длины: 20-90 см|
Расстояние между LED - 10 см|
Напряжение- 220В|
Потребляемая мощность- 8.8Вт|
Количество соединений: до 10 одинаковых гирлянд|
Влагозащищенность- IP65 с герметичным колпачком, применение: для улицы|
Температурный режим: -40...+60°C|
Для работы требуется шнур подключения, до 10 шт. на одно подключение|', category: c2)
p1   = Product.create!(name:'Светодиодная бахрома IP65, герметичный колпачок прозрачный провод, белый ', size: '3*0.9 м', led_count: '144', color_light: 'white ', price: 2120, subcategory: sc12)
p1   = Product.create!(name:'Светодиодная бахрома IP65, герметичный колпачок прозрачный провод, теплый белый', size: '3*0.9 м', led_count: '144', color_light: 'white ', price: 2270, subcategory: sc12)
p2   = Shipment.create!(name:'Блок питания для изделий с постоянным свечением. 2А. Для соединения до 10 шт., белый', size: '1.5', led_count: '-', color_light: 'white', price: 350, subcategory: sc12)

sc13   = Subcategory.create!(name: 'Длинная светодиодная бахрома 2.4*2.2 м, мерцающая, IP65, герметичный колпачок',
specifications: 'Треугольники разной длины: 1м, 2.2м, 1.4м.|
Расстояние между LED - 10 см|
Напряжение- 220В|
Потребляемая мощность- 12Вт|
Количество соединений: до 10 одинаковых гирлянд|
Влагозащищенность- IP65 с герметичным колпачком, применение: для больших высоких фасадов|
Белый силиконовый провод|
Температурный режим: -40...+60°C', category: c2)
p1   = Product.create!(name:'Длинная светодиодная бахрома мерцающая, IP65, герметичный колпачок, белый провод, белый ', size: '2.4*2.2 м', led_count: '184', color_light: 'white ', price: 4580, subcategory: sc13)
p1   = Product.create!(name:'Длинная светодиодная бахрома мерцающая, IP65, герметичный колпачок, белый провод, теплый белый', size: '2.4*2.2 м', led_count: '184', color_light: 'white ', price: 4580, subcategory: sc13)
p1   = Product.create!(name:'Длинная светодиодная бахрома, прозрачный провод, белый', size: '2.4*2.2 м', led_count: '184', color_light: 'white ', price: 4030, subcategory: sc13)

sc15   = Subcategory.create!(name: 'Светодиодный занавес RGB Хамелеон',
specifications: 'Ширина- 1,5 м, высота- 2 м|
Расстояние между LED - 10 см, между свесами 15 см|
Напряжение- 220В|
Потребляемая мощность- 23Вт|
Количество соединений: до 6, при помощи отдельного блока питания|
Влагозащищенность- IP54, для улицы и помещения|
В комплекте есть шнур подключения до 2-х шт.', category: c3)
p1   = Product.create!(name:'Светодиодный занавес RGB Хамелеон, прозрачный провод, мульти', size: '1.5*2 м', led_count: '200', color_light: ' ', price: 5650, subcategory: sc15)
p2   = Shipment.create!(name:'Блок питания для занавесов и бахромы ARGB. Используется для соединения до 6-ти шт.', size: '1.5', led_count: 'до 1200', color_light: 'white', price: 1044, subcategory: sc15)

sc16   = Subcategory.create!(name: 'Светодиодный узорный занавес: Звезды',
specifications: 'Ширина- 2 м, высота- 2 м|
В каждом комплекте по 20 звезд |
Напряжение- 220В|
Потребляемая мощность- 22Вт|
Количество соединений: до 10 штук|
Влагозащищенность- IP54, для улицы и помещения|
Прозрачный провод ', category: c3)
p1   = Product.create!(name:'Светодиодный узорный занавес Звезды, на прозрачном проводе, мульти ', size: '2*2 м', led_count: '20 звезд', color_light: ' ', price: 6600, subcategory: sc16)
p1   = Product.create!(name:'Светодиодный узорный занавес Звезды, на прозрачном проводе, красный', size: '2*2 м', led_count: '20 звезд', color_light: 'red ', price: 4000, subcategory: sc16)
p1   = Product.create!(name:'Светодиодный узорный занавес Звезды, на прозрачном проводе, синий ', size: '2*2 м', led_count: '20 звезд', color_light: 'blue ', price: 4000, subcategory: sc16)
p1   = Product.create!(name:'Светодиодный узорный занавес Звезды, на прозрачном проводе, белый ', size: '2*2 м', led_count: '20 звезд', color_light: 'white ', price: 5000, subcategory: sc16)


sc17   = Subcategory.create!(name: 'Световой занавес: облегченный, герметичный колпачок, прозрачный провод',
specifications: 'Ширина- 2 м, высота- 1 м|
Нити не отсоединяются, цена ниже |
Напряжение- 220В|
Потребляемая мощность- 16Вт|
Количество соединений: до 10 штук|
Влагозащищенность- IP54, для улицы и помещения|
Прозрачный провод |
Требуется шнур подключения, до 10 штук на одно подключение ', category: c3)
p1   = Product.create!(name:'Световой занавес облегченный, герметичный колпачок, прозрачный провод, белый ', size: '2*1 м', led_count: '-', color_light: 'white ', price: 2870, subcategory: sc17)
p1   = Product.create!(name:'Световой занавес облегченный, герметичный колпачок, прозрачный провод, теплый белый ', size: '2*1 м', led_count: '-', color_light: 'white ', price: 2940, subcategory: sc17)
p2   = Shipment.create!(name:'Блок питания для изделий с постоянным свечением. 2А. Для соединения до 10 шт., белый', size: '1.5', led_count: '-', color_light: 'white', price: 350, subcategory: sc17)


sc18   = Subcategory.create!(name: 'Световой занавес: облегченный, прозрачный провод',
specifications: 'Ширина- 2 м, высота- 1,5 м или 3 м|
Нити не отсоединяются, цена ниже |
Напряжение- 220В|
Пониженная потребляемая мощность- 16Вт (или 40Вт- резиновый занавес 2*3 м)|
Количество соединений: до 10 штук|
Влагозащищенность- IP54, для улицы и помещения|
Прозрачный или черный провод |
Требуется шнур подключения, до 10 штук на одно подключение', category: c3)
p1   = Product.create!(name:'Световой занавес облегченный, прозрачный провод, желтый ', size: '2*1.5 м', led_count: '-', color_light: 'yellow ', price: 2900, subcategory: sc18)
p1   = Product.create!(name:'Световой занавес облегченный, прозрачный провод, синий ', size: '2*1.5 м', led_count: '-', color_light: 'blue ', price: 3620, subcategory: sc18)
p1   = Product.create!(name:'Световой занавес облегченный, прозрачный провод, мульти ', size: '2*1.5 м', led_count: '-', color_light: ' ', price: 3620, subcategory: sc18)
p1   = Product.create!(name:'Световой занавес облегченный, прозрачный провод, зеленый ', size: '2*1.5 м', led_count: '-', color_light: 'green', price: 3700, subcategory: sc18)
p1   = Product.create!(name:'Световой занавес облегченный, прозрачный провод, белый ', size: '2*1.5 м', led_count: '-', color_light: 'white ', price: 3700, subcategory: sc18)
p1   = Product.create!(name:'Световой занавес облегченный, прозрачный провод, теплый белый', size: '2*1.5 м', led_count: '-', color_light: 'white ', price: 3800, subcategory: sc18)
p1   = Product.create!(name:'Световой занавес облегченный, прозрачный провод, сине-белый ', size: '2*1.5 м', led_count: '-', color_light: 'blue', price: 3800, subcategory: sc18)

p1   = Product.create!(name:'Световой занавес мерцающий облегченный, прозрачный провод, синий ', size: '2*1.5 м', led_count: '-', color_light: 'blue ', price: 3950, subcategory: sc18)
p1   = Product.create!(name:'Световой занавес мерцающий облегченный, прозрачный провод, белый ', size: '2*1.5 м', led_count: '-', color_light: 'white ', price: 4040, subcategory: sc18)
p1   = Product.create!(name:'Световой занавес мерцающий облегченный, прозрачный провод, теплый белый', size: '2*1.5 м', led_count: '-', color_light: 'white ', price: 4040, subcategory: sc18)
p2   = Shipment.create!(name:'Блок питания для изделий с постоянным свечением. 2А. Для соединения до 10 шт., белый', size: '1.5', led_count: '-', color_light: 'white', price: 350, subcategory: sc18)
p2   = Shipment.create!(name:'Блок питания для МЕРЦАЮЩИХ изделий. 2А. Для соединения до 10 шт., белый ', size: '1.5', led_count: '-', color_light: 'white', price: 350, subcategory: sc18)

sc19   = Subcategory.create!(name: 'Световой дождь: облегченный, черный провод',
specifications: 'Ширина- 2 м, высота- 1,5 м или 3 м|
Нити не отсоединяются |
Напряжение- 220В|
Пониженная потребляемая мощность- 18Вт (или 36Вт)|
Количество соединений: до 10 штук|
Влагозащищенность- IP54, для улицы и помещения|
Черный провод ', category: c3)
p1   = Product.create!(name:'Световой дождь облегченный, черный провод, синий ', size: '2*1.5 м', led_count: '-', color_light: 'blue ', price: 3620, subcategory: sc19)
p1   = Product.create!(name:'Световой дождь облегченный, черный провод, желтый ', size: '2*1.5 м', led_count: '-', color_light: 'yellow ', price: 2900, subcategory: sc19)
p1   = Product.create!(name:'Световой дождь облегченный, черный провод, белый ', size: '2*1.5 м', led_count: '-', color_light: 'white ', price: 3700, subcategory: sc19)
p1   = Product.create!(name:'Световой дождь облегченный, черный провод, теплый белый', size: '2*1.5 м', led_count: '-', color_light: 'white ', price: 3800, subcategory: sc19)

p1   = Product.create!(name:'Световой дождь облегченный, черный провод каучук,  желтый ', size: '2*3 м', led_count: '-', color_light: 'yellow ', price: 10000, subcategory: sc19)
p1   = Product.create!(name:'Световой дождь облегченный, черный провод каучук,  красный ', size: '2*3 м', led_count: '-', color_light: 'red ', price: 10000, subcategory: sc19)
p1   = Product.create!(name:'Световой дождь облегченный, черный провод каучук,  синий ', size: '2*3 м', led_count: '-', color_light: 'blue ', price: 10500, subcategory: sc19)
p1   = Product.create!(name:'Световой дождь облегченный, черный провод каучук,  мульти', size: '2*3 м', led_count: '-', color_light: ' ', price: 10500, subcategory: sc19)
p1   = Product.create!(name:'Световой дождь облегченный, черный провод каучук,  белый ', size: '2*3 м', led_count: '-', color_light: 'white ', price: 11000, subcategory: sc19)
p1   = Product.create!(name:'Световой дождь облегченный, черный провод каучук,  теплый белый ', size: '2*3 м', led_count: '-', color_light: 'white ', price: 11000, subcategory: sc19)

p2   = Shipment.create!(name:'Блок питания для изделий с постоянным свечением. 2А. Для соединения до 10 шт., черный ', size: '1.5', led_count: '-', color_light: 'black', price: 350, subcategory: sc19)

sc20   = Subcategory.create!(name: 'Световой занавес: облегченный, герметичный колпачок, IP65',
specifications: 'Ширина- 2 м, высота- 1,5 м|
Нити не отсоединяются, цена дешевле |
Напряжение- 220В|
Пониженная потребляемая мощность- 18Вт|
Количество соединений: до 10 штук|
Влагозащищенность- IP65, колпачки с аквастопором!|
Белый провод |
Требуется шнур подключения, до 10 штук на одно подключение ', category: c3)
p1   = Product.create!(name:'Световой занавес облегченный, герметичный колпачок IP65, белый провод, желтый ', size: '2*1.5 м', led_count: '-', color_light: 'yellow ', price: 3400, subcategory: sc20)
p1   = Product.create!(name:'Световой занавес облегченный, герметичный колпачок IP65, белый провод, красный ', size: '2*1.5 м', led_count: '-', color_light: 'red ', price: 3400, subcategory: sc20)
p1   = Product.create!(name:'Световой занавес облегченный, герметичный колпачок IP65, белый провод, синий ', size: '2*1.5 м', led_count: '-', color_light: 'blue ', price: 4120, subcategory: sc20)
p1   = Product.create!(name:'Световой занавес облегченный, герметичный колпачок IP65, белый провод, мульти', size: '2*1.5 м', led_count: '-', color_light: ' ', price: 4120, subcategory: sc20)
p1   = Product.create!(name:'Световой занавес облегченный, герметичный колпачок IP65, белый провод, зеленый', size: '2*1.5 м', led_count: '-', color_light: 'green', price: 4200, subcategory: sc20)
p1   = Product.create!(name:'Световой занавес облегченный, герметичный колпачок IP65, белый провод, белый ', size: '2*1.5 м', led_count: '-', color_light: 'white ', price: 4200, subcategory: sc20)
p1   = Product.create!(name:'Световой занавес облегченный, герметичный колпачок IP65, белый провод, теплый белый ', size: '2*1.5 м', led_count: '-', color_light: 'white ', price: 4300, subcategory: sc20)
p1   = Product.create!(name:'Световой занавес облегченный, герметичный колпачок IP65, белый провод, сине-белый', size: '2*1.5 м', led_count: '-', color_light: 'blue ', price: 4300, subcategory: sc20)

p1   = Product.create!(name:'Световой занавес облегченный, герметичный колпачок IP65, черный провод, желтый ', size: '2*1.5 м', led_count: '-', color_light: 'yellow ', price: 3400, subcategory: sc20)
p1   = Product.create!(name:'Световой занавес облегченный, герметичный колпачок IP65, черный провод, белый ', size: '2*1.5 м', led_count: '-', color_light: 'white ', price: 4200, subcategory: sc20)
p1   = Product.create!(name:'Световой занавес облегченный, герметичный колпачок IP65, черный провод, теплый белый ', size: '2*1.5 м', led_count: '-', color_light: 'white ', price: 4300, subcategory: sc20)
p1   = Product.create!(name:'Световой занавес облегченный, герметичный колпачок IP65, черный провод, мульти', size: '2*1.5 м', led_count: '-', color_light: ' ', price: 4120, subcategory: sc20)

p2   = Shipment.create!(name:'Блок питания для изделий с постоянным свечением. 2А. Для соединения до 10 шт., белый ', size: '1.5', led_count: '-', color_light: 'white', price: 350, subcategory: sc20)

sc21   = Subcategory.create!(name: 'Световой занавес: облегченный мерцающий, герметичный колпачок, IP65',
specifications: 'Ширина- 2 м, высота- 1,5 м |
Нити не отсоединяются, цена дешевле |
Напряжение- 220В|
Пониженная потребляемая мощность- 18Вт|
Количество соединений: до 10 штук|
Влагозащищенность- IP65, колпачки с аквастопором!|
Белый провод |
Требуется шнур подключения, до 10 штук на одно подключение  ', category: c3)
p1   = Product.create!(name:'Световой занавес облегченный мерцающий , герметичный колпачок IP65, белый провод, желтый ', size: '2*1.5 м', led_count: '-', color_light: 'yellow ', price: 3700, subcategory: sc21)
p1   = Product.create!(name:'Световой занавес облегченный мерцающий , герметичный колпачок IP65, белый провод, белый ', size: '2*1.5 м', led_count: '-', color_light: 'white ', price: 4500, subcategory: sc21)
p1   = Product.create!(name:'Световой занавес облегченный мерцающий , герметичный колпачок IP65, белый провод, мерцающий ', size: '2*1.5 м', led_count: '-', color_light: 'white ', price: 4600, subcategory: sc21)
p1   = Product.create!(name:'Световой занавес облегченный мерцающий , герметичный колпачок IP65, белый провод, мульти', size: '2*1.5 м', led_count: '-', color_light: ' ', price: 4420, subcategory: sc21)

p2   = Shipment.create!(name:'Блок питания для мерцающих изделий. 2А. Для соединения до 10 шт., белый ', size: '1.5', led_count: '-', color_light: 'white', price: 350, subcategory: sc21)

sc22   = Subcategory.create!(name: 'Световой занавес: герметичный колпачок, IP65',
specifications: 'Ширина- 2 м, высота- 2 м, 3м, 6 м, 9 м|
Каждая нитка отсоединяется |
Напряжение- 220В|
Пониженная потребляемая мощность до 74Вт (92, 184) Вт|
Количество соединений: до 10 штук (2*9- до 5 штук)|
Влагозащищенность- IP65, для улицы и помещения |
Белый или черный провод|
Для работы занавесов 2*2 и 2*3 требуется шнур подключения. До 10 штук на одно подключение ', category: c3)
p1   = Product.create!(name:'Светодиодный занавес, IP 65, герметичный колпачок, белый провод, желтый ', size: '2*3 м', led_count: '600', color_light: 'yellow ', price: 6100, subcategory: sc22)
p1   = Product.create!(name:'Светодиодный занавес, IP 65, герметичный колпачок, белый провод, синий', size: '2*3 м', led_count: '600', color_light: 'blue', price: 6550, subcategory: sc22)
p1   = Product.create!(name:'Светодиодный занавес, IP 65, герметичный колпачок, белый провод, белый ', size: '2*3 м', led_count: '600', color_light: 'white ', price: 7450, subcategory: sc22)
p1   = Product.create!(name:'Светодиодный занавес, IP 65, герметичный колпачок, белый провод, теплый белый  ', size: '2*3 м', led_count: '600', color_light: 'white ', price: 7550, subcategory: sc22)
p1   = Product.create!(name:'Светодиодный занавес, IP 65, герметичный колпачок, белый провод, красный ', size: '2*3 м', led_count: '600', color_light: 'red ', price: 6100, subcategory: sc22)

p1   = Product.create!(name:'Светодиодный занавес, IP 65, герметичный колпачок, черный провод, желтый ', size: '2*3 м', led_count: '600', color_light: 'yellow ', price: 6100, subcategory: sc22)
p1   = Product.create!(name:'Светодиодный занавес, IP 65, герметичный колпачок, черный провод, белый ', size: '2*3 м', led_count: '600', color_light: 'white ', price: 7450, subcategory: sc22)
p1   = Product.create!(name:'Светодиодный занавес, IP 65, герметичный колпачок, черный провод, теплый белый  ', size: '2*3 м', led_count: '600', color_light: 'white ', price: 7550, subcategory: sc22)

p1   = Product.create!(name:'Светодиодный занавес, герметичный колпачок, белый провод, желтый ', size: '2*2 м', led_count: '400', color_light: 'yellow ', price: 4600, subcategory: sc22)
p1   = Product.create!(name:'Светодиодный занавес, герметичный колпачок, белый провод, синий', size: '2*2 м', led_count: '400', color_light: 'blue', price: 4800, subcategory: sc22)
p1   = Product.create!(name:'Светодиодный занавес, герметичный колпачок, белый провод, белый ', size: '2*2 м', led_count: '400', color_light: 'white ', price: 5580, subcategory: sc22)
p1   = Product.create!(name:'Светодиодный занавес, герметичный колпачок, белый провод, теплый белый  ', size: '2*2 м', led_count: '400', color_light: 'white ', price: 5680, subcategory: sc22)
p1   = Product.create!(name:'Светодиодный занавес, герметичный колпачок, прозрачный провод, белый ', size: '2*2 м', led_count: '400', color_light: 'white ', price: 5580, subcategory: sc22)
p1   = Product.create!(name:'Светодиодный занавес, герметичный колпачок, прозрачный провод, теплый белый  ', size: '2*2 м', led_count: '400', color_light: 'white ', price: 5680, subcategory: sc22)

p1   = Product.create!(name:'Светодиодный занавес, герметичный колпачок, белый провод, желтый ', size: '2*6 м', led_count: '1000', color_light: 'yellow ', price: 10560, subcategory: sc22)
p1   = Product.create!(name:'Светодиодный занавес, герметичный колпачок, белый провод, красный ', size: '2*6 м', led_count: '1000', color_light: 'red ', price: 10560, subcategory: sc22)
p1   = Product.create!(name:'Светодиодный занавес, герметичный колпачок, белый провод, синий', size: '2*6 м', led_count: '1000', color_light: 'blue', price: 10560, subcategory: sc22)
p1   = Product.create!(name:'Светодиодный занавес, герметичный колпачок, белый провод, зеленый', size: '2*6 м', led_count: '1000', color_light: 'green', price: 11650, subcategory: sc22)
p1   = Product.create!(name:'Светодиодный занавес, герметичный колпачок, белый провод, белый ', size: '2*6 м', led_count: '1000', color_light: 'white ', price: 11650, subcategory: sc22)
p1   = Product.create!(name:'Светодиодный занавес, герметичный колпачок, белый провод, теплый белый  ', size: '2*6 м', led_count: '1000', color_light: 'white ', price: 11890, subcategory: sc22)

p1   = Product.create!(name:'Светодиодный занавес, герметичный колпачок, белый провод, желтый ', size: '2*9 м', led_count: '1500', color_light: 'yellow ', price: 16590, subcategory: sc22)
p1   = Product.create!(name:'Светодиодный занавес, герметичный колпачок, белый провод, белый ', size: '2*9 м', led_count: '1500', color_light: 'white ', price: 18300, subcategory: sc22)
p1   = Product.create!(name:'Светодиодный занавес, герметичный колпачок, белый провод, теплый белый  ', size: '2*9 м', led_count: '1500', color_light: 'white ', price: 18530, subcategory: sc22)

p1   = Product.create!(name:'Светодиодный занавес, герметичный колпачок, черный провод, желтый ', size: '2*6 м', led_count: '1000', color_light: 'yellow ', price: 10560, subcategory: sc22)
p1   = Product.create!(name:'Светодиодный занавес, герметичный колпачок, черный провод, синий', size: '2*6 м', led_count: '1000', color_light: 'blue', price: 10560, subcategory: sc22)
p1   = Product.create!(name:'Светодиодный занавес, герметичный колпачок, черный провод, белый ', size: '2*6 м', led_count: '1000', color_light: 'white ', price: 11650, subcategory: sc22)
p1   = Product.create!(name:'Светодиодный занавес, герметичный колпачок, черный провод, теплый белый  ', size: '2*6 м', led_count: '1000', color_light: 'white ', price: 11890, subcategory: sc22)
p1   = Product.create!(name:'Светодиодный занавес, герметичный колпачок, черный провод, желтый ', size: '2*9 м', led_count: '1500', color_light: 'yellow ', price: 16590, subcategory: sc22)
p1   = Product.create!(name:'Светодиодный занавес, герметичный колпачок, черный провод, белый ', size: '2*9 м', led_count: '1500', color_light: 'white ', price: 18300, subcategory: sc22)
p1   = Product.create!(name:'Светодиодный занавес, герметичный колпачок, черный провод, теплый белый  ', size: '2*9 м', led_count: '1500', color_light: 'white ', price: 18530, subcategory: sc22)

p2   = Shipment.create!(name:'Блок питания для изделий с постоянным свечением. 4А. Для соединения до 10 шт., белый', size: '1.5', led_count: '-', color_light: 'white', price: 400, subcategory: sc22)
p2   = Shipment.create!(name:'Блок питания для изделий с постоянным свечением. 4А. Для соединения до 10 шт., черный', size: '1.5', led_count: '-', color_light: 'black', price: 400, subcategory: sc22)




sc23   = Subcategory.create!(name: 'Светодиодный занавес',
specifications: 'Ширина- 2 м, высота- 2 м, 3м, 6 м, 9 м|
Каждая нитка отсоединяется|
Напряжение- 220В|
Потребляемая мощность до 73Вт (52, 78, 118) Вт|
Количество соединений: до 10 штук|
Влагозащищенность- IP54, для улицы и помещения|
Белый или прозрачный провод|
Для работы занавесов 2*3 требуется шнур подключения. До 10 штук на одно подключение ', category: c3)
p1   = Product.create!(name:'Светодиодный занавес, прозрачный провод, желтый ', size: '2*3 м', led_count: '600', color_light: 'yellow ', price: 5480, subcategory: sc23)
p1   = Product.create!(name:'Светодиодный занавес, прозрачный провод, красный ', size: '2*3 м', led_count: '600', color_light: 'red ', price: 5480, subcategory: sc23)
p1   = Product.create!(name:'Светодиодный занавес, прозрачный провод, синий', size: '2*3 м', led_count: '600', color_light: 'blue', price: 6030, subcategory: sc23)
p1   = Product.create!(name:'Светодиодный занавес, прозрачный провод, мульти', size: '2*3 м', led_count: '600', color_light: '', price: 6030, subcategory: sc23)
p1   = Product.create!(name:'Светодиодный занавес, прозрачный провод, зеленый', size: '2*3 м', led_count: '600', color_light: 'green', price: 6900, subcategory: sc23)
p1   = Product.create!(name:'Светодиодный занавес, прозрачный провод, белый ', size: '2*3 м', led_count: '600', color_light: 'white ', price: 6900, subcategory: sc23)
p1   = Product.create!(name:'Светодиодный занавес, прозрачный провод, теплый белый  ', size: '2*3 м', led_count: '600', color_light: 'white ', price: 6980, subcategory: sc23)
p1   = Product.create!(name:'Светодиодный занавес, прозрачный провод, сине-белый ', size: '2*3 м', led_count: '600', color_light: 'white ', price: 6800, subcategory: sc23)
p1   = Product.create!(name:'Светодиодный занавес, прозрачный провод, мульти', size: '2*1.5 м', led_count: '432', color_light: '', price: 3620, subcategory: sc23)

p1   = Product.create!(name:'Светодиодный занавес, прозрачный провод, синий', size: '2*2 м', led_count: '400', color_light: 'blue', price: 4260, subcategory: sc23)
p1   = Product.create!(name:'Светодиодный занавес, прозрачный провод, белый ', size: '2*2 м', led_count: '400', color_light: 'white ', price: 4990, subcategory: sc23)
p1   = Product.create!(name:'Светодиодный занавес, прозрачный провод, теплый белый  ', size: '2*2 м', led_count: '400', color_light: 'white ', price: 5100, subcategory: sc23)

p1   = Product.create!(name:'Светодиодный занавес, прозрачный провод, красный ', size: '2*6 м', led_count: '1200', color_light: 'red ', price: 10260, subcategory: sc23)
p1   = Product.create!(name:'Светодиодный занавес, прозрачный провод, синий', size: '2*6 м', led_count: '1200', color_light: 'blue', price: 10260, subcategory: sc23)
p1   = Product.create!(name:'Светодиодный занавес, прозрачный провод, зеленый', size: '2*6 м', led_count: '1200', color_light: 'green', price: 11350, subcategory: sc23)

p1   = Product.create!(name:'Светодиодный занавес, прозрачный провод, красный ', size: '2*9 м', led_count: '1800', color_light: 'red ', price: 16690, subcategory: sc23)
p1   = Product.create!(name:'Светодиодный занавес, прозрачный провод, желтый ', size: '2*9 м', led_count: '1800', color_light: 'yellow ', price: 16690, subcategory: sc23)
p1   = Product.create!(name:'Светодиодный занавес, прозрачный провод, синий', size: '2*9 м', led_count: '1800', color_light: 'blue', price: 17600, subcategory: sc23)

p1   = Product.create!(name:'Светодиодный занавес, черный провод, красный ', size: '2*6 м', led_count: '1200', color_light: 'red ', price: 10260, subcategory: sc23)
p1   = Product.create!(name:'Светодиодный занавес, черный провод, желтый', size: '2*6 м', led_count: '1200', color_light: 'yellow', price: 10260, subcategory: sc23)
p1   = Product.create!(name:'Светодиодный занавес, черный провод, синий', size: '2*6 м', led_count: '1200', color_light: 'blue', price: 10260, subcategory: sc23)
p1   = Product.create!(name:'Светодиодный занавес, черный провод, зеленый', size: '2*6 м', led_count: '1200', color_light: 'green', price: 11350, subcategory: sc23)
p1   = Product.create!(name:'Светодиодный занавес, черный провод, белый ', size: '2*6 м', led_count: '1200', color_light: 'white ', price: 11650, subcategory: sc23)
p1   = Product.create!(name:'Светодиодный занавес, черный провод, теплый белый  ', size: '2*6 м', led_count: '1200', color_light: 'white ', price: 11890, subcategory: sc23)

p1   = Product.create!(name:'Светодиодный занавес, черный провод, красный ', size: '2*9 м', led_count: '1800', color_light: 'red ', price: 16960, subcategory: sc23)
p1   = Product.create!(name:'Светодиодный занавес, черный провод, желтый', size: '2*9 м', led_count: '1800', color_light: 'yellow', price: 16960, subcategory: sc23)
p1   = Product.create!(name:'Светодиодный занавес, черный провод, синий', size: '2*9 м', led_count: '1800', color_light: 'blue', price: 17600, subcategory: sc23)
p1   = Product.create!(name:'Светодиодный занавес, черный провод, мульти', size: '2*9 м', led_count: '1800', color_light: '', price: 17600, subcategory: sc23)
p1   = Product.create!(name:'Светодиодный занавес, черный провод, зеленый', size: '2*9 м', led_count: '1800', color_light: 'green', price: 18000, subcategory: sc23)
p1   = Product.create!(name:'Светодиодный занавес, черный провод, белый ', size: '2*9 м', led_count: '1800', color_light: 'white ', price: 18000, subcategory: sc23)
p1   = Product.create!(name:'Светодиодный занавес, черный провод, теплый белый  ', size: '2*9 м', led_count: '1800', color_light: 'white ', price: 18260, subcategory: sc23)

p2   = Shipment.create!(name:'Блок питания для изделий с постоянным свечением. 4А. Для соединения до 10 шт., белый', size: '1.5', led_count: '-', color_light: 'white', price: 400, subcategory: sc23)

sc24   = Subcategory.create!(name: 'Световой узорный занавес: Снежинки',
specifications: 'Ширина- 2 м, высота- 2 м|
В каждом комплекте по 20 снежинок  |
Напряжение- 220В|
Пониженная потребляемая мощность 22Вт|
Количество соединений: до 10 штук|
Влагозащищенность- IP54, для улицы и помещения |
Прозрачный провод  ', category: c3)
p1   = Product.create!(name:'Светодиодный узорный занавес: Снежинки, на прозрачном проводе, белый', size: '2*2 м', led_count: '20 снежинок', color_light: 'white ', price: 7500, subcategory: sc24)
p1   = Product.create!(name:'Светодиодный узорный занавес: Снежинки, на прозрачном проводе, синий', size: '2*2 м', led_count: '20 снежинок', color_light: 'blue', price: 6000, subcategory: sc24)

sc25   = Subcategory.create!(name: 'Световой занавес: Флэш занавес',
specifications: 'Ширина- 2 м, высота- 1.5 м|
Мерцает каждый светодиод! (флэш занавес)
Напряжение- 220В|
Нити не отсоединяются|
Потребляемая мощность 18Вт|
Количество соединений: до 10 штук|
Влагозащищенность- IP54, для улицы и помещения|
Не требуется контроллер|
Шнур с блоком питания приобретается отдельно', category: c3)
p1   = Product.create!(name:'Светодиодный занавес: Флэш занавес, облегченный, прозрачный провод, мульти', size: '2*1.5 м', led_count: '300 мерцающих', color_light: ' ', price: 5410, subcategory: sc25)
p2   = Shipment.create!(name:'Блок питания для мерцающих изделий. 2А. Для соединения до 10 шт., белый', size: '1.5', led_count: '-', color_light: 'white', price: 360, subcategory: sc25)

sc26   = Subcategory.create!(name: 'Световой занавес с динамикой',
specifications: 'Ширина- 2 м, высота- 3 м|
Напряжение- 220В|
Нити отсоединяются|
Потребляемая мощность 66Вт|
Количество соединений: до 3 штук|
Влагозащищенность- IP54, для улицы и помещения|
Контроллер приобретается дополнительно ', category: c3)
p1   = Product.create!(name:'Светодиодный занавес с динамикой, прозрачный провод, мульти', size: '2*3 м', led_count: '300', color_light: ' ', price: 5500, subcategory: sc26)
p2   = Shipment.create!(name:'Блок питания с контроллером (8 режимов, память), для мульти-занавесов. Можно подключить до 3-х занавесов', size: '1.5', led_count: '-', color_light: 'white', price: 660, subcategory: sc26)

sc27   = Subcategory.create!(name: 'Световой занавес: мульти квадраты',
specifications: '20 нитей по 30 Led|
Напряжение- 220В|
Каждая нитка отсоединяются|
Потребляемая мощность -73Вт|
Количество соединений: до 10 штук|
Влагозащищенность- IP54, для улицы и помещения|
Блок питания приобретается отдельно ', category: c3)
p1   = Product.create!(name:'Светодиодный занавес: прозрачный провод, мульти квадраты ', size: '2*3 м', led_count: '600', color_light: ' ', price: 6030, subcategory: sc27)
p1   = Product.create!(name:'Светодиодный занавес: прозрачный провод, мульти квадраты ', size: '2*3 м', led_count: '600', color_light: ' ', price: 6030, subcategory: sc27)
p2   = Shipment.create!(name:'Блок питания для изделий с постоянным свечением. 4А. Для соединения до 10 шт.', size: '1.5', led_count: '-', color_light: 'white', price: 400, subcategory: sc27)


sc28   = Subcategory.create!(name: 'Светодиодные дреды, мерцающие',
specifications: '', category: c4)
p1   = Product.create!(name:'Светодиодные дреды, мерцающие, теплый белый  ', size: '2*4 м', led_count: '1120, мерц.324', color_light: 'white ', price: 11900, subcategory: sc28)
p1   = Product.create!(name:'Светодиодные дреды, мерцающие, белый ', size: '2*4 м', led_count: '1120, мерц.324', color_light: 'white ', price: 11900, subcategory: sc28)

sc29   = Subcategory.create!(name: 'Светодиодные дреды, соединяемые',
specifications: 'Напряжение- 24В|
Запитываются от трансформатора |
На 1 трансформатор (50Вт) можно подключить дреды-октопусы друг за другом, в любой последовательности, суммарная мощность не более 50Вт!
|Мощность 60см- 4.8Вт; 1м-8.4Вт; 1.5м- 1-Вт', category: c4)
p1   = Product.create!(name:'Светодиодные дреды, соединяемые, 60 см, белый ', size: '0.6 м', led_count: '124', color_light: 'white ', price: 1500, subcategory: sc29)
p1   = Product.create!(name:'Светодиодные дреды, соединяемые, 60 см, теплый белый  ', size: '0.6 м', led_count: '124', color_light: 'white ', price: 1500, subcategory: sc29)
p1   = Product.create!(name:'Светодиодные дреды, соединяемые, 1 м, белый ', size: '1 м', led_count: '256', color_light: 'white ', price: 2500, subcategory: sc29)
p1   = Product.create!(name:'Светодиодные дреды, соединяемые, 1 м, теплый белый  ', size: '1 м', led_count: '256', color_light: 'white ', price: 2500, subcategory: sc29)
p1   = Product.create!(name:'Светодиодные дреды, соединяемые, 1.5 м, белый ', size: '1.5 м', led_count: '288', color_light: 'white ', price: 3100, subcategory: sc29)
p1   = Product.create!(name:'Светодиодные дреды, соединяемые, 1.5 м, теплый белый  ', size: '1.5 м', led_count: '288', color_light: 'white ', price: 3100, subcategory: sc29)
p2   = Shipment.create!(name:'Трансформатор для светодиодных дредов, 24В, 50Вт', size: '1.5', led_count: '-', color_light: 'black', price: 1500, subcategory: sc29)


sc30   = Subcategory.create!(name: 'Светодиодная сетка',
specifications: 'Ширина- 2 м, высота- 1.5 м или 3 м|
Напряжение- 220В|
Влагозащищенность IP54, для улицы и помещения |
Можно растянуть или сжать до нужного размера |
Мощность- 15Вт ли 30Вт|
Прозрачный провод |
Количество соединений до 5 шт.|
Подключается контроллер на 8 программ |
Для работы требуется блок питания 1.5 м с контроллером, до 5 шт. на одно подключение', category: c5)
p1   = Product.create!(name:'Светодиодная сетка, прозрачный провод, красный ', size: '2*1.5 м', led_count: '192', color_light: 'red ', price: 2480, subcategory: sc30)
p1   = Product.create!(name:'Светодиодная сетка, прозрачный провод, желтый', size: '2*1.5 м', led_count: '192', color_light: 'yellow', price: 2480, subcategory: sc30)
p1   = Product.create!(name:'Светодиодная сетка, прозрачный провод, синий', size: '2*1.5 м', led_count: '192', color_light: 'blue', price: 2650, subcategory: sc30)
p1   = Product.create!(name:'Светодиодная сетка, прозрачный провод, мульти', size: '2*1.5 м', led_count: '192', color_light: '', price: 2530, subcategory: sc30)
p1   = Product.create!(name:'Светодиодная сетка, прозрачный провод, зеленый', size: '2*1.5 м', led_count: '192', color_light: 'green', price: 2650, subcategory: sc30)
p1   = Product.create!(name:'Светодиодная сетка, прозрачный провод, белый ', size: '2*1.5 м', led_count: '192', color_light: 'white ', price: 2650, subcategory: sc30)
p1   = Product.create!(name:'Светодиодная сетка, прозрачный провод, теплый белый  ', size: '2*1.5 м', led_count: '192', color_light: 'white ', price: 2710, subcategory: sc30)
p1   = Product.create!(name:'Светодиодная сетка, прозрачный провод, сине-белый  ', size: '2*1.5 м', led_count: '192', color_light: 'blue ', price: 2710, subcategory: sc30)

p1   = Product.create!(name:'Светодиодная сетка, прозрачный провод, красный ', size: '2*3 м', led_count: '384', color_light: 'red ', price: 4190, subcategory: sc30)
p1   = Product.create!(name:'Светодиодная сетка, прозрачный провод, желтый', size: '2*3 м', led_count: '384', color_light: 'yellow', price: 4190, subcategory: sc30)
p1   = Product.create!(name:'Светодиодная сетка, прозрачный провод, синий', size: '2*3 м', led_count: '384', color_light: 'blue', price: 4450, subcategory: sc30)
p1   = Product.create!(name:'Светодиодная сетка, прозрачный провод, мульти', size: '2*3 м', led_count: '384', color_light: '', price: 2530, subcategory: sc30)
p1   = Product.create!(name:'Светодиодная сетка, прозрачный провод, зеленый', size: '2*3 м', led_count: '384', color_light: 'green', price: 4450, subcategory: sc30)
p1   = Product.create!(name:'Светодиодная сетка, прозрачный провод, белый ', size: '2*3 м', led_count: '384', color_light: 'white ', price: 5010, subcategory: sc30)
p1   = Product.create!(name:'Светодиодная сетка, прозрачный провод, теплый белый  ', size: '2*3 м', led_count: '384', color_light: 'white ', price: 5570, subcategory: sc30)
p1   = Product.create!(name:'Светодиодная сетка, прозрачный провод, сине-белый  ', size: '2*3 м', led_count: '384', color_light: 'blue ', price: 5100, subcategory: sc30)

p2   = Shipment.create!(name:'Блок питания 1.5 м с контроллером (8 режимов, память) для сеток. Можно подключить до 5 сеток', size: '1.5', led_count: '-', color_light: 'white', price: 600, subcategory: sc30)


sc31   = Subcategory.create!(name: 'Светодиодная тающая сосулька',
specifications: 'Напряжение- 220 В|
Светодиоды светятся с 2-х сторон|
Сосульки соединяемые (до 50 шт.)|
Каждая сосулька оснащена проводом подключения, коннектором и вилкой|
Влагозащищенность IP54|
Мощность 60см- 4.8Вт; 1м-8.4Вт; 1.5м- 1-Вт', category: c6)
p1   = Product.create!(name:'Светодиодная тающая сосулька, 60 см, синий', size: '0.6 м', led_count: '-', color_light: 'blue', price: 990, subcategory: sc31)
p1   = Product.create!(name:'Светодиодная тающая сосулька, 60 см, белый ', size: '0.6 м', led_count: '-', color_light: 'white ', price: 990, subcategory: sc31)
p1   = Product.create!(name:'Светодиодная тающая сосулька, 80 см, синий', size: '0.8 м', led_count: '-', color_light: 'blue', price: 1330, subcategory: sc31)
p1   = Product.create!(name:'Светодиодная тающая сосулька, 80 см, белый ', size: '0.8 м', led_count: '-', color_light: 'white ', price: 1330, subcategory: sc31)


sc32   = Subcategory.create!(name: 'Белт-лайт, белый',
specifications: 'Гирлянда белт-лайт 2-х проводная |
Белый провод|
Расстояние между патронами 40 см|
Усиленная влагозащищенность за счет резинового патрона|
Используются лампы с цоколем Е27', category: c7)
p1   = Product.create!(name:'Белт-лайт, 2-х проводной, между лампами 40 см, патрон-резина, белый ', size: 'бухта 50м', led_count: '125 патронов ', color_light: 'white ', price: 11300, subcategory: sc32)
p1   = Product.create!(name:'Белт-лайт, 2-х проводной, между лампами 20 см, патрон-резина, белый ', size: 'бухта 50м', led_count: '250 патронов ', color_light: 'white ', price: 19400, subcategory: sc32)

sc33   = Subcategory.create!(name: 'Белт-лайт, черный',
specifications: 'Гирлянда белт-лайт 2-х проводная|
Черный провод|
Расстояние между патронами 40 см|
Усиленная влагозащищенность за счет резинового патрона |
Используются лампы с цоколем Е27', category: c7)
p1   = Product.create!(name:'Белт-лайт, 2-х проводной, между лампами 40 см, патрон-резина, черный ', size: 'бухта 50м', led_count: '125 патронов ', color_light: 'black ', price: 11300, subcategory: sc33)
p1   = Product.create!(name:'Белт-лайт, 2-х проводной, между лампами 20 см, патрон-резина, черный ', size: 'бухта 50м', led_count: '250 патронов ', color_light: 'black ', price: 19400, subcategory: sc33)

sc34   = Subcategory.create!(name: 'Ламполайт 10*0.28',
specifications: 'Светодиодный ламполайт линейно-свесовой 1-1, 10*0.28 м, соединяемый до 10 шт.|
100 Led, 20 ламп по 5 Led|
Корпус ламп из высокопрозрачного стекла, форма ретро лампы S14|
Напряжение- 220 В|
Постоянное свечение|
Между лампами 50 см|
Работает от блока питания 220 В (в комплект не входит)|
Белый или черный провод|
Усиленная влагозащищенность IP65', category: c7)
p1   = Product.create!(name:'Ламполайт 10*0.28 м, линейно-свесовой 1-1, постоянное свечение, белый провод', size: '10 м', led_count: '20*5', color_light: 'white ', price: 4500, subcategory: sc34)
p1   = Product.create!(name:'Ламполайт 10*0.28 м, линейно-свесовой 1-1, постоянное свечение, черный провод', size: '10 м', led_count: '20*5', color_light: 'white ', price: 4500, subcategory: sc34)
p2   = Shipment.create!(name:'Блок питания для изделий с постоянным свечением.2А. Для соединения до 10шт., белый', size: '1.5', led_count: '-', color_light: 'white', price: 350, subcategory: sc34)
p2   = Shipment.create!(name:'Блок питания для изделий с постоянным свечением.2А. Для соединения до 10шт., черный', size: '1.5', led_count: '-', color_light: 'black', price: 350, subcategory: sc34)

sc35   = Subcategory.create!(name: 'Светодиодная лампа для Белт-лайта',
specifications: 'Для наружного применения с гирляндой Белт-лайт|
Цоколь Е27|
Диаметр- 45 мм|
Мощность- 1Вт', category: c7)
p1   = Product.create!(name:'Светодиодная лампа для белт-лайта,  красный ', size: 'Цоколь Е27', led_count: '5', color_light: 'red ', price: 93, subcategory: sc35)
p1   = Product.create!(name:'Светодиодная лампа для белт-лайта,  желтый', size: 'Цоколь Е27', led_count: '5', color_light: 'yellow', price: 93, subcategory: sc35)
p1   = Product.create!(name:'Светодиодная лампа для белт-лайта,  синий', size: 'Цоколь Е27', led_count: '5', color_light: 'blue', price: 93, subcategory: sc35)
p1   = Product.create!(name:'Светодиодная лампа для белт-лайта,  зеленый', size: 'Цоколь Е27', led_count: '5', color_light: 'green', price: 93, subcategory: sc35)
p1   = Product.create!(name:'Светодиодная лампа для белт-лайта,  белый ', size: 'Цоколь Е27', led_count: '5', color_light: 'white ', price: 93, subcategory: sc35)
p1   = Product.create!(name:'Светодиодная лампа для белт-лайта,  теплый белый  ', size: 'Цоколь Е27', led_count: '5', color_light: 'white ', price: 93, subcategory: sc35)
p1   = Product.create!(name:'Светодиодная лампа для белт-лайта,  мульти', size: 'Цоколь Е27', led_count: '5', color_light: '', price: 200, subcategory: sc35)


sc36   = Subcategory.create!(name: 'Филаментная лампа для белт-лайта',
specifications: 'Для наружного применения с гирляндой белт-лайт|
Цоколь Е27|
Диаметр- 45 мм, высота 88 мм|
Мощность 2Вт', category: c7)
p1   = Product.create!(name:'Филаментная лампа для белт-лайта, прозрачная, теплый белый  ', size: 'Цоколь Е27', led_count: '2 нитки', color_light: 'white ', price: 122, subcategory: sc36)

sc37   = Subcategory.create!(name: 'Строб-лампа для белт-лайта',
specifications: 'Для наружного применения с гирляндой белт-лайт|
Цоколь Е27|
Диаметр- 45 мм, высота 88 мм|
Мощность 2Вт', category: c7)
p1   = Product.create!(name:'Строб- лампа для белт-лайта, прозрачная, белый  ', size: 'Цоколь Е27', led_count: '6', color_light: 'white ', price: 250, subcategory: sc37)

# p1    = Product.create!(name: 'Световая гирляднда LED',
# size: '20 м',
# description: 'Описание',
# color_light: 'Зеленая',
# price: 2000,
# subcategory: sc1)
#
#
# p2    = Product.create!(name: 'Ароматическая свеча NYX',
# size: '20 см',
# description: 'Описание',
# color_light: 'Красная',
# price: 1500,
# subcategory: sc2)
#
# p3    = Product.create!(name: 'Снеговик ',
# size: '2 м',
# description: 'Описание',
# color_light: 'Белый',
# price: 6000,
# subcategory: sc3)
#
# p4    = Product.create!(name: 'Елка новогодняя',
# size: '1,5 м',
# description: 'Описание',
# color_light: 'Зеленая',
# price: 1000,
# subcategory: sc4)
