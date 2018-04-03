class FavouritesController < ApplicationController
  def show
  end
  
  def create
    favourite = Favourite.new
    favourite.work_id = params[:id]
    favourite.user_id = @current_user.id
    favourite.save
    redirect_to :back, :fallback => root_path
  end
end

end




#     favourites POST   /favourites(.:format)          favourites#create
#  new_favourite GET    /favourites/new(.:format)      favourites#new
# edit_favourite GET    /favourites/:id/edit(.:format) favourites#edit
#      favourite GET    /favourites/:id(.:format)      favourites#show
#                PATCH  /favourites/:id(.:format)      favourites#update
#                PUT    /favourites/:id(.:format)      favourites#update
#                DELETE /favourites/:id(.:format)      favourites#destroy
