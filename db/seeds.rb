#メインのサンプルユーザーを１人作成
User.create!(name: "Example User", email: "user@example.com",
             password: "foobarbaz", password_confirmation: "foobarbaz",
             admin: true)

#追加のユーザーをまとめて作成
99.times do |n|
  name = Faker::Name.name
  email = "example-#{n+1}@example.com"
  password = "password"
  User.create!(name: name, email: email,
               password: password, password_confirmation: password)
end
