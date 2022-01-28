# frozen_string_literal: true

class Poketype < ApplicationRecord
  has_and_belongs_to_many :pokemons
end
