# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

categories = Category.create([ {name: 'Sports'}, {name: 'Education'}, {name: 'Music'} ])

vendors = Vendor.create([ {email: 'evanpatricklewis@gmail.com', password: 'hj8k;cvE', password_confirmation: 'hj8k;cvE', category_id: Category.find_by_name("Sports").id}, {email: 'jlgladf@gmail.com', password: 'qazse21', password_confirmation: 'qazse21', category_id: Category.find_by_name("Education").id}])