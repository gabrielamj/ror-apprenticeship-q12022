class Pokemon < ApplicationRecord
    validates :name, presence: true
    validates :poketype, presence: true
end
