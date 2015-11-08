json.array!(@achievements) do |achievement|
  json.extract! achievement, :id, :when, :what
  json.url achievement_url(achievement, format: :json)
end
