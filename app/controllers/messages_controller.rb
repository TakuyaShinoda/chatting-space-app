class MessagesController < ApplicationController
  before_action :authenticate_user!

  def index
    @groups = current_user.groups
    @group = Group.find(params[:group_id])
    @messages = Message.where(group_id: params[:group_id])
    @message = Message.new
    @last_message = Message.find_by(group_id: params[:group_id])
  end

  def new; end

  def create
  	Message.create(message_params)
  end

  private

  def message_params
    params.require(:message).permit(:body, :image).merge(group_id: params[:group_id], user_id: current_user.id)
  end

end
