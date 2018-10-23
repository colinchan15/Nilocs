# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Cube.destroy_all
Cart.destroy_all
LineItem.destroy_all

user = User.new(
  id: 2,
  name: "John Smith",
  email: "john@smith.com",
  password: "password",
  password_confirmation: "password"
)
user.save!

Cube.create!([{
  title: "GAN460M Magnetic Speed Cube",
  brand: "Gan",
  model: "GAN460",
  description: "This is the most innovative 4x4 speedcube ever released.",
  condition: "Excellent",
  finish: "B/W",
  price: "60.50",
  image: Rails.root.join("app/assets/images/Gan.png").open,
  user_id: user.id
},
{
  title: "MOYU HUACHUANG Speed Cube",
  brand: "Moyu",
  model: "Hua",
  description: "The MoYu HuaChuang is currently the premier 5x5x5 speed cube on the market.",
  condition: "Used",
  finish: "R/B/Y",
  price: "42.0",
  image: Rails.root.join("app/assets/images/Moyu.jpg").open,
  user_id: user.id
},
{
  title: "CYCLONE BOYS Feizhi Speed Cube",
  brand: "Cyclone Boys",
  model: "FEIZHI 50MM 2X2 ",
  description: "The Cyclone Boys FeiZhi 2x2 is smooth and has a great handfeel and solid performance. ",
  condition: "New",
  finish: "B/O/W",
  price: "6.50",
  image: Rails.root.join("app/assets/images/Cyclone_Boys.png").open,
  user_id: user.id
},
{
  title: "X-MAN Design Shadow",
  brand: "XMAN",
  model: "Design Shadow Speed Cube",
  description: "The new X-Man Shadow sets a new standard for premium 6x6 speedcubes.",
  condition: "New",
  finish: "W/O/R",
  price: "35.50",
  image: Rails.root.join("app/assets/images/X-men.png").open,
  user_id: user.id
},
{
  title: "CUBICLE LABS Little Magic M",
  brand: "Cubicle Labs",
  model: "Little Magic M",
  description: "The Cubicle Labs Little Magic M is a custom magnetic version of the Yuxin Little Magic 3x3.",
  condition: "New",
  finish: "W/B/R",
  price: "29.50",
  image: Rails.root.join("app/assets/images/Cubicle_Labs.jpg").open,
  user_id: user.id
},
{
  title: "YUXIN Hays",
  brand: "Yuxin",
  model: "Hays",
  description: "The cube is smooth and fast out of the box with slightly looser tensions.",
  condition: "New",
  finish: "W/G/R",
  price: "78.50",
  image: Rails.root.join("app/assets/images/Yuxin.jpg").open,
  user_id: user.id
}])