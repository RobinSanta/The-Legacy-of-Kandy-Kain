class Hunter < ApplicationRecord
    has_many :weapons
    has_many :encounters
    has_many :vampires, through: :encounters

    validates :name, presence: true
    validates :hp, numericality: {greater_than: 0}
    validates :speed, numericality: {greater_than: 0}

end
