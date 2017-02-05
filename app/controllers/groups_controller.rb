class GroupsController < ApplicationController

  def index
    @groups = Groups.all
  end

  def new
    @group = Group.new
  end

  def create
    Group.create(group_params)
  end

  def edit
    @group = Group.find(id_params)
  end

  def update
    @group = Group.find(id_params)
    @group.update(group_params)
  end

  private
  def group_params
    params.require(:group).permit(:name)
  end

  def id_params
    params.permit(:id)
  end

end
