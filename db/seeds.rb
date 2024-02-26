# Clear existing data
Product.destroy_all

# Seed data for Tesla models with images
Product.create(
  title: "Tesla Model S",
  description: "Electric sedan produced by Tesla, Inc.",
  image_url: "https://th.bing.com/th/id/OIP.oirFlZLlZ83a35J8tqF6nQHaD2?rs=1&pid=ImgDetMain"
)

Product.create(
  title: "Tesla Model 3",
  description: "Electric compact executive sedan produced by Tesla, Inc.",
  image_url: "https://mediacloud.carbuyer.co.uk/image/private/s--REKF_hCr--/v1595107242/carbuyer/2020/05/mod_3_1.jpg"
)

Product.create(
  title: "Tesla Model X",
  description: "Electric SUV produced by Tesla, Inc.",
  image_url: "https://th.bing.com/th/id/OIP.hueKj4ipbNdf-pdG_dt6xQHaE8?rs=1&pid=ImgDetMain"
)

# Add more Tesla models if necessary...

puts "Seed data created successfully!"

