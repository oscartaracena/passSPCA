class PassSpcaController < ApplicationController

    def index
      @animals = Dogcat.all
    end

    def show
      @animal = Dogcat.find(params['id'])
    end

    def new
      @animal = Dogcat.new
    end

    def create
      @animal = Dogcat.new#(animal_params)
          if @animal.save
            redirect_to '/pass_spca/'

          else
            render :new
          end
    end


    #private
    #  def animal_params
    #    params.require(:Dogcat).permit(:breed, :color, :size, :age)
    #  end
end
