class MessagesController < ApplicationController

  def new
    @message = Message.new
  end

  def show
    @message = Message.find(params[:id])
  end

  def edit
  end

  def create
    @user = current_user
    @message = Message.new(params.require(:message).permit(:content))
    @message.to = 
  end
end
