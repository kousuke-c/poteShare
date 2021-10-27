class ReserveController < ApplicationController
  def room
   
    @room = Room.find(params[:format])
    @reserve = Reserve.new
    
  end

  
  def confirm
    @room = Room.find(params[:format])
    @reserve = Reserve.new(reserve_params)
      
		if @reserve.invalid?
			render reserve_room_path
			
	else
		@day=((@reserve.end)-(@reserve.start))/86400
		@price=@reserve.people*@day*@room.price
			end
   
  end
  
  def comprete
    Reserve.create(reserve_params)
  @reserve = Reserve.new(reserve_params)
  end




  def back
		@reserve = Reserve.new(reserve_params)
		@room = Room.find(params[:format])
		render reserve_room_path
	end
  
  def reserve_params
        params.require(:reserve).permit(:title ,:price,:area,:comment,:roomid,:start,:end,:people)
       
  end
  
  def reserved
    @reserve =Reserve.all
   
  end
  
end
