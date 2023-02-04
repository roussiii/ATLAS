# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require "open-uri"

file = URI.open("https://images.unsplash.com/photo-1614121169531-b424c5e9aab6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1945&q=80")
spaceship = Spaceship.new(name: "The Big Z'affaire", payload: "200", pax: "20", availability: "yes")
spaceship.photo.attach(io: file, filename: "big.png", content_type: "image/png")
spaceship.save

require "open-uri"

file = URI.open("https://images.unsplash.com/photo-1636828982375-a4ec8b809e5e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1887&q=80")
spaceship = Spaceship.new(name: "The Falcon", payload: "500", pax: "5", availability: "yes")
spaceship.photo.attach(io: file, filename: "falcon.png", content_type: "image/png")
spaceship.save

require "open-uri"

file = URI.open("https://images.unsplash.com/photo-1651708232202-ddf1832b00b7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80")
destination = Destination.new(name: "Honeymoon Balade", distance: "384,400")
destination.photo.attach(io: file, filename: "moon.png", content_type: "image/png")
destination.save

require "open-uri"

file = URI.open("https://images.unsplash.com/photo-1637984135921-301a7d39e3b7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1315&q=80")
destination = Destination.new(name: "Mars Attack", distance: "135.59")
destination.photo.attach(io: file, filename: "mars.png", content_type: "image/png")
destination.save

require "open-uri"

file = URI.open("https://images.unsplash.com/photo-1545156521-77bd85671d30?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80")
destination = Destination.new(name: "Expedition", distance: "2,8000000")
destination.photo.attach(io: file, filename: "neptune.png", content_type: "image/png")
destination.save
