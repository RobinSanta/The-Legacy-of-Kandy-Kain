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

    def fight
        vampire = Vampire.find(self.vampire_id)
        hunter = Hunter.find(self.hunter_id)
        while vampire.hp > 0 || hunter.hp > 0
            if vampire.speed >= hunter.speed
                hunter.hp -= vampire.abilities.first.damage
            else
                vampire.hp -= hunter.weapons.first.damage
            end
            if vampire.hp <= 0
                return "#{vampire.name} has been slain! Vae Victis!"
            elsif hunter.hp <= 0
                return "#{hunter.name}'s blood will feed #{vampire.name}. Vae Victis!"
            end
        end
    end

end
