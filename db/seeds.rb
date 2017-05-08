10.times do
  category = Category.create(name: Faker::Commerce.department(1))
  user = User.create(user_name: Faker::Internet.user_name(4..10), email: Faker::Internet.free_email, password: "password")
  rand(3..15).times do
    item = Item.create(name: Faker::Commerce.product_name, price: Faker::Commerce.price, description: Faker::Friends.quote, user_id: rand(1..10))
    category.items << item
  end
end
