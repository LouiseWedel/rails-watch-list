class ListsController < ApplicationController
  before_action :set_list, only: [:show, :destroy]
  def index
    @lists = List.all
  end

  def show
    @bookmark = Bookmark.new
    # to do later add reviews here
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    @list.save
    redirect_to list_path(@list)
  end

  def destroy
    @list.destroy
    redirect_to list_path (@lists), status: :see_other
  end

  private

  def set_list
    @list = List.find(params[:id])
  end

  def list_params
    params.require(:list).permit(:name) # later add photo here
  end
end
