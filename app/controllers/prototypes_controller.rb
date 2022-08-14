class PrototypesController < ApplicationController
  before_action :set_prototype, only: [:edit, :show]
  before_action :move_to_index, except: [:index, :show]


  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    Prototype.create(user_params)
  end

  def destroy
    prototype = Prototype.find(params[:id])
    prototype.destroy
  end

  def edit
  end

  def update
    prototype = Prototype.find(params[:id])
    prototype.update(user_params)
  end

  def show
  end

  private
  def  user_params
    params.require(:user).permit(:name, :image, :text).merge(user_id: current_user.id)
  end

  def set_prototype
    @prototype = Prototype.find(params[:id])
  end

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end
end
