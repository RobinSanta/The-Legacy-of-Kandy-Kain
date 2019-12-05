class HuntersController < ApplicationController
    def index
        @hunters = Hunter.all
    end

    def show 
        locate
    end

    def new
        @hunter = Hunter.new
    end

    def create
        @hunter = Hunter.new(hunter_params)
        @hunter.save
        redirect_to @hunter
    end

    def edit
        locate
    end

    def update
        locate
        @hunter.update(hunter_params)
        redirect_to @hunter
    end

    private
    def hunter_params
        params.require(:hunter).permit(:name, :hp, :speed)
    end

    def locate
        @hunter = Hunter.find(params[:id])
    end
end
