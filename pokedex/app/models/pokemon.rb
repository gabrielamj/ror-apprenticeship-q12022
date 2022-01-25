class Pokemon < ApplicationRecord
    has_and_belongs_to_many :trainers
    has_and_belongs_to_many :abilities

    validates :name, presence: true
    validates :poketype, presence: true
end
