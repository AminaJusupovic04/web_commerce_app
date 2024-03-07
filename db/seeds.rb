# Clear existing data
Product.destroy_all

# Seed data for Tesla models with images
Product.create(
  title: "Tesla Model S",
  description: "Electric sedan produced by Tesla, Inc.",
  image_url: "https://s1.cdn.autoevolution.com/images/gallery/TESLA-MOTORS-Model-S-4693_64.jpg"
)

Product.create(
  title: "Tesla Model 3",
  description: "Electric compact executive sedan produced by Tesla, Inc.",
  image_url: "https://s1.cdn.autoevolution.com/images/gallery/TESLA-MOTORS-Model-3-5647_4.jpg"
)

Product.create(
  title: "Tesla Model X",
  description: "Electric SUV produced by Tesla, Inc.",
  image_url: "https://images.hdqwalls.com/wallpapers/tesla-model-x-front-q2.jpg"
)

# Add more Tesla models if necessary...

puts "Seed data created successfully!"


