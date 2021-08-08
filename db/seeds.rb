User.create!(name: "Example User", email: "example@email.com")
User.create!(name: "Dammy User", email: "dammy@email.com")
User.create!(name: "Test User", email: "test@email.com")

Favorite.create!(user_id: 1, it: true, domestic: true, entertainment: true)
Favorite.create!(user_id: 2, business: true, world: true, science: true)
Favorite.create!(user_id: 3, business: true, entertainment: true, sports: true, it: true)
