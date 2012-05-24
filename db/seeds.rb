# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
if Rails.env.development?
  
Category.destroy_all
Vendor.destroy_all
Pass.destroy_all


categories = Category.create([ {name: 'Sports'}, {name: 'Education'}, {name: 'Music'} ])

vendors = Vendor.create([ {email: 'evanpatricklewis@gmail.com', password: 'hj8k;cvE', password_confirmation: 'hj8k;cvE', category_id: Category.find_by_name("Sports").id}, 
  {email: 'jlgladf@gmail.com', password: 'qazse21', password_confirmation: 'qazse21', category_id: Category.find_by_name("Education").id}, {email: 'scottfey@gmail.com', password: 'password', password_confirmation: 'password', category_id: Category.find_by_name("Music").id}])


passes = Pass.create([ {title: 'Code Academy Music Video', description: 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.', embed_code: 'http://youtu.be/Ck4wAQQcy0k', vendor_id: Vendor.find_by_email("scottfey@gmail.com").id, price: 5}, 
  {title: 'Code Academy Sports Video', description: 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.', embed_code: 'http://youtu.be/Ck4wAQQcy0k', vendor_id: Vendor.find_by_email("evanpatricklewis@gmail.com").id, price: 2},
  {title: 'Code Academy Education Video', description: 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.', embed_code: 'http://youtu.be/Ck4wAQQcy0k', vendor_id: Vendor.find_by_email("jlgladf@gmail.com").id, price: 2}])
  
puts "Development database ready for use."

else 

  puts "Do not run this in production!"

end