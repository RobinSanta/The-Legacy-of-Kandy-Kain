class Encounter < ApplicationRecord
    belongs_to :hunter
    belongs_to :vampire
end
