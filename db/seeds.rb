99.times do |n|
  name  = Faker::Name.name
  email = "quocbuingoc-#{n+1}@gmail.com"
  password = "123456"
  phone = "03945516115"
  address = "195 Nguyen Luong Bang"
  User.create!(name:  name,
    email: email,
    password: password,
    phone: phone,
    address: address)
end
