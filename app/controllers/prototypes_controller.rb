class PrototypesController < ApplicationController
  before_action :set_prototype, only: [:show, :edit, :update, :destroy]

  def index
    @prototypes = Prototype.includes(:user).page(params[:page]).per(12).order("created_at DESC")
  end

  def new
    @prototype = Prototype.new
    @prototype.captured_images.build
  end

  def create
    @prototype = Prototype.new(prototype_params)
    if @prototype.save
      redirect_to :root, notice: 'New prototype was successfully created'
    else
      redirect_to ({ action: new }), alert: 'YNew prototype was unsuccessfully created'
     end
  end

  def show
    @prototype = Prototype.find(params[:id])
    @likes = Like.where(prototype_id: params[:id], user_id: current_user.id)
  end

  def destroy
    if @prototype.user_id == current_user.id
      @prototype.destroy
      redirect_to :root, notice: 'Prototype was successfully deleted'
    else
      redirect_to :root
    end
  end

  def edit
    redirect_to ({ action: show })
  end

  def update
    if @prototype.user_id == current_user.id
      @prototype.update(prototype_params)
    end
  end

  private

  def set_prototype
    @prototype = Prototype.find(params[:id])
  end

  def prototype_params
    params.require(:prototype).permit(
      :title,
      :catch_copy,
      :concept,
      :user_id,
      captured_images_attributes: [:content, :status]
    )
  end
end
