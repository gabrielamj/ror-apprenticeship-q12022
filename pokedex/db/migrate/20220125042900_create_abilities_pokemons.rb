class CreateAbilitiesPokemons < ActiveRecord::Migration[6.1]
  def change
    create_table :abilities_pokemons, :id => false do |t|
      t.integer "ability_id"
      t.integer "pokemon_id"
    end
    add_index("abilities_pokemons", ["ability_id", "pokemon_id"])
  end
end
