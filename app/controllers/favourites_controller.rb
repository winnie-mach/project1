class FavouritesController < ApplicationController
  def show
  end

  def create
    @work = Work.first
    favourite = Favourite.new
    favourite.work_id = params[:work_id]
    favourite.user_id = @current_user.id
    favourite.save
    redirect_back :fallback_location => root_path, notice: "You favourited #{@work.title}" #redirect_back means to go back to previous page, but rails requires fallback in case it doesn't know where user was previously on.
  end

  def destroy
    @current_user.favourites.find_by(:work_id => params[:work_id]).destroy
    redirect_back :fallback_location => root_path #notice: "You unfavourited #{@work.title}"
  end
end


# https://stackoverflow.com/questions/13240109/implement-add-to-favorites-in-rails-3-4
# https://stackoverflow.com/questions/35536293/implement-add-to-favorites-in-ruby-on-rails
