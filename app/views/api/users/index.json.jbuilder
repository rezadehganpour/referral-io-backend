json.array! @users do |user|
  json.id user.id
  json.firstname user.first_name
  json.lastname user.last_name
  json.email user.email
  json.skills user.skills do |s|
    json.id s.id
    json.name s.name
    json.category s.category.name
    json.score user.skill_users.find_by(skill: s).score
    json.level user.skill_users.find_by(skill: s).level.name
    json.reviewer_count user.skill_users.find_by(skill: s).reviewer_count
  end
  json.role user.role.name
end
