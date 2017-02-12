class MessagesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_group, only: %i( index create )

  def index
    @groups = current_user.groups
    @messages = Message.where(group_id: params[:group_id])
    @message = Message.new
  end

  def create
    @message = @group.messages.new(message_params)
    @message.save
    redirect_to group_messages_path
  end

  private

  def message_params
    params.require(:message).permit(:body, :image).merge(user_id: current_user.id, group_id: params[:group_id])
  end

  def set_group
    @group = Group.find(params[:group_id])
  end

end
