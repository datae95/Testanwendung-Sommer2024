# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

User.create [{
  email: "user@cde.ev",
  password: "asdfasdf",
  password_confirmation: "asdfasdf",
  admin: false
}, {
  email: "admin@cde.ev",
  password: "asdfasdf",
  password_confirmation: "asdfasdf",
  admin: true
}]

Jewel.create [{
  name: "Pundit",
  version: "2.3.2",
  url: "https://github.com/varvet/pundit",
  description: "Used for authorization. You will learn more about this topic in the course."
}, {
  name: "Devise",
  version: "4.9.4",
  url: "https://github.com/heartcombo/devise",
  description: "Used for authentication. You will learn more about this topic in the course."
}, {
  name: "Letter Opener",
  version: "1.10.0",
  url: "https://github.com/ryanb/letter_opener",
  description: "E-Mails will be opened in a new browser tab."
}, {
  name: "Standard",
  version: "1.39.0",
  url: "https://github.com/testdouble/standardrb",
  description: "Enforce consistent style in your project."
}]
