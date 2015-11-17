json.array!(@books) do |book|
  json.extract! book, :id, :user_id, :book_title, :title_page_image_url
  json.url book_url(book, format: :json)
end
