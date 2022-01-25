class AddPokemonBaseExperience < ActiveRecord::Migration[6.1]
  def change
    add_column("pokemons", "base_experience", :int, :default => 0)
  end
end
