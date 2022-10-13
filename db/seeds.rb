# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Seeding users..."
u1 = User.create(username: "cesart123", password_digest: "pwssuck")
u2 = User.create(username: "samb345", password_digest: "planningpro")
u3 = User.create(username: "simon987", password_digest: "musicjam")
puts "✅ Done seeding profiles!"

puts "Seeding Inventories..."
p1 = Inventory.create(business_name: "Bikes!", user_id:u1.id)
p2 = Inventory.create(business_name: "Food!", user_id:u2.id)
puts "✅ Done seeding Business Inventories!"

puts "Seeding items..."
i1=Item.create(inventory_id: p2.id, name:"tomato", description:"veg", vendor:"food supplier", image: "n/a", on_hand: 20, committed: 5, total_sold: 15)
i2=Item.create(inventory_id: p2.id, name:"lettuce", description:"veg", vendor: "food supplier", image: "n/a", on_hand: 15, committed: 6, total_sold: 15)
i3=Item.create(inventory_id: p2.id, name:"apple", description:"fruit", vendor: "food supplier", image: "n/a", on_hand: 10, committed: 7, total_sold: 15)
i4=Item.create(inventory_id: p2.id, name:"butter", description:"dairy", vendor: "food supplier", image: "n/a", on_hand: 25, committed: 8, total_sold: 15)
i5=Item.create(inventory_id: p2.id, name:"soy milk", description:"dairy-alternative", vendor: "food supplier", image: "n/a", on_hand: 5, committed: 9, total_sold: 15)
i6=Item.create(inventory_id: p1.id, name:"chain", description: "11 speed chain", vendor: "Bike mfg", image: "n/a", on_hand: 30, committed: 15, total_sold: 40 )
i7=Item.create(inventory_id: p1.id, name: "brake pad", description: "sram dual piston brake pad", vendor: "Bike mfg 2", image: "n/a", on_hand: 30, committed: 15, total_sold: 4)
i8=Item.create(inventory_id: p1.id, name: "mtb tire", description: "maxxis dhf 29x2.5", vendor: "Maxxis", image: "n/a", on_hand: 15, committed: 15, total_sold: 0)
i9=Item.create(inventory_id: p1.id, name: "road tire", description: "refuse 700x32 maxxshield", vendor: "Maxxis", image: "n/a", on_hand: 40, committed: 22, total_sold:60 )
i10=Item.create(inventory_id: p1.id, name: "grips", description: "Red silicone grips", vendor: "ESI", image: "n/a", on_hand: 5, committed: 5, total_sold: 20)
puts "✅ Done seeding items"
