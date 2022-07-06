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

#### URL image for prestation
radio = URI.open("https://pur-paris.com/wp-content/uploads/2020/06/IMG_3877-1-300x300.jpg")
hydra = URI.open("https://pur-paris.com/wp-content/uploads/2020/06/3P4A7276-e1633780374631-300x300.jpg")
micro = URI.open("https://pur-paris.com/wp-content/uploads/2021/01/Microneedling-paris-e1612100445863-300x300.jpg")
lipoca = URI.open("https://pur-paris.com/wp-content/uploads/2020/01/minceur-3.jpg")
cryo = URI.open("https://pur-paris.com/wp-content/uploads/2020/01/IMG_2875-e1593872366374.jpg")
gommage = URI.open("https://pur-paris.com/wp-content/uploads/2020/06/ayurmana-ayurveda-mCb06TSaab0-unsplash-2-e1594036041755.jpg")
manucure = URI.open("https://pur-paris.com/wp-content/uploads/2020/01/3P4A7383-2-300x300.jpg")
pedicure = URI.open("https://st.depositphotos.com/1001992/4741/i/600/depositphotos_47418397-stock-photo-pedicurist-master-makes-pedicure.jpg")
vernism = URI.open("https://pur-paris.com/wp-content/uploads/2020/01/IMG_2834-e1593863045775.jpg")
vernisp = URI.open("https://www.institut-michelledefrance.com/boutique/wp-content/uploads/2020/05/beaute-des-pieds-fond-blanc.jpg")

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

#### prestation creation
prestation_g = Prestation.new(title: "Radiofrequence", content: " akzjlkdlakzjdlakjzd ", price: "130$", category: "Visage", user: user_rayane)
prestation_g.image.attach(io: radio, filename: "radio")
prestation_g.save!

prestation_h = Prestation.new(title: "HydraFacial", content: " akzjlkdlakzjdlakjzd ", price: "130$", category: "Visage", user: user_rayane)
prestation_h.image.attach(io: hydra, filename: "hydra")
prestation_h.save!

prestation_i = Prestation.new(title: "Microneedling", content: " akzjlkdlakzjdlakjzd ", price: "130$", category: "Visage", user: user_rayane)
prestation_i.image.attach(io: micro, filename: "micro")
prestation_i.save!

prestation_j = Prestation.new(title: "Lipocavitation", content: " akzjlkdlakzjdlakjzd ", price: "130$", category: "Corp", user: user_rayane)
prestation_j.image.attach(io: lipoca, filename: "lipoca")
prestation_j.save!

prestation_l = Prestation.new(title: "Liposuccion - Cryolipolyse", content: " akzjlkdlakzjdlakjzd ", price: "130$", category: "Corp", user: user_rayane)
prestation_l.image.attach(io: cryo, filename: "cryo")
prestation_l.save!

prestation_k = Prestation.new(title: "Gommage et Enveloppement", content: " akzjlkdlakzjdlakjzd ", price: "130$", category: "Corp", user: user_rayane)
prestation_k.image.attach(io: gommage, filename: "gommage")
prestation_k.save!

prestation_a = Prestation.new(title: "Manucure express", content: " akzjlkdlakzjdlakjzd ", price: "30$", category: "Mains", user: user_rayane)
prestation_a.image.attach(io: manucure, filename: "manucure")
prestation_a.save!

prestation_b = Prestation.new(title: "Manucure russe", content: " akzjlkdlakzjdlakjzd ", price: "30$", category: "Mains", user: user_rayane)
prestation_b.image.attach(io: manucure, filename: "manucure")
prestation_b.save!

prestation_c = Prestation.new(title: "Pose de vernis", content: " akzjlkdlakzjdlakjzd ", price: "30$", category: "Mains", user: user_rayane)
prestation_c.image.attach(io: vernism, filename: "vernism")
prestation_c.save!

prestation_d = Prestation.new(title: "Beauté des pieds", content: " akzjlkdlakzjdlakjzd ", price: "30$", category: "Pieds", user: user_rayane)
prestation_d.image.attach(io: pedicure, filename: "pedicure")
prestation_d.save!

prestation_e = Prestation.new(title: "Vernis semi-permanent", content: " akzjlkdlakzjdlakjzd ", price: "30$", category: "Pieds", user: user_rayane)
prestation_e.image.attach(io: vernisp, filename: "vernisp")
prestation_e.save!

prestation_f = Prestation.new(title: "Pose de vernis", content: " akzjlkdlakzjdlakjzd ", price: "30$", category: "Pieds", user: user_rayane)
prestation_f.image.attach(io: vernisp, filename: "vernisp")
prestation_f.save!
