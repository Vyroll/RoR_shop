# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Amenity.delete_all
Amenity.create(name: 'user')
Amenity.create(name: 'admin')

Category.delete_all
Category.create(name: 'card_game')
Category.create(name: 'board_game')
Category.create(name: 'collectible')

Product.delete_all
Product.create(name:'product1',code:'awdaw ad wa wa wd',stock:12,category_id:1, price:10.0)
Product.create(name:'product2',code:'awdawda aw dawd awawdawd wa',stock:2,category_id:1, price:230.0)
Product.create(name:'product3',code:'wadawd awaw dawdaw awa',stock:55,category_id:2, price:10.0)

Shipping.delete_all
Shipping.create(name:'Odbior osobisty',price:0)
Shipping.create(name:'DHL',price:50)
Shipping.create(name:'Poczta Polska',price:12.00)

Status.delete_all
Status.create(name:'creating')
Status.create(name:'ordered/pending')
Status.create(name:'preparing')
Status.create(name:'shipped')
Status.create(name:'delivered')



