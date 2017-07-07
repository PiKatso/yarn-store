class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
    flash[:notice] = "User registration successful!"
    session[:user_id] = @user.id
      redirect_to  "/"
    else
      flash[:alert] = "There was a problem with your registration"
      redirect_to '/signup'
    end
  end

  # def edit
  #   @user = User.find(params[:id])
  # end
  #
  # def update
  #   @user= User.find(params[:id])
  #   if @user.update(user_params)
  #     flash[:notice] = "User successfully updated!"
  #     redirect_to users_path
  #   else
  #     render :edit
  #   end
  # end
  #
  # def destroy
  #   @user = User.find(params[:id])
  #   if @user.destroy
  #     flash[:notice] = "User successfully removed!"
  #     redirect_to users_path
  #   end
  # end

private
  def user_params
    params.require(:user).permit(:email, :name, :password, :password_confirmation)
  end
end
