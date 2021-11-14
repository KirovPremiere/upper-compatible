# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

 
big_fours = ["日用品","食品・飲料","家具・家電","サービス"]
big_fours.each do |big_four|
   BigFour.create(name: big_four)
end