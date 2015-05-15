class PassSpcaController < ApplicationController

    def index
      @animals = Animal.all
    end

    def show
      @animal = Animal.find(params['id'])
    end

    def new
      @animal = Animal.new
    end

    def create
      @animal = Animal.new(animal_params)
          if @animal.save
            redirect_to '/pass_spca/'

          else
            render :new
          end
    end


    private
      def animal_params
        params.require(:animal).permit(:breed, :color, :size, :age)
      end
end
