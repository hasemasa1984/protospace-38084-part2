class UsersController < ApplicationController
  #before_action :authenticate_user!, except: [:show]

  def show
    #user = User.find(params[:id])
    #@nickname = user.nickname
    #@prototypes = user.prototypes
    @user = User.find(params[:id])
    #if 
      #redirect to user_path(@prototype)
    #else
      #@prototype = @comment.prototype
      #@comments = @prototype.comments
      #render "prototypes/show"
    #end
  end
end
