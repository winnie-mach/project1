class Changefavourites < ActiveRecord::Migration[5.1]
  def change
    change_table :favourites do |t|
    t.remove :title, :creater, :image
    t.integer :work_id
    end
  end
end

# could use:
# remove_column :title, creator, image
# add_column :work_id
# but this way doesn't allow me to make work_id an integer field. Would have had to do it when I was generating the table. i.e.
#1. rails generate migration AddWorkIdToFavourites work_id:integer
# then a separate one for remove columns:
#2. rails generate migration RemoveTitleCreatorImageFromFavourites :title, :creator, :image
