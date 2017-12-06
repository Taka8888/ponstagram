# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


100.times do |m|
  password = "password"
  avatar=Faker::Avatar.imageemail = Faker::Internet.email
  user = User.create!(

             name: name,
              email: email,
              password: password,
              password_confirmation: password,
              uid: m,
              provider: m,
              image_url: avatar

              )

              picture  = Picture.create!(

              title: "いいいいいい",
              user_id: user.id,
              content: "ううううう",
              avatar:  avatar
              ）
