class UsersController < ApplicationController
  def edit
    @user = User.find(params[:id])
  end

  def index
    @users = User.all
    @user = current_user
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user.id)
    if current_user.update(user_params)
      redirect_to user_path(current_user)
    else
      render :edit
    end
  end


  def show
    @books = Book.all
    @user = User.find(params[:id])
    @book = Book.new
  end

  def templ
  end

  private

  def user_params
    params.require(:user).permit(:name, :introduction, :profile_image)
  end

end
