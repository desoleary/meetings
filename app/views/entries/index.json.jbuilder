json.array!(@entries) do |entry|
  json.extract! entry, :id, :title, :description, :starts_at, :ends_at
  json.url entry_url(entry, format: :json)
end
