class Admin::UsersController < Admin::BaseController
  def index
    authorize User
    @users = User.all
  end

  def show
    @user = User.find params[:id]
    authorize @user
  end

  def new
    @user = User.new
    authorize User
  end

  def create
    authorize User
    @user = User.new(user_params)
    if @user.save
      redirect_to admin_users_path, info: "user #{@user.email} created"
    else
      flash[:error] = "crating user failed!"
      render 'new'
    end
  end

  def edit
    @user = User.find(params[:id])
    authorize @user
  end

  def update
    @user = User.find(params[:id])
    authorize @user
    if @user.update(user_params)
      redirect_to admin_users_path, info: "user #{@user.email} updated"
    else
      flash[:error] = "updating user failed!"
      render 'edit'
    end
  end

  def destroy
    @user = User.find(params[:id])
    authorize @user
    @user.destroy
    redirect_to admin_users_path, info: "user #{@user.email} deleted"
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :avatar)
  end
end
