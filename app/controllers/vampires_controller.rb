class VampiresController < ApplicationController
    def index
        @vampires = Vampire.all
    end

    def show 
        locate
    end

    def new
        @vampire = Vampire.new
    end

    def create
        @vampire = Vampire.new(vampire_params)
        @vampire.save
        redirect_to @vampire
    end

    def edit
        locate
    end

    def update
        locate
        @vampire.update(vampire_params)
        redirect_to @vampire
    end

    private
    def vampire_params
        params.require(:vampire).permit(:name, :hp, :speed)
    end

    def locate
        @vampire = Vampire.find(params[:id])
    end
end
