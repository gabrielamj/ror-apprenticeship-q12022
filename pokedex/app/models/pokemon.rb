class Pokemon < ApplicationRecord
    has_and_belongs_to_many :trainers
    has_and_belongs_to_many :abilities
    has_and_belongs_to_many :poketypes

    validates :name, presence: true
    validates :base_experience, presence: true
    validates :height, presence: true
    validates :weight, presence: true
end
