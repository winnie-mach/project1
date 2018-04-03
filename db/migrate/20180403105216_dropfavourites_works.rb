class DropfavouritesWorks < ActiveRecord::Migration[5.1]
  def change
    drop_table :favourites_works
  end
end
