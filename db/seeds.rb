10.times do
  category = Category.create(name: Faker::Commerce.department(1))
  rand(3..15).times do
    item = Item.create(name: Faker::Commerce.product_name, price: Faker::Commerce.price, description: Faker::Friends.quote)
    category.items << item
  end
end
