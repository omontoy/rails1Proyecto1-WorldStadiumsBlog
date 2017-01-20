class ConstructionsController < ApplicationController
   def index
      @constructions = Construction.all
   end

   def new
      @construction = Construction.new
   end

   def create
      @construction = Construction.new(construction_params)
      if @construction.save
         redirect_to root_path
      else
         render :new
      end
   end

   def edit
      @construction = Construction.find(params[:id])
   end

   def update
      @construction = Construction.find(params[:id])
      if @construction.update(construction_params)
         redirect_to root_path
      else
         render :edit
      end
   end

   def destroy
      @construction = Construction.find(params[:id])
      @construction.destroy

      redirect_to root_path
   end

   def construction_params
      params.require(:construction).permit(:name, :image_url, :capacity, :city, :description)
   end
end