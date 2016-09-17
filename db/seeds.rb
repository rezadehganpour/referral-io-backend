# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


["Front end Developer", "Back end Developer", "Full Stack Developer"].each do |role|
  unless Role.exists?(name: role)
    Role.create(name: role)
  end
[User].each(&:delete_all)
User.create(first_name: "Reza", last_name: "Dehgan", email: "rezadehganpour@gmail.com", skills: [{"Java" => [1, 2]}, {"Ruby" => [3, 5]}], role: Role.find(2))
end
