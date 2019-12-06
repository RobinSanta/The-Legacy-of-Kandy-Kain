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
        if @weapon.valid?
            @weapon.save
            redirect_to @weapon
        else
            render :new
        end
    end

    def edit
        locate
    end

    def update
        locate
        if @weapon.valid?
            @weapon.update(weapon_params)
            redirect_to @weapon
        else
            render :edit
        end
    end

    def destroy
        locate
        @weapon.destroy
        redirect_to weapons_path
    end

    private
    def weapon_params
        params.require(:weapon).permit(:name, :damage, :speed, :description, :hunter_id)
    end

    def locate
        @weapon = Weapon.find(params[:id])
    end
end
