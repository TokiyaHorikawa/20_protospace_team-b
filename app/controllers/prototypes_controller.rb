class PrototypesController < ApplicationController
  before_action :set_prototype, only: [:show, :edit, :update, :destroy]

  def index
    @prototypes = Prototype.includes(:user).page(params[:page]).per(20).order("created_at DESC")
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
      redirect_to new_prototype_path, alert: 'YNew prototype was unsuccessfully created'
    end
  end

  def show
    @comment = Comment.new
    @comments = @prototype.comments.includes(:user)

  end

  def destroy
    if @prototype.user_id == current_user.id
      @prototype.destroy
      redirect_to :root
    else
      redirect_to :root
    end
  end

  def edit
        # @prototype.captured_images.build
    @main_image = @prototype.captured_images.where("status = 0")
    @sub_image = @prototype.captured_images.where("status = 1")

  end

  def update
    if @prototype.user_id == current_user.id
      @prototype.update(prototype_params)
      redirect_to root_path
    end
  end

  private

  def set_prototype
    @prototype = Prototype.find(params[:id])
  end

  def prototype_params
    tag_list = params[:tag_list]
    params.require(:prototype).permit(
      :title,
      :catch_copy,
      :concept,
      :user_id,
      captured_images_attributes: [:id, :content, :status]
    )
  end
end

