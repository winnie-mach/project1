class CreateWorks < ActiveRecord::Migration[5.1]
  def change
    create_table :works do |t|
      t.text :title
      t.text :description
      t.text :field
      t.integer :hours
      t.text :tools
      t.text :image
      t.integer :user_id

      t.timestamps
    end
  end
end
