# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
c1   = Category.create!(name: 'Новогодние украшения')
c2   = Category.create!(name: 'Частные дома')
c3   = Category.create!(name: 'Торговые центры')
c4   = Category.create!(name: 'Ели')

sc1   = Subcategory.create!(name: 'Гирляднды', category: c1)
sc2   = Subcategory.create!(name: 'Свечи', category: c2)
sc3   = Subcategory.create!(name: 'Надувные куклы', category: c3)
sc4   = Subcategory.create!(name: 'Декоративные ели', category: c4)

p1    = Product.create!(name: 'Световая LED',
size: '20 м',
color_light: 'Зеленая',
price: 2000,
subcategory: sc1)


p2    = Product.create!(name: 'Ароматическая свеча NYX',
size: '20 см',
color_light: 'Красная',
price: 1500,
subcategory: sc2)

p3    = Product.create!(name: 'Снеговик ',
size: '2 м',
color_light: 'Белый',
price: 6000,
subcategory: sc3)

p4    = Product.create!(name: 'Елка новогодняя',
size: '1,5 м',
color_light: 'Зеленая',
price: 1000,
subcategory: sc4)
