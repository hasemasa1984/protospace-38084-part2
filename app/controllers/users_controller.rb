class UsersController < ApplicationController

  def show
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
