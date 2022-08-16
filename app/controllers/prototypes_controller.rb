class PrototypesController < ApplicationController
  before_action :set_prototype, only: [:edit, :show]
  before_action :move_to_index, except: [:index, :show]


  def index
    @prototypes = Prototype.all
  end

  def new
    @prototype = Prototype.new
  end

  def create
    Prototype.create(user_params)
  end

  def destroy
    user = User.find(params[:id])
    user.destroy
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

  def user_new_password


  end

  def  user_params
    params.require(:user).permit(:name, :image, :text).merge(user_id: current_user.id)
  end

  def set_prototype
    @user = User.find(params[:id])
  end

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end
end
