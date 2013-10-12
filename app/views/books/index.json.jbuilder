json.array!(@books) do |book|
  json.extract! book, :author, :title, :content
  json.url book_url(book, format: :json)
end
