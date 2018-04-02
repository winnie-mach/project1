class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.text :name
      t.text :surname
      t.text :role
      t.text :field
      t.text :hobbies
      t.integer :phone
      t.text :email
      t.text :image

      t.timestamps
    end
  end
end
