class ItemsController < ApplicationController
  before_action :set_list, only: [:index, :create]
  before_action :set_item, only: [:destroy, :update]
  
  # GET /list/:list_id/items
  def index
    @items = @list.items
  end

  # POST /list/:list_id/items
  def create
    @item = @list.items.create(item_params)

    if @item.save
      flash[:notice] =  'Item was successfully created.'
    else
      flash[:alert] =  'Something Went Wrong! Unable to save item.'
    end

    redirect_to list_items_path(params[:list_id])
  end

  # PUT /list/:list_id/items/:id
  def update
    if @item.update(item_params)
      flash[:notice] =  'Item was successfully updated.'
    else
      flash[:alert] =  'Something Went Wrong! Failed to update item.'
    end
    redirect_to list_items_path(params[:list_id])
  end

  # DELETE /list/:list_id/items/1
  def destroy
    @item.destroy
    redirect_to list_items_path(params[:list_id])
  end

  private

  def set_item
    @item = Item.find(params[:id])
  end

  def set_list
    @list = List.find(params[:list_id])
  end

  # Only allow a list of trusted parameters through.
  def item_params
    params.require(:item).permit(:title, :description, :is_complete)
  end

end
