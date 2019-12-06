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
        if @hunter.valid?
            @hunter.save
            redirect_to @hunter
        else
            render :new
        end
    end

    def edit
        locate
    end

    def update
        locate
        if @hunter.valid?
            @hunter.update(hunter_params)
            redirect_to @hunter
        else
            render :edit
        end
    end

    def destroy
        locate
        @hunter.destroy
        redirect_to hunters_path
    end

    private
    def hunter_params
        params.require(:hunter).permit(:name, :hp, :speed)
    end

    def locate
        @hunter = Hunter.find(params[:id])
    end
end
