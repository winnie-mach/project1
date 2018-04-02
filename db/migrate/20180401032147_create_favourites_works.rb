class CreateFavouritesWorks < ActiveRecord::Migration[5.1]
  def change
    create_table :favourites_works do |t|
      t.integer :favourite_id
      t.integer :work_id
    end
  end
end
