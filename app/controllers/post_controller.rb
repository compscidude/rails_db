class PostController < ApplicationController
   
   def show
        @Post = Post.find(params[:id])
   end


end
