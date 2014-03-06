json.array!(@users) do |user|
  json.extract! user, :id, :pseudo, :age, :sexe, :ville, :depart, :pays
  json.url user_url(user, format: :json)
end
