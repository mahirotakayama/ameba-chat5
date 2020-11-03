class MessagesController < ApplicationController
  
  def index
    @messages = Post.all
  end

  def new
    @message = post.new
  end

  def create
    Message.create(message_params)
    redirect_to root_path
  end

  def show
    @message = Message.find(params[:id])
  end

  def update
    message = Message.find(params[:id])
    message.update(message_params)
    redirect_to post_post_path(message.id)
  end

  def destroy
    message = Message.find(params[:id])
    message.destroyredirect_to root_path
  end

  private
  def message_params
    params.require(:message).permit(:title, :content)
  end
end
