# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

if Doorkeeper::Application.count.zero?
  Doorkeeper::Application.create(name: "Browser client", redirect_uri: "", scopes: "")
end

if Classroom.count.zero?
  Classroom.create(name: 'Snails');
  Classroom.create(name: 'Roots');
  Classroom.create(name: 'Seeds');
  Classroom.create(name: 'Volcanoes');
end
