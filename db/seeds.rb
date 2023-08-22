# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create(email: "james@gmail.com", password: "iliketurtles")
User.create(email: "gary@gmail.com", password: "bananas")
User.create(email: "peter@gmail.com", password: "chocolate")
User.create(email: "david@gmail.com", password: "crazyguy")

Listing.create(title: "James Doe", description: "yachts", rating: "5", listing_address: "Miami", user: User.all.sample)
Listing.create(title: "John Hornby", description: "sailing", rating: "1", listing_address: "London", user: User.all.sample)
Listing.create(title: "Jack Jones", description: "boats", rating: "2", listing_address: "Paris", user: User.all.sample)
Listing.create(title: "Jim Johns", description: "sunny trip", rating: "3", listing_address: "Madrid", user: User.all.sample)
Listing.create(title: "Peter Holland", description: "yachts", rating: "4", listing_address: "Porto", user: User.all.sample)
Listing.create(title: "Mary Evans", description: "boats", rating: "2", listing_address: "London", user: User.all.sample)
Listing.create(title: "Gary Phlegm", description: "sailing", rating: "1", listing_address: "Miami", user: User.all.sample)
Listing.create(title: "Harry Cornfield", description: "sunny trip", rating: "5", listing_address: "Paris", user: User.all.sample)
Listing.create(title: "Patricio Batistuta", description: "yachts", rating: "4", listing_address: "Porto", user: User.all.sample)
Listing.create(title: "Rebeca Fiori", description: "sailing", rating: "3", listing_address: "Madrid", user: User.all.sample)
Listing.create(title: "Panutche Camara", description: "sunny trip", rating: "2", listing_address: "London", user: User.all.sample)
Listing.create(title: "Krisztian Timar", description: "boats", rating: "5", listing_address: "Miami", user: User.all.sample)
Listing.create(title: "Mary Hermoso", description: "yachts", rating: "1", listing_address: "Porto", user: User.all.sample)
Listing.create(title: "Idrissa Gueye", description: "sunny trip", rating: "4", listing_address: "Paris", user: User.all.sample)
Listing.create(title: "Simon Parrott", description: "sailing", rating: "3", listing_address: "Madrid", user: User.all.sample)
Listing.create(title: "Georgina Bloom", description: "boats", rating: "3", listing_address: "Porto", user: User.all.sample)
Listing.create(title: "Edin Dzeko", description: "sunny trip", rating: "1", listing_address: "London", user: User.all.sample)
Listing.create(title: "Olivia Garrett", description: "yachts", rating: "5", listing_address: "Miami", user: User.all.sample)
Listing.create(title: "Shirley Thomas", description: "sailing", rating: "4", listing_address: "Madrid", user: User.all.sample)
Listing.create(title: "Leyla Smyslova", description: "boats", rating: "2", listing_address: "Paris", user: User.all.sample)
