class ApplicationController < ActionController::Base
before_action :search

def search
 @q = Post.ransack(params[:q])
   @search = @q.result(distinct: true)
end
end
