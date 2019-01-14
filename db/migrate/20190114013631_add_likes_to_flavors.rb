class AddLikesToFlavors < ActiveRecord::Migration[5.2]
  def change
    add_reference :flavors, :likes, foreign_key: true
  end
end
