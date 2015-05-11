class UsersController < ApplicationController
  
  expose(:user)
  
  def show
  end
  
  private
    def user_params
      params.require(:user).permit(:firstname, :lastname, :email)
    end
  
end
