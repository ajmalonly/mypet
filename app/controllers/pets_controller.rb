class PetsController < ApplicationController

    def index
        @pets = Pet.all
    end

    def show
        @pet = Pet.find(params[:id])
    end

    def new
        @pet = Pet.new
    end

    def create
        @pet = Pet.new(pet_params)
        @pet.save
        redirect_to pet_path(@pet)
    end

    def edit
        @pet = Pet.find(params[:id])
      end
    
    def update
        @pet = Pet.find(params[:id])
        @pet.update(pet_params)
        # No need for a pets/update.html.erb
        redirect_to pet_path(@pet)
    end

    def destroy
        @pet = Pet.find(params[:id])
        @pet.destroy
        redirect_to pets_path, status: :see_other
    end

    private

    def pet_params
        params.require(:pet).permit(:name, :species, :image_url, :found_on)
    end
end
