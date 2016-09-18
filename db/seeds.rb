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
end
["Novice", "Beginner", "Competent", "Proficient", "Expert"].each do |level|
  unless Level.exists?(name: level)
    Level.create(name: level)
  end
end
[User].each(&:delete_all)
 u = User.create(first_name: "Reza", last_name: "Dehgan", email: "rezadehganpour@gmail.com", role: Role.find_by(name: "Front end Developer"))
 s1 = Skill.find_by(name: 'Java')
 s2 = Skill.find_by(name: "Ruby")
 l1 = Level.find_by(name: "Beginner")
 l2 = Level.find_by(name: "Proficient")
 u.skill_users.create(skill: s1, score: 0.4, level: l1, reviewer_count: 1)
 u.skill_users.create(skill: s2, score: 0.8, level: l2, reviewer_count: 1)
# Second user
 u = User.create(first_name: "Jane", last_name: "Doe", email: "janedoe@startup.com", role: Role.find_by(name: "Full Stack Developer"))
 s1 = Skill.find_by(name: 'AngularJS')
 s2 = Skill.find_by(name: "Python")
 l1 = Level.find_by(name: "Expert")
 l2 = Level.find_by(name: "Competent")
 u.skill_users.create(skill: s1, score: 0.9, level: l1, reviewer_count: 1)
 u.skill_users.create(skill: s2, score: 0.6, level: l2, reviewer_count: 1)
 if Job.exists?(name: "Ruby Web Developer")
   Job.create(name: "Ruby Web Developer", description: "Demonstrate ability in system analysis, design, development and implementation of Internet, multi-tier Client/Server applications and Intranet applications", skills: {"Ruby" => "Competent", "AngularJS"=> "Proficient"})
 end
 if Job.exists?(name: ".NET Developer")
   Job.create(name: ".NET Developer", description: "Translate Use Case Requirements, technical specifications and design into code for new or enhancement projects for internal and external clients", skills: {"C#" => "Expert"})
 end
 if Job.exists?(name: "Front End Developer")
   Job.create(name: "Front End Developer", description: "Be familiar with Configuration Management methodologies and tools, including SVN, Git, and Bamboo", skills: {"ReactJS" => "Expert", "AngularJS" => "Proficient", "EmberJS"=> "Competent"})
 end
 if Job.exists?(name: "Java Developer")
   Job.create(name: "Java Developer", description: "Follow software development methodology and follow architecture standards in both waterfall and agile environments", skills: {"Java" => "Competent", "Spring"=> "Proficient"})
 end
