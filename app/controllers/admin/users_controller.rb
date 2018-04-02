class Admin::UsersController < Admin::BaseController
  def index
    authorize User
    @users = User.all
  end

  def show
    @user = User.find params[:id]
    authorize @user
  end
end
