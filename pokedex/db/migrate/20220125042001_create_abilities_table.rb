class CreateAbilitiesTable < ActiveRecord::Migration[6.1]
  def change
    create_table :abilities do |t|
      t.integer "pokemon_id"
      t.string "name"

      t.timestamps
    end
  end
end
