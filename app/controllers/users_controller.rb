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
    if @user.update(user_params)
       redirect_to user_path(@user.id)
      flash[:notice] = "successfully"
    # 他人の情報を編集できない処理
    else
      flash.now[:alert] = "error"
      render :edit
    end
  end


  def show
    @user = User.find(params[:id])
    @books = @user.books
    @book = Book.new
  end

  def templ
  end

  private

  def user_params
    params.require(:user).permit(:name, :introduction, :profile_image)
  end

end
