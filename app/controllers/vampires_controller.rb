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
        if @vampire.valid?
            @vampire.save
            redirect_to @vampire
        else
            render :new
        end
    end

    def edit
        locate
    end

    def update
        locate
        if @vampire.valid?
            vampire.update(vampire_params)
            redirect_to @vampire
        else
            render :edit
        end
    end

    def destroy
        locate
        @vampire.destroy
        redirect_to vampires_path
    end

    private
    def vampire_params
        params.require(:vampire).permit(:name, :hp, :speed, :danger_level)
    end

    def locate
        @vampire = Vampire.find(params[:id])
    end
end
