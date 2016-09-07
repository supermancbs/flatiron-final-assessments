class UsersController < ApplicationController

  def new
    @user = User.new
  end
  # /users/new

  # create
  def create
    @user = User.create(user_params)
  end
  # post to /users

  # index
  def index
    @users = User.all
  end
  # get to /users

  # show
  def show
    @user = User.find(params[:id])
  end
  # get to /users/:id

  # edit
  def edit
    @user = User.find(params[:id])
    @user.update(user_params)
  end
  # get /user/:id/edit

  # update

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
  end
  # patch to /user/:id/

  # destroy
  def destroy
    @user = User.find(params[:id])
    @user.destroy
  end
  # delete to /users/:id

  private
    def user_params
      params.require(:user).permit(:name, :hometown)
    end

end




# Write the controller action as if this was a rails controller
# Write the url that sends a user to the action. I have done the first one for you.
