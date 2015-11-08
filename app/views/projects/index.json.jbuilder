json.array!(@projects) do |project|
  json.extract! project, :id, :image, :name, :url, :order, :visible
  json.url project_url(project, format: :json)
end
