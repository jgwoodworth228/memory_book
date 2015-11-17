json.array!(@pages) do |page|
  json.extract! page, :id, :user_id, :book_id, :page_image_url, :page_image_caption, :page_bullet_01, :page_bullet_02
  json.url page_url(page, format: :json)
end
