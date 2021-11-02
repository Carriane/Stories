class ImagesController < ApplicationController
    def index
        @images = Image.all
    end 

    def new
        @image = Image.new
    end 

    def create
        if 
         @image = Image.new(image_params) and 
         @image.save 
         redirect_to '/images'
        end
    end 

    private

    def image_params
        params.require(:image).permit(:picture)
    end 
end
