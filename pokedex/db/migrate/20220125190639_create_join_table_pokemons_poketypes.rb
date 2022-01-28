# frozen_string_literal: true

class CreateJoinTablePokemonsPoketypes < ActiveRecord::Migration[6.1]
  def change
    create_join_table :pokemons, :poketypes do |t|
      t.index %i[pokemon_id poketype_id]
      # t.index [:poketype_id, :pokemon_id]
    end
  end
end
