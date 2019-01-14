class CreateFlavors < ActiveRecord::Migration[5.2]
  def change
    create_table :flavors do |t|
      t.string :name
      t.string :first_parent
      t.string :second_parent

      t.timestamps
    end
  end
end
