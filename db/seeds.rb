# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Item.delete_all
Restaurant.delete_all
Dish.delete_all
#Items 
items = Item.create([
    {name: "arvo1", price: 1030, callories: 2200},
    {name: "arvo2", price: 90, callories: 5200},
    {name: "arvo3", price: 10, callories: 900},
    {name: "arvo4", price: 90, callories: 3000},
    {name: "arvo5", price: 10, callories: 100},
    {name: "arvo6", price: 100, callories: 10}
])
#Restaurants
restaurants = Restaurant.create([
    {name: "hola1", address: "Av. Santa Teresa 1163"},
    {name: "hola3", address: "Av. Santa Teresa 1164"},
    {name: "hola2", address: "Av. Santa Teresa 1165"},
    {name: "hola4", address: "Av. Santa Teresa 1166"},
    {name: "hola5", address: "Av. Santa Teresa 1167"}
])
#Dishes
dishes = Dish.create([
    {name: "Beginning Course"},
    {name: "Main Course"},
    {name: "Dessert"},
    {name: "Drink"},
    {name: "Appetizer"}
])