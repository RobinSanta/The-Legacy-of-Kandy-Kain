class Vampire < ApplicationRecord
    has_many :abilites
    has_many :encounters
    has_many :hunters, through: :encounters
end
