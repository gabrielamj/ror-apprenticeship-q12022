# frozen_string_literal: true

json.extract! ability, :id, :name, :pokemon_id, :created_at, :updated_at
json.url ability_url(ability, format: :json)
