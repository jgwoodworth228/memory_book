class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.integer :user_id
      t.string :book_title
      t.string :title_page_image_url

      t.timestamps null: false
    end
  end
end
