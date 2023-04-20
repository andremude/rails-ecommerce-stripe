class ChangeSizeToBeArrayInProducts < ActiveRecord::Migration[6.1]
  def change
    change_column :products, :size, :string, array: true, default: [], using: "(string_to_array(size, ','))"
  end
end
