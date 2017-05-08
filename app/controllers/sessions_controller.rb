class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: session_params[:email])
    if user && User.authenticate(session_params[:email], session_params[:password])
      session[:user_id] = user.id
      redirect_to categories_path
    else
        @errors = ["Invalid login!"]
        render 'new'
    end
  end

  def destroy
    session.delete(:user_id)
    redirect_to '/'
  end

  private
  def session_params
    params.require(:session).permit(:email, :password)
  end
end
