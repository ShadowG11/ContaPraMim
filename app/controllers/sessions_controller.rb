class SessionsController < ApplicationController
  before_action :block_access, except: [:destroy]
  def create
    @user = User.find_by(email: params[:session][:email].downcase)
    if @user && @user.authenticate(params[:session][:password])
      sign_in @user
    end
    redirect_to @user
    else
      render 'new'
  end

  def destroy
    sign_out
    redirect_to root_url
  end
end
