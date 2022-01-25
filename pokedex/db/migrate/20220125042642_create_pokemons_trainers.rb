class CreatePokemonsTrainers < ActiveRecord::Migration[6.1]
  def change
    create_table :pokemons_trainers, :id => false do |t|
      t.integer "trainer_id"
      t.integer "pokemon_id"
    end
    add_index("pokemons_trainers", ["trainer_id","pokemon_id"])
  end
end
