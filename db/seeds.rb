puts "🌱 Seeding spices..."

# t.integer :id_no
#       t.string :item_name
#       t.integer :item_id
#       t.integer :your_bid
#       t.timestamps

# Seed your database here
User.create(email: "ogaloharrison@gmail.com", password: 'Ogaloharry@122', confirm_password: 'Ogaloharry@122')
Bid.create(name: 'Harry', id_no: 32525, item_name: 'mercedes', item_id: 123, your_bid: 12000 )

puts "✅ Done seeding!"
