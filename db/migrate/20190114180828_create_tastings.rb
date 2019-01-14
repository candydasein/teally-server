class CreateTastings < ActiveRecord::Migration[5.2]
  def change
    create_table :tastings do |t|
      t.references :user, foreign_key: true
      t.references :tea, foreign_key: true

      t.timestamps
    end
  end
end
