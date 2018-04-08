class ListsController < ApplicationController
  before_action :set_list, only: [:show, :update, :destroy]
  def index
    @list = List.new
    @lists = List.all
  end

  def show
    @item = Item.new
  end

  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to list_url(@list)
    else
      @lists = List.all
      render :index
    end
  end

  def update
  end

  def destroy
    @list.destroy

    redirect_to lists_path
  end

  private
  def list_params
    params.require(:list).permit(:name)
  end

  def set_list
    @list = List.find_by(:id => params[:id])
  end
end
