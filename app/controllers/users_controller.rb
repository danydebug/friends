class UsersController < ApplicationController

    def new
        @user = User.new
    end
    
    def index
    
    end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to root_url, notice: 'Success! You can log in now.' }
      else
        format.html { render :new }
      end
    end
  end

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end

end
