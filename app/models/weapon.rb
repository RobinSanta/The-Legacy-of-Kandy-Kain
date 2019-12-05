class Weapon < ApplicationRecord
    belongs_to :hunter

    validates :name, presence: true
    validates :damage, numericality: {greater_than: 0}
    validates :speed, numericality: {greater_than: 0}
end
