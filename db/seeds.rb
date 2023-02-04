# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# require "open-uri"
Spaceship.destroy_all
Destination.destroy_all
User.destroy_all
user = User.create!(first_name: "the name", last_name: "the last", email:"a@hotmail.com", password:"123456")


file = URI.open("https://images.unsplash.com/photo-1614121169531-b424c5e9aab6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1945&q=80")
spaceship = Spaceship.new(name: "The Big Z'affaire", payload: "200", pax: "20", availability: "yes", description: "The Big Z'affaire remains the cream of the full-size luxury spaceship. Opulent insides, as well as its ability to serve as both a cosseting luxury barge and a surprisingly engaging rapid spaceship. No matter the seat you occupy , you're sure to feel satisfied. Combined with its quiet and comfortable cabin, the Big Z'affaire makes a strong case for itself as one of the best full-size luxury  options available today.", user: user)
spaceship.photo.attach(io: file, filename: "big.png", content_type: "image/png")
spaceship.save!


file = URI.open("https://images.unsplash.com/photo-1636828982375-a4ec8b809e5e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1887&q=80")
spaceship = Spaceship.new(name: "The Falcon", payload: "500", pax: "5", availability: "yes", description: "The Falcon helps you and yours live life to the fullest during their expedition . Adapting to your needs, keeping you connected and providing the capability to experience the world on your own terms.No matter what the day brings or where the space  leads, the Falcon  features interiors that are outfitted to exceed your needs at every turn. From easily configurable seating  to tech that keeps everyone connected on the move  for either long trip exploration or short one  it’s ready for whatever comes your way during your expedition.", user: user)
spaceship.photo.attach(io: file, filename: "falcon.png", content_type: "image/png")
spaceship.save!

file = URI.open("https://res.cloudinary.com/dee7e7l0i/image/upload/v1675375286/rocket_1_nsqt5d_la9ycb.jpg")
spaceship = Spaceship.new(name: "The Rocket", payload: "100", pax: "2", availability: "yes", description: "Exclusivity and sophistication distinguish the interior of this latest masterpiece of this spaceship range. Premium yet practical materials like carbon fiber are employed for the most important finishes, while Alcantara® upholstery, laser-cut with a Y motif to let the colorful backing peek through, give the luxurious passenger compartment a distinctive touch. These refined fittings are embellished with a carbon fiber plate displaying the incorporates advanced technological solutions and unparalleled design. A range of brand-new combinations further enhances the Rocket Spaceship", user: user)
spaceship.photo.attach(io: file, filename: "rocket.png", content_type: "image/png")
spaceship.save!


file = URI.open("https://images.unsplash.com/photo-1651708232202-ddf1832b00b7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80")
destination = Destination.new(name: "Honeymoon Balade", distance: "384,400")
destination.photo.attach(io: file, filename: "moon.png", content_type: "image/png")
destination.save!



file = URI.open("https://images.unsplash.com/photo-1637984135921-301a7d39e3b7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1315&q=80")
destination = Destination.new(name: "Mars Attack", distance: "135.59")
destination.photo.attach(io: file, filename: "mars.png", content_type: "image/png")
destination.save!



file = URI.open("https://images.unsplash.com/photo-1545156521-77bd85671d30?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80")
destination = Destination.new(name: "Expedition", distance: "2,8000000")
destination.photo.attach(io: file, filename: "neptune.png", content_type: "image/png")
destination.save!
