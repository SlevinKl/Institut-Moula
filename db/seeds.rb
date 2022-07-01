# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"

#### URL avatar
rayane = URI.open("https://drive.google.com/file/d/1ZuddiOl9Hadn0TDFMaVHIhuETZVkS5gN/view?usp=sharing")

#### clean the database
Prestation.destroy_all
Article.destroy_all
User.destroy_all

#### user creation
user_rayane = User.new(email: "rayane@moula.fr", password: "azertyuiop^$",
                      first_name: "Rayane", last_name: "Moula",
                      phone: "+33672839517", address: "10 rue boulot 75010 Paris",
                      admin: true)
user_rayane.avatar.attach(io: rayane, filename: "rayane")
user_rayane.save!

prestation_a = Prestation.new(title: "Manucure express", content: " akzjlkdlakzjdlakjzd ", price: "30$", category: "Mains", user: user_rayane)
prestation_a.save!
