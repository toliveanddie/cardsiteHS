json.array!(@profiles) do |profile|
  json.extract! profile, :id, :first_name, :favorite_hero_class, :battle_tag, :steam_name
  json.url profile_url(profile, format: :json)
end
