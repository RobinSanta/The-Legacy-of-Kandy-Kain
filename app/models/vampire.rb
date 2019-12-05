class Vampire < ApplicationRecord
    has_many :abilities
    has_many :encounters
    has_many :hunters, through: :encounters
end
