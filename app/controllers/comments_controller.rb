class CommentsController < ApplicationController
  before_action :authenticate_user!, except: [:show, :update, :edit]

  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to prototype_path(@comment.prototype)
    else
      @prototype = @comment.prototype
      @comments = @prototype.comments
      render "prototypes/show"
    end
  end
  
  private

  #def set_prototype
    #@prototype = Prototype.find(params[:id])
  #end

  def comment_params
    params.require(:comment).permit(:content).merge(user_id: current_user.id, prototype_id: params[:prototype_id])
  end
end
