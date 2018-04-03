class UsersController < ApplicationController
  def new #       new_user GET    /users/new(.:format)           users#new
    @user = User.new
  end

  def create #/users(.:format)               users#create
    @user = User.create user_params
    if @user.save
    redirect_to root_path
    else
      render :new
    end
  end

  def edit #      edit_user GET    /users/:id/edit(.:format)      users#edit
    @user = User.find params[:id]
  end

  def update #                PATCH  /users/:id(.:format)           users#update
    user = User.find params[:id]
    #user.update user_params
    if user.update user_params # user.save
    redirect_to user 
    else
      render :edit
    end
  end

  def show #           user GET    /users/:id(.:format)           users#show
    @user = User.find params[:id]
    #raise :hell
  end

  private
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :name, :surname, :role, :field, :hobbies, :phone, :image) #don't have to call it password digest.
  end
end






# TODO: Create destroy user controller but only for admin?
#                DELETE /users/:id(.:format)           users#destroy
