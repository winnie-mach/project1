class SessionController < ApplicationController
  def new
  end

  def create
    #raise
    @user = User.find_by :email => params[:email] #can't use the standard method of find params [:id] because that only works with id.
    if @user.present? &&      @user.authenticate(params[:password])
    #If the password authenticates (have to check if the user can be found by email yet, because it can't run the .authenticate method on nil)
      session[:user_id] = @user.id
      redirect_to root_path
    else
    #send them back to login page and shows an error message in a flash:
      flash[:error] = "Invalid email or password"
      redirect_to login_path
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to login_path #or root_path (home page)
  end

end
