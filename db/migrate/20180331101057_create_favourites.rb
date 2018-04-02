class CreateFavourites < ActiveRecord::Migration[5.1]
  def change
    create_table :favourites do |t|
      t.text :title
      t.text :creater
      t.text :image
      t.integer :user_id

      t.timestamps
    end
  end
end
