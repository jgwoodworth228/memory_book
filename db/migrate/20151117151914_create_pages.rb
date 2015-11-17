class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.integer :user_id
      t.integer :book_id
      t.string :page_image_url
      t.string :page_image_caption
      t.string :page_bullet_01
      t.string :page_bullet_02

      t.timestamps null: false
    end
  end
end
