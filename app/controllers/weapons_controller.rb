class WeaponsController < ApplicationController
    def index
        @weapons = Weapon.all
    end

    def show 
        locate
    end

    def new
        @weapon = Weapon.new
    end

    def create
        @weapon = Weapon.new(weapon_params)
        @weapon.save
        redirect_to @weapon
    end

    def edit
        locate
    end

    def update
        locate
        @weapon.update(weapon_params)
        redirect_to @weapon
    end

    private
    def weapon_params
        params.require(:weapon).permit(:name, :damage, :speed, :description, :hunter_id)
    end

    def locate
        @weapon = Weapon.find(params[:id])
    end
end
