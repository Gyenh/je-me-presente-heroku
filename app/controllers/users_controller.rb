class UsersController < ApplicationController

  def new
  end

  def user_post
    @user = User.new
    @user.username = params["username"]
    @user.bio = params["bio"]

      if @user.save
      redirect_to action: 'show', id: @user.id
      else render '/users/errorpage'
      end
    # redirect_to "/users/#{@user.id}"
  end

  def show
    # @user = User.find_by(username: params['username'])
    @user = User.find(params[:id])
    
  end

end

# User.create(username: params[:username], bio: params[:bio])
