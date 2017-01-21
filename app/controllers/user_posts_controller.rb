class UserPostsController < ApplicationController
   before_action :authenticate_user!
   
   def show
     @posts = Construction.where("user_id = ?", current_user.id)
   end
end
