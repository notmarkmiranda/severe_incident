user = User.find_or_create_by(email: "test@example.com")
user.password = "password1234"
user.save

puts "#{user.email} created!"