class PostController < ApplicationController
  
 
  
  def index
   @q = Post.ransack(params[:q])
   @search = @q.result(distinct: true)
  end
  
  def search_room

  end
      
  def new
     @share = Post.new
    
  end
  
  def create
      @share = Post.new(plan_params)
      
       if @share.save
         flash[:notice] = "ルーム登録しました"
         redirect_to "/"
       else
           render new_post_path
       end
  end
  
  def plan_params
        params.permit(:title ,:price,:area,:comment,:image)
       
  end
  
  def posts
      @share =Post.all
  end
  end