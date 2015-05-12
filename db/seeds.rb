require 'ffaker'

#admin
User.create(firstname: 'Peter', 
            lastname: 'Parker', 
            email: 'admin@example.com', 
            password: 'admin123', 
            password_confirmation: 'admin123', 
            admin: true)

5.times do
  firstname = Faker::Name.first_name
  lastname = Faker::Name.last_name
  email = Faker::Internet.email(firstname + "." + lastname)
  password = 'foobar12'
  User.create!(firstname:   firstname,
               lastname:    lastname,
               email:       email,
               password:              password,
               password_confirmation: password)
end

