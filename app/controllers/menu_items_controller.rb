class MenuItemsController < ApplicationController
  def new
    @menu_item = MenuItem.new
  end

  def create
    menu_item = MenuItem.create menu_item_params
    redirect_to admin_path
  end

  private
  
  def menu_item_params
    params.require(:menu_item).permit(:name, :kind, :price)
  end
end
