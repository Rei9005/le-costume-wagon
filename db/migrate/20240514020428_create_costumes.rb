class CreateCostumes < ActiveRecord::Migration[7.1]
  def change
    create_table :costumes do |t|
      t.integer :price
      t.string :character
      t.string :size
      t.text :description
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
