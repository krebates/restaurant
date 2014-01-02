class ChangeCategoriesColumn < ActiveRecord::Migration
  def change
    add_column :menu_items, :category, :string
    remove_column :menu_items, :category_id, :integer
  end
end
