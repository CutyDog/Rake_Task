User.create!(name: "Example User", email: "example@email.com")
User.create!(name: "Dammy User", email: "dammy@email.com")

Favorite.create!(user_id: 1, it: true, domestic: true, entertainment: true)
Favorite.create!(user_id: 2, business: true, world: true, science: true)