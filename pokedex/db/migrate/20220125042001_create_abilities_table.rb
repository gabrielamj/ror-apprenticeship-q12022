# frozen_string_literal: true

class CreateAbilitiesTable < ActiveRecord::Migration[6.1]
  def change
    create_table :abilities do |t|
      t.string 'name'

      t.timestamps
    end
  end
end
