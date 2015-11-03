json.array!(@abouts) do |about|
  json.extract! about, :id, :title, :description, :order
  json.url about_url(about, format: :json)
end
