class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name
      t.string :brand
      t.integer :price
      t.string :size
      t.string :genre
      t.string :type
      t.integer :discount

      t.timestamps
    end
  end
end
