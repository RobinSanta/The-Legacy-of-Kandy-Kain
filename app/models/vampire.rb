class Vampire < ApplicationRecord
    has_many :abilities
    has_many :encounters
    has_many :hunters, through: :encounters

    validates :name, presence: true
    validates :hp, numericality: {greater_than: 0}
    validates :speed, numericality: {greater_than: 0}
    validates :danger_level, numericality: {less_than_or_equal_to: 10}
    validates :danger_level, numericality: {greater_than: 0}
end
