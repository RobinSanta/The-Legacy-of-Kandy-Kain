class Hunter < ApplicationRecord
    has_many :encounters
    has_many :vampires, through: :encounters
end
