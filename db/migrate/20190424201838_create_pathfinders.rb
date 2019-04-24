class CreatePathfinders < ActiveRecord::Migration[5.2]
  def change
    create_table :pathfinders do |t|
      t.string :name
      t.string :last_name
      t.datetime :birthday
      t.integer :dni
      t.references :unit, foreign_key: true

      t.timestamps
    end
  end
end
