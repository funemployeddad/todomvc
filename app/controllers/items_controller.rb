class ItemsController < ApplicationController
  def create
    @list = List.find(params[:list_id])
    #find the parents
    @item = @list.items.build(item_params)
    #build a preassociated new item
    if @item.save
      redirect_to list_path(@list)
    else
      render "lists/show"
    end
  end

  private
  def item_params
    params.require(:item).permit(:description)
  end
end
