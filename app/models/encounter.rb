class Encounter < ApplicationRecord
    belongs_to :hunter
    belongs_to :vampire

    def time
        current_hour = Time.new.now
        if current_hour >= 5 && current_hour < 19
            self.advantage = true
            return "The Sun is with you!"
        elsif current_hour < 5 && current_hour >= 19
            self.advantage = false
            return "The vampire is at full strength!"
        end
    end
end
