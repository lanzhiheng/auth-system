class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def edit
    @user = target_user
  end

  def update
    target_user.update(user_params)
    redirect_to user_path(target_user)
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to users_path
    else
      render "new"
    end
  end

  def show
    @user = target_user
  end

  def destroy
    target_user.destroy
    redirect_to users_path
  end

  private

  def target_user
    User.friendly.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
