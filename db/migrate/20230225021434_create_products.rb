class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :price
      t.string :size
      t.string :type
      t.string :genre

      t.timestamps
    end
  end
end
