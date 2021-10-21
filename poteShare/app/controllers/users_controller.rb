class UsersController < ApplicationController
def show
     @user = current_user
     
  end
  def create
     @post = Post.new(params.require(:user).permit(:imag,:name,:profile))
       if @post.save
         flash[:notice] = "Profile was successfully updated."
         redirect_to users_show_path
       else
           render new_post_path
       end
  end
  def update_resource(resource, params)

      resource.update_without_password(params)
      binding.pry
  end
  
end

