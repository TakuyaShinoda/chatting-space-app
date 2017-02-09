class MessagesController < ApplicationController
  before_action :authenticate_user!

  def index
    @groups = current_user.groups
    @group = Group.find(params[:group_id])
  end

end
