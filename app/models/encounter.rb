class Encounter < ApplicationRecord
    belongs_to :hunter
    belongs_to :vampire

    def time
        current_hour = Time.new.hour
        if current_hour >= 5 && current_hour < 19
            self.advantage = true
            return "The sun is with the Sarafam!"
        elsif current_hour < 5 && current_hour >= 19
            self.advantage = false
            return "Glory to Kain!"
        end
    end

    # def fight
    #     if 
    # end
end
