json.array! @skills do |skill|
  json.id skill.id
  json.name skill.name
  json.category skill.category.name
end
