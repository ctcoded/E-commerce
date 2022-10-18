# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Deleting seeds..."
User.destroy_all
Inventory.destroy_all
Vendor.destroy_all
Address.destroy_all
Item.destroy_all
Contact.destroy_all
PurchaseOrder.destroy_all

puts "Seeding users..."
u1 = User.create(username: "cesart123", password_digest: "pwssuck")
u2 = User.create(username: "samb345", password_digest: "planningpro")
puts "✅ Done seeding profiles!"

puts "Seeding Inventories..."
p1 = Inventory.create(business_name: "Bikes!", user_id:u1.id)
p2 = Inventory.create(business_name: "Food!", user_id:u2.id)
puts "✅ Done seeding Business Inventories!"



puts "Seeding Vendors..."
v1=Vendor.create(vendor_name: "Bike Supply", user_id: u1.id)
v2=Vendor.create(vendor_name: "Food Supply", user_id: u2.id)
puts "✅ Done seeding Vendor"


puts "Seeding Addresses..."
a1=Address.create(vendor_id: v1.id, street_1: "123 somehwere St." , street_2: "n/a", city: "Austin", state: "TX", zip_code: 78766)
a2=Address.create(vendor_id: v2.id, street_1: "987 OverThere Ave.", street_2: "n/a", city: "Colorado Springs", state: "CO", zip_code: 80562 )
puts "✅ Done seeding Addresses"


puts "Seeding items..."
i1=Item.create(inventory_id: p2.id, name:"tomato", description:"veg", vendor_id: v2.id, image: "n/a", on_hand: 20, committed: 5, total_sold: 15)
i2=Item.create(inventory_id: p2.id, name:"lettuce", description:"veg", vendor_id: v2.id, image: "n/a", on_hand: 15, committed: 6, total_sold: 15)
i3=Item.create(inventory_id: p2.id, name:"apple", description:"fruit", vendor_id: v2.id, image: "n/a", on_hand: 10, committed: 7, total_sold: 15)
i4=Item.create(inventory_id: p2.id, name:"butter", description:"dairy", vendor_id: v2.id, image: "n/a", on_hand: 25, committed: 8, total_sold: 15)
i5=Item.create(inventory_id: p2.id, name:"soy milk", description:"dairy-alternative", vendor_id: v2.id, image: "n/a", on_hand: 5, committed: 9, total_sold: 15)
i6=Item.create(inventory_id: p1.id, name:"chain", description: "11 speed chain", vendor_id: v1.id, image: "n/a", on_hand: 30, committed: 15, total_sold: 40 )
i7=Item.create(inventory_id: p1.id, name: "brake pad", description: "sram dual piston brake pad", vendor_id: v1.id, image: "n/a", on_hand: 30, committed: 15, total_sold: 4)
i8=Item.create(inventory_id: p1.id, name: "mtb tire", description: "maxxis dhf 29x2.5", vendor_id: v1.id, image: "n/a", on_hand: 15, committed: 15, total_sold: 0)
i9=Item.create(inventory_id: p1.id, name: "road tire", description: "refuse 700x32 maxxshield", vendor_id: v1.id, image: "n/a", on_hand: 40, committed: 22, total_sold:60 )
i10=Item.create(inventory_id: p1.id, name: "grips", description: "Red silicone grips", vendor_id: v1.id, image: "n/a", on_hand: 5, committed: 5, total_sold: 20)
puts "✅ Done seeding items"



puts "Seeding Contacts..."
c1= Contact.create(address_id: a1.id, phone: "111-111-1111 ", fax: "333-333-3333")
c2= Contact.create(address_id: a2.id, phone: "222-222-2222", fax: "444-444-4444")
puts "✅ Done seeding Contacts"



puts "Seeding PurchaseOrder..."
po1=PurchaseOrder.create(user_id: u1.id, order_notes: "These are all bike parts")
po2=PurchaseOrder.create(user_id: u2.id, order_notes: "These are all food items")
puts "✅ Done seeding PurchaseOrder"



