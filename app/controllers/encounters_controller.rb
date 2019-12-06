class EncountersController < ApplicationController
    def show
        locate
    end

    def new
        @encounter = Encounter.new
    end

    def create
        @encounter = Encounter.new(encounter_params)
        @encounter.save
        redirect_to @encounter
    end

    private
    def locate
        @encounter = Encounter.find(params[:id])
    end

    def encounter_params
        params.require(:encounter).permit(:advantage, :hunter_id, :vampire_id)
    end
end
