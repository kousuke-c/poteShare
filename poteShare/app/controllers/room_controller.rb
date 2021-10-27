class RoomController < ApplicationController
    
    protect_from_forgery
    
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
         
         redirect_to  reserve_room_path(@room)
         
       else if @room.invalid?
           render :new
       end
  end
  end
  
  
  
  def room_params
        params.require(:room).permit(:title ,:price,:area,:comment,:image)
       
  end
  
  def posts
      @room =Room.all
  end
end
