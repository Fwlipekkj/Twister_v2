module ChatsHelper

  def participant_status(chat)
    # participant(chat).status
    %w[online busy away offline offline].sample
  end

  def participant(chat)
    @participant ||= chat.users.where.not(id: current_user.id).first
  end

  def message_from_current_user?(message)
    message.user_id == current_user.id
  end

end