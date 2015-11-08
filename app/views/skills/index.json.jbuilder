json.array!(@skills) do |skill|
  json.extract! skill, :id, :title, :description, :order
  json.url skill_url(skill, format: :json)
end
