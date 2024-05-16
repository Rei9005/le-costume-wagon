class AddGenreToCostumes < ActiveRecord::Migration[7.1]
  def change
    add_column :costumes, :genre, :string
  end
end
