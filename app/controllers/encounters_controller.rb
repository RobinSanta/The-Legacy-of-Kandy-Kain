class EncountersController < ApplicationController
    def show
        locate
    end

    private
    def locate
        @encounter = Encounter.find(params[:id])
    end

    def encounter_params
        params.require(:encounter).permit(:advantage, :hunter_id, :vampire_id)
    end
end
