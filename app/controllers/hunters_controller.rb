class HuntersController < ApplicationController
    def index
        @hunters = Hunter.all
    end

    def show 
        @hunter = Hunter.find(params[:id])
    end

    def new
        @hunter = Hunter.new
    end

    def create
        @hunter = Hunter.new(hunter_params)
        @hunter.save
        redirect_to @hunter
    end

    private
    def hunter_params
        params.require(:hunter).permit(:name, :hp, :speed)
    end
end
