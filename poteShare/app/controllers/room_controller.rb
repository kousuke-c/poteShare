class RoomController < ApplicationController
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
     @room = Room.new
    
  end
  
  def create
      @room = Room.new(room_params)
      
       if @room.save
         flash[:notice] = "ルーム登録しました"
         redirect_to "/"
       else if @room.invalid?
           render new_room_path
       end
  end
  end
  
  
  
  def room_params
        params.permit(:title ,:price,:area,:comment,:image)
       
  end
  
  def posts
      @room =Room.all
  end
end
