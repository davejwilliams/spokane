# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

include Faker
#Recipe.delete_all
images = ['applepie.jpg', 'apples.jpg', 'baby-back-ribs.jpg', 'burger.png', 'potatoes.jpg']
50.times do
	a = Recipe.create(name: Company.bs,
	                  serves: rand(2..12),
	                  cost: (rand * 100).to_i / 10.0,
	                  made_by: Name.name,
	                  last_made: Time.now,
	                  ingredients: Lorem.paragraphs(paragraph_count = rand(3..5)).join('<br>'),
	                  image: images[rand(0..images.length-1)]
	)
	puts a.inspect
end