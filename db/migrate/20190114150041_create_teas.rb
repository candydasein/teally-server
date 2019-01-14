class CreateTeas < ActiveRecord::Migration[5.2]
  def change
    create_table :teas do |t|
      t.string :name
      t.string :family
      t.string :info
      t.string :country
      t.string :picture

      t.timestamps
    end
  end
end
