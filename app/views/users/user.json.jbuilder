json.array!(@users) do |user|
  json.firstname user.first_name
end
