class PostController < ApplicationController
  
 
  
  def index
   @q = Room.ransack(params[:q])
   @search = @q.result(distinct: true)
   

  end
  
  def show
    @user = current_user
  end
  
  def search_room
@q = Room.ransack(params[:q])
   @search = @q.result(distinct: true)
   @count = @search.count

  end
      
  def new
     @share = Room.new
    
  end
  
  def create
      @share = Room.new(post_params)
      
       if @share.save
         flash[:notice] = "ルーム登録しました"
         redirect_to "/"
       else
           render :new
       end
  end
  
  def newError
    @share = Room.new
  end
  
  def post_params
        params.permit(:title ,:price,:area,:comment,:image)
       
  end
  
  def posts
      @share =Room.all
  end
  end