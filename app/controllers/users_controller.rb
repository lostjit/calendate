class UsersController < ApplicationController

  def index
    @user = User.new
  end

 

  def create

      @user = User.new(user_params)

    if @user.save
      sign_in @user
      redirect_to profile_path
    else
      @show = "register"
      render action: "new"
    end


  end





  def delete
  end

  def show
  end

  def index
    @user = User.new
  end
end
