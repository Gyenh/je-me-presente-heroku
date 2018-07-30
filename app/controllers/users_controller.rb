class UsersController < ApplicationController

  def new
  end

  def user_post
    user = User.new
    user.username = params["username"]
    user.bio = params["bio"]
    user.save

    redirect_to "/users/#{user.id}"
  end


  def show
    # @user = User.find_by(username: "username_trop_cool")
    @user = User.find(params[:id])
  end

end

# User.create(username: params["Username"], bio: params["bio"])
