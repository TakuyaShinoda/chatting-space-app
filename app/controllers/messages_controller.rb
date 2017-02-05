class MessagesController < ApplicationController
  before_action :authenticate_user!

  def index
  	# @group = group.find(params[:group_id])
  end

end
