json.array! @users do |user|
  json.id user.id
  json.firstname user.first_name
  json.lastname user.last_name
  json.email user.email
  json.skills user.skills
  json.role user.role.name
end
