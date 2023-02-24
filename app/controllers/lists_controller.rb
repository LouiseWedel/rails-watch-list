class ListsController < ApplicationController

  def index
    @lists = List.all
  end

  def show
  end

  def new
    @list = List.new
  end

  def create
    @lists = List.new(list_params) # what is it with the params!
    raise
    @list.save
    redirect_to lists_path(@list)
  end

  def destroy
    @list.destroy
    redirect_to lists_path, status: :see_other
  end

  private

  def list_params
    params.require(:list).permit(:name)
  end

end
