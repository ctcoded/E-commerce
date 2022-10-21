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
puts "Seeds deleted..."

puts "Seeding users..."
u1 = User.create(username: "cesart123", password_digest: "pwssuck")
u2 = User.create(username: "samb345", password_digest: "planningpro")
puts "✅ Done seeding profiles!"

puts "Seeding Inventories..."
p1 = Inventory.create(business_name: "Bikes!", user_id:u1.id)
p2 = Inventory.create(business_name: "Restaurant!", user_id:u2.id)
puts "✅ Done seeding Business Inventories!"



puts "Seeding Vendors..."
v1=Vendor.create(vendor_name: "Mountain Bike Parts Supply", user_id: u1.id)
v2=Vendor.create(vendor_name: "Food Supply", user_id: u2.id)
v3=Vendor.create(vendor_name: "Road bike Bike Parts Supply", user_id: u1.id)
v4=Vendor.create(vendor_name: "Bakery Supply", user_id: u2.id)
puts "✅ Done seeding Vendor"


puts "Seeding Addresses..."
a1=Address.create(vendor_id: v1.id, street_1: "123 Somehwere St." , street_2: "n/a", city: "Austin", state: "TX", zip_code: 78766)
a2=Address.create(vendor_id: v2.id, street_1: "987 OverThere Ave.", street_2: "n/a", city: "Colorado Springs", state: "CO", zip_code: 80562 )
a3=Address.create(vendor_id: v3.id, street_1: "3412 Over Here St." , street_2: "n/a", city: "Austin", state: "TX", zip_code: 75796)
a4=Address.create(vendor_id: v4.id, street_1: "456 Bakers Ln." , street_2: "n/a", city: "Sugarland", state: "TX", zip_code: 71716)

puts "✅ Done seeding Addresses"

puts "Seeding PurchaseOrder..."
o1=PurchaseOrder.create(user_id: u1.id, order_notes: "These are all bike parts 1")
o2=PurchaseOrder.create(user_id: u2.id, order_notes: "These are all food items 1")
o3=PurchaseOrder.create(user_id: u1.id, order_notes: "These are all bike parts 2")
o4=PurchaseOrder.create(user_id: u2.id, order_notes: "These are all food items 2")
o5=PurchaseOrder.create(user_id: u1.id, order_notes: "These are all bike parts 3")
o6=PurchaseOrder.create(user_id: u2.id, order_notes: "These are all food items 3")
o7=PurchaseOrder.create(user_id: u1.id, order_notes: "These are all bike parts 4")
o8=PurchaseOrder.create(user_id: u2.id, order_notes: "These are all food items 4")
puts "✅ Done seeding PurchaseOrder"


