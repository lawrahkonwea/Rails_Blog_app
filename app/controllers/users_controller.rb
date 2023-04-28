class UsersController < ApplicationController
  def index; 
  @users = User.all
  end


  def show; 
  @posts = Post.includes(:user)
  end
end
