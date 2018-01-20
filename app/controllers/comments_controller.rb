class CommentsController < ApplicationController
  before_action :set_prototype


  def create
    @comment = Comment.create(comment_params)
    redirect_to prototype_path(@prototype.id)
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
    # params.require(:prototype).permit(:content).merge(user_id: current_user.id, prototype_id: prototype.id)
    params.require(:comment).permit(:content).merge(user_id: current_user.id, prototype_id: @prototype.id)
  end
end
