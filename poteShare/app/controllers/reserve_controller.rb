class ReserveController < ApplicationController
  def room
   
    @share = Room.find(params[:format])
    @reserve = Booking.new
    
  end

  
  def confirm
    @share = Room.find(params[:format])
    @reserve = Booking.new(reserve_params)
      
		if @reserve.invalid?
			render reserve_room_path(@share)
		end
		@day=((@reserve.end)-(@reserve.start))/86400
		@price=@reserve.people*@day*@share.price
		
   
  end
  
  def comprete
    Booking.create(reserve_params)
  @reserve = Booking.new(reserve_params)
  end




  def back
		@reserve = Booking.new(reserve_params)
		@share = Room.find(params[:format])
		render reserve_room_path
	end
  
  def reserve_params
        params.require(:booking).permit(:title ,:price,:area,:comment,:roomid,:start,:end,:people)
       
  end
  
  def reserved
    @reserve =Booking.all
    
  end
  
end
