class UpdateMenuWithCategory < ActiveRecord::Migration
  def up
    add_column :menu_items, :category_id, :integer
  end

  def down
    remove_column :menu_items, :category_id
  end

end
