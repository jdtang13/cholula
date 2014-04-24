json.array!(@annot_comments) do |annot_comment|
  json.extract! annot_comment, :body
  json.url annot_comment_url(annot_comment, format: :json)
end
