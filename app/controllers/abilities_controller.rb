class AbilitiesController < ApplicationController
    def index
        @abilities = Ability.all
    end

    def show 
        locate
    end

    def new
        @ability = Ability.new
    end

    def create
        @ability = Ability.new(ability_params)
        @ability.save
        redirect_to @ability
    end

    def edit
        locate
    end

    def update
        locate
        @ability.update(ability)
        redirect_to @ability
    end

    private
    def ability_params
        params.require(:ability).permit(:name, :damage, :speed, :description, :vampire_id)
    end

    def locate
        @ability = Ability.find(params[:id])
    end
end
