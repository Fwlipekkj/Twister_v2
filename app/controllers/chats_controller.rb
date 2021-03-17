class ChatsController < ApplicationController

  def index
    @chats = Chat.joins(:users).where(users: {id: current_user.id})
  end

  def create
    @chat = Chat.new(chat_params)
    @chat.users << current_user

    unless @chat.save
      flash[:error] = "Não foi possível criar o chat."
      return redirect_to chats_path
    end
    redirect_to chat_path(@chat)
  end

  def show
    @chat = Chat.find(params[:id])
    @messages = @chat.messages.includes(:user).order(:created_at)
    @new_message = Message.new(chat: @chat)
  end

  private

  def chat_params
    params.require(:chat).permit(:name, member_ids: [])
  end

end
