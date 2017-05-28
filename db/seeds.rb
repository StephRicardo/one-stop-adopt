# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = [
	{
		:first_name => "Kevin",
		:last_name => "Wong",
		:email => "wong316@gmail.com",
		:password => "1234"
	},
	{
		:first_name => "Alfonso",
		:last_name => "Estremadoyro",
		:email => "sric4990@gmail.com",
		:password => "1234"
	},
	{
		:first_name => "Stephanie",
		:last_name => "Ricardo",
		:email => "stephanie.ricardo1@gmail.com",
		:password => "1234"
	}
]

users.each do |user|
	User.create(user)
end