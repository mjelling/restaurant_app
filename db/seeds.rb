# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

if Rails.env.development?
  User.create(username: 'jeff', email: 'j@j.com', password: 'a', admin: true)
  User.create(username: 'matt', email: 'j@j.com', password: 'a', admin: false)

  MenuItem.create(name: 'Coke', kind: 'Drink', price: 1.00)
  MenuItem.create(name: 'Sprite', kind: 'Drink', price: 1.00)
  MenuItem.create(name: 'Beer', kind: 'Drink', price: 2.00)

  MenuItem.create(name: 'Nachos', kind: 'Appetizer', price: 5.00)
  MenuItem.create(name: 'Wings', kind: 'Appetizer', price: 6.50)
  MenuItem.create(name: 'Mozzarella Sticks', kind: 'Appetizer', price: 3.75)

  MenuItem.create(name: 'Cheesebuger', kind: 'Entree', price: 13.75)
  MenuItem.create(name: 'Steak', kind: 'Entree', price: 15.34)
  MenuItem.create(name: 'Hot Dog', kind: 'Entree', price: 9.25)
end
