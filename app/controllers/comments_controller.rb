class CommentsController < ApplicationController
  before_action :set_prototype
  before_action :authenticate_user!, only: [:create]

  def create
    @comment = Comment.create(comment_params)
    respond_to do |format|
      format.html { redirect_to prototype_path(@prototype.id) }
      format.json
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def set_prototype
    @prototype = Prototype.find(params[:prototype_id])
  end

  def comment_params
    params.require(:comment).permit(:content).merge(user_id: current_user.id, prototype_id: @prototype.id)
  end
end