puts "Seeding items..."
i1=Item.create(inventory_id: p2.id, name:"tomato", description:"veg", vendor_id: v2.id, image: "n/a", on_hand: 20, committed: 5, total_sold: 15, purchase_order_id: o2.id)
i2=Item.create(inventory_id: p2.id, name:"lettuce", description:"veg", vendor_id: v2.id, image: "n/a", on_hand: 15, committed: 6, total_sold: 15, purchase_order_id: o2.id)
i3=Item.create(inventory_id: p2.id, name:"apple", description:"fruit", vendor_id: v2.id, image: "n/a", on_hand: 10, committed: 7, total_sold: 15, purchase_order_id: o2.id)
i4=Item.create(inventory_id: p2.id, name:"butter", description:"dairy", vendor_id: v2.id, image: "n/a", on_hand: 25, committed: 8, total_sold: 15, purchase_order_id: o2.id)
i5=Item.create(inventory_id: p2.id, name:"soy milk", description:"dairy-alternative", vendor_id: v2.id, image: "n/a", on_hand: 5, committed: 9, total_sold: 15, purchase_order_id: o2.id)
i6=Item.create(inventory_id: p1.id, name:"xx1 chain", description: "11 speed chain", vendor_id: v1.id, image: "n/a", on_hand: 30, committed: 15, total_sold: 40, purchase_order_id: o1.id )
i7=Item.create(inventory_id: p1.id, name:"sram brake pads", description: "sram level brake pads", vendor_id: v1.id, image: "n/a", on_hand: 30, committed: 15, total_sold: 4, purchase_order_id: o1.id)
i8=Item.create(inventory_id: p1.id, name:"mtb tire", description: "maxxis dhf 29x2.5", vendor_id: v1.id, image: "n/a", on_hand: 15, committed: 15, total_sold: 0, purchase_order_id: o1.id)
i9=Item.create(inventory_id: p1.id, name:"mtb tire", description: "vittoria mezcal 29x2.35", vendor_id: v1.id, image: "n/a", on_hand: 40, committed: 22, total_sold:60, purchase_order_id: o1.id )
i10=Item.create(inventory_id: p1.id, name:"grips", description: "Red silicone grips", vendor_id: v1.id, image: "n/a", on_hand: 5, committed: 5, total_sold: 20, purchase_order_id: o1.id)
i11=Item.create(inventory_id: p2.id, name:"broccoli heads", description:"vegetable", vendor_id: v2.id, image: "n/a", on_hand: 20, committed: 5, total_sold: 15, purchase_order_id: o3.id)
i12=Item.create(inventory_id: p2.id, name:"lacitano kale", description:"vegetable", vendor_id: v2.id, image: "n/a", on_hand: 15, committed: 6, total_sold: 15, purchase_order_id: o3.id)
i13=Item.create(inventory_id: p2.id, name:"cauliflower", description:"vegetable", vendor_id: v2.id, image: "n/a", on_hand: 10, committed: 7, total_sold: 15, purchase_order_id: o3.id)
i14=Item.create(inventory_id: p2.id, name:"coconut milk", description:"dairy", vendor_id: v2.id, image: "n/a", on_hand: 25, committed: 8, total_sold: 15, purchase_order_id: o3.id)
i15=Item.create(inventory_id: p2.id, name:"cashews", description:"nut/seeds/legume", vendor_id: v2.id, image: "n/a", on_hand: 5, committed: 9, total_sold: 15, purchase_order_id: o3.id)
i16=Item.create(inventory_id: p2.id, name:"almond flour", description: "almond flour", vendor_id: v4.id, image: "n/a", on_hand: 4, committed: 2, total_sold: 15, purchase_order_id: o4.id )
i17=Item.create(inventory_id: p2.id, name:"baking powder", description: "baking product", vendor_id: v4.id, image: "n/a", on_hand: 30, committed: 15, total_sold: 4, purchase_order_id: o4.id)
i18=Item.create(inventory_id: p2.id, name:"All Purpose Flour", description: "flour", vendor_id: v4.id, image: "n/a", on_hand: 15, committed: 15, total_sold: 0, purchase_order_id: o4.id)
i19=Item.create(inventory_id: p2.id, name:"Baking Soda", description: "baking soda", vendor_id: v4.id, image: "n/a", on_hand: 40, committed: 22, total_sold:60, purchase_order_id: o4.id )
i20=Item.create(inventory_id: p2.id, name:"Coacoa Powder", description: "Coacoa Powder", vendor_id: v4.id, image: "n/a", on_hand: 5, committed: 5, total_sold: 20, purchase_order_id: o4.id)
i21=Item.create(inventory_id: p2.id, name:"road tire", description:"continental 5000S tr", vendor_id: v3.id, image: "n/a", on_hand: 20, committed: 5, total_sold: 15, purchase_order_id: o5.id)
i22=Item.create(inventory_id: p2.id, name:"rear derailleur", description:"sram force axs 11-36", vendor_id: v3.id, image: "n/a", on_hand: 15, committed: 6, total_sold: 15, purchase_order_id: o5.id)
i23=Item.create(inventory_id: p2.id, name:"cassette", description:"sram rival xplr axs 11-44", vendor_id: v3.id, image: "n/a", on_hand: 10, committed: 7, total_sold: 15, purchase_order_id: o5.id)
i24=Item.create(inventory_id: p2.id, name:"wheelset", description:"zipp 303s", vendor_id: v3.id, image: "n/a", on_hand: 25, committed: 8, total_sold: 15, purchase_order_id: o5.id)
i25=Item.create(inventory_id: p2.id, name:"brakes", description:"sram rival axs brakes", vendor_id: v3.id, image: "n/a", on_hand: 5, committed: 9, total_sold: 15, purchase_order_id: o5.id)
i26=Item.create(inventory_id: p1.id, name:"handlebar tape", description: "lizard skins dsp handlebar tape", vendor_id: v3.id, image: "n/a", on_hand: 30, committed: 15, total_sold: 40, purchase_order_id: o6.id )
i27=Item.create(inventory_id: p1.id, name:"brake pad", description: "sram red/force/rival axs brake pad", vendor_id: v3.id, image: "n/a", on_hand: 30, committed: 15, total_sold: 4, purchase_order_id: o6.id)
i28=Item.create(inventory_id: p1.id, name:"road tire", description: "continental gatorskin 700x25c", vendor_id: v3.id, image: "n/a", on_hand: 15, committed: 15, total_sold: 0, purchase_order_id: o6.id)
i29=Item.create(inventory_id: p1.id, name:"gravel tire", description: "maxxis refuse 700x40c", vendor_id: v3.id, image: "n/a", on_hand: 40, committed: 22, total_sold:60, purchase_order_id: o6.id )
i30=Item.create(inventory_id: p1.id, name:"road saddle", description: "ergon sr", vendor_id: v3.id, image: "n/a", on_hand: 5, committed: 5, total_sold: 20, purchase_order_id: o6.id)
i31=Item.create(inventory_id: p2.id, name:"lemon juice", description:"veg", vendor_id: v4.id, image: "n/a", on_hand: 20, committed: 5, total_sold: 15, purchase_order_id: o7.id)
i32=Item.create(inventory_id: p2.id, name:"vanilla", description:"veg", vendor_id: v4.id, image: "n/a", on_hand: 15, committed: 6, total_sold: 15, purchase_order_id: o7.id)
i33=Item.create(inventory_id: p2.id, name:"lavender", description:"fruit", vendor_id: v4.id, image: "n/a", on_hand: 10, committed: 7, total_sold: 15, purchase_order_id: o7.id)
i34=Item.create(inventory_id: p2.id, name:"butter", description:"dairy", vendor_id: v4.id, image: "n/a", on_hand: 25, committed: 8, total_sold: 15, purchase_order_id: o7.id)
i35=Item.create(inventory_id: p2.id, name:"almond milk", description:"dairy-alternative", vendor_id: v4.id, image: "n/a", on_hand: 5, committed: 9, total_sold: 15, purchase_order_id: o7.id)
i36=Item.create(inventory_id: p1.id, name:"Niner RDO flat top handlebar", description: "handlebar", vendor_id: v1.id, image: "n/a", on_hand: 30, committed: 15, total_sold: 40, purchase_order_id: o8.id )
i37=Item.create(inventory_id: p1.id, name:"Race Face Turbine R", description: "crankset w/o chainring", vendor_id: v1.id, image: "n/a", on_hand: 30, committed: 15, total_sold: 4, purchase_order_id: o8.id)
i38=Item.create(inventory_id: p1.id, name:"Rockshox Sid Ultimate", description: "120 mm travel 29", vendor_id: v1.id, image: "n/a", on_hand: 15, committed: 15, total_sold: 0, purchase_order_id: o8.id)
i39=Item.create(inventory_id: p1.id, name:"Niner RDO Rigid Carbon Fork", description: "fully rigid carbon fork", vendor_id: v1.id, image: "n/a", on_hand: 40, committed: 22, total_sold:60, purchase_order_id: o8.id )
i40=Item.create(inventory_id: p1.id, name:"Ergon SM3 saddle S/M", description: "trail oriented saddle", vendor_id: v1.id, image: "n/a", on_hand: 5, committed: 5, total_sold: 20, purchase_order_id: o8.id)
puts "✅ Done seeding items"


puts "Seeding Contacts..."
c1= Contact.create(address_id: a1.id, phone: "111-111-1111 ", fax: "333-333-3333")
c2= Contact.create(address_id: a2.id, phone: "222-222-2222", fax: "444-444-4444")
c3= Contact.create(address_id: a1.id, phone: "111-111-1111 ", fax: "333-333-3333")
c4= Contact.create(address_id: a2.id, phone: "222-222-2222", fax: "444-444-4444")
puts "✅ Done seeding Contacts"







