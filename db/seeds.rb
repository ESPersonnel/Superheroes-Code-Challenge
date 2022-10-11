# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Hero.create(name: "Batman", super_name: "Bruce Wayne")
Hero.create(name: "Superman", super_name: "Clark Kent")
Hero.create(name: "Wonderwoman", super_name: "Diana Prince")
Hero.create(name: "Flash", super_name: "Barry Allen")

Power.create(name: "Super Strength", description: "Super strength is the ability to lift and move objects that are far beyond the natural physical limits of the human body, either by using the muscles in the arms and legs, or by using the muscles in the entire body.")
Power.create(name: "Super Speed", description: "Super speed is the ability to move at speeds far beyond the natural physical limits of the human body, either by using the muscles in the arms and legs, or by using the muscles in the entire body.")
Power.create(name: "Super Stamina", description: "Super stamina is the ability to exert oneself at peak capacity for far longer than the natural physical limits of the human body, either by using the muscles in the arms and legs, or by using the muscles in the entire body.")
Power.create(name: "Super Agility", description: "Super agility is the ability to move the body in ways far beyond the natural physical limits of the human body, either by using the muscles in the arms and legs, or by using the muscles in the entire body.")
Power.create(name: "Super Reflexes", description: "Super reflexes is the ability to react to stimuli far beyond the natural physical limits of the human body, either by using the muscles in the arms and legs, or by using the muscles in the entire body.")
Power.create(name: "Super Durability", description: "Super durability is the ability to withstand damage far beyond the natural physical limits of the human body, either by using the muscles in the arms and legs, or by using the muscles in the entire body.")
Power.create(name: "Super Intelligence", description: "Super intelligence is the ability to think at speeds far beyond the natural physical limits of the human body, either by using the muscles in the arms and legs, or by using the muscles in the entire body.")

HeroPower.create(strength: "Average", hero_id: 1, power_id: 1)
HeroPower.create(strength: "Strong", hero_id: 1, power_id: 2)
HeroPower.create(strength: "Weak", hero_id: 1, power_id: 3)
HeroPower.create(strength: "Strong", hero_id: 1, power_id: 4)