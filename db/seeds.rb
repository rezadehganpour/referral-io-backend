# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
["Langueges", "Frameworks", "Libraries", "Platforms", "Databases"].each do |s|
  unless Category.exists?(name: s)
    Category.create(name: s)
  end
end

["Java", "Ruby", "Python", "C#", "Javascript"].each do |lan|
  unless Skill.exists?(name: lan)
    Skill.create(name: lan, category: Category.find_by(name: 'Langueges'))
  end
end

["AngularJS", "ReactJS", "EmberJS", "ViewJS"].each do |lib|
  unless Skill.exists?(name: lib)
    Skill.create(name: lib, category: Category.find_by(name: 'Libraries'))
  end
end

["Front end Developer", "Back end Developer", "Full Stack Developer"].each do |role|
  unless Role.exists?(name: role)
    Role.create(name: role)
  end
[User].each(&:delete_all)
User.create(first_name: "Reza", last_name: "Dehgan", email: "rezadehganpour@gmail.com", skills: [{"Java" => [1, 2]}, {"Ruby" => [3, 5]}], role: Role.find_by(name: "Front end Developer"))
end
