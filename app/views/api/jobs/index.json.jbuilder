json.array! @jobs do |job|
  json.id job.id
  json.name job.name
  json.description job.description
  json.required_skills job.skills
end
