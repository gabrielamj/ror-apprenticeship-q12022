class AddColumsToPokemonsTable < ActiveRecord::Migration[6.1]
  def change
    add_column("pokemons", "height", :int, :default => 0)
    add_column("pokemons", "weight", :int, :default => 0)
    add_column("pokemons", "index", :int, :default => 0)
    add_column("pokemons", "weaknes", :int, :default => 0)
    add_column("pokemons", "img", :string, :default => 0)
  end
end
