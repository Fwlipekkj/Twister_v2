class MessagesController < ApplicationController
  before_action :set_chat, only: %i[ create ]
  before_action :set_message, only: %i[ update edit destroy show ]

  def create
    @message = @chat.messages.new(message_params)
    @message.user = current_user

    if @message.save
      render turbo_stream: turbo_stream.append(:messages, @message)
    else
      render 'new', layout: false, status: :unprocessable_entity
    end
  end

  def update
    if @message.update(message_params)
      render @message
    else
      render 'edit', layout: false, status: :unprocessable_entity
    end
  end

  def edit
  end

  def destroy
    @message.destroy
  end

  def show
  end

  private

  def set_chat
    @chat = Chat.find(params[:chat_id])
  end

  def set_message
    @message = Message.find(params[:id])
  end

  def message_params
    params.require(:message).permit(:content)
  end
end
