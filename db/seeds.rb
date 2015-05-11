# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create( firstname: 'Peter', lastname: 'Parker', email: 'spiderman@example.com', password: 'foobar12', password_confirmation: 'foobar12' )

User.create( firstname: 'John', lastname: 'Snow', email: 'admin@example.com', password: 'admin123', password_confirmation: 'admin123', admin: true )
