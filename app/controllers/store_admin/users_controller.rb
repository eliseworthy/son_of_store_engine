# Allows creating and modifying users
class StoreAdmin::UsersController < StoreAdminController

  def index
    @users = User.all
  end

  def destroy
    User.find(params[:id]).destroy
    redirect_to users_path
  end
  
end