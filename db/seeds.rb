users = []
15.times do
	user = User.new(first_name: Faker::Name.first_name,
		last_name: Faker::Name.last_name,
		email: Faker::Internet.email,
		password: 'password')
	users << user if user.valid?
	user.save
end

20.times do 
	snippet = Snippet.new(body: Faker::Lorem.paragraphs(1),
		author_name: Faker::Name.name,
		user_id: rand(1..15) )
	snippet.save
end

