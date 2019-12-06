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
        if @ability.valid?
            @ability.save
            redirect_to @ability
        else
            render :new
        end
    end

    def edit
        locate
    end

    def update
        locate
        if @ability.valid?
            @ability.update(ability)
            redirect_to @ability
        else
            render :edit
        end
    end

    def destroy
        locate
        @ability.destroy
        redirect_to abilities_path
    end

    private
    def ability_params
        params.require(:ability).permit(:name, :damage, :speed, :description, :vampire_id)
    end

    def locate
        @ability = Ability.find(params[:id])
    end
end
