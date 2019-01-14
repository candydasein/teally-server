class CreateFlavorLikes < ActiveRecord::Migration[5.2]
  def change
    create_table :flavor_likes do |t|
      t.references :flavor, foreign_key: true
      t.references :tasting, foreign_key: true

      t.timestamps
    end
  end
end
