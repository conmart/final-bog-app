# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Creature.destroy_all

creatures_list = [
  {
    name: "Yoda",
    description: "Small wise green guy"
  },
  {
    name: "Womprat",
    description: "Used by the rebels for target practice"
  }
]

Creature.create(creatures_list)
