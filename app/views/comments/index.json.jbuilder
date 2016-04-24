json.array!(@comments) do |comment|
  json.extract! comment, :id, :Name, :Comment
  json.url comment_url(comment, format: :json)
end
