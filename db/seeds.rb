# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?
ReleaseEraTag.create(:id => 1, :name => '1980年代')
ReleaseEraTag.create(:id => 2, :name => '1990年代')
ReleaseEraTag.create(:id => 3, :name => '2000年代')
ReleaseEraTag.create(:id => 4, :name => '2010年代')
