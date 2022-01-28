# frozen_string_literal: true

class Trainer < ApplicationRecord
  has_and_belongs_to_many :pokemons
end
