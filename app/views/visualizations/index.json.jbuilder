json.array!(@visualizations) do |visualization|
  json.extract! visualization, :id, :name
  json.url visualization_url(visualization, format: :json)
end
