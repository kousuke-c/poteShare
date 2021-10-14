class ReserveController < ApplicationController
  def room
   
    @share = Post.find(params[:format])
    @reserve = Reserve.new
  end

  
  def confirm
    @share = Post.find(params[:format])
    @reserve = Reserve.new(plan_params)
      
		if @reserve.invalid?
			render reserve_room_path(@share)
		end
		@day=((@reserve.end)-(@reserve.start))/86400
		@price=@reserve.people*@day*@share.price
  end
  
  def comprete
    Reserve.create!(plan_params)
  @reserve = Reserve.new(plan_params)
  end




  def back
		@reserve = Reserve.new(plan_params)
		@share = Post.find(params[:format])
		render reserve_room_path
	end
  
  def plan_params
        params.require('reserve').permit(:title ,:price,:area,:comment,:image,:start,:end,:people)
       
  end
  
  def reserved
    @reserve =Reserve.all
    
  end
  
end
