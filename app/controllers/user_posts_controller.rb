class UserPostsController < ApplicationController
   before_action :authenticate_user!
   
   def show
     @posts = Construction.where("user_id = ?", current_user.id)

     if params[:name].present? 
       @posts = @posts.where("name LIKE ?", "%#{params[:name].strip}%")
     end
   end

end
