class MessagesController < ApplicationController

  def index
    @received_messages = Message.where(to_id: current_user.id)
    @sent_messages = Message.where(from_id: current_user.id)
  end
  def new
    @message = Message.new
  end

  def show
    @message = Message.find(params[:id])
  end

  def edit
  end

  def create
    @message = Message.new(params.require(:message).permit(:content))
    @message.to = User.find(params[:user_id])
    @message.from = current_user
    if @message.save
      redirect_to messages_path(current_user)
    else
      render :new
    end
  end

  def destroy
    @message = Message.find(params[:id])
    if @message.to == current_user || @message.from == current_user
      @message.destroy
      redirect_to messages_path(current_user)
    else
      redirect_to users_path
    end
  end
end
