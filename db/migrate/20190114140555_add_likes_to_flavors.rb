class AddLikesToFlavors < ActiveRecord::Migration[5.2]
  def change
    add_column :flavors, :likes, :integer
  end
end
