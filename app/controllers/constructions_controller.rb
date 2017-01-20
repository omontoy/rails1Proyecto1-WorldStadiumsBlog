class ConstructionsController < ApplicationController
   def index
      @constructions = Construction.all
   end

   def new
      @construction = Construction.new
   end

   def create
      @construction = Construction.new(construction_params)
      if @construction.saved
         redirect_to root_path
      else
         render :new
      end
   end

   def construction_params
      params.require(:construction).permit(:name, :capacity, :description)
   end
end
