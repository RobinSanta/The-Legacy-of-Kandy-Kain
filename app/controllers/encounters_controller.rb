class EncountersController < ApplicationController
    def show
        locate
    end

    private
    def locate
        @encounter = Encounter.find(params[:id])
    end
end
